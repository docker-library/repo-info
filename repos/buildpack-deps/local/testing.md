# `buildpack-deps:bookworm`

## Docker Metadata

- Image ID: `sha256:292c057a82a578bd4e3ccb794d6e857287b71058e1c8e8b7bd588bd2d1b6a7d6`
- Created: `2023-01-11T03:03:54.380676104Z`
- Virtual Size: ~ 912.19 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.3.1-2`

Binary Packages:

- `libacl1:amd64=2.3.1-2`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/acl/2.3.1-2/


### `dpkg` source package: `adduser=3.130`

Binary Packages:

- `adduser=3.130`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.130
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.130.dsc' adduser_3.130.dsc 1671 SHA256:d5ab297aab740b1abcc24e20bf4b5534ab26ed1a1b67ee4f5707a9431e96ce2f
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.130.tar.xz' adduser_3.130.tar.xz 239024 SHA256:8d0c22438056493972bce5cc0e487826c8e85b5f6c57760a47030126dae5e2e1
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.130/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.130/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.130/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `aom=3.5.0-1`

Binary Packages:

- `libaom3:amd64=3.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libaom3/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `public-domain-md5`

Source:

```console
$ apt-get source -qq --print-uris aom=3.5.0-1
'http://deb.debian.org/debian/pool/main/a/aom/aom_3.5.0-1.dsc' aom_3.5.0-1.dsc 2207 SHA256:c4b8f793a204a860eaf9406765c56e2268288419e245760d7e30a19df8c56c45
'http://deb.debian.org/debian/pool/main/a/aom/aom_3.5.0.orig.tar.gz' aom_3.5.0.orig.tar.gz 5213077 SHA256:0189ea2f5ae6b883c83b245305de784f65c0461bcd700cc98bbdc58ab957c6e7
'http://deb.debian.org/debian/pool/main/a/aom/aom_3.5.0-1.debian.tar.xz' aom_3.5.0-1.debian.tar.xz 18248 SHA256:af10d4d1f4c0bc90f124716a4d12cdf821b3e36cb796502771f7289e3c891908
```

Other potentially useful URLs:

- https://sources.debian.net/src/aom/3.5.0-1/ (for browsing the source)
- https://sources.debian.net/src/aom/3.5.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/aom/3.5.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.1-5`

Binary Packages:

- `libaprutil1:amd64=1.6.1-5+b2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apr-util/1.6.1-5/


### `dpkg` source package: `apr=1.7.0-8`

Binary Packages:

- `libapr1:amd64=1.7.0-8`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.0-8
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0-8.dsc' apr_1.7.0-8.dsc 2272 SHA256:f13890ccea0e69493c1d2172bf5b733e4b989931c44d150eb496bf88db55a528
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0.orig.tar.bz2' apr_1.7.0.orig.tar.bz2 872238 SHA256:e2e148f0b2e99b8e5c6caa09f6d4fb4dd3e83f744aa72a952f94f5a14436f7ea
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0.orig.tar.bz2.asc' apr_1.7.0.orig.tar.bz2.asc 801 SHA256:5a6c4e721ed82116d7877254ae11c076014040af2ff816ea15ec81e77a4a7d43
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0-8.debian.tar.xz' apr_1.7.0-8.debian.tar.xz 215848 SHA256:a412ee67df3c7159d67e698293be83a3edc33ee086a35a385420de1a81a11b08
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.7.0-8/ (for browsing the source)
- https://sources.debian.net/src/apr/1.7.0-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.7.0-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=2.5.4`

Binary Packages:

- `apt=2.5.4`
- `libapt-pkg6.0:amd64=2.5.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/2.5.4/


### `dpkg` source package: `attr=1:2.5.1-3`

Binary Packages:

- `libattr1:amd64=1:2.5.1-3`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/attr/1:2.5.1-3/


### `dpkg` source package: `audit=1:3.0.7-1.1`

Binary Packages:

- `libaudit-common=1:3.0.7-1.1`
- `libaudit1:amd64=1:3.0.7-1.1+b2`

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

### `dpkg` source package: `autoconf=2.71-2`

Binary Packages:

- `autoconf=2.71-2`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/autoconf/2.71-2/


### `dpkg` source package: `automake-1.16=1:1.16.5-1.3`

Binary Packages:

- `automake=1:1.16.5-1.3`

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
$ apt-get source -qq --print-uris automake-1.16=1:1.16.5-1.3
'http://deb.debian.org/debian/pool/main/a/automake-1.16/automake-1.16_1.16.5-1.3.dsc' automake-1.16_1.16.5-1.3.dsc 1973 SHA256:88bb6aad124dc9c8f8f37910f66bf79f19e1c4a1e5c69860e3e9005d2adc4d8d
'http://deb.debian.org/debian/pool/main/a/automake-1.16/automake-1.16_1.16.5.orig.tar.xz' automake-1.16_1.16.5.orig.tar.xz 1601740 SHA256:f01d58cd6d9d77fbdca9eb4bbd5ead1988228fdb73d6f7a201f5f8d6b118b469
'http://deb.debian.org/debian/pool/main/a/automake-1.16/automake-1.16_1.16.5.orig.tar.xz.asc' automake-1.16_1.16.5.orig.tar.xz.asc 833 SHA256:3a161ab65921eed55e1a94251d97c8451d4ba3431b55ca560e95a951b5f1d73a
'http://deb.debian.org/debian/pool/main/a/automake-1.16/automake-1.16_1.16.5-1.3.debian.tar.xz' automake-1.16_1.16.5-1.3.debian.tar.xz 14164 SHA256:357d34b964943f5c46f518e3a7ddaa9342de76f1a01bac83039dc338ca84d421
```

Other potentially useful URLs:

- https://sources.debian.net/src/automake-1.16/1:1.16.5-1.3/ (for browsing the source)
- https://sources.debian.net/src/automake-1.16/1:1.16.5-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/automake-1.16/1:1.16.5-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autotools-dev=20220109.1`

Binary Packages:

- `autotools-dev=20220109.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20220109.1
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20220109.1.dsc' autotools-dev_20220109.1.dsc 1661 SHA256:f9ccc67437ff52a7882d6b91e7ca8bf0a316c0c1452093992bd5c5fc3b29c090
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20220109.1.tar.xz' autotools-dev_20220109.1.tar.xz 87340 SHA256:8b05e5ad56cd7d9a15e9b2931eb429b6324bb89f1b46de3baf3651286dead8c1
```

Other potentially useful URLs:

- https://sources.debian.net/src/autotools-dev/20220109.1/ (for browsing the source)
- https://sources.debian.net/src/autotools-dev/20220109.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autotools-dev/20220109.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `bash=5.2.15-2`

Binary Packages:

- `bash=5.2.15-2`

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
$ apt-get source -qq --print-uris bash=5.2.15-2
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.15-2.dsc' bash_5.2.15-2.dsc 2317 SHA256:f51753e946af43eb58549c81e03b35a47af9fe6c6364179ccd4ef862b7c3b2d3
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.15.orig.tar.gz' bash_5.2.15.orig.tar.gz 9997221 SHA256:7a315bc0e9d90713159e4390ec1096a41e4f33cd8cc3d1a749a8e5ad56600f51
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.2.15-2.debian.tar.xz' bash_5.2.15-2.debian.tar.xz 97380 SHA256:998f8ea5b754a734ae7d8306e149c43d713ddfcf49623a036004b729237dbcca
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.2.15-2/ (for browsing the source)
- https://sources.debian.net/src/bash/5.2.15-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.2.15-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.39.90.20221231-1`

Binary Packages:

- `binutils=2.39.90.20221231-1`
- `binutils-common:amd64=2.39.90.20221231-1`
- `binutils-x86-64-linux-gnu=2.39.90.20221231-1`
- `libbinutils:amd64=2.39.90.20221231-1`
- `libctf-nobfd0:amd64=2.39.90.20221231-1`
- `libctf0:amd64=2.39.90.20221231-1`
- `libgprofng0:amd64=2.39.90.20221231-1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/binutils/2.39.90.20221231-1/


### `dpkg` source package: `brotli=1.0.9-2`

Binary Packages:

- `libbrotli-dev:amd64=1.0.9-2+b5`
- `libbrotli1:amd64=1.0.9-2+b5`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

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

### `dpkg` source package: `cairo=1.16.0-7`

Binary Packages:

- `libcairo-gobject2:amd64=1.16.0-7`
- `libcairo-script-interpreter2:amd64=1.16.0-7`
- `libcairo2:amd64=1.16.0-7`
- `libcairo2-dev:amd64=1.16.0-7`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.16.0-7
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0-7.dsc' cairo_1.16.0-7.dsc 2823 SHA256:96b21b7b9c9ab4ae689b1191830b53d0b3c38e5664105c36a3c39dee6bcf29a4
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0.orig.tar.xz' cairo_1.16.0.orig.tar.xz 41997432 SHA256:5e7b29b3f113ef870d1e3ecf8adf21f923396401604bda16d44be45e66052331
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.16.0-7.debian.tar.xz' cairo_1.16.0-7.debian.tar.xz 33816 SHA256:af666a040fd54df96885907d0e9a74883396218a620ae03d173f1a3fee4980ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.16.0-7/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.16.0-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.16.0-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.266`

Binary Packages:

- `libdebconfclient0:amd64=0.266`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.266
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.266.dsc' cdebconf_0.266.dsc 2707 SHA256:c3a832b3e02852aa223c8a79d06777dcb43e2e6e17e8271c26e83a4d513d2175
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.266.tar.xz' cdebconf_0.266.tar.xz 282380 SHA256:cabbc111ab1f3d1258252f04aa4313d2e2d6e0569001177717cfedc81641140b
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.266/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.266/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.266/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `curl=7.87.0-1`

Binary Packages:

- `curl=7.87.0-1`
- `libcurl3-gnutls:amd64=7.87.0-1`
- `libcurl4:amd64=7.87.0-1`
- `libcurl4-openssl-dev:amd64=7.87.0-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

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

- http://snapshot.debian.org/package/curl/7.87.0-1/


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg-10`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg-10`
- `libsasl2-modules-db:amd64=2.1.28+dfsg-10`

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

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg-10
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg-10.dsc' cyrus-sasl2_2.1.28+dfsg-10.dsc 3324 SHA256:cb9c913a6f4716456c93ed205dfef84915a37cf2c994160564e8336e86831d7a
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg.orig.tar.xz 797472 SHA256:a15886d7da5958bd27f35b7c871dd872f6dc5b9917c9b6b15e3de014c7dab3d9
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg-10.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg-10.debian.tar.xz 97056 SHA256:8c94a1c1982a1603d13ef055b0d2511054db4a43cbb1224702f31e5d985136b1
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg-10/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.28+dfsg-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.28+dfsg-10/ (for access to the source package after it no longer exists in the archive)

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


### `dpkg` source package: `dav1d=1.0.0-2`

Binary Packages:

- `libdav1d6:amd64=1.0.0-2`

Licenses: (parsed from: `/usr/share/doc/libdav1d6/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dav1d=1.0.0-2
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.0.0-2.dsc' dav1d_1.0.0-2.dsc 2307 SHA256:7c76af118b5bc8c77bc3e9eca81dea42b0948c4452540e49eb2d0a02ae2758a4
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.0.0.orig.tar.xz' dav1d_1.0.0.orig.tar.xz 810116 SHA256:51737db7e4897e599684f873a4725176dd3c779e639411d7c4fce134bb5ebb82
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.0.0.orig.tar.xz.asc' dav1d_1.0.0.orig.tar.xz.asc 195 SHA256:208004c32681803aaaf41908d0ec5efe4ee0c20b4ea6258a7ddbf2291925c279
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_1.0.0-2.debian.tar.xz' dav1d_1.0.0-2.debian.tar.xz 7980 SHA256:e8c84eccfd20b0eb4ecb37f844714ee4dd9b8b3dc7ff58ccbb4fa1349a41c555
```

Other potentially useful URLs:

- https://sources.debian.net/src/dav1d/1.0.0-2/ (for browsing the source)
- https://sources.debian.net/src/dav1d/1.0.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dav1d/1.0.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db-defaults=5.3.2`

Binary Packages:

- `libdb-dev:amd64=5.3.2`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=5.3.2
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.2.dsc' db-defaults_5.3.2.dsc 1371 SHA256:2a7596f2a13b9e4bd6027bb94d0698b887ca658de81d6df269be727b2d9c056e
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.2.tar.xz' db-defaults_5.3.2.tar.xz 2420 SHA256:ca3a1ba3ac4351eebf6b38a3811a652ff8fc360098dc38323c8f7f88cbe81d6b
```

Other potentially useful URLs:

- https://sources.debian.net/src/db-defaults/5.3.2/ (for browsing the source)
- https://sources.debian.net/src/db-defaults/5.3.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db-defaults/5.3.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.10`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.10`
- `libdb5.3-dev=5.3.28+dfsg1-0.10`

Licenses: (parsed from: `/usr/share/doc/libdb5.3/copyright`, `/usr/share/doc/libdb5.3-dev/copyright`)

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


### `dpkg` source package: `debconf=1.5.81`

Binary Packages:

- `debconf=1.5.81`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debconf/1.5.81/


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

### `dpkg` source package: `debianutils=5.7-0.4`

Binary Packages:

- `debianutils=5.7-0.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.7-0.4
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_5.7-0.4.dsc' debianutils_5.7-0.4.dsc 1737 SHA256:1cd234cc6449122c5bb8213e7b2919162002ae4234a5c51b2b8e54e82837a047
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_5.7.orig.tar.gz' debianutils_5.7.orig.tar.gz 257231 SHA256:27ec9e0e7e44dc8ab611aa576330471bacb07e4491ffecf0d3aa6909c92f9022
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_5.7-0.4.debian.tar.xz' debianutils_5.7-0.4.debian.tar.xz 22412 SHA256:e47eb4fc4cd16fedc8fd741c42acb3af1de19ba42143016adafe61c282ad6771
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/5.7-0.4/ (for browsing the source)
- https://sources.debian.net/src/debianutils/5.7-0.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/5.7-0.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.8-3`

Binary Packages:

- `diffutils=1:3.8-3`

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
$ apt-get source -qq --print-uris diffutils=1:3.8-3
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.8-3.dsc' diffutils_3.8-3.dsc 1705 SHA256:d65a1bde3f2a5e0983d28270071464e2515861dc59798530caa02a6d2e29c5e5
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz' diffutils_3.8.orig.tar.xz 1585120 SHA256:a6bdd7d1b31266d11c4f4de6c1b748d4607ab0231af5188fc2533d0ae2438fec
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz.asc' diffutils_3.8.orig.tar.xz.asc 833 SHA256:500f423d0ffa8d28966d916ed5fc6b79fb160a20ed5cb74eeb1c94a30c340311
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.8-3.debian.tar.xz' diffutils_3.8-3.debian.tar.xz 14176 SHA256:12efb5f6c8ed49c4ed1f0fff0106c65e78dec9fb0f2a961959d37b857d6abb0d
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.8-3/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.8-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.8-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `djvulibre=3.5.28-2`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.28-2`
- `libdjvulibre-text=3.5.28-2`
- `libdjvulibre21:amd64=3.5.28-2`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.28-2
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.28-2.dsc' djvulibre_3.5.28-2.dsc 2388 SHA256:0b5f31e70a8f81afec47e67e9465dbece7756f0c7f88da643f0dda82bf78a1ba
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.28.orig.tar.xz' djvulibre_3.5.28.orig.tar.xz 2959024 SHA256:1223b7bf7c8dfe2e290882f3bfb88ba2468b30495a1bf8dfd54dc7e810987887
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.28-2.debian.tar.xz' djvulibre_3.5.28-2.debian.tar.xz 17420 SHA256:6f85dcd7cdb856cc3e4a31fc381e73a6cab717c90e058f474fb4d2ab29635d91
```

Other potentially useful URLs:

- https://sources.debian.net/src/djvulibre/3.5.28-2/ (for browsing the source)
- https://sources.debian.net/src/djvulibre/3.5.28-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/djvulibre/3.5.28-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.21.17`

Binary Packages:

- `dpkg=1.21.17`
- `dpkg-dev=1.21.17`
- `libdpkg-perl=1.21.17`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dpkg/1.21.17/


### `dpkg` source package: `e2fsprogs=1.46.6~rc1-1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.46.6~rc1-1+b1`
- `e2fsprogs=1.46.6~rc1-1+b1`
- `libcom-err2:amd64=1.46.6~rc1-1+b1`
- `libext2fs2:amd64=1.46.6~rc1-1+b1`
- `libss2:amd64=1.46.6~rc1-1+b1`
- `logsave=1.46.6~rc1-1+b1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

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

### `dpkg` source package: `elfutils=0.188-2`

Binary Packages:

- `libelf1:amd64=0.188-2`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

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
$ apt-get source -qq --print-uris elfutils=0.188-2
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.188-2.1.dsc' elfutils_0.188-2.1.dsc 3451 SHA256:2e73c5bfe9d0ddbf837742d638c43b049590ae1de8f6e3d9c2740c28e2550760
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.188.orig.tar.bz2' elfutils_0.188.orig.tar.bz2 9112977 SHA256:fb8b0e8d0802005b9a309c60c1d8de32dd2951b56f0c3a3cb56d21ce01595dff
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.188.orig.tar.bz2.asc' elfutils_0.188.orig.tar.bz2.asc 488 SHA256:061bb59801b8a23de4b129acb242210889be2c25b43ad2bcc2eb04966a1823e6
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.188-2.1.debian.tar.xz' elfutils_0.188-2.1.debian.tar.xz 42328 SHA256:dac77dc13f8f3bb2c541d631faf75216fc6640a359143a4545129ee096bc35ff
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.188-2/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.188-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.188-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.5.0-1`

Binary Packages:

- `libexpat1:amd64=2.5.0-1`
- `libexpat1-dev:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

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

### `dpkg` source package: `fftw3=3.3.10-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.10-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.10-1
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10-1.dsc' fftw3_3.3.10-1.dsc 2771 SHA256:5c6a64c8047e33f122fb1eebd4316178e3da86da16de70da0527906adcf22924
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10.orig.tar.gz' fftw3_3.3.10.orig.tar.gz 4144100 SHA256:56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.10-1.debian.tar.xz' fftw3_3.3.10-1.debian.tar.xz 14520 SHA256:a19c2fa4eebb123626a8df89387e3437369d234f68799d3b2c0c9fb84b9ca875
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.10-1/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.41-4`

Binary Packages:

- `file=1:5.41-4`
- `libmagic-mgc=1:5.41-4`
- `libmagic1:amd64=1:5.41-4`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/file/1:5.41-4/


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
- `libfontconfig-dev:amd64=2.13.1-4.5`
- `libfontconfig1:amd64=2.13.1-4.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/fontconfig/2.13.1-4.5/


### `dpkg` source package: `fonts-dejavu=2.37-2`

Binary Packages:

- `fonts-dejavu-core=2.37-2`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-2
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-2.dsc' fonts-dejavu_2.37-2.dsc 2387 SHA256:13948768dbf1a9aa3ae9fe592a4c6c904b1dd075acb689a49b85e0ae73b1756c
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-2.debian.tar.xz' fonts-dejavu_2.37-2.debian.tar.xz 11408 SHA256:428cf37685df891574d2dcb32aa9366e4e95985fda7d87069903313bb03470ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-dejavu/2.37-2/ (for browsing the source)
- https://sources.debian.net/src/fonts-dejavu/2.37-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-dejavu/2.37-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.12.1+dfsg-3`

Binary Packages:

- `libfreetype-dev:amd64=2.12.1+dfsg-3`
- `libfreetype6:amd64=2.12.1+dfsg-3`
- `libfreetype6-dev:amd64=2.12.1+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libfreetype-dev/copyright`, `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

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

### `dpkg` source package: `gcc-12=12.2.0-13`

Binary Packages:

- `cpp-12=12.2.0-13`
- `g++-12=12.2.0-13`
- `gcc-12=12.2.0-13`
- `gcc-12-base:amd64=12.2.0-13`
- `libasan8:amd64=12.2.0-13`
- `libatomic1:amd64=12.2.0-13`
- `libcc1-0:amd64=12.2.0-13`
- `libgcc-12-dev:amd64=12.2.0-13`
- `libgcc-s1:amd64=12.2.0-13`
- `libgomp1:amd64=12.2.0-13`
- `libitm1:amd64=12.2.0-13`
- `liblsan0:amd64=12.2.0-13`
- `libquadmath0:amd64=12.2.0-13`
- `libstdc++-12-dev:amd64=12.2.0-13`
- `libstdc++6:amd64=12.2.0-13`
- `libtsan2:amd64=12.2.0-13`
- `libubsan1:amd64=12.2.0-13`

Licenses: (parsed from: `/usr/share/doc/cpp-12/copyright`, `/usr/share/doc/g++-12/copyright`, `/usr/share/doc/gcc-12/copyright`, `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-12-dev/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-12-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-12=12.2.0-13
'http://deb.debian.org/debian/pool/main/g/gcc-12/gcc-12_12.2.0-13.dsc' gcc-12_12.2.0-13.dsc 27302 SHA256:8a26e762fc13084309064ba0a4d0a0b7d0fd20dc6d04c641337d8d233a0bd381
'http://deb.debian.org/debian/pool/main/g/gcc-12/gcc-12_12.2.0.orig.tar.gz' gcc-12_12.2.0.orig.tar.gz 87090343 SHA256:b8298be16aeeb96a889c6afed0a8e2241b47452e89cc81fe65ea849d5c740fcb
'http://deb.debian.org/debian/pool/main/g/gcc-12/gcc-12_12.2.0-13.debian.tar.xz' gcc-12_12.2.0-13.debian.tar.xz 1661960 SHA256:d24b3e7adb2bc1275ab9642918120013fea59b292edff4c3fd1f19c1d43715e4
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-12/12.2.0-13/ (for browsing the source)
- https://sources.debian.net/src/gcc-12/12.2.0-13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-12/12.2.0-13/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.202`

Binary Packages:

- `cpp=4:12.2.0-2+b1`
- `g++=4:12.2.0-2+b1`
- `gcc=4:12.2.0-2+b1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-defaults/1.202/


### `dpkg` source package: `gdbm=1.23-3`

Binary Packages:

- `libgdbm-compat4:amd64=1.23-3`
- `libgdbm-dev:amd64=1.23-3`
- `libgdbm6:amd64=1.23-3`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6/copyright`)

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

### `dpkg` source package: `gdk-pixbuf=2.42.10+dfsg-1`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.42.10+dfsg-1`
- `libgdk-pixbuf-2.0-0:amd64=2.42.10+dfsg-1`
- `libgdk-pixbuf-2.0-dev:amd64=2.42.10+dfsg-1`
- `libgdk-pixbuf2.0-bin=2.42.10+dfsg-1`
- `libgdk-pixbuf2.0-common=2.42.10+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf-2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf-2.0-dev/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-bin/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`)

- `CC0-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.42.10+dfsg-1
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg-1.dsc' gdk-pixbuf_2.42.10+dfsg-1.dsc 3264 SHA256:a88dd826501fcf8f57db0903be696a09fd87c84a8b31b3142d98b214c79773e5
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg.orig.tar.xz' gdk-pixbuf_2.42.10+dfsg.orig.tar.xz 6439240 SHA256:46663e445468e92f4a0ca876b02aed4f8758595ee3acfaa6ef3ba2b29e1c1930
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg-1.debian.tar.xz' gdk-pixbuf_2.42.10+dfsg-1.debian.tar.xz 20944 SHA256:a1813a2b148e2f8f2b5677d383f7410bdf11ac6b7fb0f1785a321356e90f5960
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdk-pixbuf/2.42.10+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/gdk-pixbuf/2.42.10+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdk-pixbuf/2.42.10+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `git=1:2.39.0-1`

Binary Packages:

- `git=1:2.39.0-1`
- `git-man=1:2.39.0-1`

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
- `Zlib`
- `dlmalloc`
- `mingw-runtime`

Source:

```console
$ apt-get source -qq --print-uris git=1:2.39.0-1
'http://deb.debian.org/debian/pool/main/g/git/git_2.39.0-1.dsc' git_2.39.0-1.dsc 2825 SHA256:90fd0f11649e1beff7bbc94d3c1d68514035d707d0897897b092c49cc426cb56
'http://deb.debian.org/debian/pool/main/g/git/git_2.39.0.orig.tar.xz' git_2.39.0.orig.tar.xz 7157548 SHA256:ba199b13fb5a99ca3dec917b0bd736bc0eb5a9df87737d435eddfdf10d69265b
'http://deb.debian.org/debian/pool/main/g/git/git_2.39.0-1.debian.tar.xz' git_2.39.0-1.debian.tar.xz 739336 SHA256:46bfe8bd0e5d52febf4a3dad17acf63655cb2babc57603183b8a6376dd1a3f4b
```

Other potentially useful URLs:

- https://sources.debian.net/src/git/1:2.39.0-1/ (for browsing the source)
- https://sources.debian.net/src/git/1:2.39.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/git/1:2.39.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.74.4-1`

Binary Packages:

- `libglib2.0-0:amd64=2.74.4-1`
- `libglib2.0-bin=2.74.4-1`
- `libglib2.0-data=2.74.4-1`
- `libglib2.0-dev:amd64=2.74.4-1`
- `libglib2.0-dev-bin=2.74.4-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.74.4-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.74.4-1.dsc' glib2.0_2.74.4-1.dsc 3636 SHA256:d770d4f27f05b803700aa4b1afbda12f9977b29d193ee4856d7664117ca56fa7
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.74.4.orig-unicode-data.tar.xz' glib2.0_2.74.4.orig-unicode-data.tar.xz 267756 SHA256:8276504e4ccb2878644775f026554f014f9026e257a4ee1903dea34ce8177315
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.74.4.orig.tar.xz' glib2.0_2.74.4.orig.tar.xz 5208484 SHA256:0e82da5ea129b4444227c7e4a9e598f7288d1994bf63f129c44b90cfd2432172
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.74.4-1.debian.tar.xz' glib2.0_2.74.4-1.debian.tar.xz 116756 SHA256:48eff03561d82c4c17a0afaa0f263b032110c408e0e8f5878248f26965d95e07
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.74.4-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.74.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.74.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.36-7`

Binary Packages:

- `libc-bin=2.36-7`
- `libc-dev-bin=2.36-7`
- `libc6:amd64=2.36-7`
- `libc6-dev:amd64=2.36-7`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.36-7
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.36-7.dsc' glibc_2.36-7.dsc 9729 SHA256:72832bd32f24c16de7205a3c495d34fecb6194203c1ffb27d82876cfc7839408
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.36.orig.tar.xz' glibc_2.36.orig.tar.xz 19363988 SHA256:a543c02070d46ccaf866957efd13f10c924daa74c86a90a0254db09a92a708ee
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.36-7.debian.tar.xz' glibc_2.36-7.debian.tar.xz 827980 SHA256:3b020f3242565e158b689d85b922567d91d14063ea543a936a1faad7abfd2d4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.36-7/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.36-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.36-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.2.1+dfsg1-1.1`

Binary Packages:

- `libgmp-dev:amd64=2:6.2.1+dfsg1-1.1`
- `libgmp10:amd64=2:6.2.1+dfsg1-1.1`
- `libgmpxx4ldbl:amd64=2:6.2.1+dfsg1-1.1`

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
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg1-1.1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1.dsc' gmp_6.2.1+dfsg1-1.1.dsc 2238 SHA256:2831ed4f83bc3304c2403474b335652ab2dc507cd517de44414d9142171748f0
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1.orig.tar.xz' gmp_6.2.1+dfsg1.orig.tar.xz 1787428 SHA256:471b9e463e04362a0124f215afc5f0a4b99caedeeb62634c61bbc12988efa64c
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1.debian.tar.xz' gmp_6.2.1+dfsg1-1.1.debian.tar.xz 19444 SHA256:4e3e324d72fe688e409c716d33b35aa8657f6016cc1aabd5d9c7ec137412e5ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.2.1+dfsg1-1.1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.2.1+dfsg1-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.2.1+dfsg1-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.40-1`

Binary Packages:

- `dirmngr=2.2.40-1`
- `gnupg=2.2.40-1`
- `gnupg-l10n=2.2.40-1`
- `gnupg-utils=2.2.40-1`
- `gpg=2.2.40-1`
- `gpg-agent=2.2.40-1`
- `gpg-wks-client=2.2.40-1`
- `gpg-wks-server=2.2.40-1`
- `gpgconf=2.2.40-1`
- `gpgsm=2.2.40-1`
- `gpgv=2.2.40-1`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.40-1
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.40-1.dsc' gnupg2_2.2.40-1.dsc 3219 SHA256:2e07176a2a1c7f98ac9713d2b99b1c77f310d67b67a2f51faea1ed676b858bc5
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.40.orig.tar.bz2' gnupg2_2.2.40.orig.tar.bz2 7301631 SHA256:1164b29a75e8ab93ea15033300149e1872a7ef6bdda3d7c78229a735f8204c28
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.40.orig.tar.bz2.asc' gnupg2_2.2.40.orig.tar.bz2.asc 228 SHA256:3907dc165299cd53c0b4aec862323c3bce6037c411600ec87dc5eed7a55eba4a
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.40-1.debian.tar.xz' gnupg2_2.2.40-1.debian.tar.xz 62220 SHA256:b398070b061dcf035da6e97576512ab7a0e13a48ab0364850be67a439e519706
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.40-1/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.40-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.40-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.7.8-4`

Binary Packages:

- `libgnutls30:amd64=3.7.8-4`

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
$ apt-get source -qq --print-uris gnutls28=3.7.8-4
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.8-4.dsc' gnutls28_3.7.8-4.dsc 3445 SHA256:aa807a59f8c7a6d9d7b034eb8e9665f4b232fc496ca89bb1b9fec39c8cf192d5
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.8.orig.tar.xz' gnutls28_3.7.8.orig.tar.xz 6029220 SHA256:c58ad39af0670efe6a8aee5e3a8b2331a1200418b64b7c51977fb396d4617114
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.8.orig.tar.xz.asc' gnutls28_3.7.8.orig.tar.xz.asc 1760 SHA256:796ac6a01ed73a96b6737c4ea2928ea99715ce922fd49fe6e81de2fc36dc5945
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.8-4.debian.tar.xz' gnutls28_3.7.8-4.debian.tar.xz 85632 SHA256:9b731ee77d3525885178096d44113e466f8033b35dd9df1540a8e7f5a488d5ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.7.8-4/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.7.8-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.7.8-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gobject-introspection=1.74.0-2`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.74.0-2`
- `gir1.2-glib-2.0:amd64=1.74.0-2`
- `libgirepository-1.0-1:amd64=1.74.0-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `AFL-2.0`
- `Apache-2.0`
- `Apache-2.0 with LLVM exception`
- `BSD-2-clause`
- `BSD-3-clause-pcre`
- `CC-BY-SA-3.0`
- `CC0-1.0`
- `Expat`
- `FSFAP`
- `FSFULLR`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `Kuchling-PD`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MPL-1.1`
- `Plumb-PD`
- `Unicode-DFS-2016`
- `bzip2-1.0.6`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.74.0-2
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.74.0-2.dsc' gobject-introspection_1.74.0-2.dsc 3364 SHA256:acabb3cceaf18c77b6c7d93c55e58ea8de31e5196a1e2f0f76742acdca9c2306
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.74.0.orig-glib.tar.xz' gobject-introspection_1.74.0.orig-glib.tar.xz 5183072 SHA256:3652c7f072d7b031a6b5edd623f77ebc5dcd2ae698598abcc89ff39ca75add30
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.74.0.orig.tar.xz' gobject-introspection_1.74.0.orig.tar.xz 1044008 SHA256:347b3a719e68ba4c69ff2d57ee2689233ea8c07fc492205e573386779e42d653
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.74.0-2.debian.tar.xz' gobject-introspection_1.74.0-2.debian.tar.xz 39336 SHA256:1bcbdd176b1f5314f779c553b46503bbbd7ef23f1f141e3281ee24645144f0f4
```

Other potentially useful URLs:

- https://sources.debian.net/src/gobject-introspection/1.74.0-2/ (for browsing the source)
- https://sources.debian.net/src/gobject-introspection/1.74.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gobject-introspection/1.74.0-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `grep=3.8-3`

Binary Packages:

- `grep=3.8-3`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.8-3
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.8-3.dsc' grep_3.8-3.dsc 1608 SHA256:b5b25e30ece7da06ea4ef856f362b77a6e47ece57e7b1b1b0abcf2f5b1312222
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.8.orig.tar.xz' grep_3.8.orig.tar.xz 1709536 SHA256:498d7cc1b4fb081904d87343febb73475cf771e424fb7e6141aff66013abc382
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.8.orig.tar.xz.asc' grep_3.8.orig.tar.xz.asc 833 SHA256:347aec924499df3fa41a0d782f3cd3e4a51a15de98b44eaab04084cd34060cd0
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.8-3.debian.tar.xz' grep_3.8-3.debian.tar.xz 20332 SHA256:72d615732ccef5721b4c4e7cdf62daa46399d092ae7d324ff89958fb6cac8512
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.8-3/ (for browsing the source)
- https://sources.debian.net/src/grep/3.8-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.8-3/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `harfbuzz=6.0.0-1`

Binary Packages:

- `libharfbuzz0b:amd64=6.0.0-1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=6.0.0-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_6.0.0-1.dsc' harfbuzz_6.0.0-1.dsc 2706 SHA256:8d95ddf04ea0130dc7316880c87e8679c988b5d28597575866c30b15f4b03d0b
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_6.0.0.orig.tar.xz' harfbuzz_6.0.0.orig.tar.xz 18952524 SHA256:1d1010a1751d076d5291e433c138502a794d679a7498d1268ee21e2d4a140eb4
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_6.0.0-1.debian.tar.xz' harfbuzz_6.0.0-1.debian.tar.xz 11432 SHA256:874ec148d5d133c85831130345bf6abc2b810af99fa6a51dc903f8510a57fa7f
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/6.0.0-1/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/6.0.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/6.0.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.17-2`

Binary Packages:

- `hicolor-icon-theme=0.17-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-2
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.dsc' hicolor-icon-theme_0.17-2.dsc 2053 SHA256:9df02b466f82cd6fa13930bc197d001ed8ddac1abc7f8dde3db45ed1708336bd
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.debian.tar.xz' hicolor-icon-theme_0.17-2.debian.tar.xz 3536 SHA256:97eec9852a2923b95bd13fc59c30fb1b9063ffd1f8a04748544d4975a84e98f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.17-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.23+nmu1`

Binary Packages:

- `hostname=3.23+nmu1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23+nmu1
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23%2bnmu1.dsc' hostname_3.23+nmu1.dsc 1281 SHA256:56f2189eaeee638e86d29a05356e7001632e33b2132a41a4634a9ff839264ea6
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23%2bnmu1.tar.xz' hostname_3.23+nmu1.tar.xz 12876 SHA256:f3fb39f30b00ba7dba2cec013195d7e1bb215f241153208ccd52da3eedfe7a7d
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.23+nmu1/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.23+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.23+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=72.1-3`

Binary Packages:

- `icu-devtools=72.1-3`
- `libicu-dev:amd64=72.1-3`
- `libicu72:amd64=72.1-3`

Licenses: (parsed from: `/usr/share/doc/icu-devtools/copyright`, `/usr/share/doc/libicu-dev/copyright`, `/usr/share/doc/libicu72/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu=72.1-3
'http://deb.debian.org/debian/pool/main/i/icu/icu_72.1-3.dsc' icu_72.1-3.dsc 2252 SHA256:fdb557502398e70fe74502f5c2e5ec436b7c7f267420fba7ceaca7ce501dbf6e
'http://deb.debian.org/debian/pool/main/i/icu/icu_72.1.orig.tar.gz' icu_72.1.orig.tar.gz 26303933 SHA256:a2d2d38217092a7ed56635e34467f92f976b370e20182ad325edea6681a71d68
'http://deb.debian.org/debian/pool/main/i/icu/icu_72.1.orig.tar.gz.asc' icu_72.1.orig.tar.gz.asc 659 SHA256:87b6ff610d587292cec0444fa8cbbfb12994cb89bade40578f5ba6470de245c7
'http://deb.debian.org/debian/pool/main/i/icu/icu_72.1-3.debian.tar.xz' icu_72.1-3.debian.tar.xz 62172 SHA256:e7b9edb525c7c94043577920dc5f1cc63c18e362a07b44d3e3ec39e89f174bb6
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/72.1-3/ (for browsing the source)
- https://sources.debian.net/src/icu/72.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/72.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imagemagick=8:6.9.11.60+dfsg-1.4`

Binary Packages:

- `imagemagick=8:6.9.11.60+dfsg-1.4`
- `imagemagick-6-common=8:6.9.11.60+dfsg-1.4`
- `imagemagick-6.q16=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-6-arch-config:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-6-headers=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-6.q16-6:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-6.q16-6-extra:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-6.q16-dev:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickcore-dev=8:6.9.11.60+dfsg-1.4`
- `libmagickwand-6-headers=8:6.9.11.60+dfsg-1.4`
- `libmagickwand-6.q16-6:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickwand-6.q16-dev:amd64=8:6.9.11.60+dfsg-1.4`
- `libmagickwand-dev=8:6.9.11.60+dfsg-1.4`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-6/copyright`, `/usr/share/doc/libmagickcore-6.q16-6-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-6/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
- `TatcherUlrichPublicDomain`
- `aclocal`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.9.11.60+dfsg-1.4
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg-1.4.dsc' imagemagick_6.9.11.60+dfsg-1.4.dsc 4859 SHA256:54ebca75700629de00052fd1f9deea5956579c3d5ccd27857ca4d893c573d822
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg.orig.tar.xz' imagemagick_6.9.11.60+dfsg.orig.tar.xz 9395144 SHA256:472fb516df842ee9c819ed80099c188463b9e961303511c36ae24d0eaa8959c4
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg-1.4.debian.tar.xz' imagemagick_6.9.11.60+dfsg-1.4.debian.tar.xz 246984 SHA256:aadf3bd6b7570895d6c886f1ba5817ac9e17d2fe18c6a494c671df3ffbb14da7
```

Other potentially useful URLs:

- https://sources.debian.net/src/imagemagick/8:6.9.11.60+dfsg-1.4/ (for browsing the source)
- https://sources.debian.net/src/imagemagick/8:6.9.11.60+dfsg-1.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imagemagick/8:6.9.11.60+dfsg-1.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imath=3.1.5-1`

Binary Packages:

- `libimath-3-1-29:amd64=3.1.5-1+b1`
- `libimath-dev:amd64=3.1.5-1+b1`

Licenses: (parsed from: `/usr/share/doc/libimath-3-1-29/copyright`, `/usr/share/doc/libimath-dev/copyright`)

- `imath`

Source:

```console
$ apt-get source -qq --print-uris imath=3.1.5-1
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.5-1.dsc' imath_3.1.5-1.dsc 2612 SHA256:da8a99da278d502805778917d2bb7129af099ac94ed874c78ce044b3733b5261
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.5.orig.tar.gz' imath_3.1.5.orig.tar.gz 570875 SHA256:1e9c7c94797cf7b7e61908aed1f80a331088cc7d8873318f70376e4aed5f25fb
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.5.orig.tar.gz.asc' imath_3.1.5.orig.tar.gz.asc 287 SHA256:a2c4ac5151789903ca8ab3093a2798491463ccf2abfd003a20f96453e505dd5f
'http://deb.debian.org/debian/pool/main/i/imath/imath_3.1.5-1.debian.tar.xz' imath_3.1.5-1.debian.tar.xz 8836 SHA256:fec1413bd530d6b02d7e353514521fb1c7d1443f4bc20134e9ebfd60dd2bfaba
```

Other potentially useful URLs:

- https://sources.debian.net/src/imath/3.1.5-1/ (for browsing the source)
- https://sources.debian.net/src/imath/3.1.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imath/3.1.5-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `jansson=2.14-2`

Binary Packages:

- `libjansson4:amd64=2.14-2`

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

### `dpkg` source package: `jbigkit=2.1-6.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-6.1`
- `libjbig0:amd64=2.1-6.1`

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

### `dpkg` source package: `keyutils=1.6.3-2`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-2`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-2
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3-2.dsc' keyutils_1.6.3-2.dsc 2079 SHA256:77e6f0e5018f0f6cfb5a3689d7f185a014b2437d0a097609ffda32bfd3a64f28
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA256:a61d5706136ae4c05bd48f86186bcfdbd88dd8bd5107e3e195c924cfc1b39bb4
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.3-2.debian.tar.xz' keyutils_1.6.3-2.debian.tar.xz 13196 SHA256:9b9b40729465d4895860838e82e13d2ee4ffc44a97c9acd1d47a51bd33ade899
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.6.3-2/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.6.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.6.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.20.1-1`

Binary Packages:

- `krb5-multidev:amd64=1.20.1-1`
- `libgssapi-krb5-2:amd64=1.20.1-1`
- `libgssrpc4:amd64=1.20.1-1`
- `libk5crypto3:amd64=1.20.1-1`
- `libkadm5clnt-mit12:amd64=1.20.1-1`
- `libkadm5srv-mit12:amd64=1.20.1-1`
- `libkdb5-10:amd64=1.20.1-1`
- `libkrb5-3:amd64=1.20.1-1`
- `libkrb5-dev:amd64=1.20.1-1`
- `libkrb5support0:amd64=1.20.1-1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.20.1-1
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.20.1-1.dsc' krb5_1.20.1-1.dsc 3168 SHA256:dca082e1aac1ae5f7622b524942a305ad7c93e584f3a67db02f48542eb5b415a
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.20.1.orig.tar.gz' krb5_1.20.1.orig.tar.gz 8661660 SHA256:704aed49b19eb5a7178b34b2873620ec299db08752d6a8574f95d41879ab8851
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.20.1.orig.tar.gz.asc' krb5_1.20.1.orig.tar.gz.asc 833 SHA256:2afeec5dbc586cc40b7975645e02b4c41c4d719dd02213e828c72d8239d55666
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.20.1-1.debian.tar.xz' krb5_1.20.1-1.debian.tar.xz 99428 SHA256:19c5f3e66ee1c22f05d86e1ec521e08f885105db4d42403593db6e6db38fad13
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.20.1-1/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.20.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.20.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.14-1`

Binary Packages:

- `liblcms2-2:amd64=2.14-1`
- `liblcms2-dev:amd64=2.14-1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.14-1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.14-1.dsc' lcms2_2.14-1.dsc 1944 SHA256:3c7d2bfffb77611b4f22119258c355cfb9fa29f97ed59c05fc736b94567255b7
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.14.orig.tar.gz' lcms2_2.14.orig.tar.gz 7406694 SHA256:28474ea6f6591c4d4cee972123587001a4e6e353412a41b3e9e82219818d5740
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.14-1.debian.tar.xz' lcms2_2.14-1.debian.tar.xz 11208 SHA256:5c2a4818b780c7d08d2e4605268ec0f485492b0de389bd32ceec9c42e6db7690
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.14-1/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lerc=4.0.0+ds-2`

Binary Packages:

- `liblerc-dev:amd64=4.0.0+ds-2`
- `liblerc4:amd64=4.0.0+ds-2`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

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

### `dpkg` source package: `libassuan=2.5.5-5`

Binary Packages:

- `libassuan0:amd64=2.5.5-5`

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
$ apt-get source -qq --print-uris libassuan=2.5.5-5
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.5-5.dsc' libassuan_2.5.5-5.dsc 1997 SHA256:60be1d43dd5a7c4bce7a97f58513915990c8c615ea02c68b8cd5cf1e33b84a0c
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2' libassuan_2.5.5.orig.tar.bz2 572263 SHA256:8e8c2fcc982f9ca67dcbb1d95e2dc746b1739a4668bc20b3a3c5be632edb34e4
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2.asc' libassuan_2.5.5.orig.tar.bz2.asc 228 SHA256:8bb0d1d818ac91fa27a8ebed2975dac12eac9a6e075dfba225cc488ac9b4133f
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.5-5.debian.tar.xz' libassuan_2.5.5-5.debian.tar.xz 14256 SHA256:9d46fe972ba45692e28a2618e457a7f9141afc122281a862bcb4aa16716c97d7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libassuan/2.5.5-5/ (for browsing the source)
- https://sources.debian.net/src/libassuan/2.5.5-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libassuan/2.5.5-5/ (for access to the source package after it no longer exists in the archive)

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

- `libcap-ng0:amd64=0.8.3-1+b2`

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

### `dpkg` source package: `libcap2=1:2.66-3`

Binary Packages:

- `libcap2:amd64=1:2.66-3`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.66-3
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.66-3.dsc' libcap2_2.66-3.dsc 2204 SHA256:0fa3650cb450b1d2056cf28b2433683552ddc4f2bceecd834ec050bc65ae762d
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.66.orig.tar.xz' libcap2_2.66.orig.tar.xz 181592 SHA256:15c40ededb3003d70a283fe587a36b7d19c8b3b554e33f86129c059a4bb466b2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.66-3.debian.tar.xz' libcap2_2.66-3.debian.tar.xz 20196 SHA256:d300a825188f7253021c26dbdaec24b4c7bff3e8717286a1af1f3292601d3069
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.66-3/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.66-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.66-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcbor=0.8.0-2`

Binary Packages:

- `libcbor0.8:amd64=0.8.0-2+b1`

Licenses: (parsed from: `/usr/share/doc/libcbor0.8/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.8.0-2
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.8.0-2.dsc' libcbor_0.8.0-2.dsc 2114 SHA256:ea9cbadf7d9cd9a3f7dcf7467f3e71dd7aab6d06cad15d01b2f0c19a0ad749a7
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.8.0.orig.tar.gz' libcbor_0.8.0.orig.tar.gz 267044 SHA256:618097166ea4a54499646998ccaa949a5816e6a665cf1d6df383690895217c8b
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.8.0-2.debian.tar.xz' libcbor_0.8.0-2.debian.tar.xz 4024 SHA256:48df3ff85250d1e6274a19d9bcc18b5b582a368667120b7bd21d798ca6feccb0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcbor/0.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/libcbor/0.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcbor/0.8.0-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libde265=1.0.9-1`

Binary Packages:

- `libde265-0:amd64=1.0.9-1`

Licenses: (parsed from: `/usr/share/doc/libde265-0/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `other-1`
- `public-domain-1`
- `public-domain-2`

Source:

```console
$ apt-get source -qq --print-uris libde265=1.0.9-1
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.9-1.dsc' libde265_1.0.9-1.dsc 2216 SHA256:4d3431a7e72c7927f38d37f3a37bc973008f7b1bcff0a1544d555550f9e7e355
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.9.orig.tar.gz' libde265_1.0.9.orig.tar.gz 845520 SHA256:29bc6b64bf658d81a4446a3f98e0e4636fd4fd3d971b072d440cef987d5439de
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.9-1.debian.tar.xz' libde265_1.0.9-1.debian.tar.xz 9172 SHA256:8882fbad80a7d511e787455ceada72b30d17b16b8def1ce3e4e660f7e32021a0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libde265/1.0.9-1/ (for browsing the source)
- https://sources.debian.net/src/libde265/1.0.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libde265/1.0.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdeflate=1.14-1`

Binary Packages:

- `libdeflate-dev:amd64=1.14-1`
- `libdeflate0:amd64=1.14-1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

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

### `dpkg` source package: `libedit=3.1-20221030-2`

Binary Packages:

- `libedit2:amd64=3.1-20221030-2`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20221030-2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20221030-2.dsc' libedit_3.1-20221030-2.dsc 2281 SHA256:6e701f5e0bcd81f80fe3686d84861e9d9247e247ed08fb96ffc3746102aedd21
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20221030.orig.tar.gz' libedit_3.1-20221030.orig.tar.gz 533261 SHA256:f0925a5adf4b1bf116ee19766b7daa766917aec198747943b1c4edf67a4be2bb
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20221030-2.debian.tar.xz' libedit_3.1-20221030-2.debian.tar.xz 16488 SHA256:ab1ec0e03ae5122831a02d9a0be2afa4b91d739cd459ee1e168c917bae66b622
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20221030-2/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20221030-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20221030-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liberror-perl=0.17029-2`

Binary Packages:

- `liberror-perl=0.17029-2`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17029-2
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029-2.dsc' liberror-perl_0.17029-2.dsc 2085 SHA256:48c6ca66e03144a8bec4f32b2419f34d70e8a00500b01ea3bb6a5cab0c03e164
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029.orig.tar.gz' liberror-perl_0.17029.orig.tar.gz 33304 SHA256:1a23f7913032aed6d4b68321373a3899ca66590f4727391a091ec19c95bf7adc
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029-2.debian.tar.xz' liberror-perl_0.17029-2.debian.tar.xz 4608 SHA256:60deb5d5cbc4b478f8db4cfa0ac6c512e85eea5fcd7fc7285c26a9942d3b8b67
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17029-2/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17029-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17029-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libevent=2.1.12-stable-5`

Binary Packages:

- `libevent-2.1-7:amd64=2.1.12-stable-5+b1`
- `libevent-core-2.1-7:amd64=2.1.12-stable-5+b1`
- `libevent-dev=2.1.12-stable-5+b1`
- `libevent-extra-2.1-7:amd64=2.1.12-stable-5+b1`
- `libevent-openssl-2.1-7:amd64=2.1.12-stable-5+b1`
- `libevent-pthreads-2.1-7:amd64=2.1.12-stable-5+b1`

Licenses: (parsed from: `/usr/share/doc/libevent-2.1-7/copyright`, `/usr/share/doc/libevent-core-2.1-7/copyright`, `/usr/share/doc/libevent-dev/copyright`, `/usr/share/doc/libevent-extra-2.1-7/copyright`, `/usr/share/doc/libevent-openssl-2.1-7/copyright`, `/usr/share/doc/libevent-pthreads-2.1-7/copyright`)

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
$ apt-get source -qq --print-uris libevent=2.1.12-stable-5
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.12-stable-5.dsc' libevent_2.1.12-stable-5.dsc 2356 SHA256:d053d1226acc4664e28533e14664c9a607f001ca72368fdfe877451bdd09abce
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.12-stable.orig.tar.gz' libevent_2.1.12-stable.orig.tar.gz 1100847 SHA256:92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.12-stable-5.debian.tar.xz' libevent_2.1.12-stable-5.debian.tar.xz 17032 SHA256:baeefe3ba8bb99a8cfb972d24e7678e74d4464695662530e4c5a517ce187c060
```

Other potentially useful URLs:

- https://sources.debian.net/src/libevent/2.1.12-stable-5/ (for browsing the source)
- https://sources.debian.net/src/libevent/2.1.12-stable-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libevent/2.1.12-stable-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libexif=0.6.24-1`

Binary Packages:

- `libexif-dev:amd64=0.6.24-1+b1`
- `libexif12:amd64=0.6.24-1+b1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.24-1
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.24-1.dsc' libexif_0.6.24-1.dsc 2116 SHA256:81f5fa53f45e786ed0b2bdf4b94c25d6b25eafda7ab15ce47e94501a276ff93d
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.24.orig.tar.gz' libexif_0.6.24.orig.tar.gz 1140079 SHA256:d3fb7c47829ec4d2def39aa38f4c35a0891763448a05dbf216a329a12bf198f9
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.24-1.debian.tar.xz' libexif_0.6.24-1.debian.tar.xz 11720 SHA256:9f0aca42c1221865ce4c0738301d5e0e99ff2ebed7e3bbbcce7e68605b991784
```

Other potentially useful URLs:

- https://sources.debian.net/src/libexif/0.6.24-1/ (for browsing the source)
- https://sources.debian.net/src/libexif/0.6.24-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libexif/0.6.24-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.4.4-1`

Binary Packages:

- `libffi-dev:amd64=3.4.4-1`
- `libffi8:amd64=3.4.4-1`

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
$ apt-get source -qq --print-uris libffi=3.4.4-1
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.4-1.dsc' libffi_3.4.4-1.dsc 1951 SHA256:21c9ef156b6766535cb014e0765142c8104ffbcd73f003ecfa80cfb314baa4f0
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.4.orig.tar.gz' libffi_3.4.4.orig.tar.gz 1362394 SHA256:d66c56ad259a82cf2a9dfc408b32bf5da52371500b84745f7fb8b645712df676
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.4.4-1.debian.tar.xz' libffi_3.4.4-1.debian.tar.xz 10380 SHA256:161b210bfd2ada0b15b0d2a2a98ffc779cd4a68661a7fdf46f61732493db0895
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.4.4-1/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.4.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.4.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libfido2=1.12.0-2`

Binary Packages:

- `libfido2-1:amd64=1.12.0-2`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.12.0-2
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.12.0-2.dsc' libfido2_1.12.0-2.dsc 2588 SHA256:d961e09e1b9ffc57dd5782739b82b192d8320bcfc0004cf4a7bc1ebfdb685db0
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.12.0.orig.tar.gz' libfido2_1.12.0.orig.tar.gz 652326 SHA256:813d6d25116143d16d2e96791718a74825da16b774a8d093d96f06ae1730d9c5
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.12.0.orig.tar.gz.asc' libfido2_1.12.0.orig.tar.gz.asc 228 SHA256:1da758058224427215b80c39f15c51d01ae40e612964acb3b85c302522fce8d9
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.12.0-2.debian.tar.xz' libfido2_1.12.0-2.debian.tar.xz 52808 SHA256:0e9ba9d1e5851d7641d19427332779cda3ddd96de97c387da7f6eaef6bf0762c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libfido2/1.12.0-2/ (for browsing the source)
- https://sources.debian.net/src/libfido2/1.12.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libfido2/1.12.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.10.1-3`

Binary Packages:

- `libgcrypt20:amd64=1.10.1-3`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.10.1-3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-3.dsc' libgcrypt20_1.10.1-3.dsc 2790 SHA256:0f1754a411c7b5147ff6c335016f27e3c1743a816053642935ffb75a563a0928
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2' libgcrypt20_1.10.1.orig.tar.bz2 3778457 SHA256:ef14ae546b0084cd84259f61a55e07a38c3b53afc0f546bffcef2f01baffe9de
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2.asc' libgcrypt20_1.10.1.orig.tar.bz2.asc 228 SHA256:9da6ae5e8b1c253607be7e951b568932740c143ee519f6b3392ece8211e84e33
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-3.debian.tar.xz' libgcrypt20_1.10.1-3.debian.tar.xz 40560 SHA256:20e11c2ab8ef3878d3e95be6027e6abadbbf49100f313db69acff2548ab6955b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.10.1-3/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.10.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.10.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.46-1`

Binary Packages:

- `libgpg-error0:amd64=1.46-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.46-1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.46-1.dsc' libgpg-error_1.46-1.dsc 2273 SHA256:f1fe4ca2f252f797c2819b0eae1e284e2f0b2c7ac8ec16209054ae45878aaafe
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.46.orig.tar.bz2' libgpg-error_1.46.orig.tar.bz2 1014291 SHA256:b7e11a64246bbe5ef37748de43b245abd72cfcd53c9ae5e7fc5ca59f1c81268d
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.46.orig.tar.bz2.asc' libgpg-error_1.46.orig.tar.bz2.asc 228 SHA256:e0eb40e705068858ee43b6462b204aacf5a554fe4a17cfe63ea99e9612f72e9d
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.46-1.debian.tar.xz' libgpg-error_1.46-1.debian.tar.xz 18532 SHA256:2f80416e16dead749fb6a31a0a3703ae9e562bd32fc4d72184636a1501cd86ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.46-1/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.46-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.46-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libheif=1.13.0-1`

Binary Packages:

- `libheif1:amd64=1.13.0-1`

Licenses: (parsed from: `/usr/share/doc/libheif1/copyright`)

- `BOOST-1.0`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libheif/1.13.0-1/


### `dpkg` source package: `libice=2:1.0.10-1`

Binary Packages:

- `libice-dev:amd64=2:1.0.10-1`
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

### `dpkg` source package: `libksba=1.6.3-2`

Binary Packages:

- `libksba8:amd64=1.6.3-2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.6.3-2
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.6.3-2.dsc' libksba_1.6.3-2.dsc 2482 SHA256:cc3b1c34eafe187a16f6150607b9729beba2934192fff0b800ac1554746f6faf
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.6.3.orig.tar.bz2' libksba_1.6.3.orig.tar.bz2 668287 SHA256:3f72c68db30971ebbf14367527719423f0a4d5f8103fc9f4a1c01a9fa440de5c
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.6.3.orig.tar.bz2.asc' libksba_1.6.3.orig.tar.bz2.asc 228 SHA256:d7c92cf335fe17864ae4a9c575b18a5c5749583d1268663b6d8a53008e40f7d2
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.6.3-2.debian.tar.xz' libksba_1.6.3-2.debian.tar.xz 14636 SHA256:1b11861864d707e95009895185f4febee681c35852a918ffe3683a7a2af23486
```

Other potentially useful URLs:

- https://sources.debian.net/src/libksba/1.6.3-2/ (for browsing the source)
- https://sources.debian.net/src/libksba/1.6.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libksba/1.6.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblqr=0.4.2-2.1`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.1`
- `liblqr-1-0-dev:amd64=0.4.2-2.1`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

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

### `dpkg` source package: `libmaxminddb=1.5.2-1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.5.2-1`
- `libmaxminddb0:amd64=1.5.2-1`

Licenses: (parsed from: `/usr/share/doc/libmaxminddb-dev/copyright`, `/usr/share/doc/libmaxminddb0/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `CC-BY-SA-3.0`
- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libmaxminddb/1.5.2-1/


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

### `dpkg` source package: `libpng1.6=1.6.39-2`

Binary Packages:

- `libpng-dev:amd64=1.6.39-2`
- `libpng16-16:amd64=1.6.39-2`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16/copyright`)

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
$ apt-get source -qq --print-uris libpng1.6=1.6.39-2
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.39-2.dsc' libpng1.6_1.6.39-2.dsc 2241 SHA256:c5fcfb43b423028e7f3c00ea398caddec361bf796ff1cbc18dd565b97fb1a3fe
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.39.orig.tar.gz' libpng1.6_1.6.39.orig.tar.gz 1519415 SHA256:a00e9d2f2f664186e4202db9299397f851aea71b36a35e74910b8820e380d441
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.39-2.debian.tar.xz' libpng1.6_1.6.39-2.debian.tar.xz 31076 SHA256:c3a73a6143e18c9a62b32d6db80acbc525f03c795bca41079087d89febff0217
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.39-2/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.39-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.39-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libpthread-stubs=0.4-1`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.4-1
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1.dsc' libpthread-stubs_0.4-1.dsc 1927 SHA256:8923683ac365475d2cc515e5f16f4adc8bd8e37453e1a2a6bedeb9246922829f
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4.orig.tar.gz' libpthread-stubs_0.4.orig.tar.gz 71252 SHA256:50d5686b79019ccea08bcbd7b02fe5a40634abcfd4146b6e75c6420cc170e9d9
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1.diff.gz' libpthread-stubs_0.4-1.diff.gz 2346 SHA256:ec435ba2852ad4b0522010943a5b7d39fc7e088067367879778cf10e57f5cc3f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpthread-stubs/0.4-1/ (for browsing the source)
- https://sources.debian.net/src/libpthread-stubs/0.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpthread-stubs/0.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `librsvg=2.54.5+dfsg-1`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.54.5+dfsg-1`
- `librsvg2-2:amd64=2.54.5+dfsg-1`
- `librsvg2-common:amd64=2.54.5+dfsg-1`
- `librsvg2-dev:amd64=2.54.5+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

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
- `CC-BY-3.0`
- `CC-zero-waive-1.0-us`
- `Expat`
- `Expat,`
- `FSFAP`
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
$ apt-get source -qq --print-uris librsvg=2.54.5+dfsg-1
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.54.5%2bdfsg-1.dsc' librsvg_2.54.5+dfsg-1.dsc 2879 SHA256:c6df68819c4af8b1a0418b7fcb156915b3210bdc774ac9fbb5b80722a33857f0
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.54.5%2bdfsg.orig.tar.xz' librsvg_2.54.5+dfsg.orig.tar.xz 14613132 SHA256:a65888ab1cfddfbab04433a28fba140a7e66411d8735d9c240e7c2427b26ac4b
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.54.5%2bdfsg-1.debian.tar.xz' librsvg_2.54.5+dfsg-1.debian.tar.xz 34372 SHA256:1a15c41db98789dcff2e0d0153fa69e21965d35ce4525775658e69cbc2f5d962
```

Other potentially useful URLs:

- https://sources.debian.net/src/librsvg/2.54.5+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/librsvg/2.54.5+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/librsvg/2.54.5+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.5.4-1`

Binary Packages:

- `libseccomp2:amd64=2.5.4-1+b2`

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

- `libselinux1:amd64=3.4-1+b4`
- `libselinux1-dev:amd64=3.4-1+b4`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`, `/usr/share/doc/libselinux1-dev/copyright`)

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
- `libsemanage2:amd64=3.4-1+b4`

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

- `libsepol-dev:amd64=3.4-2`
- `libsepol2:amd64=3.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol-dev/copyright`, `/usr/share/doc/libsepol2/copyright`)

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

- `libsm-dev:amd64=2:1.2.3-1`
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

### `dpkg` source package: `libtool=2.4.7-5`

Binary Packages:

- `libltdl-dev:amd64=2.4.7-5`
- `libltdl7:amd64=2.4.7-5`
- `libtool=2.4.7-5`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.7-5
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.7-5.dsc' libtool_2.4.7-5.dsc 2257 SHA256:23b049c3d779b422bf200e960d3d908ff5bab448ee080706d0c6dbfe5e688d7a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.7.orig.tar.xz' libtool_2.4.7.orig.tar.xz 1026028 SHA256:dd637e270439b208907ceead3f163470ed2ce5723ef97ffbda6463c64b57128a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.7-5.debian.tar.xz' libtool_2.4.7-5.debian.tar.xz 40136 SHA256:aa47656a3934b0933617a36d75166292d62b1673ffe31f6a01f535963a7c463d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.7-5/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.7-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.7-5/ (for access to the source package after it no longer exists in the archive)

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

- `libwebp-dev:amd64=1.2.2-2+b2`
- `libwebp7:amd64=1.2.2-2+b2`
- `libwebpdemux2:amd64=1.2.2-2+b2`
- `libwebpmux3:amd64=1.2.2-2+b2`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

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

### `dpkg` source package: `libwmf=0.2.12-5`

Binary Packages:

- `libwmf-0.2-7:amd64=0.2.12-5`
- `libwmf-dev=0.2.12-5`
- `libwmflite-0.2-7:amd64=0.2.12-5`

Licenses: (parsed from: `/usr/share/doc/libwmf-0.2-7/copyright`, `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmflite-0.2-7/copyright`)

- `AGPL-3`
- `AGPL-3 with Font exception`
- `GD`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.12-5
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.12-5.dsc' libwmf_0.2.12-5.dsc 2525 SHA256:5a8e34eace921a209ca6d1138a4e8ddd660706a90722746658ac969495eb84da
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.12.orig.tar.gz' libwmf_0.2.12.orig.tar.gz 3043572 SHA256:464ff63605d7eaf61a4a12dbd420f7a41a4d854675d8caf37729f5bc744820e2
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.12-5.debian.tar.xz' libwmf_0.2.12-5.debian.tar.xz 26012 SHA256:7f74c53528c5cda97a7c9354848acfa4b7bdde7645cfe0bf6092452b48d16dda
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwmf/0.2.12-5/ (for browsing the source)
- https://sources.debian.net/src/libwmf/0.2.12-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwmf/0.2.12-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.8.3-3`

Binary Packages:

- `libx11-6:amd64=2:1.8.3-3`
- `libx11-data=2:1.8.3-3`
- `libx11-dev:amd64=2:1.8.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.3-3
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.3-3.dsc' libx11_1.8.3-3.dsc 2483 SHA256:14bd34d51d43588aa58e48363552cfc4aabf4709420d8a5d60d52e07db3380e3
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.3.orig.tar.gz' libx11_1.8.3.orig.tar.gz 3196019 SHA256:5a55945b7da86ce94733faf229342f75867e9c1090685f47f4d82b7f88602a14
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.3.orig.tar.gz.asc' libx11_1.8.3.orig.tar.gz.asc 801 SHA256:41464d3bfe04109aa2edf2a7775589a4a50272485c29bf7d4a0e38812a6bbadb
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.8.3-3.diff.gz' libx11_1.8.3-3.diff.gz 112623 SHA256:3dde15e46e39ff1d93821f9bf20b42406b9057b0ad37834081e861f0a23acd2b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.8.3-3/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.8.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.8.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.9-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.9-1`
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
- `libxcb-render0-dev:amd64=1.15-1`
- `libxcb-shm0:amd64=1.15-1`
- `libxcb-shm0-dev:amd64=1.15-1`
- `libxcb1:amd64=1.15-1`
- `libxcb1-dev:amd64=1.15-1`

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

### `dpkg` source package: `libxcrypt=1:4.4.33-1`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.33-1`
- `libcrypt1:amd64=1:4.4.33-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libxcrypt/1:4.4.33-1/


### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
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

- `libxext-dev:amd64=2:1.3.4-1+b1`
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

### `dpkg` source package: `libxml2=2.9.14+dfsg-1.1`

Binary Packages:

- `libxml2:amd64=2.9.14+dfsg-1.1+b2`
- `libxml2-dev:amd64=2.9.14+dfsg-1.1+b2`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.14+dfsg-1.1
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.1.dsc' libxml2_2.9.14+dfsg-1.1.dsc 3078 SHA256:ed31c56a4ecec3acbed5012fa5f1a2e23059d89eab938d5c66e809d9ae9bbf8d
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg.orig.tar.xz' libxml2_2.9.14+dfsg.orig.tar.xz 2351200 SHA256:4fe913dec8b1ab89d13b489b419a8203176ea39e931eaa0d25b17eafb9c279e9
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.1.debian.tar.xz' libxml2_2.9.14+dfsg-1.1.debian.tar.xz 32820 SHA256:9a6d8cfcd1cab9ef2130c6e28e2d63c9eb789c3f6e8d25e2e702694f3049ef9a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.14+dfsg-1.1/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.14+dfsg-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.14+dfsg-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.10-1.1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1.1`
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

### `dpkg` source package: `libxslt=1.1.35-1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.35-1`
- `libxslt1.1:amd64=1.1.35-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.35-1
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.35-1.dsc' libxslt_1.1.35-1.dsc 2155 SHA256:d0aaa627a3b18a440019ab82b61c7f7953ec78369aaa92b0680b04e1a20b3df1
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.35.orig.tar.xz' libxslt_1.1.35.orig.tar.xz 1827548 SHA256:8247f33e9a872c6ac859aa45018bc4c4d00b97e2feac9eebc10c93ce1f34dd79
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.35-1.debian.tar.xz' libxslt_1.1.35-1.debian.tar.xz 21420 SHA256:ed2821ca0d0c9235eed907117c6dfbf5a54e15702aa0937293c5dfa52335a315
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxslt/1.1.35-1/ (for browsing the source)
- https://sources.debian.net/src/libxslt/1.1.35-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxslt/1.1.35-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.2.1-1`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1`
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

### `dpkg` source package: `libyaml=0.2.5-1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.5-1`
- `libyaml-dev:amd64=0.2.5-1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.5-1
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5-1.dsc' libyaml_0.2.5-1.dsc 2071 SHA256:1edbf86e5cd76937ff62892ba6c2537456d645d834d4cd4a82430b8be7051bf4
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA256:fa240dbf262be053f3898006d502d514936c818e422afdcf33921c63bed9bf2e
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.5-1.debian.tar.xz' libyaml_0.2.5-1.debian.tar.xz 5324 SHA256:8730e0510129e516c3c7c1cda7428e02a0a122699e57ed203f835a338a686d1f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.2.5-1/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.2.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.2.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.5.2+dfsg2-3`

Binary Packages:

- `libzstd1:amd64=1.5.2+dfsg2-3`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.2+dfsg2-3
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg2-3.dsc' libzstd_1.5.2+dfsg2-3.dsc 2454 SHA256:219196056788aec348594d4483ec42883cada8c765ea00f591611747cebc3f9a
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg2.orig.tar.xz' libzstd_1.5.2+dfsg2.orig.tar.xz 1447608 SHA256:d2644154e546d07a39f18ba46031d3b487471e98df94a80b9f635077105c526e
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg2.orig.tar.xz.asc' libzstd_1.5.2+dfsg2.orig.tar.xz.asc 833 SHA256:e7091780473c28800d6ac6a3cc0b73081b8504d76f7ee0ae4c1915f7d3af507a
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg2-3.debian.tar.xz' libzstd_1.5.2+dfsg2-3.debian.tar.xz 12944 SHA256:d294999c0e4cf871d4cde6fa6c7585c72a9f5dbf75f3ddbb711a258503f02c12
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.5.2+dfsg2-3/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.5.2+dfsg2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.5.2+dfsg2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=6.0.12-1`

Binary Packages:

- `linux-libc-dev:amd64=6.0.12-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+-or-X11`
- `LGPL-2.1`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=6.0.12-1
'http://deb.debian.org/debian/pool/main/l/linux/linux_6.0.12-1.dsc' linux_6.0.12-1.dsc 249248 SHA256:d2fde7dcb94aeb0e490f24f224a1dec1320b6c70079f50419d24db852dca6de7
'http://deb.debian.org/debian/pool/main/l/linux/linux_6.0.12.orig.tar.xz' linux_6.0.12.orig.tar.xz 136385180 SHA256:a90f29c450350dd578459722562d7683025f0660c143ceb2b418d3404a65eabc
'http://deb.debian.org/debian/pool/main/l/linux/linux_6.0.12-1.debian.tar.xz' linux_6.0.12-1.debian.tar.xz 1376688 SHA256:b6921e9b93cfdb6f2bf203538e5d6d0b9aa4628acd1d30f00bbd3e155850afaa
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/6.0.12-1/ (for browsing the source)
- https://sources.debian.net/src/linux/6.0.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/6.0.12-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `lzo2=2.10-2`

Binary Packages:

- `liblzo2-2:amd64=2.10-2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.10-2
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10-2.dsc' lzo2_2.10-2.dsc 1926 SHA256:65a35d9d2511a88f30d4b10313f807c184d1906062e2421833797dafc2682166
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10.orig.tar.gz' lzo2_2.10.orig.tar.gz 600622 SHA256:c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10-2.debian.tar.xz' lzo2_2.10-2.debian.tar.xz 6880 SHA256:095b2bf2012138f6892fcf226a0d1eae5d29406d7afe7129d51d64116e61c472
```

Other potentially useful URLs:

- https://sources.debian.net/src/lzo2/2.10-2/ (for browsing the source)
- https://sources.debian.net/src/lzo2/2.10-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lzo2/2.10-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.19-2`

Binary Packages:

- `m4=1.4.19-2`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.19-2
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19-2.dsc' m4_1.4.19-2.dsc 1637 SHA256:a9973d5699f718539e78b26844084d7862a759fd09967b2808df276f1ec5367d
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19.orig.tar.xz' m4_1.4.19.orig.tar.xz 1654908 SHA256:63aede5c6d33b6d9b13511cd0be2cac046f2e70fd0a07aa9573a04a82783af96
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19.orig.tar.xz.asc' m4_1.4.19.orig.tar.xz.asc 488 SHA256:9700ba4dca539b06e033b4e3ab37fa5b983becb6c14569a8b8aa02dee6ab666c
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.19-2.debian.tar.xz' m4_1.4.19-2.debian.tar.xz 16536 SHA256:551c0a79417d1322f77a86390ae1c5099e5cd1345af171646a6e5301962e24a7
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.19-2/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.19-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.19-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mariadb-10.6=1:10.6.11-1`

Binary Packages:

- `libmariadb-dev=1:10.6.11-1`
- `libmariadb-dev-compat:amd64=1:10.6.11-1`
- `libmariadb3:amd64=1:10.6.11-1`
- `mariadb-common=1:10.6.11-1`

Licenses: (parsed from: `/usr/share/doc/libmariadb-dev/copyright`, `/usr/share/doc/libmariadb-dev-compat/copyright`, `/usr/share/doc/libmariadb3/copyright`, `/usr/share/doc/mariadb-common/copyright`)

- `Artistic`
- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3+-with-bison-exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mariadb-10.6/1:10.6.11-1/


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

### `dpkg` source package: `media-types=8.0.0`

Binary Packages:

- `media-types=8.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=8.0.0
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_8.0.0.dsc' media-types_8.0.0.dsc 1620 SHA256:e80b1ac65060ce4a6d12184ca9ee564f38073b736e4ddd473be081931b50ffed
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_8.0.0.tar.xz' media-types_8.0.0.tar.xz 56364 SHA256:85f9b3ccbb6bc8dc0fff47105726ca1877ac2011cc7e8244ab276d5583f4890e
```

Other potentially useful URLs:

- https://sources.debian.net/src/media-types/8.0.0/ (for browsing the source)
- https://sources.debian.net/src/media-types/8.0.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/media-types/8.0.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mercurial=6.3.1-2`

Binary Packages:

- `mercurial=6.3.1-2`
- `mercurial-common=6.3.1-2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=6.3.1-2
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_6.3.1-2.dsc' mercurial_6.3.1-2.dsc 2848 SHA256:b50ccd69eedabc7eb2c88fdf185065628f68d95965ac36be708d1feb9755cdbd
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_6.3.1.orig.tar.gz' mercurial_6.3.1.orig.tar.gz 8089720 SHA256:6c39ab8732948d89cf1208751dd7d85d4042aa82153977451b9eb13367585072
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_6.3.1.orig.tar.gz.asc' mercurial_6.3.1.orig.tar.gz.asc 659 SHA256:79061d5dfa734f48e8aee56fbf4b6bc90655f28e96d4cf558bebb1ed4bc95214
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_6.3.1-2.debian.tar.xz' mercurial_6.3.1-2.debian.tar.xz 70616 SHA256:75ec52a259c6c7bdc39ffdd1b0953684226a97aad9a1710dc25221f5b9f576ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/6.3.1-2/ (for browsing the source)
- https://sources.debian.net/src/mercurial/6.3.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/6.3.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.3.1-1`

Binary Packages:

- `libmpc3:amd64=1.3.1-1`

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

### `dpkg` source package: `mpdecimal=2.5.1-2`

Binary Packages:

- `libmpdec3:amd64=2.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libmpdec3/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.5.1-2
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1-2.dsc' mpdecimal_2.5.1-2.dsc 1919 SHA256:293054eddc70e50d3a482d1fec446a7f10202b9c6f7ceaf92600f60b429f8919
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1.orig.tar.gz' mpdecimal_2.5.1.orig.tar.gz 2584021 SHA256:9f9cd4c041f99b5c49ffb7b59d9f12d95b683d88585608aa56a6307667b2b21f
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1-2.debian.tar.xz' mpdecimal_2.5.1-2.debian.tar.xz 6696 SHA256:5ff6a2502605579d140614e7c023c14d363f520253cc2ef8e844651807237321
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.5.1-2/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.5.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.5.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.1.1-3`

Binary Packages:

- `libmpfr6:amd64=4.1.1-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mpfr4/4.1.1-3/


### `dpkg` source package: `mysql-defaults=1.0.8`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.8`
- `mysql-common=5.8+1.0.8`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.8
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.8.dsc' mysql-defaults_1.0.8.dsc 2277 SHA256:15bc80d1a1bb4902616e6d6938ddb8874ddf659a24228160e30d3ccf432e3477
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.8.tar.xz' mysql-defaults_1.0.8.tar.xz 7316 SHA256:488e1497351e5653f37f2136d33523abf4fda50cee281454108125350d7d3b42
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.0.8/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.0.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.0.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.4-1`

Binary Packages:

- `libncurses-dev:amd64=6.4-1`
- `libncurses5-dev:amd64=6.4-1`
- `libncurses6:amd64=6.4-1`
- `libncursesw5-dev:amd64=6.4-1`
- `libncursesw6:amd64=6.4-1`
- `libtinfo6:amd64=6.4-1`
- `ncurses-base=6.4-1`
- `ncurses-bin=6.4-1`

Licenses: (parsed from: `/usr/share/doc/libncurses-dev/copyright`, `/usr/share/doc/libncurses5-dev/copyright`, `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw5-dev/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.4-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.4-1.dsc' ncurses_6.4-1.dsc 4110 SHA256:773fc287edc9f5fe4308031e924c8f14fc9c9121f9efc2ba05e9736896f56cbf
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.4.orig.tar.gz' ncurses_6.4.orig.tar.gz 3612591 SHA256:6931283d9ac87c5073f30b6290c4c75f21632bb4fc3603ac8100812bed248159
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.4.orig.tar.gz.asc' ncurses_6.4.orig.tar.gz.asc 729 SHA256:f9096c5311eab61908c142e77e58f503f9228e13d351365b3c331ca5ad5a67db
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.4-1.debian.tar.xz' ncurses_6.4-1.debian.tar.xz 54792 SHA256:5d8d297df0de14473d4e3c5e0f400a95badb9ca84258e51ab13f9bdbf1e508ac
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.4-1/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netbase=6.4`

Binary Packages:

- `netbase=6.4`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.4
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_6.4.dsc' netbase_6.4.dsc 898 SHA256:dc26cfcaa49fd874cc27c65216b2f8b6d3ad62845b78da4bdf0aea55592af756
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_6.4.tar.xz' netbase_6.4.tar.xz 32712 SHA256:fa6621826ff1150e581bd90bc3c8a4ecafe5df90404f207db6dcdf2c75f26ad7
```

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/6.4/ (for browsing the source)
- https://sources.debian.net/src/netbase/6.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/6.4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `nghttp2=1.51.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.51.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.51.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.51.0-1.dsc' nghttp2_1.51.0-1.dsc 2508 SHA256:20edb802982a8cb6144428eae4274bb72b8a637451aeb0d3cc46149fb4a1368b
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.51.0.orig.tar.gz' nghttp2_1.51.0.orig.tar.gz 3899746 SHA256:dfcf41e0b093765a79c9f1fc0ba6dc3d524555e94483ea9ba8b87a6d454971ba
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.51.0-1.debian.tar.xz' nghttp2_1.51.0-1.debian.tar.xz 11608 SHA256:d43f4062abe774271220d8facb07b5b0012346186f2100833848b42d0d0da786
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.51.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.51.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.51.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `npth=1.6-3`

Binary Packages:

- `libnpth0:amd64=1.6-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-3
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-3.dsc' npth_1.6-3.dsc 1931 SHA256:002c2a7936d1499ebb5d72dbb9c7ca3e00ed5fe3b0aa48f20b7279fc90aa9e90
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA256:1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-3.debian.tar.xz' npth_1.6-3.debian.tar.xz 10712 SHA256:efa188104de503add9c49c17bec7bec0df814f7d1db9fdc2017574a0af98155c
```

Other potentially useful URLs:

- https://sources.debian.net/src/npth/1.6-3/ (for browsing the source)
- https://sources.debian.net/src/npth/1.6-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/npth/1.6-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `numactl=2.0.16-1`

Binary Packages:

- `libnuma1:amd64=2.0.16-1`

Licenses: (parsed from: `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.16-1
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.16-1.dsc' numactl_2.0.16-1.dsc 1980 SHA256:d77b5d389ac5cf5098752fd27c382fce13e0340cf15c84a52ba38b167999fb95
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.16.orig.tar.gz' numactl_2.0.16.orig.tar.gz 111144 SHA256:a35c3bdb3efab5c65927e0de5703227760b1101f5e27ab741d8f32b3d5f0a44c
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.16-1.debian.tar.xz' numactl_2.0.16-1.debian.tar.xz 7188 SHA256:3e55d97df079693a12b92462ef9526bd305ff22e55ecbd6e37e37049e41b0a2c
```

Other potentially useful URLs:

- https://sources.debian.net/src/numactl/2.0.16-1/ (for browsing the source)
- https://sources.debian.net/src/numactl/2.0.16-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/numactl/2.0.16-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openexr=3.1.5-4`

Binary Packages:

- `libopenexr-3-1-30:amd64=3.1.5-4`
- `libopenexr-dev=3.1.5-4`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-1-30/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.1.5-4
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.1.5-4.dsc' openexr_3.1.5-4.dsc 2506 SHA256:d9a02deed821f31f01dadf8ca284c058437cc76b2d6b374686f73b514c1dd0b7
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.1.5.orig.tar.gz' openexr_3.1.5.orig.tar.gz 20327926 SHA256:93925805c1fc4f8162b35f0ae109c4a75344e6decae5a240afdfce25f8a433ec
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.1.5.orig.tar.gz.asc' openexr_3.1.5.orig.tar.gz.asc 287 SHA256:a2c4ac5151789903ca8ab3093a2798491463ccf2abfd003a20f96453e505dd5f
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_3.1.5-4.debian.tar.xz' openexr_3.1.5-4.debian.tar.xz 18152 SHA256:d13236dee40357dbcca99312935d112a8f62aa1e9e4b025af354b8df3dbd58c8
```

Other potentially useful URLs:

- https://sources.debian.net/src/openexr/3.1.5-4/ (for browsing the source)
- https://sources.debian.net/src/openexr/3.1.5-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openexr/3.1.5-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.5.0-1`

Binary Packages:

- `libopenjp2-7:amd64=2.5.0-1`
- `libopenjp2-7-dev:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`, `/usr/share/doc/libopenjp2-7-dev/copyright`)

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
$ apt-get source -qq --print-uris openjpeg2=2.5.0-1
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.0-1.dsc' openjpeg2_2.5.0-1.dsc 2698 SHA256:20f7ef8b33624c06cfd55b57dbc2652bc0f90cb2bbd2295847279e7cb050cc8c
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.0.orig.tar.xz' openjpeg2_2.5.0.orig.tar.xz 1221108 SHA256:007e19d772c8b6b22e35379630b06ff3549e49ba719d96453607a36ad7b4de73
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.5.0-1.debian.tar.xz' openjpeg2_2.5.0-1.debian.tar.xz 17336 SHA256:308e70b4cc65809ec69121aa39dcb06d14fde0e9dc76bcaec718838a263a04a5
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.5.0-1/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.5.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.5.0-1/ (for access to the source package after it no longer exists in the archive)

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


### `dpkg` source package: `openssh=1:9.1p1-1`

Binary Packages:

- `openssh-client=1:9.1p1-1`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssh/1:9.1p1-1/


### `dpkg` source package: `openssl=3.0.7-1`

Binary Packages:

- `libssl-dev:amd64=3.0.7-1`
- `libssl3:amd64=3.0.7-1`
- `openssl=3.0.7-1`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl3/copyright`, `/usr/share/doc/openssl/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssl/3.0.7-1/


### `dpkg` source package: `p11-kit=0.24.1-2`

Binary Packages:

- `libp11-kit0:amd64=0.24.1-2`

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
$ apt-get source -qq --print-uris p11-kit=0.24.1-2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.24.1-2.dsc' p11-kit_0.24.1-2.dsc 2501 SHA256:b88a483cb9afd5556ea4ac64d5df4543123a53bf0e50d1c01454887220259a89
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.24.1.orig.tar.xz' p11-kit_0.24.1.orig.tar.xz 838304 SHA256:d8be783efd5cd4ae534cee4132338e3f40f182c3205d23b200094ec85faaaef8
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.24.1.orig.tar.xz.asc' p11-kit_0.24.1.orig.tar.xz.asc 833 SHA256:48041a234bac05f70519b0d4727e78a129ea80a51baf92c7d419f80b7cbdf0ab
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.24.1-2.debian.tar.xz' p11-kit_0.24.1-2.debian.tar.xz 23332 SHA256:9a14085b12cfd90e76008c2809e6557224243e1daeae4fbd7fad97e4396f730f
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.24.1-2/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.24.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.24.1-2/ (for access to the source package after it no longer exists in the archive)

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


### `dpkg` source package: `pango1.0=1.50.12+ds-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.50.12+ds-1`
- `libpangocairo-1.0-0:amd64=1.50.12+ds-1`
- `libpangoft2-1.0-0:amd64=1.50.12+ds-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Apache-2`
- `Apache-2.0`
- `Bitstream-Vera`
- `CC0-1.0`
- `Chromium-BSD-style`
- `Example`
- `GPL-2+`
- `GPL-2.0`
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
$ apt-get source -qq --print-uris pango1.0=1.50.12+ds-1
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.50.12%2bds-1.dsc' pango1.0_1.50.12+ds-1.dsc 3544 SHA256:596e06d288dbdcafcf08fb43201055d6f86a9a66911c7aa28112da781353489b
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.50.12%2bds.orig.tar.xz' pango1.0_1.50.12+ds.orig.tar.xz 1729376 SHA256:ec19df0570cf87583ebff514968a958c25031a6f47eb39e8eb06530166ffb239
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.50.12%2bds-1.debian.tar.xz' pango1.0_1.50.12+ds-1.debian.tar.xz 41088 SHA256:40e68995280ba7ea475ef9049bd9beb224e4552987d124507abdc813d5e903d9
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.50.12+ds-1/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.50.12+ds-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.50.12+ds-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `pcre2=10.40-3`

Binary Packages:

- `libpcre2-16-0:amd64=10.40-3`
- `libpcre2-32-0:amd64=10.40-3`
- `libpcre2-8-0:amd64=10.40-3`
- `libpcre2-dev:amd64=10.40-3`
- `libpcre2-posix3:amd64=10.40-3`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.40-3
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40-3.dsc' pcre2_10.40-3.dsc 2302 SHA256:5bf89d8451b21377b879c010d297b30593565fa5ad2c6ab10966284b023a56bc
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40.orig.tar.gz' pcre2_10.40.orig.tar.gz 2359622 SHA256:ded42661cab30ada2e72ebff9e725e745b4b16ce831993635136f2ef86177724
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.40-3.diff.gz' pcre2_10.40-3.diff.gz 7889 SHA256:e73ec04ac1b59b395a67d4248ba1b9e1f21fd414b802e0f997aeca78c4ffb384
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.40-3/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.40-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.40-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.36.0-6`

Binary Packages:

- `libperl5.36:amd64=5.36.0-6`
- `perl=5.36.0-6`
- `perl-base=5.36.0-6`
- `perl-modules-5.36=5.36.0-6`

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

- http://snapshot.debian.org/package/perl/5.36.0-6/


### `dpkg` source package: `pinentry=1.2.1-1`

Binary Packages:

- `pinentry-curses=1.2.1-1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.2.1-1
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.2.1-1.dsc' pinentry_1.2.1-1.dsc 2242 SHA256:cb45060817fa5563d76591d99f0a7596aa069101710545852ec34a70a387597e
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2' pinentry_1.2.1.orig.tar.bz2 547698 SHA256:457a185e5a85238fb945a955dc6352ab962dc8b48720b62fc9fa48c7540a4067
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2.asc' pinentry_1.2.1.orig.tar.bz2.asc 390 SHA256:9f7d9c7509e4ff4161a043893d76183bd975230fcad671b643c90f78e500ba95
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.2.1-1.debian.tar.xz' pinentry_1.2.1-1.debian.tar.xz 18568 SHA256:ae1bd8af99fe91bd3877b6fd3d606facbfb1be02d0227da7cc81f54f7fe2f708
```

Other potentially useful URLs:

- https://sources.debian.net/src/pinentry/1.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/pinentry/1.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pinentry/1.2.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pixman=0.42.2-1`

Binary Packages:

- `libpixman-1-0:amd64=0.42.2-1`
- `libpixman-1-dev:amd64=0.42.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.42.2-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.42.2-1.dsc' pixman_0.42.2-1.dsc 2021 SHA256:393302f5ba22d1206c456902baa02cdd577cb74fe35ec6659f587cce67b91b3d
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.42.2.orig.tar.gz' pixman_0.42.2.orig.tar.gz 959669 SHA256:ea1480efada2fd948bc75366f7c349e1c96d3297d09a3fe62626e38e234a625e
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.42.2-1.diff.gz' pixman_0.42.2-1.diff.gz 319616 SHA256:dd6472676c68260a298e52f45c485d3cc85c4bf25df8af0f68e37acff7bfed8a
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.42.2-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.42.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.42.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkgconf=1.8.0-12`

Binary Packages:

- `libpkgconf3:amd64=1.8.0-12`
- `pkg-config:amd64=1.8.0-12`
- `pkgconf:amd64=1.8.0-12`
- `pkgconf-bin=1.8.0-12`

Licenses: (parsed from: `/usr/share/doc/libpkgconf3/copyright`, `/usr/share/doc/pkg-config/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=1.8.0-12
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.0-12.dsc' pkgconf_1.8.0-12.dsc 1575 SHA256:4b107b591860983b5e72ccf3e0d8c57c78dd77a33797f4ff8ba2277361db639a
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.0.orig.tar.xz' pkgconf_1.8.0.orig.tar.xz 296304 SHA256:ef9c7e61822b7cb8356e6e9e1dca58d9556f3200d78acab35e4347e9d4c2bbaf
'http://deb.debian.org/debian/pool/main/p/pkgconf/pkgconf_1.8.0-12.debian.tar.xz' pkgconf_1.8.0-12.debian.tar.xz 12800 SHA256:5c0e219846d1d86d6cdec0dd503f491e94c89b50eb9c66c83311620ef834b0f0
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkgconf/1.8.0-12/ (for browsing the source)
- https://sources.debian.net/src/pkgconf/1.8.0-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkgconf/1.8.0-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-15=15.1-1`

Binary Packages:

- `libpq-dev=15.1-1+b1`
- `libpq5:amd64=15.1-1+b1`

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
$ apt-get source -qq --print-uris postgresql-15=15.1-1
'http://deb.debian.org/debian/pool/main/p/postgresql-15/postgresql-15_15.1-1.dsc' postgresql-15_15.1-1.dsc 3878 SHA256:bb3067c6d0936e3517b81d8535c8e6d2162850cb7b648a71a67257e0d4ae1f0b
'http://deb.debian.org/debian/pool/main/p/postgresql-15/postgresql-15_15.1.orig.tar.bz2' postgresql-15_15.1.orig.tar.bz2 22666134 SHA256:64fdf23d734afad0dfe4077daca96ac51dcd697e68ae2d3d4ca6c45cb14e21ae
'http://deb.debian.org/debian/pool/main/p/postgresql-15/postgresql-15_15.1-1.debian.tar.xz' postgresql-15_15.1-1.debian.tar.xz 22208 SHA256:cc9db11a43425cc9c242b6bf5b6ff253b90c4b61433eb63a9e868d1302529353
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-15/15.1-1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-15/15.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-15/15.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:4.0.2-3`

Binary Packages:

- `libproc2-0:amd64=2:4.0.2-3`
- `procps=2:4.0.2-3`

Licenses: (parsed from: `/usr/share/doc/libproc2-0/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:4.0.2-3
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.2-3.dsc' procps_4.0.2-3.dsc 2127 SHA256:927de59c0fb3b3f1ccfd685ebd578fdd9ca524135f15810f766be2f6be5a7e83
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.2.orig.tar.xz' procps_4.0.2.orig.tar.xz 1279196 SHA256:ee3fcd2ea6ff94aa43a81ba5cc7912b7c9615acd2911c7a3d3ea081287fdf47a
'http://deb.debian.org/debian/pool/main/p/procps/procps_4.0.2-3.debian.tar.xz' procps_4.0.2-3.debian.tar.xz 28540 SHA256:64d3bd71b6a65f8888c5aa0da0e39b48498787c34eb95babd6ef46c5c5a3a910
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:4.0.2-3/ (for browsing the source)
- https://sources.debian.net/src/procps/2:4.0.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:4.0.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.10.6-3`

Binary Packages:

- `libpython3-stdlib:amd64=3.10.6-3+b1`
- `python3=3.10.6-3+b1`
- `python3-minimal=3.10.6-3+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.10.6-3
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.10.6-3.dsc' python3-defaults_3.10.6-3.dsc 2342 SHA256:b89248fcabbd460111f9028c5b1c429c0ff282169b6fc379f1a25c5e0b73b64e
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.10.6-3.tar.gz' python3-defaults_3.10.6-3.tar.gz 145783 SHA256:de8677c6bea36d645f36422eeca6f96844e14ef811a09f712e43586f4a6a11e9
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.10.6-3/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.10.6-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.10.6-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-stdlib-extensions=3.10.8-1`

Binary Packages:

- `python3-distutils=3.10.8-1`
- `python3-lib2to3=3.10.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.10.8-1
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8-1.dsc' python3-stdlib-extensions_3.10.8-1.dsc 2575 SHA256:1fa18c34aa7f1793313c08d3b90930a83d181f587e4de09d87c540d42cbaad58
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8.orig.tar.xz' python3-stdlib-extensions_3.10.8.orig.tar.xz 1118220 SHA256:7df3daa415b5295898067c30aab0bb7e3922406f1e7b772400d0789e102c6976
'http://deb.debian.org/debian/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8-1.debian.tar.xz' python3-stdlib-extensions_3.10.8-1.debian.tar.xz 25824 SHA256:7d2c9a6360ae75a1312673f656d8495ff2f11fdfdac4217f0571bf460ad4cbfc
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-stdlib-extensions/3.10.8-1/ (for browsing the source)
- https://sources.debian.net/src/python3-stdlib-extensions/3.10.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-stdlib-extensions/3.10.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3.10=3.10.9-1`

Binary Packages:

- `libpython3.10-minimal:amd64=3.10.9-1`
- `libpython3.10-stdlib:amd64=3.10.9-1`
- `python3.10=3.10.9-1`
- `python3.10-minimal=3.10.9-1`

Licenses: (parsed from: `/usr/share/doc/libpython3.10-minimal/copyright`, `/usr/share/doc/libpython3.10-stdlib/copyright`, `/usr/share/doc/python3.10/copyright`, `/usr/share/doc/python3.10-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.10=3.10.9-1
'http://deb.debian.org/debian/pool/main/p/python3.10/python3.10_3.10.9-1.dsc' python3.10_3.10.9-1.dsc 3662 SHA256:2020571320785008d0913791784a886ebc397e1e2002efb0f268844732ee8c12
'http://deb.debian.org/debian/pool/main/p/python3.10/python3.10_3.10.9.orig.tar.xz' python3.10_3.10.9.orig.tar.xz 19612112 SHA256:5ae03e308260164baba39921fdb4dbf8e6d03d8235a939d4582b33f0b5e46a83
'http://deb.debian.org/debian/pool/main/p/python3.10/python3.10_3.10.9-1.debian.tar.xz' python3.10_3.10.9-1.debian.tar.xz 218276 SHA256:2629704bea32fdb907c61206edee393db11e226b953bb9d3ef7621e0eca17052
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.10/3.10.9-1/ (for browsing the source)
- https://sources.debian.net/src/python3.10/3.10.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.10/3.10.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.2-1.2`

Binary Packages:

- `libreadline-dev:amd64=8.2-1.2`
- `libreadline8:amd64=8.2-1.2`
- `readline-common=8.2-1.2`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/readline/8.2-1.2/


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


### `dpkg` source package: `serf=1.3.9-11`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-11`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-11/


### `dpkg` source package: `shadow=1:4.13+dfsg1-1`

Binary Packages:

- `login=1:4.13+dfsg1-1`
- `passwd=1:4.13+dfsg1-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.13+dfsg1-1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.13%2bdfsg1-1.dsc' shadow_4.13+dfsg1-1.dsc 2402 SHA256:e27b0676e87d4ae75a57cba55433517e8aa30d45817c691c63045d5e6195c667
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.13%2bdfsg1.orig.tar.xz' shadow_4.13+dfsg1.orig.tar.xz 1811752 SHA256:a8bb3a2aceff1cbe39d0f50687dcc1d7e7be0516a9d954d8e2eedb93f5906207
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.13%2bdfsg1-1.debian.tar.xz' shadow_4.13+dfsg1-1.debian.tar.xz 78988 SHA256:cbd43c96ebad42bfb1656b5e691cc165f52d1dd6b1ee89202c2a09e59d663b1c
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.13+dfsg1-1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.13+dfsg1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.13+dfsg1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shared-mime-info=2.2-1`

Binary Packages:

- `shared-mime-info=2.2-1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=2.2-1
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_2.2-1.dsc' shared-mime-info_2.2-1.dsc 2226 SHA256:784cc01bb041b9aab4e56b061258e44ed4ce810bf94d458f743ff9bfbbea076b
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_2.2.orig.tar.bz2' shared-mime-info_2.2.orig.tar.bz2 6428871 SHA256:418c480019d9865f67f922dfb88de00e9f38bf971205d55cdffab50432919e61
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_2.2-1.debian.tar.xz' shared-mime-info_2.2-1.debian.tar.xz 10148 SHA256:a19c3d13a867c2780dcddd04215b925a7c16c80df0fc2798bef910de6d5cc6a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/2.2-1/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/2.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.40.1-1`

Binary Packages:

- `libsqlite3-0:amd64=3.40.1-1`
- `libsqlite3-dev:amd64=3.40.1-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.40.1-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.40.1-1.dsc' sqlite3_3.40.1-1.dsc 2487 SHA256:a76b1247ac454422020dac590ffa8b41fa832dbf3e397ff6254d1b163aa44d43
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.40.1.orig-www.tar.xz' sqlite3_3.40.1.orig-www.tar.xz 5865720 SHA256:a5e95a18d1b59729278860559ded78751b9163ffb5bb906c5cd24c015f71d5fd
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.40.1.orig.tar.xz' sqlite3_3.40.1.orig.tar.xz 8019048 SHA256:aaa776260ab4dc976db34aa7891819484c8676b5b2783123ebc6301e2ca5d655
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.40.1-1.debian.tar.xz' sqlite3_3.40.1-1.debian.tar.xz 29804 SHA256:29b06096df3800e60d28689f990d48a3594e50769be83b8693b7b669d508f051
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.40.1-1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.40.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.40.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `subversion=1.14.2-4`

Binary Packages:

- `libsvn1:amd64=1.14.2-4+b1`
- `subversion=1.14.2-4+b1`

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
$ apt-get source -qq --print-uris subversion=1.14.2-4
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.2-4.dsc' subversion_1.14.2-4.dsc 4046 SHA256:8a4b9684043e17d0bb4c1892be7869493563613ef7e2dfe4bb3ffac059ff1b87
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.2.orig.tar.gz' subversion_1.14.2.orig.tar.gz 11626792 SHA256:fd826afad03db7a580722839927dc664f3e93398fe88b66905732c8530971353
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.2.orig.tar.gz.asc' subversion_1.14.2.orig.tar.gz.asc 3215 SHA256:da6a0a5ff56f671ad2d1eae708f8d1cc1abf0485b029a163ff8272cba5475861
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.2-4.debian.tar.xz' subversion_1.14.2-4.debian.tar.xz 337148 SHA256:b9da3d33171f9e153a2c9d2080996a2fda6cf3b30659f9bbff0c00d279f6f2e6
```

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.14.2-4/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.14.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.14.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=252.4-1`

Binary Packages:

- `libsystemd0:amd64=252.4-1`
- `libudev1:amd64=252.4-1`

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
$ apt-get source -qq --print-uris systemd=252.4-1
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_252.4-1.dsc' systemd_252.4-1.dsc 6422 SHA256:c8fa461ee9df69a54eb0d5748ce98315842336e825a36ee6edf522085f53ac92
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_252.4.orig.tar.gz' systemd_252.4.orig.tar.gz 11753300 SHA256:cf2d27e67663d599a045101c7178cf0ec63d9df2962a54adf7de0d0357724f00
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_252.4-1.debian.tar.xz' systemd_252.4-1.debian.tar.xz 172708 SHA256:867a347f5df22a6a7546ec6bb7b470e6986e4997d6e0e74a7f3f760d8936be65
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/252.4-1/ (for browsing the source)
- https://sources.debian.net/src/systemd/252.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/252.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=3.06-2`

Binary Packages:

- `sysvinit-utils=3.06-2`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2.0`
- `GPL-2.0+`
- `GPL-3`
- `GPL-3.0`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.06-2
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.06-2.dsc' sysvinit_3.06-2.dsc 2359 SHA256:1f0d7c230727b4d0253c9085fac872e3e915b4c226220c6a67a658bd1d016291
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.06.orig.tar.gz' sysvinit_3.06.orig.tar.gz 466092 SHA256:233d784ca152ce2b4b42a0723948f0cd2d36d4eae5acb9dab1457c1dd85b1a66
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_3.06-2.debian.tar.xz' sysvinit_3.06-2.debian.tar.xz 133592 SHA256:562e71d3f189221e910e8e25959e5dcbbea6a892d5cbfad24c5a336efa96c4e0
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/3.06-2/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/3.06-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/3.06-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `tiff=4.4.0-6`

Binary Packages:

- `libtiff-dev:amd64=4.4.0-6`
- `libtiff5:amd64=4.4.0-6`
- `libtiffxx5:amd64=4.4.0-6`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.4.0-6
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.4.0-6.dsc' tiff_4.4.0-6.dsc 2238 SHA256:39f656d60cb0a75ae02fad9c16eb0c275c8a4bcb7efb02898c8c9bcfcf83b5f5
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.4.0.orig.tar.bz2' tiff_4.4.0.orig.tar.bz2 2072723 SHA256:ce0848109b627eb5442187b6362a8e4809728e4f28fcc5a04940e5afb464caba
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.4.0-6.debian.tar.xz' tiff_4.4.0-6.debian.tar.xz 33680 SHA256:37c1e4a7151c3790404e94a137825856f4d1f8fe8a8d3253a455ddff648f329b
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.4.0-6/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.4.0-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.4.0-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2022g-1`

Binary Packages:

- `tzdata=2022g-1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2022g-1/


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

### `dpkg` source package: `usrmerge=35`

Binary Packages:

- `usr-is-merged=35`

Licenses: (parsed from: `/usr/share/doc/usr-is-merged/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris usrmerge=35
'http://deb.debian.org/debian/pool/main/u/usrmerge/usrmerge_35.dsc' usrmerge_35.dsc 981 SHA256:f8f7fa03aa912a65f54584b1cbaed193575521ab7ffa16c93c9920c41726c9fd
'http://deb.debian.org/debian/pool/main/u/usrmerge/usrmerge_35.tar.xz' usrmerge_35.tar.xz 14416 SHA256:ec52fa22f174204f24ebb45caf579275f5a2b2404be5d4b3fe29ad60ad566829
```

Other potentially useful URLs:

- https://sources.debian.net/src/usrmerge/35/ (for browsing the source)
- https://sources.debian.net/src/usrmerge/35/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/usrmerge/35/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `utf8proc=2.8.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.8.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.8.0-1
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.8.0-1.dsc' utf8proc_2.8.0-1.dsc 2187 SHA256:6ce2b0ab12fe7d0c3fd0a40d4eb886ae82bf6ea356e4db1a0a9f76582947625c
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.8.0.orig.tar.gz' utf8proc_2.8.0.orig.tar.gz 190310 SHA256:a0a60a79fe6f6d54e7d411facbfcc867a6e198608f2cd992490e46f04b1bcecc
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.8.0-1.debian.tar.xz' utf8proc_2.8.0-1.debian.tar.xz 5720 SHA256:eae4af835e46ccd258d3eebb501b3610330a434ec6194a0d11c0569fe4c8480b
```

Other potentially useful URLs:

- https://sources.debian.net/src/utf8proc/2.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/utf8proc/2.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/utf8proc/2.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.38.1-4`

Binary Packages:

- `bsdutils=1:2.38.1-4`
- `libblkid-dev:amd64=2.38.1-4`
- `libblkid1:amd64=2.38.1-4`
- `libmount-dev:amd64=2.38.1-4`
- `libmount1:amd64=2.38.1-4`
- `libsmartcols1:amd64=2.38.1-4`
- `libuuid1:amd64=2.38.1-4`
- `mount=2.38.1-4`
- `util-linux=2.38.1-4`
- `util-linux-extra=2.38.1-4`
- `uuid-dev:amd64=2.38.1-4`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid-dev/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount-dev/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/util-linux-extra/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.38.1-4
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.38.1-4.dsc' util-linux_2.38.1-4.dsc 4547 SHA256:8dfc9ae578db3957c49cffe9bd892dacbfe4828cbc7e32b33ec976c3e6531c9d
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.38.1.orig.tar.xz' util-linux_2.38.1.orig.tar.xz 7495904 SHA256:60492a19b44e6cf9a3ddff68325b333b8b52b6c59ce3ebd6a0ecaa4c5117e84f
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.38.1-4.debian.tar.xz' util-linux_2.38.1-4.debian.tar.xz 112900 SHA256:7d5feda63f7d9fbbde7e1a174c955da29dbc8030047bb6696b0a4baced0a142a
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.38.1-4/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.38.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.38.1-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `x265=3.5-2`

Binary Packages:

- `libx265-199:amd64=3.5-2+b1`

Licenses: (parsed from: `/usr/share/doc/libx265-199/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris x265=3.5-2
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.5-2.dsc' x265_3.5-2.dsc 2234 SHA256:718fea5fdb221871d1d53f74365d429ee9917040586259d32c6fb6183736d87b
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.5.orig.tar.gz' x265_3.5.orig.tar.gz 1537044 SHA256:e70a3335cacacbba0b3a20ec6fecd6783932288ebc8163ad74bcc9606477cae8
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.5-2.debian.tar.xz' x265_3.5-2.debian.tar.xz 13536 SHA256:47a111b9c3e7fd95e4e3e5db43aeb7019a4031820a80badc6dea5c5719de9264
```

Other potentially useful URLs:

- https://sources.debian.net/src/x265/3.5-2/ (for browsing the source)
- https://sources.debian.net/src/x265/3.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x265/3.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1.1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1.1
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1.dsc' xorg-sgml-doctools_1.11-1.1.dsc 1987 SHA256:6aac68e597386c10b02646d2026a833d301749a938701f4ca8efd4d19ad34295
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1.diff.gz' xorg-sgml-doctools_1.11-1.1.diff.gz 3296 SHA256:0c11e15d4f9aaacd38452a6a37d064f1a07058dcead7ab1e2aca223ec0a94d11
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1.1/ (for browsing the source)
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg-sgml-doctools/1:1.11-1.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `xorgproto=2022.1-1`

Binary Packages:

- `x11proto-core-dev=2022.1-1`
- `x11proto-dev=2022.1-1`

Licenses: (parsed from: `/usr/share/doc/x11proto-core-dev/copyright`, `/usr/share/doc/x11proto-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2022.1-1
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2022.1-1.dsc' xorgproto_2022.1-1.dsc 3410 SHA256:f7422a97f3c67ad50559fbdb4eba362002e9dcda090e9ae6bc999245298e6dbe
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2022.1.orig.tar.gz' xorgproto_2022.1.orig.tar.gz 1107316 SHA256:2a399e77d98fe53e9056726a1934b62cbaa6c41d7b1f41a354911b0925363343
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2022.1.orig.tar.gz.asc' xorgproto_2022.1.orig.tar.gz.asc 195 SHA256:5d9077f618efacf21669930cc38bdf58585676ef3ba57ee9ff5364d410cd21b4
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2022.1-1.diff.gz' xorgproto_2022.1-1.diff.gz 23288 SHA256:a314356d8c46e4cacf3ef38e904f071efffaa614a7f05019fc4d7e832f5cbe73
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorgproto/2022.1-1/ (for browsing the source)
- https://sources.debian.net/src/xorgproto/2022.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorgproto/2022.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xtrans=1.4.0-1`

Binary Packages:

- `xtrans-dev=1.4.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.4.0-1
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.4.0-1.dsc' xtrans_1.4.0-1.dsc 1919 SHA256:dd74ab9199e8f45215b566a9317cac7953bf063ce6893c185eccaf0fb4d84d8f
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.4.0.orig.tar.gz' xtrans_1.4.0.orig.tar.gz 225941 SHA256:48ed850ce772fef1b44ca23639b0a57e38884045ed2cbb18ab137ef33ec713f9
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.4.0-1.diff.gz' xtrans_1.4.0-1.diff.gz 9522 SHA256:0dac18165654d79e0796b80fab4c1104998d29e6d0b098af0426a1d72399521e
```

Other potentially useful URLs:

- https://sources.debian.net/src/xtrans/1.4.0-1/ (for browsing the source)
- https://sources.debian.net/src/xtrans/1.4.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xtrans/1.4.0-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `xz-utils=5.4.0-0.1`

Binary Packages:

- `liblzma-dev:amd64=5.4.0-0.1`
- `liblzma5:amd64=5.4.0-0.1`
- `xz-utils=5.4.0-0.1`

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

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.4.0-0.1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.4.0-0.1.dsc' xz-utils_5.4.0-0.1.dsc 2517 SHA256:31b38ee2afbb56a4fd374788ac934a6033a795c68d02702ba96d675d2cb8ee41
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.4.0.orig.tar.xz' xz-utils_5.4.0.orig.tar.xz 1407792 SHA256:5f260e3b43f75cf43ca43d107dd18209f7d516782956a74ddd53288e02a83a31
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.4.0.orig.tar.xz.asc' xz-utils_5.4.0.orig.tar.xz.asc 833 SHA256:2b9e934e66fd7a5258ab9cb6709c344b078d09b1437522ca638c27d078000d4c
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.4.0-0.1.debian.tar.xz' xz-utils_5.4.0-0.1.debian.tar.xz 23980 SHA256:8c2443a941b405ed74329a8795bc49caa562ee8c140f6977bd98c17d163c877a
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.4.0-0.1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.4.0-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.4.0-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.13.dfsg-1`

Binary Packages:

- `zlib1g:amd64=1:1.2.13.dfsg-1`
- `zlib1g-dev:amd64=1:1.2.13.dfsg-1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.13.dfsg-1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.13.dfsg-1.dsc' zlib_1.2.13.dfsg-1.dsc 2399 SHA256:3fa1e6b2fc525062aa88207dda52fed8e045373c809d362fe8a2bfbf7cf515a8
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.13.dfsg.orig.tar.bz2' zlib_1.2.13.dfsg.orig.tar.bz2 1239825 SHA256:71feb7947e3c00ef125f83b79a4e529bde31171e5babe48b391f06758d1ab0a1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.13.dfsg-1.debian.tar.xz' zlib_1.2.13.dfsg-1.debian.tar.xz 15700 SHA256:f66cf3d4f2d7defcd4d1fd1fb0a11ee39f1e01b42ec7d059c9dc5c1695133c44
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.13.dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.13.dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.13.dfsg-1/ (for access to the source package after it no longer exists in the archive)
