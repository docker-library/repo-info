# `buildpack-deps:focal`

## Docker Metadata

- Image ID: `sha256:32556cd0023c9594b86efe2f7e174431e3d17ff023ae6be4d23f40d1e976f43f`
- Created: `2022-12-09T03:58:50.918480053Z`
- Virtual Size: ~ 728.58 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.53-6`

Binary Packages:

- `libacl1:amd64=2.2.53-6`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.53-6
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.53-6.dsc' acl_2.2.53-6.dsc 2336 SHA256:02dad794aa09133e557552d75568324ed3e84fb56e93626e67993cf54a97df34
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.53.orig.tar.gz' acl_2.2.53.orig.tar.gz 524300 SHA256:06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.53.orig.tar.gz.asc' acl_2.2.53.orig.tar.gz.asc 833 SHA256:06849bece0b56a6a7269173abe101cff223bb9346d74027a3cd5ff80914abf4b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.53-6.debian.tar.xz' acl_2.2.53-6.debian.tar.xz 25108 SHA256:c80e6150d9b213e52f5e65ff78d4ee95a71b5a258c1f8b980365d20ed1753a5c
```

### `dpkg` source package: `adduser=3.118ubuntu2`

Binary Packages:

- `adduser=3.118ubuntu2`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu2.dsc' adduser_3.118ubuntu2.dsc 1131 SHA256:785f99d8c75c972cd42d3fab3afa07f97299bb1d70013fe5d295f045224774bb
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu2.tar.xz' adduser_3.118ubuntu2.tar.xz 222364 SHA256:9429124c39c381b541005da6f0ae29831bd6533dd65c923e06ca2a7c310db382
```

### `dpkg` source package: `apr-util=1.6.1-4ubuntu2`

Binary Packages:

- `libaprutil1:amd64=1.6.1-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-4ubuntu2.dsc' apr-util_1.6.1-4ubuntu2.dsc 2686 SHA256:bf8be458f58a6b1576d35bc78647bb0e990fc0d0c47ee7b51a5e2ecf3d378aac
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-4ubuntu2.debian.tar.xz' apr-util_1.6.1-4ubuntu2.debian.tar.xz 213052 SHA256:2293c33f2e8d354aae7285e6037820d32305dcf4843093123c0683946ae35967
```

### `dpkg` source package: `apr=1.6.5-1ubuntu1`

Binary Packages:

- `libapr1:amd64=1.6.5-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.5-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5-1ubuntu1.dsc' apr_1.6.5-1ubuntu1.dsc 2390 SHA256:9e9d5b1be5c9d17c4720d43096064da70a4cba1593f10c272328e16f8ed4c656
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5.orig.tar.bz2' apr_1.6.5.orig.tar.bz2 855393 SHA256:a67ca9fcf9c4ff59bce7f428a323c8b5e18667fdea7b0ebad47d194371b0a105
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5.orig.tar.bz2.asc' apr_1.6.5.orig.tar.bz2.asc 801 SHA256:9beff0bb06f4cbbb006176af93258d946d33b7fb54aac13a4c90cfba1cfd0c88
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5-1ubuntu1.debian.tar.xz' apr_1.6.5-1ubuntu1.debian.tar.xz 213596 SHA256:faca1bccb281c7d91bf0846ee908dd0be53b4482c0a1850e03397307682717d1
```

### `dpkg` source package: `apt=2.0.9`

Binary Packages:

- `apt=2.0.9`
- `libapt-pkg6.0:amd64=2.0.9`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.0.9
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.0.9.dsc' apt_2.0.9.dsc 2835 SHA512:8e2981ae368e3cc07d6b4cd32fe347b8193b6d1844c1c273e389c168df2cc79a28236757a3bd4512872b983bd0d6c1f58cab14ad2eaf4af561ec0fe25ba43058
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.0.9.tar.xz' apt_2.0.9.tar.xz 2176408 SHA512:183a42c5811a311b26aedac904f10d41b192a8272655872d428f9f93b382db96e44a874c750ebaac4137900b9ac58b7392e79cf025b64375ee490bf0194af473
```

### `dpkg` source package: `attr=1:2.4.48-5`

Binary Packages:

- `libattr1:amd64=1:2.4.48-5`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.48-5
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.48-5.dsc' attr_2.4.48-5.dsc 2433 SHA256:0b20a285b758083e2e202ffdd2930cef1bf84fee498791fc3e26b69a3bced01d
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.48.orig.tar.gz' attr_2.4.48.orig.tar.gz 467840 SHA256:5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.48.orig.tar.gz.asc' attr_2.4.48.orig.tar.gz.asc 833 SHA256:5d23c2c83cc13d170f1c209f48d0efa1fc46d16487b790e9996c5206dcfe0395
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.48-5.debian.tar.xz' attr_2.4.48-5.debian.tar.xz 25560 SHA256:02238253d324250dabdc0434f7de045d85df93458995a465ac434f2a3978a312
```

### `dpkg` source package: `audit=1:2.8.5-2ubuntu6`

Binary Packages:

- `libaudit-common=1:2.8.5-2ubuntu6`
- `libaudit1:amd64=1:2.8.5-2ubuntu6`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.5-2ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.5-2ubuntu6.dsc' audit_2.8.5-2ubuntu6.dsc 2764 SHA256:b149fad8217d68a80299c1ef72539ee7d756146d692b7e51eade7341e60ac528
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.5.orig.tar.gz' audit_2.8.5.orig.tar.gz 1140694 SHA256:0e5d4103646e00f8d1981e1cd2faea7a2ae28e854c31a803e907a383c5e2ecb7
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.5-2ubuntu6.debian.tar.xz' audit_2.8.5-2ubuntu6.debian.tar.xz 18712 SHA256:d85ecf206bfe256a86e6d39602cd2744beda264a28e413f31c4da227e6542ea7
```

### `dpkg` source package: `autoconf=2.69-11.1`

Binary Packages:

- `autoconf=2.69-11.1`

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
$ apt-get source -qq --print-uris autoconf=2.69-11.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.1.dsc' autoconf_2.69-11.1.dsc 1735 SHA256:06ab6e617ed8d07eecbc29a1669cd748b7ce11ab457c186e7e8794fe02b231ba
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.1.debian.tar.xz' autoconf_2.69-11.1.debian.tar.xz 23488 SHA256:ff76de2fc2956773dc6f47301b66822ea3074a2e556dc2e761cb411342d2228b
```

### `dpkg` source package: `automake-1.16=1:1.16.1-4ubuntu6`

Binary Packages:

- `automake=1:1.16.1-4ubuntu6`

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
$ apt-get source -qq --print-uris automake-1.16=1:1.16.1-4ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.1-4ubuntu6.dsc' automake-1.16_1.16.1-4ubuntu6.dsc 1476 SHA256:03c69a65de46468cf20f0621330d137d21249aa7033a242b076aaff3ee0c7a33
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.1.orig.tar.xz' automake-1.16_1.16.1.orig.tar.xz 1534936 SHA256:5d05bb38a23fd3312b10aea93840feec685bdf4a41146e78882848165d3ae921
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.1-4ubuntu6.debian.tar.xz' automake-1.16_1.16.1-4ubuntu6.debian.tar.xz 15348 SHA256:ed3474bddbe69ed00492113e3e2bbfc999373768e37f8a78555401c8abcbccca
```

### `dpkg` source package: `autotools-dev=20180224.1`

Binary Packages:

- `autotools-dev=20180224.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20180224.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20180224.1.dsc' autotools-dev_20180224.1.dsc 1643 SHA256:795f558377bf6c90280c293b2711afc094cd1bf6ae486a395e1361ffd242cd2f
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20180224.1.tar.xz' autotools-dev_20180224.1.tar.xz 68256 SHA256:355a4d8461dfedebd2c5194603197712a10f71e20de73a35ab6e90b7acf3e837
```

### `dpkg` source package: `base-files=11ubuntu5.6`

Binary Packages:

- `base-files=11ubuntu5.6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=11ubuntu5.6
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_11ubuntu5.6.dsc' base-files_11ubuntu5.6.dsc 1676 SHA512:f911f820b4de79fd62b97cb661f754e1076f1e759da9fe1c06d662bf3c030466b79d993524f87916be43768868e571b77a08668f6e07b28befc3e0c60d54fbe0
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_11ubuntu5.6.tar.xz' base-files_11ubuntu5.6.tar.xz 80608 SHA512:d512ec4f307de01df748100d5bab6efbd64acc630e81ec39bd4cba4ea866e59e3014260a51579d9cc911aa0a6dbbd284235558ad3ab0b882c1e73c3398b9124a
```

### `dpkg` source package: `base-passwd=3.5.47`

Binary Packages:

- `base-passwd=3.5.47`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.47
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.47.dsc' base-passwd_3.5.47.dsc 1757 SHA256:5a77a4cce51d1eb72e9d96d4083c641435c05888922c7bd3fa6b4395bf9afad3
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.47.tar.xz' base-passwd_3.5.47.tar.xz 53024 SHA256:9810ae0216e96bf9fc7ca6163d47ef8ec7d1677f533451af5911d8202a490a23
```

### `dpkg` source package: `bash=5.0-6ubuntu1.2`

Binary Packages:

- `bash=5.0-6ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.0-6ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.0-6ubuntu1.2.dsc' bash_5.0-6ubuntu1.2.dsc 2296 SHA512:d93b919ae7b8e67e3b4e31d205e13006a37aa2a42378744599c3214ecab6544084856a739b38aaeb06742524e2ea302c8147f7a88dbc738e1e7ac0a29be0c0b8
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.0.orig.tar.xz' bash_5.0.orig.tar.xz 5554808 SHA512:f3a719997a8515bae7e84701afafc9b2cdd23c95d29533adb678000b08eba968450b93d5576c3cffbeccbdcd95b713db830e8efeda689258dcfe6f15f0c5dec4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.0-6ubuntu1.2.debian.tar.xz' bash_5.0-6ubuntu1.2.debian.tar.xz 75200 SHA512:50de22a6cd140fcb95eca9172e9927a4eeddd90bfbd23072d5e209db1675f331716dfd54ef3281caa7020e3fa1aef9ca7caafc6a8d3067741b1ae41f7dff7724
```

### `dpkg` source package: `binutils=2.34-6ubuntu1.4`

Binary Packages:

- `binutils=2.34-6ubuntu1.4`
- `binutils-common:amd64=2.34-6ubuntu1.4`
- `binutils-x86-64-linux-gnu=2.34-6ubuntu1.4`
- `libbinutils:amd64=2.34-6ubuntu1.4`
- `libctf-nobfd0:amd64=2.34-6ubuntu1.4`
- `libctf0:amd64=2.34-6ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.34-6ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.34-6ubuntu1.4.dsc' binutils_2.34-6ubuntu1.4.dsc 8829 SHA512:1ed37da1c4ad5a929c1ed196bc8f7a23123af6b82bbe4570ae24a6c99d5f547421f08681acdb86a18783a72db2735e7a4a647e06619886fc7928403f43894a08
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.34.orig.tar.xz' binutils_2.34.orig.tar.xz 21637796 SHA512:2c7976939dcf5e8c5b7374cccd39bfe803b1bec73c6abfa0eb17c24e1942574c6bdb874c66a092a82adc443182eacd8a5a8001c19a76101f0c7ba40c27de0bbd
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.34-6ubuntu1.4.debian.tar.xz' binutils_2.34-6ubuntu1.4.debian.tar.xz 158616 SHA512:7473147a9351d00a2abbe565560d013ed6f433ebedb65174dc8be7d795ad8595648297310f28385caa69ee5b2e345f2cda24f6cb239c4a461adbaa90f1c8b46c
```

### `dpkg` source package: `breezy=3.0.2-4ubuntu2`

Binary Packages:

- `brz=3.0.2-4ubuntu2`
- `python3-breezy=3.0.2-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/brz/copyright`, `/usr/share/doc/python3-breezy/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris breezy=3.0.2-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/b/breezy/breezy_3.0.2-4ubuntu2.dsc' breezy_3.0.2-4ubuntu2.dsc 2793 SHA256:387fbd45cbe97d4d0685cba418d213bf5b4023ab4b10039390c2f11b2f9871f5
'http://archive.ubuntu.com/ubuntu/pool/universe/b/breezy/breezy_3.0.2.orig.tar.gz' breezy_3.0.2.orig.tar.gz 15271219 SHA256:50f16bc7faf299f98fe58573da55b0664078f94b1a0e7f0ce9e1e6a0d47e68e0
'http://archive.ubuntu.com/ubuntu/pool/universe/b/breezy/breezy_3.0.2-4ubuntu2.debian.tar.xz' breezy_3.0.2-4ubuntu2.debian.tar.xz 64032 SHA256:6ad61cb9ba7b452882e2fe19e24e99ba9b4fcbaa087af9ea058e9a5c4a9260c1
```

### `dpkg` source package: `brotli=1.0.7-6ubuntu0.1`

Binary Packages:

- `libbrotli1:amd64=1.0.7-6ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.0.7-6ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.7-6ubuntu0.1.dsc' brotli_1.0.7-6ubuntu0.1.dsc 2385 SHA512:139a93e110c6cf50531bdfee5ec4a8751ca81d1e02d2f38b21c1a9a478064286ddeb6bfdf20af488f7e2f53219cf460a00e68b77ef1b860fbf0df67f300d303b
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.7.orig.tar.gz' brotli_1.0.7.orig.tar.gz 23827908 SHA512:a82362aa36d2f2094bca0b2808d9de0d57291fb3a4c29d7c0ca0a37e73087ec5ac4df299c8c363e61106fccf2fe7f58b5cf76eb97729e2696058ef43b1d3930a
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.7-6ubuntu0.1.debian.tar.xz' brotli_1.0.7-6ubuntu0.1.debian.tar.xz 13672 SHA512:eb24ee68d0a699bb8f382c7f80c313e0bb26bea6b22f74bf01af236eafe345cf602f7544da4a74eb8c8f70defcd6b867018df97a96e5e894535cf731400edaa8
```

### `dpkg` source package: `bzip2=1.0.8-2`

Binary Packages:

- `bzip2=1.0.8-2`
- `libbz2-1.0:amd64=1.0.8-2`
- `libbz2-dev:amd64=1.0.8-2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-2.dsc' bzip2_1.0.8-2.dsc 2180 SHA256:646cdcbb786a89a647cfafb280ef467143c06c445c4bf6fe69ec4a7882943064
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-2.debian.tar.bz2' bzip2_1.0.8-2.debian.tar.bz2 26032 SHA256:237c8619bc9bc16f357b1077064a3e58aa1a230dadb4b9bb3bd8dc8f454afc0b
```

### `dpkg` source package: `bzr=2.7.0+bzr6622+brz`

Binary Packages:

- `bzr=2.7.0+bzr6622+brz`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622+brz
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bzr/bzr_2.7.0%2bbzr6622%2bbrz.dsc' bzr_2.7.0+bzr6622+brz.dsc 1866 SHA256:2c1d9f13818b32fbc5dc41d395b91101e2d1b451eae358ffdf83421521dbe670
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bzr/bzr_2.7.0%2bbzr6622%2bbrz.tar.xz' bzr_2.7.0+bzr6622+brz.tar.xz 18052 SHA256:d847a018e4869b59e9bfc04b0ff3705dcbb5479a8b6796c2dd68e60be3753a42
```

### `dpkg` source package: `ca-certificates=20211016ubuntu0.20.04.1`

Binary Packages:

- `ca-certificates=20211016ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.20.04.1.dsc' ca-certificates_20211016ubuntu0.20.04.1.dsc 1945 SHA512:0b5042d12f3bae34aacf5a7818825d0a7599004a46c7259d92523ccacfbd9d5198322fe0eeaf6326e20cf7a4ce921ee78b31810be23f236d6b3934662097dfd2
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.20.04.1.tar.xz' ca-certificates_20211016ubuntu0.20.04.1.tar.xz 239136 SHA512:4c277cc5d56f1b1bb7c715db8a0040e9fb87dba66c584c466c6960dd152c07da7810df06fee2d8247665668d81cb258ffb7f5bd91da77742a348a080b18740a1
```

### `dpkg` source package: `cairo=1.16.0-4ubuntu1`

Binary Packages:

- `libcairo-gobject2:amd64=1.16.0-4ubuntu1`
- `libcairo-script-interpreter2:amd64=1.16.0-4ubuntu1`
- `libcairo2:amd64=1.16.0-4ubuntu1`
- `libcairo2-dev:amd64=1.16.0-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.16.0-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0-4ubuntu1.dsc' cairo_1.16.0-4ubuntu1.dsc 2950 SHA256:f53596e412c2e1799d5e7e1c414d7db2cade33ba85fd912d39f60525b5a2e23b
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0.orig.tar.xz' cairo_1.16.0.orig.tar.xz 41997432 SHA256:5e7b29b3f113ef870d1e3ecf8adf21f923396401604bda16d44be45e66052331
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0-4ubuntu1.debian.tar.xz' cairo_1.16.0-4ubuntu1.debian.tar.xz 30416 SHA256:3725774f0a3f244a8b910e5a5e46bc731ee87372c6effb6c5af2d0db65c64426
```

### `dpkg` source package: `cdebconf=0.251ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.251ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.251ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.251ubuntu1.dsc' cdebconf_0.251ubuntu1.dsc 2858 SHA256:0753b98ec773e743de19d393f444a8b88915ad75340cc58007eb7c309031121d
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.251ubuntu1.tar.xz' cdebconf_0.251ubuntu1.tar.xz 276744 SHA256:d07848e52aecb70e82d8bafd082ecee3cccd7a8229b59527e07cc49023aa22d0
```

### `dpkg` source package: `configobj=5.0.6-4`

Binary Packages:

- `python3-configobj=5.0.6-4`

Licenses: (parsed from: `/usr/share/doc/python3-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-4
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-4.dsc' configobj_5.0.6-4.dsc 2246 SHA256:74df72d8fdb3c20e4bc5ab996bf1f8c6297811643989110cc27a019e7beb0429
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-4.debian.tar.xz' configobj_5.0.6-4.debian.tar.xz 6916 SHA256:dd20992aeef0eb1fb8ab6f0007e265ece33cfc20a6ca18b380eb255674195f01
```

### `dpkg` source package: `coreutils=8.30-3ubuntu2`

Binary Packages:

- `coreutils=8.30-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.30-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.30-3ubuntu2.dsc' coreutils_8.30-3ubuntu2.dsc 2048 SHA256:f36fe0ac14978b240a750b79d2bbd737d6b1939296c3a287899933aa2a1906ea
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.30.orig.tar.xz' coreutils_8.30.orig.tar.xz 5359532 SHA256:e831b3a86091496cdba720411f9748de81507798f6130adeaef872d206e1b057
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.30-3ubuntu2.debian.tar.xz' coreutils_8.30-3ubuntu2.debian.tar.xz 39636 SHA256:98204ef9d94e5c567880cd0245fdb7940eaf7592d6c6830c300ad117628b351f
```

### `dpkg` source package: `curl=7.68.0-1ubuntu2.14`

Binary Packages:

- `curl=7.68.0-1ubuntu2.14`
- `libcurl3-gnutls:amd64=7.68.0-1ubuntu2.14`
- `libcurl4:amd64=7.68.0-1ubuntu2.14`
- `libcurl4-openssl-dev:amd64=7.68.0-1ubuntu2.14`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg-2ubuntu0.1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg-2ubuntu0.1`
- `libsasl2-modules-db:amd64=2.1.27+dfsg-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2ubuntu0.1.dsc' cyrus-sasl2_2.1.27+dfsg-2ubuntu0.1.dsc 3511 SHA512:70d73c119ef8986adbb0b8f52be7459f756ea8f8e2bf836b2c57e5230f63052999cd716d6585d4b1d65f854a471afbc0f344e88759e99c5ea129b82216400903
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg.orig.tar.xz 2058596 SHA512:a795e4362f85a50e223c5456d03526832eb29fdbc9e17a767045f8542638e3f987d382b79b072bcd694bd1a12cbb818cff6c326063ca2bbe05453c1acf7fb8ad
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2ubuntu0.1.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg-2ubuntu0.1.debian.tar.xz 100804 SHA512:391bfecc0859839514a320739b93555f44e1101042d262c9c3c3623a5e1a73ca304f9509bd8bc2d62e691dc4c15570e8af5a52c97483fff8600d48eeb13ca518
```

### `dpkg` source package: `dash=0.5.10.2-6`

Binary Packages:

- `dash=0.5.10.2-6`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2-6.dsc' dash_0.5.10.2-6.dsc 1756 SHA256:d509a23ebdc4f107c911914590c1400e5a24383f35c5d6904e48d2afeff168ac
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2-6.debian.tar.xz' dash_0.5.10.2-6.debian.tar.xz 44232 SHA256:1448fbfc2541be52787da81ce03bb81ad6b1f380cba1b7e747abefdcd44f6c86
```

### `dpkg` source package: `db-defaults=1:5.3.21~exp1ubuntu2`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21~exp1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21~exp1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21%7eexp1ubuntu2.dsc' db-defaults_5.3.21~exp1ubuntu2.dsc 2044 SHA256:1960179af0244d410f368653e32d594c8e9331e2046422d05c33edc7f0d248b6
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21%7eexp1ubuntu2.tar.xz' db-defaults_5.3.21~exp1ubuntu2.tar.xz 3032 SHA256:03c2bba2824a4f5042960a4712630e35d2cbf885a22d24f2b27b2ca28ad6f46a
```

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.6ubuntu2`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.6ubuntu2`
- `libdb5.3-dev=5.3.28+dfsg1-0.6ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.6ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.6ubuntu2.dsc' db5.3_5.3.28+dfsg1-0.6ubuntu2.dsc 3245 SHA256:d879f4921a2f573132031d9371f0eb020005bdce48d6e12b436bf3515dda8663
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.6ubuntu2.debian.tar.xz' db5.3_5.3.28+dfsg1-0.6ubuntu2.debian.tar.xz 30172 SHA256:e606e7827f077efc92afc6f0d43c921fab4577d619eab06fab23182aefab7506
```

### `dpkg` source package: `debconf=1.5.73`

Binary Packages:

- `debconf=1.5.73`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.73
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.73.dsc' debconf_1.5.73.dsc 2081 SHA256:cdd4c049414cd167a4a9479d883e205bf5cebb19fc4bb6f132000a56291eb670
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.73.tar.xz' debconf_1.5.73.tar.xz 570780 SHA256:513895b2b77d9fb72542152390e7d4c67fe1e08de75fdad44d54ce1e7d83ecef
```

### `dpkg` source package: `debianutils=4.9.1`

Binary Packages:

- `debianutils=4.9.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.9.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.9.1.dsc' debianutils_4.9.1.dsc 1592 SHA256:d30866ea0352263fa7756010e8743ade350024b2fd491bc5befcbaa9a97626b7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.9.1.tar.xz' debianutils_4.9.1.tar.xz 157516 SHA256:af826685d9c56abfa873e84cd392539cd363cb0ba04a09d21187377e1b764091
```

### `dpkg` source package: `diffutils=1:3.7-3`

Binary Packages:

- `diffutils=1:3.7-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.7-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.7-3.dsc' diffutils_3.7-3.dsc 1453 SHA256:99dee94cec05454a65a9cb542bea1720dbd4c511d13f9784c9e3741e76a9b9ba
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz' diffutils_3.7.orig.tar.xz 1448828 SHA256:b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.7-3.debian.tar.xz' diffutils_3.7-3.debian.tar.xz 11116 SHA256:a455228f12283b5f3c0165db4ab9b12071adc37fb9dd50dcb5e1b8851c524f1f
```

### `dpkg` source package: `djvulibre=3.5.27.1-14ubuntu0.1`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-14ubuntu0.1`
- `libdjvulibre-text=3.5.27.1-14ubuntu0.1`
- `libdjvulibre21:amd64=3.5.27.1-14ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-14ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-14ubuntu0.1.dsc' djvulibre_3.5.27.1-14ubuntu0.1.dsc 2500 SHA512:46ea7723d3d6fbffeb7af94c0391ae12eb2521da72d1d437462df92cbc51632022b7ee0e11b0160f69e8ed9f699cf22a4a19538920999e1211c2e527c08f04ac
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA512:2ed11daa05995db7bf52113e2f75456c3c804988d2c17d0183b24ab379e52a4ef1871189e8bb132fec6cbc9d629b4d67a4d89ef7df7a995044cb25ff3dcc5de8
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-14ubuntu0.1.debian.tar.xz' djvulibre_3.5.27.1-14ubuntu0.1.debian.tar.xz 78008 SHA512:9b293e1f90432f7a9851efe46d2f199ffe65cbd53e90acaff608bdc21b77b983b0f653a206aa09687f8e68564ae0103a07038466be54730bbedf94a16928c1cf
```

### `dpkg` source package: `dpkg=1.19.7ubuntu3.2`

Binary Packages:

- `dpkg=1.19.7ubuntu3.2`
- `dpkg-dev=1.19.7ubuntu3.2`
- `libdpkg-perl=1.19.7ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.7ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.7ubuntu3.2.dsc' dpkg_1.19.7ubuntu3.2.dsc 2237 SHA512:7784d9d17a2bd5d85a776a2d744bd496630dcd8bb83e2986ff76adef2596e8e1ab1ad809c282049c44b25cebb90b5d2ef59c2cafbad4dd5f8ffbcc475b263f3b
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.7ubuntu3.2.tar.xz' dpkg_1.19.7ubuntu3.2.tar.xz 4732068 SHA512:a69c51b04fe52ca5ca44111baf83eeaff4cf5167f5322a4c1a7671dc4a6ce5e25095bad73ff4d9c197427d21f3bf1a246f99007dde8890f33c79bb572f7f95fc
```

### `dpkg` source package: `dulwich=0.19.15-1build1`

Binary Packages:

- `python3-dulwich=0.19.15-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-dulwich/copyright`)

- `Apache-2`
- `Apache-2.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dulwich=0.19.15-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dulwich/dulwich_0.19.15-1build1.dsc' dulwich_0.19.15-1build1.dsc 2410 SHA256:5a742485cfbf473aeefab144351af69662ab867ab016e5c3541aad6efddfa00c
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dulwich/dulwich_0.19.15.orig.tar.gz' dulwich_0.19.15.orig.tar.gz 369491 SHA256:805a9b1932dc28b91f359f529c2e46b7623aec3ab719c96d3f2fc63d0d8d8411
'http://archive.ubuntu.com/ubuntu/pool/universe/d/dulwich/dulwich_0.19.15-1build1.debian.tar.xz' dulwich_0.19.15-1build1.debian.tar.xz 631088 SHA256:6fddcf432f17d8512cafbc8f7bac2e94f54bd7843a820af64e0fe010413e8a5f
```

### `dpkg` source package: `e2fsprogs=1.45.5-2ubuntu1.1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.45.5-2ubuntu1.1`
- `e2fsprogs=1.45.5-2ubuntu1.1`
- `libcom-err2:amd64=1.45.5-2ubuntu1.1`
- `libext2fs2:amd64=1.45.5-2ubuntu1.1`
- `libss2:amd64=1.45.5-2ubuntu1.1`
- `logsave=1.45.5-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.45.5-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.45.5-2ubuntu1.1.dsc' e2fsprogs_1.45.5-2ubuntu1.1.dsc 3350 SHA512:98228bb8bfaa70888326dcab49e6de70de4b154df91f2c69a0dbae751f408b15f31b1ba09d85588a9ef67add85b3bd6e91230e35281980465793d95030f16b90
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.45.5.orig.tar.gz' e2fsprogs_1.45.5.orig.tar.gz 7938826 SHA512:3ddb8d8aedfa68e1684d77e2bdd3cbbc16b2fbc633945a72ba617bea76c13253f3afa50655216a4071d787382272381b992cd6e7e3747780a5c3a64343158c98
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.45.5.orig.tar.gz.asc' e2fsprogs_1.45.5.orig.tar.gz.asc 488 SHA512:1e3a19cf7943927c5e12ef3963a50af177e5627d9aa1c3eb081adb8e4671e46df3b6d512f6fcac002204d59b68716d94b04286d2cd85142a336c06bf28eaf3e1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.45.5-2ubuntu1.1.debian.tar.xz' e2fsprogs_1.45.5-2ubuntu1.1.debian.tar.xz 82324 SHA512:239e485a95be88f9021d02504ef61972df631febf3e66d4ec2f8b759fe14592fc0c661d815b8b7dc3f0c69f5f15823e97aecbb928459683139063ee9d10ea61d
```

### `dpkg` source package: `elfutils=0.176-1.1build1`

Binary Packages:

- `libelf1:amd64=0.176-1.1build1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.176-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.176-1.1build1.dsc' elfutils_0.176-1.1build1.dsc 2633 SHA256:2d0513bda9230c3fc655473b0df0069cf39aaf954bb99b93d147e1d56205148b
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2' elfutils_0.176.orig.tar.bz2 8646075 SHA256:eb5747c371b0af0f71e86215a5ebb88728533c3a104a43d4231963f308cd1023
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2.asc' elfutils_0.176.orig.tar.bz2.asc 455 SHA256:51474b579b25fc799de0777e241c83605427d2903f8d28524ef6af42f75931fd
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.176-1.1build1.debian.tar.xz' elfutils_0.176-1.1build1.debian.tar.xz 31696 SHA256:b2af440e20560eb14b8c91493ada2cfeb4f659c52bea22d7f6b3ef741532fd04
```

### `dpkg` source package: `expat=2.2.9-1ubuntu0.6`

Binary Packages:

- `libexpat1:amd64=2.2.9-1ubuntu0.6`
- `libexpat1-dev:amd64=2.2.9-1ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.9-1ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.9-1ubuntu0.6.dsc' expat_2.2.9-1ubuntu0.6.dsc 2117 SHA512:fa2daa0a6238b526802d0ef095754d337eda1ac5b4ceb438598ee38754f1431a84d0fe5e612b44e1b1860e2b7a6f9775581b5f25bdb8d17da7c9fc0f288c9808
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.9.orig.tar.gz' expat_2.2.9.orig.tar.gz 8273174 SHA512:e274fa7f30630450cb3ca681b266d765dbb7f5d00d1275ff9d9b2e2f6e1095893b8af4e3f4172ae6297c7a8a831a0a6becd484fe4bcdca09c37922f630780ef0
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.9-1ubuntu0.6.debian.tar.xz' expat_2.2.9-1ubuntu0.6.debian.tar.xz 27688 SHA512:b0c9f81d332ce468197e76caccab298cbe5621f12631fca9a00516a42624a899210829398f01345fded1825bfe5f705c5b9a8d770bd5aec6b89142c19f702ea6
```

### `dpkg` source package: `fftw3=3.3.8-2ubuntu1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.8-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.8-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.8-2ubuntu1.dsc' fftw3_3.3.8-2ubuntu1.dsc 2240 SHA256:f33b0cba612104281fa3de2cdd38e8cedf8aa52a6e28146d9b162a2df11aff8e
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.8.orig.tar.gz' fftw3_3.3.8.orig.tar.gz 4110137 SHA256:6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.8-2ubuntu1.debian.tar.xz' fftw3_3.3.8-2ubuntu1.debian.tar.xz 14028 SHA256:8bc469ad07cef4ebb1c512feecc061ba58eb851d83f67f732d42bc7db0a4f89b
```

### `dpkg` source package: `file=1:5.38-4`

Binary Packages:

- `file=1:5.38-4`
- `libmagic-mgc=1:5.38-4`
- `libmagic1:amd64=1:5.38-4`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.38-4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.38-4.dsc' file_5.38-4.dsc 2237 SHA256:d84b2734b112384230e3678beb1c8c5d3a17d4cdec8b6ef21304f2c0b72fda26
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.38.orig.tar.gz' file_5.38.orig.tar.gz 932528 SHA256:593c2ffc2ab349c5aea0f55fedfe4d681737b6b62376a9b3ad1e77b2cc19fa34
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.38.orig.tar.gz.asc' file_5.38.orig.tar.gz.asc 169 SHA256:b9c78e39970abda091ec8752401f5241349cef4709a2e1267a378f7ab25115d8
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.38-4.debian.tar.xz' file_5.38-4.debian.tar.xz 34488 SHA256:b9dfd0dd070ee17a6cc69ecf4d61c329b3f567ca16fdc121f3b31d0111df9381
```

### `dpkg` source package: `findutils=4.7.0-1ubuntu1`

Binary Packages:

- `findutils=4.7.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.7.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.7.0-1ubuntu1.dsc' findutils_4.7.0-1ubuntu1.dsc 2446 SHA256:3d157948919082e66cb74e0f927efa3dd240d9fa9814973874d0fa77f3023ead
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.7.0.orig.tar.xz' findutils_4.7.0.orig.tar.xz 1895048 SHA256:c5fefbdf9858f7e4feb86f036e1247a54c79fc2d8e4b7064d5aaa1f47dfa789a
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.7.0.orig.tar.xz.asc' findutils_4.7.0.orig.tar.xz.asc 488 SHA256:2f620e6d941e241fac52344a89149ab1ffeefb0fb9e42174e17a508d59a31d0f
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.7.0-1ubuntu1.debian.tar.xz' findutils_4.7.0-1ubuntu1.debian.tar.xz 27700 SHA256:dfb2329fd141384c2d76409c2e99f164cc25954115529245d80d5d41e3167731
```

### `dpkg` source package: `fontconfig=2.13.1-2ubuntu3`

Binary Packages:

- `fontconfig=2.13.1-2ubuntu3`
- `fontconfig-config=2.13.1-2ubuntu3`
- `libfontconfig1:amd64=2.13.1-2ubuntu3`
- `libfontconfig1-dev:amd64=2.13.1-2ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.13.1-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1-2ubuntu3.dsc' fontconfig_2.13.1-2ubuntu3.dsc 1959 SHA256:a9eebf6e6e88aa64d33fb3852c97718c212579f9714afd67cb6a9b8b116dd7aa
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1.orig.tar.bz2' fontconfig_2.13.1.orig.tar.bz2 1723639 SHA256:f655dd2a986d7aa97e052261b36aa67b0a64989496361eca8d604e6414006741
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1-2ubuntu3.debian.tar.xz' fontconfig_2.13.1-2ubuntu3.debian.tar.xz 26344 SHA256:342671f6a1e6d392958a6eec27541c6bdffc6498b469dcc46eca66c9d23a863a
```

### `dpkg` source package: `fonts-dejavu=2.37-1`

Binary Packages:

- `fonts-dejavu-core=2.37-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.dsc' fonts-dejavu_2.37-1.dsc 2575 SHA256:f35ff7b2c8dbfda6564c9dedf088ba06cc6d279fdd8e7cccbd1ae08ded1bb71c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.debian.tar.xz' fonts-dejavu_2.37-1.debian.tar.xz 10424 SHA256:5105cdbfc086f4a83ab6871eb39cc904bf02aa52762402b7cacf33d0938122f7
```

### `dpkg` source package: `freetype=2.10.1-2ubuntu0.2`

Binary Packages:

- `libfreetype-dev:amd64=2.10.1-2ubuntu0.2`
- `libfreetype6:amd64=2.10.1-2ubuntu0.2`
- `libfreetype6-dev:amd64=2.10.1-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libfreetype-dev/copyright`, `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `FSFUL`
- `FSFULLR`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `MPL-1.1`
- `OFL-1.1`
- `OpenGroup-BSD-like`
- `Permissive`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.10.1-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1-2ubuntu0.2.dsc' freetype_2.10.1-2ubuntu0.2.dsc 3864 SHA512:81966938ab590ea9c46e6db2e02146d11ffeb6166179f51961794cc1aa3f0d297af8b07063873816a8448c985d872615187f2b8dad06979046fcbd8caa87600c
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig-ft2demos.tar.gz' freetype_2.10.1.orig-ft2demos.tar.gz 305328 SHA512:67b9dc1c03ca5588a53edd8b9cb7f27e5b52a5730add6887e6af776176ab66099bfe4a9e69d036511d32ae2f96e822a71a3c9213f1adfcc6fa45be81adf56f77
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig-ft2demos.tar.gz.asc' freetype_2.10.1.orig-ft2demos.tar.gz.asc 195 SHA512:8279e9e7ea4da030db388ac5960808d652553b97dc65bc517ebcae90834188d75101fbe29d334a0e2b0a17a723c7121ac28b1f14bab0bf29ec4c9c6df6575a67
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig-ft2docs.tar.gz' freetype_2.10.1.orig-ft2docs.tar.gz 2123885 SHA512:05dbe26c291d3fa39c167f3aa5d8da0f3d3992f8e7ec74e936547b3feb17c1a59753a111fc33b2edce12ed991c61161c0ef7084b91c770d73c4679b62edd5b2f
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig-ft2docs.tar.gz.asc' freetype_2.10.1.orig-ft2docs.tar.gz.asc 195 SHA512:48e283c72d808901b9754bb20242d493628610326f3492c6d1aa35fcdffffd4ec320f589d18442735cfc6cda7238399f4f339d58e4a536da46e2b5a13864972e
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig.tar.gz' freetype_2.10.1.orig.tar.gz 3478158 SHA512:346c682744bcf06ca9d71265c108a242ad7d78443eff20142454b72eef47ba6d76671a6e931ed4c4c9091dd8f8515ebdd71202d94b073d77931345ff93cfeaa7
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1.orig.tar.gz.asc' freetype_2.10.1.orig.tar.gz.asc 195 SHA512:2a2750605d0fd11fbfe4f76d47ccd8e300473c3043b28a5c46f4f628e1da2c2f2308ee4f1b1b585daaf2c4b408718ee68eab6c5411e993ad9f95b08c35248178
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.10.1-2ubuntu0.2.debian.tar.xz' freetype_2.10.1-2ubuntu0.2.debian.tar.xz 116652 SHA512:c2c59c1535c9643bc1304eccbb0d265d27616079d7d6bc7f48a72cd2bb19f4d8402604d2e563b9c5e31e7bfffcd78ea14f4f3e439e34f665d35144d7ff0e3f0a
```

### `dpkg` source package: `fribidi=1.0.8-2ubuntu0.1`

Binary Packages:

- `libfribidi0:amd64=1.0.8-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.8-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8-2ubuntu0.1.dsc' fribidi_1.0.8-2ubuntu0.1.dsc 2442 SHA512:f9047bc07f608d08ed75aa3a548a15123340b97b4841a1e5904dce11e713aef3df5b3399817d8fcfd77e342b0afe6e99dfe64bb86acd5b7eedd633da347ef869
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8.orig.tar.bz2' fribidi_1.0.8.orig.tar.bz2 2077095 SHA512:d66b1524b26d227fd6a628f438efb875c023ae3be708acaaad11f1f62d0902de0a5f57124458291ef2b0fcd89356c52ab8ae5559b0b5a93fa435b92f1d098ba2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8-2ubuntu0.1.debian.tar.xz' fribidi_1.0.8-2ubuntu0.1.debian.tar.xz 10612 SHA512:2ad4f0c140d303f5d79ec5bba1b7211fac398768f0a07f47e0ad8d9844d61cc38c31daafaa9378a1dae9bec66917d7d46b15d1aaab34d3b15a738632fdf15feb
```

### `dpkg` source package: `gcc-10=10.3.0-1ubuntu1~20.04`

Binary Packages:

- `gcc-10-base:amd64=10.3.0-1ubuntu1~20.04`
- `libatomic1:amd64=10.3.0-1ubuntu1~20.04`
- `libcc1-0:amd64=10.3.0-1ubuntu1~20.04`
- `libgcc-s1:amd64=10.3.0-1ubuntu1~20.04`
- `libgomp1:amd64=10.3.0-1ubuntu1~20.04`
- `libitm1:amd64=10.3.0-1ubuntu1~20.04`
- `liblsan0:amd64=10.3.0-1ubuntu1~20.04`
- `libquadmath0:amd64=10.3.0-1ubuntu1~20.04`
- `libstdc++6:amd64=10.3.0-1ubuntu1~20.04`
- `libtsan0:amd64=10.3.0-1ubuntu1~20.04`
- `libubsan1:amd64=10.3.0-1ubuntu1~20.04`

Licenses: (parsed from: `/usr/share/doc/gcc-10-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-10=10.3.0-1ubuntu1~20.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/gcc-10_10.3.0-1ubuntu1%7e20.04.dsc' gcc-10_10.3.0-1ubuntu1~20.04.dsc 31155 SHA512:c67d612edfbf2a97d4c3f436b1fdbc08b7387907a3e0cc49a9ba2a360db054b3d07082097c4b98abc9ace7b8902637f8d7126de229c164cab743eff4fd5d7520
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/gcc-10_10.3.0.orig.tar.gz' gcc-10_10.3.0.orig.tar.gz 83679201 SHA512:c7f0fb09c79bc8c372171df7f23af6970a389dcc1237ebc0821c0a754d93c6e4065433f7ad63aed9f9b8fce2da7fce3caa61ae2e2afab494d06bf33b06a10775
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-10/gcc-10_10.3.0-1ubuntu1%7e20.04.debian.tar.xz' gcc-10_10.3.0-1ubuntu1~20.04.debian.tar.xz 580864 SHA512:3ae060b517a67ae2410b48c83a7836ec25e83422cb3db5dbe55cce9e97609aff82062aa55a84c64ca9c52f405a41d2da20c1d016b15521102cac3b82895f3975
```

### `dpkg` source package: `gcc-9=9.4.0-1ubuntu1~20.04.1`

Binary Packages:

- `cpp-9=9.4.0-1ubuntu1~20.04.1`
- `g++-9=9.4.0-1ubuntu1~20.04.1`
- `gcc-9=9.4.0-1ubuntu1~20.04.1`
- `gcc-9-base:amd64=9.4.0-1ubuntu1~20.04.1`
- `libasan5:amd64=9.4.0-1ubuntu1~20.04.1`
- `libgcc-9-dev:amd64=9.4.0-1ubuntu1~20.04.1`
- `libstdc++-9-dev:amd64=9.4.0-1ubuntu1~20.04.1`

Licenses: (parsed from: `/usr/share/doc/cpp-9/copyright`, `/usr/share/doc/g++-9/copyright`, `/usr/share/doc/gcc-9/copyright`, `/usr/share/doc/gcc-9-base/copyright`, `/usr/share/doc/libasan5/copyright`, `/usr/share/doc/libgcc-9-dev/copyright`, `/usr/share/doc/libstdc++-9-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gcc-9=9.4.0-1ubuntu1~20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gcc-9_9.4.0-1ubuntu1%7e20.04.1.dsc' gcc-9_9.4.0-1ubuntu1~20.04.1.dsc 23760 SHA512:d79ad34fada44a666a231894b346f8f34c3f9c7d8ccca2c49155928f6ef9af1e7bd187adf14fd38851f14668769daaf0353f1b6018600bf7a281c7b5a0de9ef7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gcc-9_9.4.0.orig.tar.gz' gcc-9_9.4.0.orig.tar.gz 92368536 SHA512:c10390524e900d3f0afd4516af097f536304fb2946ecf73eaba0472b953609ce8fbb5c7f0c20af9e54fe38fc8f45ec3b6ebd2051fa67225c73efa8362150c1c6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-9/gcc-9_9.4.0-1ubuntu1%7e20.04.1.debian.tar.xz' gcc-9_9.4.0-1ubuntu1~20.04.1.debian.tar.xz 578028 SHA512:eba28507ac082c7febc8c9af48e797da2e540aa5dddbba94dee90807c8f0710b45373f571c569cb5432d07898c120452e5988cedeeb293655ee0613d744c2159
```

### `dpkg` source package: `gcc-defaults=1.185.1ubuntu2`

Binary Packages:

- `cpp=4:9.3.0-1ubuntu2`
- `g++=4:9.3.0-1ubuntu2`
- `gcc=4:9.3.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.185.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.185.1ubuntu2.dsc' gcc-defaults_1.185.1ubuntu2.dsc 16544 SHA256:32c0331bc75ecbc0d013b9e11401d1fc64cbd7b0198274cb25a183a27b5c407f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.185.1ubuntu2.tar.gz' gcc-defaults_1.185.1ubuntu2.tar.gz 58807 SHA256:342b5842c03073717bc98d6d9de7eb79027a1239735637743006933e5d44bb05
```

### `dpkg` source package: `gdbm=1.18.1-5`

Binary Packages:

- `libgdbm-compat4:amd64=1.18.1-5`
- `libgdbm-dev:amd64=1.18.1-5`
- `libgdbm6:amd64=1.18.1-5`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.18.1-5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1-5.dsc' gdbm_1.18.1-5.dsc 2635 SHA256:4c0c4498378c673c9d2d8dfb5b319a4830d2dd21e65faaaa8e0f09cb7f71606b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz' gdbm_1.18.1.orig.tar.gz 941863 SHA256:86e613527e5dba544e73208f42b78b7c022d4fa5a6d5498bf18c8d6f745b91dc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz.asc' gdbm_1.18.1.orig.tar.gz.asc 412 SHA256:3254738e7689e44ac65e78a766806828b8282e6bb1c0e5bb6156a99e567889a5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1-5.debian.tar.xz' gdbm_1.18.1-5.debian.tar.xz 16348 SHA256:3c1a0e05b40a97ee51ce77c736c72c37738ba31b2720111d3bc99175a2c3a3ed
```

### `dpkg` source package: `gdk-pixbuf=2.40.0+dfsg-3ubuntu0.4`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.40.0+dfsg-3ubuntu0.4`
- `libgdk-pixbuf2.0-0:amd64=2.40.0+dfsg-3ubuntu0.4`
- `libgdk-pixbuf2.0-bin=2.40.0+dfsg-3ubuntu0.4`
- `libgdk-pixbuf2.0-common=2.40.0+dfsg-3ubuntu0.4`
- `libgdk-pixbuf2.0-dev:amd64=2.40.0+dfsg-3ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-bin/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1-or-LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.40.0+dfsg-3ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.40.0%2bdfsg-3ubuntu0.4.dsc' gdk-pixbuf_2.40.0+dfsg-3ubuntu0.4.dsc 3062 SHA512:d3492c156f517e8c54c9136bbcd9a8caa3e6a34e9947150e0201dbc8b40d7dc8090ec777fcbf752ef5da275e321328b4470a04d43ef79f83adf95bfecde6a6d3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.40.0%2bdfsg.orig.tar.xz' gdk-pixbuf_2.40.0+dfsg.orig.tar.xz 5626144 SHA512:bb8a9d1837bffdc5f50307dba1a1e6f1ac015e6e670ea6cae6d0bc997afa106ff0d928cb847d76848c480a06e1ad3945274b4913eaa4d9a8074797fc82bb7c1f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.40.0%2bdfsg-3ubuntu0.4.debian.tar.xz' gdk-pixbuf_2.40.0+dfsg-3ubuntu0.4.debian.tar.xz 21108 SHA512:77c5f1b213dcead327039f121ed6334aef33e73370489d496de4381921c29447bdd425a6fdb286a24f675dca95f45eecf354e791a8fc74ff628bf6e356393fb1
```

### `dpkg` source package: `git=1:2.25.1-1ubuntu3.6`

Binary Packages:

- `git=1:2.25.1-1ubuntu3.6`
- `git-man=1:2.25.1-1ubuntu3.6`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-man/copyright`)

- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-2-clause`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `glib2.0=2.64.6-1~ubuntu20.04.4`

Binary Packages:

- `libglib2.0-0:amd64=2.64.6-1~ubuntu20.04.4`
- `libglib2.0-bin=2.64.6-1~ubuntu20.04.4`
- `libglib2.0-data=2.64.6-1~ubuntu20.04.4`
- `libglib2.0-dev:amd64=2.64.6-1~ubuntu20.04.4`
- `libglib2.0-dev-bin=2.64.6-1~ubuntu20.04.4`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.64.6-1~ubuntu20.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.64.6-1%7eubuntu20.04.4.dsc' glib2.0_2.64.6-1~ubuntu20.04.4.dsc 3338 SHA512:536d1dd6d47741e816ebe94008cef11cf754a46070329723cf0cec45e49126fe43f5f58c9db5c6d425c9730d9acda4d1f4acb468d41d1d7e35a8141b13434f01
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.64.6.orig.tar.xz' glib2.0_2.64.6.orig.tar.xz 4781576 SHA512:5cd82c4d9b143e7aa130c24e25fb9def06dd915ef8ad8ed3883931bf5cddecf69c2e669ef6aa1d910484ede75b671e7c48a4f3fe50aa78955bff57b04f0cf958
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.64.6-1%7eubuntu20.04.4.debian.tar.xz' glib2.0_2.64.6-1~ubuntu20.04.4.debian.tar.xz 111852 SHA512:4b4f05731fd40715aefa1c70aa06ae03ad8e11d77732246d9b0457fc1ae8b226a3a75b4c5ee86ed143dca4cd60e65504d903c4063735a5c1021bc5f86a17d059
```

### `dpkg` source package: `glibc=2.31-0ubuntu9.9`

Binary Packages:

- `libc-bin=2.31-0ubuntu9.9`
- `libc-dev-bin=2.31-0ubuntu9.9`
- `libc6:amd64=2.31-0ubuntu9.9`
- `libc6-dev:amd64=2.31-0ubuntu9.9`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.31-0ubuntu9.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.31-0ubuntu9.9.dsc' glibc_2.31-0ubuntu9.9.dsc 9548 SHA512:f1c38086da34549484f4a42bfc806bd5ad24998514751e85e7814d8a9531ace07e79f67b1e28e4c90c9822fa0c50d9358b25439a394b070bf3b2e40cc095da44
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.31.orig.tar.xz' glibc_2.31.orig.tar.xz 17317924 SHA512:2ff56628fe935cacbdf1825534f15d45cb87a159cbdb2e6a981590eeb6174ed4b3ff7041519cdecbd4f624ac20b745e2dd9614c420dd3ea186b8f36bc4c2453c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.31-0ubuntu9.9.debian.tar.xz' glibc_2.31-0ubuntu9.9.debian.tar.xz 875580 SHA512:7b2b6eaaa2c1fb0e62bc662dcd4f5c30aec5e199fe69561efe8d29156a4fe5be4cb15323e3f74072cf34e182fe8112d9d895aab8535e4622729554c7f039195f
```

### `dpkg` source package: `gmp=2:6.2.0+dfsg-4ubuntu0.1`

Binary Packages:

- `libgmp-dev:amd64=2:6.2.0+dfsg-4ubuntu0.1`
- `libgmp10:amd64=2:6.2.0+dfsg-4ubuntu0.1`
- `libgmpxx4ldbl:amd64=2:6.2.0+dfsg-4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.2.0+dfsg-4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.0%2bdfsg-4ubuntu0.1.dsc' gmp_6.2.0+dfsg-4ubuntu0.1.dsc 2279 SHA512:6171e0fa69e6ddb3332a9fa4a23ca6006a451d19f0df717b1db8ed67c97104b247c9c711db4ea879318b2fd17345c2b63ae4e960613884f34ce0da85dc8f78ea
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.0%2bdfsg.orig.tar.xz' gmp_6.2.0+dfsg.orig.tar.xz 1842912 SHA512:6ed6df69ced53b13e3e2d64d94f8a34c3257abd4c0967f16d48b064956e260a3d8fb424c84d47dca6d1308bd16b347af3740fce68ebd2d45f1d7f752422c2496
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.0%2bdfsg-4ubuntu0.1.debian.tar.xz' gmp_6.2.0+dfsg-4ubuntu0.1.debian.tar.xz 21644 SHA512:b89b351bd9648108a15aa4db193610a36d59a9f75ddcbad2ea85004dbdf39553a6e611552351d2f37836eed3d99f152cba22fdbaa71b92f94635797b06404a27
```

### `dpkg` source package: `gnupg2=2.2.19-3ubuntu2.2`

Binary Packages:

- `dirmngr=2.2.19-3ubuntu2.2`
- `gnupg=2.2.19-3ubuntu2.2`
- `gnupg-l10n=2.2.19-3ubuntu2.2`
- `gnupg-utils=2.2.19-3ubuntu2.2`
- `gpg=2.2.19-3ubuntu2.2`
- `gpg-agent=2.2.19-3ubuntu2.2`
- `gpg-wks-client=2.2.19-3ubuntu2.2`
- `gpg-wks-server=2.2.19-3ubuntu2.2`
- `gpgconf=2.2.19-3ubuntu2.2`
- `gpgsm=2.2.19-3ubuntu2.2`
- `gpgv=2.2.19-3ubuntu2.2`

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
$ apt-get source -qq --print-uris gnupg2=2.2.19-3ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.19-3ubuntu2.2.dsc' gnupg2_2.2.19-3ubuntu2.2.dsc 3939 SHA512:13469e7c2042d5b7df6908e73e3e74d57a014340beb599991f16249822fb7e38f6e33415c2e9c27e6f818a609a1e9ebfdff69b7def49347eb5be0e8f249401e0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.19.orig.tar.bz2' gnupg2_2.2.19.orig.tar.bz2 6754972 SHA512:d7700136ac9f0a8cf04b33da4023a42427fced648c2f90d76250c92904353b85fe728bdd89a713d847e8d38e5900c98d46075614492fdc3d1421f927a92f49dd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.19.orig.tar.bz2.asc' gnupg2_2.2.19.orig.tar.bz2.asc 906 SHA512:8b02ce09a50d2aa0c263f7042424ea815386fac56a8d8cea102d1aea2e75802f91bb2ebc7dc2d7a3157126d748ece554e0693d3bf355f908586cbadbe80c68fb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.19-3ubuntu2.2.debian.tar.xz' gnupg2_2.2.19-3ubuntu2.2.debian.tar.xz 66132 SHA512:799684fb92e2c3c1016f0f0df6b4febb1e23b4c448768657358e2203120957d1329a5b4f0b417c659fe3bec414473e59f43ab6c0976b25439121d2b33a1ffe00
```

### `dpkg` source package: `gnutls28=3.6.13-2ubuntu1.7`

Binary Packages:

- `libgnutls30:amd64=3.6.13-2ubuntu1.7`

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
$ apt-get source -qq --print-uris gnutls28=3.6.13-2ubuntu1.7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.13-2ubuntu1.7.dsc' gnutls28_3.6.13-2ubuntu1.7.dsc 3594 SHA512:34dc7445af2c3e9a93a5afb8760b84e8821cfdca935fdd89d8a270a8e8a71a69d0ff7c5b393f0a31aa55a3b3dd94af13d82dda26ab50d07f4d3686a401c11fd2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.13.orig.tar.xz' gnutls28_3.6.13.orig.tar.xz 5958956 SHA512:23581952cb72c9a34f378c002bb62413d5a1243b74b48ad8dc49eaea4020d33c550f8dc1dd374cf7fbfa4187b0ca1c5698c8a0430398268a8b8a863f8633305c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.13.orig.tar.xz.asc' gnutls28_3.6.13.orig.tar.xz.asc 667 SHA512:b343a8ace6a5c81c0c44b2cb65d8e83dfe5963c9bab04d9131fa8fd03cdf0c6f990d720af8767084e01bf5f7a7dbd0f048aefe68c3b6f1dc1ea1899d567a72f7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.13-2ubuntu1.7.debian.tar.xz' gnutls28_3.6.13-2ubuntu1.7.debian.tar.xz 73256 SHA512:6927fc815c0358ee20ca5c851f97b524e62a292948812db58f60864d98993ba9ee5b7f443f6efd544e6cb379398d95c937f6c937bb8687694b17d237f4da6692
```

### `dpkg` source package: `gobject-introspection=1.64.1-1~ubuntu20.04.1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.64.1-1~ubuntu20.04.1`
- `gir1.2-glib-2.0:amd64=1.64.1-1~ubuntu20.04.1`
- `libgirepository-1.0-1:amd64=1.64.1-1~ubuntu20.04.1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.64.1-1~ubuntu20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.64.1-1%7eubuntu20.04.1.dsc' gobject-introspection_1.64.1-1~ubuntu20.04.1.dsc 3183 SHA512:93ad02366de092d2aac580d03947df4533e687bf77860e5faae26155253daf28da32cd8af52bbea69c4ba24380862ae13bd459edeb55f02730c1ebaec1135063
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.64.1.orig.tar.xz' gobject-introspection_1.64.1.orig.tar.xz 1000280 SHA512:7610871f7ed5778ea9813062ed6465d131af58c00bdea1bb51dde7f98f459f44ae453eb6d0c5bdc6f7dcd92d639816f4e0773ccd5673cd065d22dabc6448647c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.64.1-1%7eubuntu20.04.1.debian.tar.xz' gobject-introspection_1.64.1-1~ubuntu20.04.1.debian.tar.xz 23412 SHA512:9b0e1f889c14d7e883d536fddb6872290c50bb97863d94dab5e74eeda4adb6b31d2f9b5f17d16e46e1188f1511888ab11e9e7afba76fbcbcb5e465f59ac564ee
```

### `dpkg` source package: `graphite2=1.3.13-11build1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.13-11build1`

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
$ apt-get source -qq --print-uris graphite2=1.3.13-11build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.13-11build1.dsc' graphite2_1.3.13-11build1.dsc 2636 SHA256:c0553cdbffa6ec465063753058007acdf956a1d3fda7336c356b663d4b73bd18
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.13.orig.tar.gz' graphite2_1.3.13.orig.tar.gz 6664941 SHA256:2f9f609deeddfe2b193502adc8df3b0396694b799a433c36e85fd1242e654cd9
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.13-11build1.debian.tar.xz' graphite2_1.3.13-11build1.debian.tar.xz 12132 SHA256:b25e456d2810c2965e968403e2e2fdaf159327f3db5f37c87adae905b40efa49
```

### `dpkg` source package: `grep=3.4-1`

Binary Packages:

- `grep=3.4-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.4-1.dsc' grep_3.4-1.dsc 1674 SHA256:785f527cede9631f075bdd6c7f35e65e6b82897d009682766cf35839a393277d
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.4.orig.tar.xz' grep_3.4.orig.tar.xz 1555820 SHA256:58e6751c41a7c25bfc6e9363a41786cff3ba5709cf11d5ad903cf7cce31cc3fb
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.4.orig.tar.xz.asc' grep_3.4.orig.tar.xz.asc 833 SHA256:4c1871ff6b79c5e5ce0a192272c171d06ec20762b4b258688b1ca2e47d94b23e
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.4-1.debian.tar.xz' grep_3.4-1.debian.tar.xz 104364 SHA256:582d181804ce72fcfc4c6a9f13ea1dd73ad04c2723b5da346b69ee5cd24a7d08
```

### `dpkg` source package: `gzip=1.10-0ubuntu4.1`

Binary Packages:

- `gzip=1.10-0ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.10-0ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10-0ubuntu4.1.dsc' gzip_1.10-0ubuntu4.1.dsc 2113 SHA512:27a7c1871b33b62f6cada63d43f43eae1f3a9a3d92b10a28a28ef7f85893aba3a9513ac031c96a0dedbdaa0507aafe8922631460ff2890ab663fb732283ba073
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10.orig.tar.gz' gzip_1.10.orig.tar.gz 1201421 SHA512:7939043e74554ced0c1c05d354ab4eb36cd6dce89ad79d02ccdc5ed6b7ee390759689b2d47c07227b9b44a62851afe7c76c4cae9f92527d999f3f1b4df1cccff
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.10-0ubuntu4.1.debian.tar.xz' gzip_1.10-0ubuntu4.1.debian.tar.xz 31144 SHA512:26096584c400dc78d892f1721ad28778aa1a0c0476337bd37589c6d985f8636aad9c7fde55385c25ce1c8420a40c6ca33c06887f18b855ba8a5f45b980fe6c99
```

### `dpkg` source package: `harfbuzz=2.6.4-1ubuntu4.2`

Binary Packages:

- `libharfbuzz0b:amd64=2.6.4-1ubuntu4.2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=2.6.4-1ubuntu4.2
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.6.4-1ubuntu4.2.dsc' harfbuzz_2.6.4-1ubuntu4.2.dsc 2849 SHA512:c07f75420e4712cd0d7a98e9add327426b1aa77abde4a79c83ee60c78bc94e5f9f88256b8c64a9ad13afdbcf0d1d077e331b84913d12bcad12326da47530d471
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.6.4.orig.tar.xz' harfbuzz_2.6.4.orig.tar.xz 5967468 SHA512:d8664bb64fda11ff7646693070637e3827f8b3d1de50e11ecf108ce4d19c878b26b2ba4cff278da6e6cc0cb431e1630d9eaa7c32a9bebb9655a7aa8dabf7114f
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.6.4-1ubuntu4.2.debian.tar.xz' harfbuzz_2.6.4-1ubuntu4.2.debian.tar.xz 12000 SHA512:a82f88147e34b830bb0eda78313aff32f079fc902e79eeb8b270d1513b4fe07f60c927d1b4204a593baab929c1285302ae02edda147b3a45fa453938aa0525b6
```

### `dpkg` source package: `heimdal=7.7.0+dfsg-1ubuntu1.2`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libgssapi3-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libhcrypto4-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libheimbase1-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libheimntlm0-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libhx509-5-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libkrb5-26-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libroken18-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`
- `libwind0-heimdal:amd64=7.7.0+dfsg-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libasn1-8-heimdal/copyright`, `/usr/share/doc/libgssapi3-heimdal/copyright`, `/usr/share/doc/libhcrypto4-heimdal/copyright`, `/usr/share/doc/libheimbase1-heimdal/copyright`, `/usr/share/doc/libheimntlm0-heimdal/copyright`, `/usr/share/doc/libhx509-5-heimdal/copyright`, `/usr/share/doc/libkrb5-26-heimdal/copyright`, `/usr/share/doc/libroken18-heimdal/copyright`, `/usr/share/doc/libwind0-heimdal/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `custom`
- `none`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `hicolor-icon-theme=0.17-2`

Binary Packages:

- `hicolor-icon-theme=0.17-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.dsc' hicolor-icon-theme_0.17-2.dsc 2053 SHA256:9df02b466f82cd6fa13930bc197d001ed8ddac1abc7f8dde3db45ed1708336bd
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.debian.tar.xz' hicolor-icon-theme_0.17-2.debian.tar.xz 3536 SHA256:97eec9852a2923b95bd13fc59c30fb1b9063ffd1f8a04748544d4975a84e98f2
```

### `dpkg` source package: `hostname=3.23`

Binary Packages:

- `hostname=3.23`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23.dsc' hostname_3.23.dsc 1402 SHA256:0694c083fad82da1fd33204557a30bfc745a689a64030ba360062daafe03ede0
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23.tar.gz' hostname_3.23.tar.gz 13672 SHA256:bc6d1954b22849869ff8b2a602e39f08b1702f686d4b58dd7927cdeb5b4876ef
```

### `dpkg` source package: `icu=66.1-2ubuntu2.1`

Binary Packages:

- `icu-devtools=66.1-2ubuntu2.1`
- `libicu-dev:amd64=66.1-2ubuntu2.1`
- `libicu66:amd64=66.1-2ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=66.1-2ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_66.1-2ubuntu2.1.dsc' icu_66.1-2ubuntu2.1.dsc 2047 SHA512:202bb201876d0167afede5fcf4abc3cb55faf75059edac64d50e3560064fe2482608e2b2476669767fa7f80aaf845a3d1c6b619e737358eb726c5de03059a8c6
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_66.1.orig.tar.gz' icu_66.1.orig.tar.gz 24361305 SHA512:78d87bce65a7bdf7e9a19bda13e353c60846816ff34025f829d1ff15f9ac49aa6061eb192173742be0eca105684ce0e39e95656147afe848520bf60274c8d246
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_66.1.orig.tar.gz.asc' icu_66.1.orig.tar.gz.asc 833 SHA512:5e624e8a1f210e8671f683efa203b96eebb9a311ca9945705d77e05fc182291c064157660b094ec5a073088a70892fd74e977b57fdd0abddc48ac73a4ab8781c
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_66.1-2ubuntu2.1.debian.tar.xz' icu_66.1-2ubuntu2.1.debian.tar.xz 29700 SHA512:f7a9e5f49e157ede3e5dbc1a03b1521fed15dedfbdd6d8e98672f36e9b643c93e0e6407a26b66d2677bc38a5fe0ee090d9e5931d106ee1cbac4eb969db451ace
```

### `dpkg` source package: `ilmbase=2.3.0-6build1`

Binary Packages:

- `libilmbase-dev:amd64=2.3.0-6build1`
- `libilmbase24:amd64=2.3.0-6build1`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase24/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.3.0-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ilmbase/ilmbase_2.3.0-6build1.dsc' ilmbase_2.3.0-6build1.dsc 2367 SHA256:2164e2cff01f17f030b456c2d0920d09461ae76229507459a73cf7c618d4f7f6
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ilmbase/ilmbase_2.3.0.orig.tar.gz' ilmbase_2.3.0.orig.tar.gz 596749 SHA256:0ea21166799bbdd920e7a38a7026236566aafdd6e8638f54c9da1af2219fae82
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ilmbase/ilmbase_2.3.0.orig.tar.gz.asc' ilmbase_2.3.0.orig.tar.gz.asc 566 SHA256:c7ee3f4432322d4f7c63dd1b0ca2188a8d1c4a018821c3c12a3d9db746b54bee
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ilmbase/ilmbase_2.3.0-6build1.debian.tar.xz' ilmbase_2.3.0-6build1.debian.tar.xz 14252 SHA256:1039258f50fda2e94e4dac23e1e8aa702d8e3e83d0e1f12f13a652eadf2ebbf3
```

### `dpkg` source package: `imagemagick=8:6.9.10.23+dfsg-2.1ubuntu11.4`

Binary Packages:

- `imagemagick=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `imagemagick-6-common=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `imagemagick-6.q16=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-6-arch-config:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-6-headers=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-6.q16-6:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-6.q16-6-extra:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-6.q16-dev:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickcore-dev=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickwand-6-headers=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickwand-6.q16-6:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickwand-6.q16-dev:amd64=8:6.9.10.23+dfsg-2.1ubuntu11.4`
- `libmagickwand-dev=8:6.9.10.23+dfsg-2.1ubuntu11.4`

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
$ apt-get source -qq --print-uris imagemagick=8:6.9.10.23+dfsg-2.1ubuntu11.4
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.10.23%2bdfsg-2.1ubuntu11.4.dsc' imagemagick_6.9.10.23+dfsg-2.1ubuntu11.4.dsc 5218 SHA512:c53aca9b43acfb2c7fed2ab45888e7a8f450894847f7300d6d1ac219cce9cb74bd2e12811f975646074046ed64a046158ae9b1e6a87037dfb7c2a1e12001d663
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.10.23%2bdfsg.orig.tar.xz' imagemagick_6.9.10.23+dfsg.orig.tar.xz 9081188 SHA512:0c5fdfb82d12fef09d79c3a3d03167a57732e566980ca89e977d04502779506eae34e6bc4260c35558db63c572c64fe80d69f6627e180ffc8e8679ebe8574972
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.10.23%2bdfsg-2.1ubuntu11.4.debian.tar.xz' imagemagick_6.9.10.23+dfsg-2.1ubuntu11.4.debian.tar.xz 250880 SHA512:14e9ec65dc3c639066e8f593d3dc8eb20ee7c1430d2f8af769685c1682f012fa9355c976722a029d55d56403b8ed5ebeb9af332c0b5ceaad14dcb249a27f8ad5
```

### `dpkg` source package: `init-system-helpers=1.57`

Binary Packages:

- `init-system-helpers=1.57`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.57
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.57.dsc' init-system-helpers_1.57.dsc 1896 SHA256:88bb5af040c99f010b6d6947ff5c80ae4863ff787e0eeae91e99dcd15a10dbb8
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.57.tar.xz' init-system-helpers_1.57.tar.xz 40460 SHA256:e9d83fd8756a42666fb5d19a8835813823295846659b4e58f138bb9b54e9f5dd
```

### `dpkg` source package: `isl=0.22.1-1`

Binary Packages:

- `libisl22:amd64=0.22.1-1`

Licenses: (parsed from: `/usr/share/doc/libisl22/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.22.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.22.1-1.dsc' isl_0.22.1-1.dsc 1860 SHA256:9e9925317ef448cf679040edb6572a2874d497f758b613d9fc633bdafab197cb
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.22.1.orig.tar.xz' isl_0.22.1.orig.tar.xz 1676948 SHA256:28658ce0f0bdb95b51fd2eb15df24211c53284f6ca2ac5e897acc3169e55b60f
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.22.1-1.debian.tar.xz' isl_0.22.1-1.debian.tar.xz 25252 SHA256:bbeb62cfc95e51c25448e127c29fa8ac8009a6f471861de28f326bab2404a406
```

### `dpkg` source package: `jbigkit=2.1-3.1ubuntu0.20.04.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1ubuntu0.20.04.1`
- `libjbig0:amd64=2.1-3.1ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.20.04.1.dsc' jbigkit_2.1-3.1ubuntu0.20.04.1.dsc 1796 SHA512:c7c24dd450b988659ccfc7fb08be2a316b49cc9ff789137759d3eca38186e3212d1821aa65d4e1d98a8c20efd9bbcedf79a4b097fdeb72c275d4e80577d8a573
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.20.04.1.debian.tar.xz' jbigkit_2.1-3.1ubuntu0.20.04.1.debian.tar.xz 9804 SHA512:68f3c71ce89212aaa28a83721d5e1ede41aab92a4e066779db5c8f512ad569e565a8b9d2e8e65e36e71d4d19e85c07cc0e9d28762c002d1185963b01493fc593
```

### `dpkg` source package: `keyutils=1.6-6ubuntu1.1`

Binary Packages:

- `libkeyutils1:amd64=1.6-6ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6-6ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6-6ubuntu1.1.dsc' keyutils_1.6-6ubuntu1.1.dsc 2185 SHA512:268bf05775176fd5550b4e66a4b9132e0be3f54ab02b77b4995f3b053191ea5d157bc38bf53d067008b311751ba3bad02b463538b6ce209403b629480c42fc38
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.orig.tar.bz2' keyutils_1.6.orig.tar.bz2 93973 SHA512:ee50da165099ea26904066d24b27c5165cb1eb78df6768cba3a534aa318a5c8d926ec6e5322a38c8cedaa768cd79bdcb26ef918aa8447df2e5dfbbe7b8f200ff
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6-6ubuntu1.1.debian.tar.xz' keyutils_1.6-6ubuntu1.1.debian.tar.xz 14556 SHA512:300ed4c9626de95616a7c799f14d4f8bf7dc0b765d1751d3c9d60f86b7c60801bfbb97bf26c5d0ab39e5e41d5f3021ca870748f9555433b0e6c4ba261f475c3b
```

### `dpkg` source package: `krb5=1.17-6ubuntu4.1`

Binary Packages:

- `krb5-multidev:amd64=1.17-6ubuntu4.1`
- `libgssapi-krb5-2:amd64=1.17-6ubuntu4.1`
- `libgssrpc4:amd64=1.17-6ubuntu4.1`
- `libk5crypto3:amd64=1.17-6ubuntu4.1`
- `libkadm5clnt-mit11:amd64=1.17-6ubuntu4.1`
- `libkadm5srv-mit11:amd64=1.17-6ubuntu4.1`
- `libkdb5-9:amd64=1.17-6ubuntu4.1`
- `libkrb5-3:amd64=1.17-6ubuntu4.1`
- `libkrb5-dev:amd64=1.17-6ubuntu4.1`
- `libkrb5support0:amd64=1.17-6ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-9/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.17-6ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.17-6ubuntu4.1.dsc' krb5_1.17-6ubuntu4.1.dsc 3637 SHA512:00e77a202038d971b0cc49d77ea6f1c9eef4052016e839235f0b4b60e1dffd476d18bab1330ea5955e6e319731e5679873cf70d144e4cdabd3659aafd209fd37
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.17.orig.tar.gz' krb5_1.17.orig.tar.gz 8761763 SHA512:7462a578b936bd17f155a362dbb5d388e157a80a096549028be6c55400b11361c7f8a28e424fd5674801873651df4e694d536cae66728b7ae5e840e532358c52
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.17-6ubuntu4.1.debian.tar.xz' krb5_1.17-6ubuntu4.1.debian.tar.xz 145692 SHA512:8184287813d5dbcbe4c5153ccc0e6afab6dbf9f24a9ae993bf1a7648d029decfb6d8d928b0c365f5f0a861e90d89932a4f30ee96f75f4891d64a0287fab667be
```

### `dpkg` source package: `lcms2=2.9-4`

Binary Packages:

- `liblcms2-2:amd64=2.9-4`
- `liblcms2-dev:amd64=2.9-4`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.9-4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-4.dsc' lcms2_2.9-4.dsc 1956 SHA256:6db871353515693e8813911a8f81668b92e8c09fa9e6752e701fa8b14247775d
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9.orig.tar.gz' lcms2_2.9.orig.tar.gz 10974649 SHA256:48c6fdf98396fa245ed86e622028caf49b96fa22f3e5734f853f806fbc8e7d20
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-4.debian.tar.xz' lcms2_2.9-4.debian.tar.xz 10748 SHA256:3dd811c431bed101269937299d28708dfe91f32070cf9786680bec26f408b65b
```

### `dpkg` source package: `libassuan=2.5.3-7ubuntu2`

Binary Packages:

- `libassuan0:amd64=2.5.3-7ubuntu2`

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
$ apt-get source -qq --print-uris libassuan=2.5.3-7ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.3-7ubuntu2.dsc' libassuan_2.5.3-7ubuntu2.dsc 2647 SHA256:014fbd728fc1d0e954ade2a8d975539fc00d455261ca14a88d78b9e29625ee41
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.3.orig.tar.bz2' libassuan_2.5.3.orig.tar.bz2 572348 SHA256:91bcb0403866b4e7c4bc1cc52ed4c364a9b5414b3994f718c70303f7f765e702
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.3.orig.tar.bz2.asc' libassuan_2.5.3.orig.tar.bz2.asc 952 SHA256:53b16a6619a2690b4f22da645a1d0c14b5664825c87b165ca5bd0de32607888a
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.3-7ubuntu2.debian.tar.xz' libassuan_2.5.3-7ubuntu2.debian.tar.xz 13936 SHA256:586836fdfffdc58b4d47548d0f6e54593daa78098c6276a788d8b66c3616e233
```

### `dpkg` source package: `libbsd=0.10.0-1`

Binary Packages:

- `libbsd0:amd64=0.10.0-1`

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
- `public-domain-Colin-Plumb`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.10.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.10.0-1.dsc' libbsd_0.10.0-1.dsc 2197 SHA256:7c05e2c73658f64cbd4e1762b716cc7c4c1d68391191e82c7d266a351430edd6
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.10.0.orig.tar.xz' libbsd_0.10.0.orig.tar.xz 393576 SHA256:34b8adc726883d0e85b3118fa13605e179a62b31ba51f676136ecb2d0bc1a887
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.10.0.orig.tar.xz.asc' libbsd_0.10.0.orig.tar.xz.asc 833 SHA256:4362f6d811ffc06659ac5cf777d8d01157bedfc28720b41fb485afb0a5acc0c7
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.10.0-1.debian.tar.xz' libbsd_0.10.0-1.debian.tar.xz 16660 SHA256:4cf37d6d5b72702b31b07384612e07173e94e081feef71fec206f86ab38f2411
```

### `dpkg` source package: `libcap-ng=0.7.9-2.1build1`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2.1build1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.1build1.dsc' libcap-ng_0.7.9-2.1build1.dsc 2158 SHA256:6d74cf5c418659d70bce8e9a4bf6f0ef0210dbcadac15e0c4d4471c4671230a1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.1build1.debian.tar.xz' libcap-ng_0.7.9-2.1build1.debian.tar.xz 6256 SHA256:b73a0a36bb0c1c8144828552dedb7b3493f4a08b1c31a0f1d7046cf1682eac7d
```

### `dpkg` source package: `libcbor=0.6.0-0ubuntu1`

Binary Packages:

- `libcbor0.6:amd64=0.6.0-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcbor0.6/copyright`)

- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.6.0-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.6.0-0ubuntu1.dsc' libcbor_0.6.0-0ubuntu1.dsc 2115 SHA256:403caca4382a40d55caf3d88b792e45fa79a2f20746f422a3ba5cabb113444f6
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.6.0.orig.tar.gz' libcbor_0.6.0.orig.tar.gz 262622 SHA256:ad97dfe6462a28956be38c924a5a557acf303d8454ca121e02150a5b87e03ee7
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.6.0-0ubuntu1.debian.tar.xz' libcbor_0.6.0-0ubuntu1.debian.tar.xz 5832 SHA256:719b8d56482b3ffc8adc05b16211d4b9bcce43ab877801801fd3927a9a8e66e1
```

### `dpkg` source package: `libdatrie=0.2.12-3`

Binary Packages:

- `libdatrie1:amd64=0.2.12-3`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.12-3
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.12-3.dsc' libdatrie_0.2.12-3.dsc 2260 SHA256:631b3aa1b0cf12bcb04df8a19a8370445801a176edce830e74c01f6a55f778aa
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.12.orig.tar.xz' libdatrie_0.2.12.orig.tar.xz 310236 SHA256:452dcc4d3a96c01f80f7c291b42be11863cd1554ff78b93e110becce6e00b149
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.12-3.debian.tar.xz' libdatrie_0.2.12-3.debian.tar.xz 9188 SHA256:10409d93b3762b8ac8e0851bb2b71f76c2c5b57df8999bf8b9686d951c8b7476
```

### `dpkg` source package: `libedit=3.1-20191231-1`

Binary Packages:

- `libedit2:amd64=3.1-20191231-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20191231-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20191231-1.dsc' libedit_3.1-20191231-1.dsc 2129 SHA256:1be31eebf9cf3b38a9e7c3c4d4b37f002e3f89df48f00dec32506cbe9337ae38
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20191231.orig.tar.gz' libedit_3.1-20191231.orig.tar.gz 516801 SHA256:dbb82cb7e116a5f8025d35ef5b4f7d4a3cdd0a3909a146a39112095a2d229071
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20191231-1.debian.tar.xz' libedit_3.1-20191231-1.debian.tar.xz 14168 SHA256:f815baa1932f9df5d4cdb316a85ebd3cc91441c4d83ba2c8454f342573ed0eab
```

### `dpkg` source package: `liberror-perl=0.17029-1`

Binary Packages:

- `liberror-perl=0.17029-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17029-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.dsc' liberror-perl_0.17029-1.dsc 2336 SHA256:0590467fe8c5f81bff9336e991462b2a9994b4876f4b732c8b8b31e927987cd7
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029.orig.tar.gz' liberror-perl_0.17029.orig.tar.gz 33304 SHA256:1a23f7913032aed6d4b68321373a3899ca66590f4727391a091ec19c95bf7adc
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.debian.tar.xz' liberror-perl_0.17029-1.debian.tar.xz 4552 SHA256:a753b142c4c33ebf9cc98ae5f7a08da13b7c9ca2823ec26e45c96efb9c15c42e
```

### `dpkg` source package: `libevent=2.1.11-stable-1`

Binary Packages:

- `libevent-2.1-7:amd64=2.1.11-stable-1`
- `libevent-core-2.1-7:amd64=2.1.11-stable-1`
- `libevent-dev=2.1.11-stable-1`
- `libevent-extra-2.1-7:amd64=2.1.11-stable-1`
- `libevent-openssl-2.1-7:amd64=2.1.11-stable-1`
- `libevent-pthreads-2.1-7:amd64=2.1.11-stable-1`

Licenses: (parsed from: `/usr/share/doc/libevent-2.1-7/copyright`, `/usr/share/doc/libevent-core-2.1-7/copyright`, `/usr/share/doc/libevent-dev/copyright`, `/usr/share/doc/libevent-extra-2.1-7/copyright`, `/usr/share/doc/libevent-openssl-2.1-7/copyright`, `/usr/share/doc/libevent-pthreads-2.1-7/copyright`)

- `BSD-2-clause`
- `BSD-3-Clause~Kitware`
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
$ apt-get source -qq --print-uris libevent=2.1.11-stable-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.11-stable-1.dsc' libevent_2.1.11-stable-1.dsc 2526 SHA256:b07a15f54f2ab403eed9aa648a1ea9bee05a5a5362570d334a76597e79a1d795
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.11-stable.orig.tar.gz' libevent_2.1.11-stable.orig.tar.gz 1082234 SHA256:a65bac6202ea8c5609fd5c7e480e6d25de467ea1917c08290c521752f147283d
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.11-stable.orig.tar.gz.asc' libevent_2.1.11-stable.orig.tar.gz.asc 488 SHA256:9add12a6852022f675e4388cb1ac0fdcd68c6c1bc6e5212fae78d3f1c00f2826
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.11-stable-1.debian.tar.xz' libevent_2.1.11-stable-1.debian.tar.xz 17264 SHA256:fae364ea17e708a73572dd8b0add7fcded427c9e2b2405679738459c6f02de8d
```

### `dpkg` source package: `libexif=0.6.21-6ubuntu0.4`

Binary Packages:

- `libexif-dev:amd64=0.6.21-6ubuntu0.4`
- `libexif12:amd64=0.6.21-6ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-6ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-6ubuntu0.4.dsc' libexif_0.6.21-6ubuntu0.4.dsc 2229 SHA512:806c8620fdc6939d2d25a9ab25565b35ba4de6930e009dd785b577d233a6f1de57e095f1024abed2ec1324143fb4089c4621a2639ee18a43f7e63981b23989e0
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA512:0a1fac9460d1d91fea8d8390e335946439de44c0ec0e1fd9fa7006532c64bececd12cd622e800c8f1176092bba926a7075838944ad6b62fa07d285af6f73e9fe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-6ubuntu0.4.debian.tar.xz' libexif_0.6.21-6ubuntu0.4.debian.tar.xz 19708 SHA512:1a5bc7c93fb7ae69b9561dd948ebc1075d7a24b3dc1dec776028db22472efb81914e442efedf9c56b091d0f96d379ecfbfefcdb71c89aea67fa10fd0338522e0
```

### `dpkg` source package: `libffi=3.3-4`

Binary Packages:

- `libffi-dev:amd64=3.3-4`
- `libffi7:amd64=3.3-4`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi7/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.3-4.dsc' libffi_3.3-4.dsc 1932 SHA256:4190ad8e7ae9167a0c67c5926bc3705acb191745cca93ef845dbc06fc097f380
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.3.orig.tar.gz' libffi_3.3.orig.tar.gz 1305466 SHA256:72fba7922703ddfa7a028d513ac15a85c8d54c8d67f55fa5a4802885dc652056
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.3-4.debian.tar.xz' libffi_3.3-4.debian.tar.xz 9016 SHA256:0e8a6d9d87202d04d7646178479c3d365a845f9723da26625d533a169b378100
```

### `dpkg` source package: `libfido2=1.3.1-1ubuntu2`

Binary Packages:

- `libfido2-1:amd64=1.3.1-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.3.1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.3.1-1ubuntu2.dsc' libfido2_1.3.1-1ubuntu2.dsc 2315 SHA256:2ff6b7cc320b84461404fa3830dfb5b705f7920b431173479144c73b4b50a59c
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.3.1.orig.tar.gz' libfido2_1.3.1.orig.tar.gz 1512676 SHA256:ba35e22016b60c1e4be66dff3cd6a60c1fe4bfa0d91ec0b89ca9da25ebeaaf41
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.3.1-1ubuntu2.debian.tar.xz' libfido2_1.3.1-1ubuntu2.debian.tar.xz 73992 SHA256:678fed0bfe9ae7cdb1834caedfeb0d1c86a16c4476f679de017b39f2b356a2f8
```

### `dpkg` source package: `libgcrypt20=1.8.5-5ubuntu1.1`

Binary Packages:

- `libgcrypt20:amd64=1.8.5-5ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.5-5ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.5-5ubuntu1.1.dsc' libgcrypt20_1.8.5-5ubuntu1.1.dsc 2915 SHA512:7b1cdda11632962e872b5d70b351851d95a3d5ed896f19650da618ef8ec835ed3aee54905b33f507ed16a7bae7d1ba0d5df8546712a1ee851bbed61d008250f9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.5.orig.tar.bz2' libgcrypt20_1.8.5.orig.tar.bz2 2991291 SHA512:b55e16e838d1b1208e7673366971ae7c0f9c1c79e042f41c03d14ed74c5e387fa69ea81d5414ffda3d2b4f82ea5467fe13b00115727e257db22808cf351bde89
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.5.orig.tar.bz2.asc' libgcrypt20_1.8.5.orig.tar.bz2.asc 488 SHA512:3993c5e3f2f1714f40a9ad1a19782362c5b80c070ed8d76feacc503d8719f6775465f478098a092730e02683c665c5c91cf30e7700215aae2322be6230f207d6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.5-5ubuntu1.1.debian.tar.xz' libgcrypt20_1.8.5-5ubuntu1.1.debian.tar.xz 34660 SHA512:ffcb506488147ceefe4c67c65de91f9d736d7e6a49d5ff3f04e8ec91a017a7c112c5bc46f6c71f07ff3dd565b494783cbd5b4f017f05c2a5b59f2955933d664b
```

### `dpkg` source package: `libgpg-error=1.37-1`

Binary Packages:

- `libgpg-error0:amd64=1.37-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.37-1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.37-1.dsc' libgpg-error_1.37-1.dsc 2220 SHA256:e789ed6bf791c90e9ba28dc3923f54379862ca65bd286495942176dcfad5d8a7
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.37.orig.tar.bz2' libgpg-error_1.37.orig.tar.bz2 937282 SHA256:b32d6ff72a73cf79797f7f2d039e95e9c6f92f0c1450215410840ab62aea9763
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.37.orig.tar.bz2.asc' libgpg-error_1.37.orig.tar.bz2.asc 488 SHA256:394f0904c386f88e2b2db5042880a2a302cbc6e4ab902bacf3d338ded038066b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.37-1.debian.tar.xz' libgpg-error_1.37-1.debian.tar.xz 17332 SHA256:09843b599726c1ab7b1fcd86ce617bd91d6378ff754c6da0b7e536ed1c3b6c16
```

### `dpkg` source package: `libice=2:1.0.10-0ubuntu1`

Binary Packages:

- `libice-dev:amd64=2:1.0.10-0ubuntu1`
- `libice6:amd64=2:1.0.10-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.10-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-0ubuntu1.dsc' libice_1.0.10-0ubuntu1.dsc 1629 SHA256:51f58a0e5a5c5ea780baa3a057b61a921001831a4817da8825dbf592afccbdd6
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10.orig.tar.gz' libice_1.0.10.orig.tar.gz 481960 SHA256:1116bc64c772fd127a0d0c0ffa2833479905e3d3d8197740b3abd5f292f22d2d
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-0ubuntu1.diff.gz' libice_1.0.10-0ubuntu1.diff.gz 6470 SHA256:a9187c11c1b372b0f4cb58c2fb21f780e9236fd7011bb32c4188c7b37112e8de
```

### `dpkg` source package: `libidn2=2.2.0-2`

Binary Packages:

- `libidn2-0:amd64=2.2.0-2`

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
$ apt-get source -qq --print-uris libidn2=2.2.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.2.0-2.dsc' libidn2_2.2.0-2.dsc 2436 SHA256:a5c5ece3748beaba9ce0a0b29cdab2fe9d861a965a7a96101a49f194acf759d6
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.2.0.orig.tar.gz' libidn2_2.2.0.orig.tar.gz 2110743 SHA256:fc734732b506d878753ec6606982bf7b936e868c25c30ddb0d83f7d7056381fe
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.2.0-2.debian.tar.xz' libidn2_2.2.0-2.debian.tar.xz 11184 SHA256:b38ce002d7eb1abbf2c870ac9570cd06a5087693f359b133defbf44b06f8784d
```

### `dpkg` source package: `libjpeg-turbo=2.0.3-0ubuntu1.20.04.3`

Binary Packages:

- `libjpeg-turbo8:amd64=2.0.3-0ubuntu1.20.04.3`
- `libjpeg-turbo8-dev:amd64=2.0.3-0ubuntu1.20.04.3`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=2.0.3-0ubuntu1.20.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.3-0ubuntu1.20.04.3.dsc' libjpeg-turbo_2.0.3-0ubuntu1.20.04.3.dsc 2337 SHA512:0855a6f5af33892e285752fc44766d902424b8390777b2432dbdff56a6e8275832010018012a54b395c64c0233cbd35f080000cc6780a4546549215638e4abc6
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.3.orig.tar.gz' libjpeg-turbo_2.0.3.orig.tar.gz 2161279 SHA512:745cc3d50b43dd84721bc3c341d561ffd7f54eda5bbe2d56cad62f4b51ea76da3b18aba9ca694a9db79379aba7a9971cb146387979e96ca6ece950871276cf2f
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.3-0ubuntu1.20.04.3.debian.tar.xz' libjpeg-turbo_2.0.3-0ubuntu1.20.04.3.debian.tar.xz 26328 SHA512:ce0f3f9e924cb24d114bccc65bada8f3f767e2a04f33d89f53cbbb59f884c87519e1d07d1610fa40af8dde5231a7d392e5483a30f563433fc41eef61fab32267
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu8`

Binary Packages:

- `libjpeg-dev:amd64=8c-2ubuntu8`
- `libjpeg8:amd64=8c-2ubuntu8`
- `libjpeg8-dev:amd64=8c-2ubuntu8`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.dsc' libjpeg8-empty_8c-2ubuntu8.dsc 1637 SHA256:e7f575dcb3e0d462513b6f928179baa0ff1d145273934b1041b714515096b407
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.tar.gz' libjpeg8-empty_8c-2ubuntu8.tar.gz 1770 SHA256:48a4227e9fc70851a4f304b10624e02875bf6f4e2debfcbe4ba0dd85a3ec05c6
```

### `dpkg` source package: `libksba=1.3.5-2ubuntu0.20.04.1`

Binary Packages:

- `libksba8:amd64=1.3.5-2ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

### `dpkg` source package: `libmaxminddb=1.4.2-0ubuntu1.20.04.1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.4.2-0ubuntu1.20.04.1`
- `libmaxminddb0:amd64=1.4.2-0ubuntu1.20.04.1`

Licenses: (parsed from: `/usr/share/doc/libmaxminddb-dev/copyright`, `/usr/share/doc/libmaxminddb0/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `CC-BY-SA`
- `GPL`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libmaxminddb=1.4.2-0ubuntu1.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.4.2-0ubuntu1.20.04.1.dsc' libmaxminddb_1.4.2-0ubuntu1.20.04.1.dsc 2241 SHA512:2f7bf7ac1f8456eb760606a29b33710dc608e7dcf2e7301de9f3bf2fa56dfe0778120028d56b377333c12c39edc146a5b9fbba3869e12231015d53e673a1db7f
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.4.2.orig.tar.gz' libmaxminddb_1.4.2.orig.tar.gz 600664 SHA512:bc18d2f19a74639888a466483afde1bccfc3a83787011a6f38808b76e5a513c9912ff369ccbf584091d4def657e0574b16b35dc69ab12ae4c439aaaf3669c4c1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.4.2-0ubuntu1.20.04.1.debian.tar.xz' libmaxminddb_1.4.2-0ubuntu1.20.04.1.debian.tar.xz 7120 SHA512:608b3da109c77ff28bd55da163cbe84d2e9d3b5bde75ae960df96f04391ae17d748a948ffd75665671a4ce9d91b4203c8d1f8885f4ee427c01e1c56884720e62
```

### `dpkg` source package: `libpng1.6=1.6.37-2`

Binary Packages:

- `libpng-dev:amd64=1.6.37-2`
- `libpng16-16:amd64=1.6.37-2`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.37-2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37-2.dsc' libpng1.6_1.6.37-2.dsc 2225 SHA256:4567a54b5804e068e61477e9cd78346557b85b72add10ef10f130a5be169662e
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37.orig.tar.gz' libpng1.6_1.6.37.orig.tar.gz 1508805 SHA256:ca74a0dace179a8422187671aee97dd3892b53e168627145271cad5b5ac81307
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37-2.debian.tar.xz' libpng1.6_1.6.37-2.debian.tar.xz 31844 SHA256:097cee0f0da4013d0231d37e090204ab3fa592b4fecdaaed3fca8d13affcaae8
```

### `dpkg` source package: `libpsl=0.21.0-1ubuntu1`

Binary Packages:

- `libpsl5:amd64=0.21.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0-1ubuntu1.dsc' libpsl_0.21.0-1ubuntu1.dsc 2383 SHA256:38d6cf06b8ac1929efe109ac3d5f37ea6e89ea82f7a5125db4dc7a7b5f3faf94
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0.orig.tar.gz' libpsl_0.21.0.orig.tar.gz 8598583 SHA256:055aa87ec166c7afb985d0816c07ff440e1eb899881a318c51c69a0aeea8e279
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0-1ubuntu1.debian.tar.xz' libpsl_0.21.0-1ubuntu1.debian.tar.xz 12476 SHA256:efd6c7ae8c244b582d6af943b5925d95a31a183abf695301f2fa49de9f694671
```

### `dpkg` source package: `libpthread-stubs=0.4-1`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1.dsc' libpthread-stubs_0.4-1.dsc 1927 SHA256:8923683ac365475d2cc515e5f16f4adc8bd8e37453e1a2a6bedeb9246922829f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4.orig.tar.gz' libpthread-stubs_0.4.orig.tar.gz 71252 SHA256:50d5686b79019ccea08bcbd7b02fe5a40634abcfd4146b6e75c6420cc170e9d9
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1.diff.gz' libpthread-stubs_0.4-1.diff.gz 2346 SHA256:ec435ba2852ad4b0522010943a5b7d39fc7e088067367879778cf10e57f5cc3f
```

### `dpkg` source package: `librsvg=2.48.9-1ubuntu0.20.04.1`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.48.9-1ubuntu0.20.04.1`
- `librsvg2-2:amd64=2.48.9-1ubuntu0.20.04.1`
- `librsvg2-common:amd64=2.48.9-1ubuntu0.20.04.1`
- `librsvg2-dev:amd64=2.48.9-1ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Boost-1.0`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `MPL-2.0`
- `Sun-permissive`
- `Unlicense`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.48.9-1ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.48.9-1ubuntu0.20.04.1.dsc' librsvg_2.48.9-1ubuntu0.20.04.1.dsc 2643 SHA512:31d3922daecaec10ef5f0dceb49067183cfcc4fe5f4422785def2b7c1056908753ebe7db31ba89a9b6fbaef0ee4c3435edc06cede57bb5a82ab8a8599ad21643
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.48.9.orig.tar.xz' librsvg_2.48.9.orig.tar.xz 12661188 SHA512:4edfba4d667536ef921e72da53e4a357e56cae6db5e7e93c23d6792241b31b2397e68633dbb0df465129ce68f0ef1ba55cc51f2321adc6f4874fe7089715bb5c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.48.9-1ubuntu0.20.04.1.debian.tar.xz' librsvg_2.48.9-1ubuntu0.20.04.1.debian.tar.xz 24260 SHA512:11d05100ea44f7d3474907516f0869b5b43517eaccd56cc70780418935f39de97294e3a0b31fa8e36382d3a6809ca1812220931b9673842a1e2a236e153a3e40
```

### `dpkg` source package: `libseccomp=2.5.1-1ubuntu1~20.04.2`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1ubuntu1~20.04.2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1ubuntu1~20.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e20.04.2.dsc' libseccomp_2.5.1-1ubuntu1~20.04.2.dsc 2578 SHA512:ea3e505f936011ea2d37eb5c9c10fb0f7ead4f699180679940c1e27936c1b28fc96b40f98d4e25e1e058466244d08d29c2d538fff85d726808c2cec45f914509
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA512:2be80a6323f9282dbeae8791724e5778b32e2382b2a3d1b0f77366371ec4072ea28128204f675cce101c091c0420d12c497e1a9ccbb7dc5bcbf61bfd777160af
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e20.04.2.debian.tar.xz' libseccomp_2.5.1-1ubuntu1~20.04.2.debian.tar.xz 21168 SHA512:77187efe846d46f3cff589b048cd446f13f1d0d60274b54fa464e337288b9fd3979e1f3b6f4999af00e12738232b9397e485e977a732f74cb89cfa5bf90a21be
```

### `dpkg` source package: `libselinux=3.0-1build2`

Binary Packages:

- `libselinux1:amd64=3.0-1build2`
- `libselinux1-dev:amd64=3.0-1build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`, `/usr/share/doc/libselinux1-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.0-1build2.dsc' libselinux_3.0-1build2.dsc 2565 SHA256:9a8d6c354ed06350606c009d899d117e71fda20887792b2c25b38222d0190d93
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.0.orig.tar.gz' libselinux_3.0.orig.tar.gz 212096 SHA256:2ea2b30f671dae9d6b1391cbe8fb2ce5d36a3ee4fb1cd3c32f0d933c31b82433
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.0-1build2.debian.tar.xz' libselinux_3.0-1build2.debian.tar.xz 23720 SHA256:ed85da0fe5561205c95f0f622562425dc7d8dd61ffd213a7fa914d778fe8da71
```

### `dpkg` source package: `libsemanage=3.0-1build2`

Binary Packages:

- `libsemanage-common=3.0-1build2`
- `libsemanage1:amd64=3.0-1build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.0-1build2.dsc' libsemanage_3.0-1build2.dsc 2678 SHA256:6231f4b00991657fafef2595eb571b2bcbe437de4ec9dc9929c0e69187db5f33
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.0.orig.tar.gz' libsemanage_3.0.orig.tar.gz 180745 SHA256:a497b0720d54eac427f1f3f618eed417e50ed8f4e47ed0f7a1d391bd416e84cf
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.0-1build2.debian.tar.xz' libsemanage_3.0-1build2.debian.tar.xz 17176 SHA256:38a646f91532c920c8c15a695c3585397ddbf032ecf49c52eb89d53c8eac48fb
```

### `dpkg` source package: `libsepol=3.0-1ubuntu0.1`

Binary Packages:

- `libsepol1:amd64=3.0-1ubuntu0.1`
- `libsepol1-dev:amd64=3.0-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`, `/usr/share/doc/libsepol1-dev/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.0-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.0-1ubuntu0.1.dsc' libsepol_3.0-1ubuntu0.1.dsc 2084 SHA512:4fa31e95c4f00cdac984d0cd7ffdd4ca6d3a9be529723cc227316e9f4bb76b5910102f136aab505de422f9794c4641912720c8dffb10e6ae0523058fa96850d8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.0.orig.tar.gz' libsepol_3.0.orig.tar.gz 473864 SHA512:82a5bae0afd9ae53b55ddcfc9f6dd61724a55e45aef1d9cd0122d1814adf2abe63c816a7ac63b64b401f5c67acb910dd8e0574eec546bed04da7842ab6c3bb55
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.0-1ubuntu0.1.debian.tar.xz' libsepol_3.0-1ubuntu0.1.debian.tar.xz 16980 SHA512:eeade6f2ad6eb2aa2846e850516f56da34bdf6dab2e6024c94799c273e6815976a09509b999306337107e3e21cbb5243c29dc515b4c48bfb51d2dfe9c3ed0da6
```

### `dpkg` source package: `libsigsegv=2.12-2`

Binary Packages:

- `libsigsegv2:amd64=2.12-2`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.12-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12-2.dsc' libsigsegv_2.12-2.dsc 2363 SHA256:b081b244de2f427345838f379405d8438c29db1fa746a4e270167ae7cb10c079
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz' libsigsegv_2.12.orig.tar.gz 451408 SHA256:3ae1af359eebaa4ffc5896a1aee3568c052c99879316a1ab57f8fe1789c390b6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz.asc' libsigsegv_2.12.orig.tar.gz.asc 2442 SHA256:1861a9a182bbb7a24a18f7e43fe0fa3eb6f6fd53780b30e01990677112694dfc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12-2.debian.tar.xz' libsigsegv_2.12-2.debian.tar.xz 8340 SHA256:73940fb346f7afd90c93a341164cd175349e0507de8b1c05b0834b598c372260
```

### `dpkg` source package: `libsm=2:1.2.3-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.3-1`
- `libsm6:amd64=2:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1.dsc' libsm_1.2.3-1.dsc 2063 SHA256:5488f8de81d53c32cbb5f062b6a6f262cd067283b8082041392dc60f0d04002c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3.orig.tar.gz' libsm_1.2.3.orig.tar.gz 445362 SHA256:1e92408417cb6c6c477a8a6104291001a40b3bb56a4a60608fdd9cd2c5a0f320
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1.diff.gz' libsm_1.2.3-1.diff.gz 8929 SHA256:7eb99ab50b19f26d1470f89e4b46891f6a697cb1794a58ed0d1376cceaf1b6a9
```

### `dpkg` source package: `libssh=0.9.3-2ubuntu2.2`

Binary Packages:

- `libssh-4:amd64=0.9.3-2ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.9.3-2ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.3-2ubuntu2.2.dsc' libssh_0.9.3-2ubuntu2.2.dsc 2538 SHA512:cede02f6296d5cfc401bbcded5278f9b07c7f450e2193d6bbd7ab5f562e7cee68a402855320776bfddf9769e8adbb9be3ffffe05a7202355d6afc7ddbe50088c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.3.orig.tar.xz' libssh_0.9.3.orig.tar.xz 500068 SHA512:6e59718565daeca6d224426cc1095a112deff9af8e0b021917e04f08bb7409263c35724de95f591f38e26f0fb3bbbbc69b679b6775edc21dec158d241b076c6f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.3-2ubuntu2.2.debian.tar.xz' libssh_0.9.3-2ubuntu2.2.debian.tar.xz 30192 SHA512:a32781839e68eabcb17d4ccd446b4b3ec84e9891737d6df08e1dddc28ada65db677d2b0b1589cb1fe72b9256bb3d1b1dbed3fb3594afc723a223dcced73c75fe
```

### `dpkg` source package: `libtasn1-6=4.16.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.16.0-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.16.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2.dsc' libtasn1-6_4.16.0-2.dsc 2586 SHA256:fd4a387c71f95c3eceb1072a3f42c7021d73128027ea41a18d6efc6cbfdd764a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz' libtasn1-6_4.16.0.orig.tar.gz 1812442 SHA256:0e0fb0903839117cb6e3b56e68222771bebf22ad7fc2295a0ed7d576e8d4329d
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz.asc' libtasn1-6_4.16.0.orig.tar.gz.asc 488 SHA256:06c201e8c3b43c27465ed79294d4c4ec8dcd3e95e4a6176ecbf273229ee3e2d0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2.debian.tar.xz' libtasn1-6_4.16.0-2.debian.tar.xz 17740 SHA256:c1a89b0bac0fb7c83ebac4eafbca0475c24350ade6ccaef31266424725610624
```

### `dpkg` source package: `libthai=0.1.28-3`

Binary Packages:

- `libthai-data=0.1.28-3`
- `libthai0:amd64=0.1.28-3`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.28-3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.28-3.dsc' libthai_0.1.28-3.dsc 2346 SHA256:a6317b6a8e4ba40cedb10a9a659fc23885bfbe5eb8cf3a8b325a86064b0a542d
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.28.orig.tar.xz' libthai_0.1.28.orig.tar.xz 413592 SHA256:ffe0a17b4b5aa11b153c15986800eca19f6c93a4025ffa5cf2cab2dcdf1ae911
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.28-3.debian.tar.xz' libthai_0.1.28-3.debian.tar.xz 12128 SHA256:bca48abd9d040e844ebcb1f91a6ab4bcdfad66e36c1143f79d60461e933fddf9
```

### `dpkg` source package: `libtool=2.4.6-14`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-14`
- `libltdl7:amd64=2.4.6-14`
- `libtool=2.4.6-14`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-14
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-14.dsc' libtool_2.4.6-14.dsc 2500 SHA256:939797b7ce62f69641d319e5d38e53b1608cee649355046eec74271e9fcfb9df
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-14.debian.tar.xz' libtool_2.4.6-14.debian.tar.xz 50832 SHA256:3ef693ea30def97a19fd94ffb2fa5421d5dc35cf7ad897a7161bd647eb4f2415
```

### `dpkg` source package: `libunistring=0.9.10-2`

Binary Packages:

- `libunistring2:amd64=0.9.10-2`

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
$ apt-get source -qq --print-uris libunistring=0.9.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10-2.dsc' libunistring_0.9.10-2.dsc 2206 SHA256:c6faf64e2d978ec074ebf88264730121dfd03cc1639df94b5dc3eb05b1678532
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10-2.debian.tar.xz' libunistring_0.9.10-2.debian.tar.xz 40708 SHA256:5e291a1a15549d12c64575c72868a8c94586715d35062b5efb48fe9a9d09924e
```

### `dpkg` source package: `libwebp=0.6.1-2ubuntu0.20.04.1`

Binary Packages:

- `libwebp-dev:amd64=0.6.1-2ubuntu0.20.04.1`
- `libwebp6:amd64=0.6.1-2ubuntu0.20.04.1`
- `libwebpdemux2:amd64=0.6.1-2ubuntu0.20.04.1`
- `libwebpmux3:amd64=0.6.1-2ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.1-2ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.20.04.1.dsc' libwebp_0.6.1-2ubuntu0.20.04.1.dsc 2185 SHA512:00c898e9ee8682a702751e255921821ac73a095404c3dfc9d47f69517de4a2bf74a62b4f3f0a9325370266c7bb951fee5bea830c8ab2c3a4b91652e9caa8ade6
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1.orig.tar.gz' libwebp_0.6.1.orig.tar.gz 3554290 SHA512:313b345a01c91eb07c2e4d46b93fcda9c50dca9e05e39f757238a679355514a2e9bc9bc220f3d3eb6d6a55148957cb2be14dac330203953337759841af1a32bf
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.20.04.1.debian.tar.xz' libwebp_0.6.1-2ubuntu0.20.04.1.debian.tar.xz 16748 SHA512:46fe77068114343821bd4a74c9654a91048e5ebf7f6b397acdc8853482668fe170f3c7552be32293e26b965826f8d0f2c69da2418284b2851f3d89e64f7f62c1
```

### `dpkg` source package: `libwmf=0.2.8.4-17ubuntu1`

Binary Packages:

- `libwmf-dev=0.2.8.4-17ubuntu1`
- `libwmf0.2-7:amd64=0.2.8.4-17ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-17ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-17ubuntu1.dsc' libwmf_0.2.8.4-17ubuntu1.dsc 1642 SHA256:31f409e280954b2388e28305ac1c39b85eb141e7823b6fc5eff89194196c4e2a
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-17ubuntu1.debian.tar.xz' libwmf_0.2.8.4-17ubuntu1.debian.tar.xz 12968 SHA256:3d78073cbb035aa87d780d617f647a3e42f4cf5e9c1ada5899f7d80ac306f318
```

### `dpkg` source package: `libx11=2:1.6.9-2ubuntu1.2`

Binary Packages:

- `libx11-6:amd64=2:1.6.9-2ubuntu1.2`
- `libx11-data=2:1.6.9-2ubuntu1.2`
- `libx11-dev:amd64=2:1.6.9-2ubuntu1.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.9-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.9-2ubuntu1.2.dsc' libx11_1.6.9-2ubuntu1.2.dsc 2671 SHA512:1468c2b4f7240b9e59dc7a5fa528383dab4787aec56fb9a0d6d4cbb182eb95e59c0f6478e37aa03ef45e1fffcb73e8b30cdf04b14a656f6edff2f3a6a2a18471
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.9.orig.tar.gz' libx11_1.6.9.orig.tar.gz 2994329 SHA512:c79cf0924e920a2e8d2e9af45e73ed42b565dea79ac68d4c3889033738274694b29cedb62c057fec1aa7f7ad7dcf843334fccb43470bbae7922d42373c1c6045
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.9.orig.tar.gz.asc' libx11_1.6.9.orig.tar.gz.asc 659 SHA512:56e53d1481be4e12f89af2fbcd297a3612996f5ca1eae39d6fe336f9b52832ea430ac0568e556b9e57291562c56590086871c08ec7ac046f15af4211f680adee
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.9-2ubuntu1.2.diff.gz' libx11_1.6.9-2ubuntu1.2.diff.gz 67310 SHA512:f2f28664298eff341177a3bb5bc1f1290d2e0c94fa2c39771b51ec69d987a75b38cc03fbe0a0561a7807da9ac1e32c5b3c617dc7020922c6f2c1c0ca060f99de
```

### `dpkg` source package: `libxau=1:1.0.9-0ubuntu1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.9-0ubuntu1`
- `libxau6:amd64=1:1.0.9-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.9-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-0ubuntu1.dsc' libxau_1.0.9-0ubuntu1.dsc 1563 SHA256:b59509d1f8f6c0e21b8bbd46ac1dffcd7a21a635ff3ce9c0acf68ba60fcb5e11
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz' libxau_1.0.9.orig.tar.gz 394068 SHA256:1f123d8304b082ad63a9e89376400a3b1d4c29e67e3ea07b3f659cccca690eea
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-0ubuntu1.diff.gz' libxau_1.0.9-0ubuntu1.diff.gz 15142 SHA256:cf7e9d50c3b3b8dde3486ee6fcf9bb96585e2af32924e91c10c8612e48b5dce5
```

### `dpkg` source package: `libxcb=1.14-2`

Binary Packages:

- `libxcb-render0:amd64=1.14-2`
- `libxcb-render0-dev:amd64=1.14-2`
- `libxcb-shm0:amd64=1.14-2`
- `libxcb-shm0-dev:amd64=1.14-2`
- `libxcb1:amd64=1.14-2`
- `libxcb1-dev:amd64=1.14-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.14-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14-2.dsc' libxcb_1.14-2.dsc 5344 SHA256:997dfadefa35a243a7160b62d628bb25e45439f61687459d581502905bcf1fb2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14.orig.tar.gz' libxcb_1.14.orig.tar.gz 640322 SHA256:2c7fcddd1da34d9b238c9caeda20d3bd7486456fc50b3cc6567185dbd5b0ad02
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14-2.diff.gz' libxcb_1.14-2.diff.gz 25716 SHA256:92d7e0a80c3c7f2a5b5afd0c0702183f1c483338d678d67d8d0e61fd8989ba85
```

### `dpkg` source package: `libxcrypt=1:4.4.10-10ubuntu4`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.10-10ubuntu4`
- `libcrypt1:amd64=1:4.4.10-10ubuntu4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.10-10ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.10-10ubuntu4.dsc' libxcrypt_4.4.10-10ubuntu4.dsc 2216 SHA256:457576b36eaa34dcf28b19e942908221d0618e9e4a2c0b9e11ba9693770756a2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.10.orig.tar.xz' libxcrypt_4.4.10.orig.tar.xz 372652 SHA256:f790a8eac4e4af3124d2844a24a7afb3a972368e4dff63d701599c2f2d065fd3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.10-10ubuntu4.debian.tar.xz' libxcrypt_4.4.10-10ubuntu4.debian.tar.xz 5760 SHA256:b2e665b5224911d24dbcbddfc61b7a27428c3ecb744f29ceea1b2984496f2ffa
```

### `dpkg` source package: `libxdmcp=1:1.1.3-0ubuntu1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.3-0ubuntu1`
- `libxdmcp6:amd64=1:1.1.3-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.3-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu1.dsc' libxdmcp_1.1.3-0ubuntu1.dsc 1608 SHA256:3f98e3917b5de252eb517c55743bcc5682b43c9f70ead33231ac4318bbc816e1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3.orig.tar.gz' libxdmcp_1.1.3.orig.tar.gz 429668 SHA256:2ef9653d32e09d1bf1b837d0e0311024979653fe755ad3aaada8db1aa6ea180c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu1.diff.gz' libxdmcp_1.1.3-0ubuntu1.diff.gz 18079 SHA256:3037a57202b724ecd7db70c21a601f58277c02ba89e7e5d999973e5baf6d05ca
```

### `dpkg` source package: `libxext=2:1.3.4-0ubuntu1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.4-0ubuntu1`
- `libxext6:amd64=2:1.3.4-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-0ubuntu1.dsc' libxext_1.3.4-0ubuntu1.dsc 1727 SHA256:8319de2750f28c78e01267a5593776f10afd3f863d4820abe72dbf855a3a77ae
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA256:8ef0789f282826661ff40a8eef22430378516ac580167da35cc948be9041aac1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-0ubuntu1.diff.gz' libxext_1.3.4-0ubuntu1.diff.gz 20663 SHA256:87a4d23f1f9ff53f3a6cd7cc35252a1249dc63d274c566ea7e23b23585a86170
```

### `dpkg` source package: `libxml2=2.9.10+dfsg-5ubuntu0.20.04.5`

Binary Packages:

- `libxml2:amd64=2.9.10+dfsg-5ubuntu0.20.04.5`
- `libxml2-dev:amd64=2.9.10+dfsg-5ubuntu0.20.04.5`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.10+dfsg-5ubuntu0.20.04.5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-5ubuntu0.20.04.5.dsc' libxml2_2.9.10+dfsg-5ubuntu0.20.04.5.dsc 3121 SHA512:e70102efeef6c467d2ea5004c72e9ede42b26e635852527d21a32b7cb29265e7f97bbf5966c9266c2470057844512f4ae6b42c939954b2ae05c0a225e72f9f9b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg.orig.tar.xz' libxml2_2.9.10+dfsg.orig.tar.xz 2503560 SHA512:605c6c0f8bf2c53208d0a036ff09a4025843f45139b711c90dc83066feda2f285a5578d55d4a58d33eedbe7485a5c1ec5608ba6c6beed1fb55649f87dca0cec3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-5ubuntu0.20.04.5.debian.tar.xz' libxml2_2.9.10+dfsg-5ubuntu0.20.04.5.debian.tar.xz 40152 SHA512:a9d5f29ff27f2fee3f26909b67b17240109b7ef8431052236fa205fd5c1db8bf48ce1e2160c15a82ac8a29d4d942effe89f56751d13491427df2267b1c1c0f66
```

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1`
- `libxrender1:amd64=1:0.9.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.dsc' libxrender_0.9.10-1.dsc 2064 SHA256:95d6471218b44f4e60c48cea60cfb4865bbe861530add23f6c859515bee92dbd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.diff.gz' libxrender_0.9.10-1.diff.gz 15399 SHA256:ff56a0a00119383adc5f1731e86155ae5c2de069e1d059a9da1d777917430588
```

### `dpkg` source package: `libxslt=1.1.34-4ubuntu0.20.04.1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.34-4ubuntu0.20.04.1`
- `libxslt1.1:amd64=1.1.34-4ubuntu0.20.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.34-4ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34-4ubuntu0.20.04.1.dsc' libxslt_1.1.34-4ubuntu0.20.04.1.dsc 2514 SHA512:ebd0f5b195405ebee6a1011ddeba7b22f3e22c376afe57036910c7a3c23a728967620ee757a3af703f00dd04b4b8709a066115b12f6a7cb905746b43ae089339
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34.orig.tar.gz' libxslt_1.1.34.orig.tar.gz 3552258 SHA512:1516a11ad608b04740674060d2c5d733b88889de5e413b9a4e8bf8d1a90d712149df6d2b1345b615f529d7c7d3fa6dae12e544da828b39c7d415e54c0ee0776b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34.orig.tar.gz.asc' libxslt_1.1.34.orig.tar.gz.asc 488 SHA512:9b155d4571daede99cdbf2813a85fb04812737b5e23d3f7c9840225b38f3dbf171623a21645daaee190e7ff9ba38bde932922e96a2a2312c203ffa9917c3baea
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34-4ubuntu0.20.04.1.debian.tar.xz' libxslt_1.1.34-4ubuntu0.20.04.1.debian.tar.xz 23260 SHA512:addb79137cbdee10ebf15efecddee266e52a8043399cd166882061923038f6ee4ebb55aaa4152432b6d21a4b2ac514eed81cded4593d09754514ab7056b1326d
```

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-1`
- `libxt6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.dsc' libxt_1.1.5-1.dsc 2109 SHA256:f44ae1393c9fd02c0b3dd03576c7b26e6c7b09de3271a87e018efadeed311639
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.diff.gz' libxt_1.1.5-1.diff.gz 14462 SHA256:822fe813d1ea9213e6fde91cbb607c0b6874341dc19b77b0f6649b8be8472d82
```

### `dpkg` source package: `libyaml=0.2.2-1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.2-1`
- `libyaml-dev:amd64=0.2.2-1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2-1.dsc' libyaml_0.2.2-1.dsc 1833 SHA256:b4baba985391f52409013a0c9303191e34aaa4c1c9200e4c01c4963df801db09
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2.orig.tar.gz' libyaml_0.2.2.orig.tar.gz 602509 SHA256:689ef3ebdecfa81f3789ccd2481acc81fc0f22f3f5c947eed95c4c0802e356b8
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2-1.debian.tar.xz' libyaml_0.2.2-1.debian.tar.xz 4112 SHA256:186aad3e4bcd95891a8c59249c59f862f5f71601058fda0bf020a9e9e39320fe
```

### `dpkg` source package: `libzstd=1.4.4+dfsg-3ubuntu0.1`

Binary Packages:

- `libzstd1:amd64=1.4.4+dfsg-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.4.4+dfsg-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.4%2bdfsg-3ubuntu0.1.dsc' libzstd_1.4.4+dfsg-3ubuntu0.1.dsc 2381 SHA512:a135412be4afdea573f991d8e4822f9885dbd607c87fb22e72d2defa160cf64f85a6047a9c9120b6eda3b8927306407278779f9e7a6976d7b15fb08750f32f74
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.4%2bdfsg.orig.tar.xz' libzstd_1.4.4+dfsg.orig.tar.xz 1357144 SHA512:85c64662303dda72d61fcbe41dfc6b310e63b20b043f41d4fb5a5ebc38ea83986c8c217fb259dfc2c024538ee8a519bb944914542a0b3a5c4dd988d5fdb248b7
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.4%2bdfsg-3ubuntu0.1.debian.tar.xz' libzstd_1.4.4+dfsg-3ubuntu0.1.debian.tar.xz 17300 SHA512:0484891be5603d00bd57b799c708b9395fccbaa8c6c44f535377f6fa2c7ac22c01c8a3c1b45e1c1f3c30f19dc74d510626bf82067fcbfb53c39f1bcc2249affe
```

### `dpkg` source package: `linux=5.4.0-135.152`

Binary Packages:

- `linux-libc-dev:amd64=5.4.0-135.152`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lsb=11.1.0ubuntu2`

Binary Packages:

- `lsb-base=11.1.0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.1.0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu2.dsc' lsb_11.1.0ubuntu2.dsc 2230 SHA256:983ff4ab1ab2b39af974e4b8f4373ab4028d0ee5a409e7cd40401fa8e6ecabde
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu2.tar.xz' lsb_11.1.0ubuntu2.tar.xz 46024 SHA256:c6ab63b6702dc633988690aacde8ece3e460f8acd8f1af8e6a67ab2fe0798f41
```

### `dpkg` source package: `lz4=1.9.2-2ubuntu0.20.04.1`

Binary Packages:

- `liblz4-1:amd64=1.9.2-2ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.2-2ubuntu0.20.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.2-2ubuntu0.20.04.1.dsc' lz4_1.9.2-2ubuntu0.20.04.1.dsc 2095 SHA512:249c1370a5e277575429a778fe2be185a997eb82eb77e88f83da38ddb271956ff1d2ae96403c599d430ed13a0f37e125b4410d21e3d42fe2d47a1a376bff70ad
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.2.orig.tar.gz' lz4_1.9.2.orig.tar.gz 305796 SHA512:ae714c61ec8e33ed91359b63f2896cfa102d66b730dce112b74696ec5850e59d88bd5527173e01e354a70fbe8f036557a47c767ee0766bc5f9c257978116c3c1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.2-2ubuntu0.20.04.1.debian.tar.xz' lz4_1.9.2-2ubuntu0.20.04.1.debian.tar.xz 13228 SHA512:330f522c3afd0c9a36c6d8b882cfd59aa32258906ad6bbcab3a5bcd4a530ce226905d8108f384615dedd749dc5faaa45f320b0eda98effabee433e97124fabc0
```

### `dpkg` source package: `lzo2=2.10-2`

Binary Packages:

- `liblzo2-2:amd64=2.10-2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10-2.dsc' lzo2_2.10-2.dsc 1926 SHA256:65a35d9d2511a88f30d4b10313f807c184d1906062e2421833797dafc2682166
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10.orig.tar.gz' lzo2_2.10.orig.tar.gz 600622 SHA256:c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10-2.debian.tar.xz' lzo2_2.10-2.debian.tar.xz 6880 SHA256:095b2bf2012138f6892fcf226a0d1eae5d29406d7afe7129d51d64116e61c472
```

### `dpkg` source package: `m4=1.4.18-4`

Binary Packages:

- `m4=1.4.18-4`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-4
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-4.dsc' m4_1.4.18-4.dsc 1638 SHA256:11925f50e25f93d6b9a72336e7b9fd0de72a813d5d5f3204ecc3996f9ca3bbde
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18.orig.tar.xz.asc' m4_1.4.18.orig.tar.xz.asc 521 SHA256:a2a9fff657e65ff25a8f3734f484dbd3ede8f8290786af71626de367dcd74267
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-4.debian.tar.xz' m4_1.4.18-4.debian.tar.xz 17240 SHA256:6543f074d5a3eed4ee7984f8a147c58e005c88254dfcf5bc3778c60b9ed07efd
```

### `dpkg` source package: `make-dfsg=4.2.1-1.2`

Binary Packages:

- `make=4.2.1-1.2`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.2.1-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.2.1-1.2.dsc' make-dfsg_4.2.1-1.2.dsc 2019 SHA256:0c8a2da5d51e03bf43e2929322d5a8406f08e5ee2d81a71ed6e5a8734f1b05cb
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.2.1.orig.tar.gz' make-dfsg_4.2.1.orig.tar.gz 1485018 SHA256:480405e8995796ea47cc54b281b7855280f0d815d296a1af1993eeeb72074e39
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.2.1-1.2.diff.gz' make-dfsg_4.2.1-1.2.diff.gz 53108 SHA256:80e0b96cee381391a5d3322317075e23d8474c92c5fa4fecd334bc2e0920887b
```

### `dpkg` source package: `mawk=1.3.4.20200120-2`

Binary Packages:

- `mawk=1.3.4.20200120-2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-2.dsc' mawk_1.3.4.20200120-2.dsc 1915 SHA256:5069c46872ac74f5221250dfb88b31b1f2dbb8a2617c1e013f8f80cc34638c6d
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA256:7fd4cd1e1fae9290fe089171181bbc6291dfd9bca939ca804f0ddb851c8b8237
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-2.debian.tar.xz' mawk_1.3.4.20200120-2.debian.tar.xz 7504 SHA256:b772ed2f016b0286980c46cbc1f1f4ae62887ef2aa3dff6ef10cae638f923f26
```

### `dpkg` source package: `mercurial=5.3.1-1ubuntu1`

Binary Packages:

- `mercurial=5.3.1-1ubuntu1`
- `mercurial-common=5.3.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=5.3.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_5.3.1-1ubuntu1.dsc' mercurial_5.3.1-1ubuntu1.dsc 2795 SHA256:cc26cde9e6862ae50f706832eb319dd5fb7cd5308ed11528d7689ba624edf2a7
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_5.3.1.orig.tar.gz' mercurial_5.3.1.orig.tar.gz 7511733 SHA256:f7c1f96de2199d6b38593ea865f08c0521fbd8e2fd52bd332414bf9fe5bf72d9
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_5.3.1.orig.tar.gz.asc' mercurial_5.3.1.orig.tar.gz.asc 833 SHA256:4542e22bb7f238f5bc1cc08b0225325e07c5947f7e45434c801651eec44ab67d
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_5.3.1-1ubuntu1.debian.tar.xz' mercurial_5.3.1-1ubuntu1.debian.tar.xz 58972 SHA256:d0b2b14812b0fa4c6cf6e19b2eacd8d9d4df5e0ca0fb782a0b6b105057e359a6
```

### `dpkg` source package: `mime-support=3.64ubuntu1`

Binary Packages:

- `mime-support=3.64ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.64ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.64ubuntu1.dsc' mime-support_3.64ubuntu1.dsc 1729 SHA256:669ba4f3fd7594f1c32731b5636b499f44f21c7667148f6f0d16043708743fdc
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.64ubuntu1.tar.xz' mime-support_3.64ubuntu1.tar.xz 33980 SHA256:5007d2ebc25935bfca6d4bdac0efdfc089a38c1be49d19f0422559f666e4f2c4
```

### `dpkg` source package: `mpclib3=1.1.0-1`

Binary Packages:

- `libmpc3:amd64=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0-1.dsc' mpclib3_1.1.0-1.dsc 1990 SHA256:bb57824015b735bf72399a53f8c6a241e6a8bd402753b0fdcdaa5b99d0aef790
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0.orig.tar.gz' mpclib3_1.1.0.orig.tar.gz 701263 SHA256:6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0-1.diff.gz' mpclib3_1.1.0-1.diff.gz 3794 SHA256:84b10a4ae958b3015e136b75be5fee22961255d19be655f7d0adae8d4f3bc977
```

### `dpkg` source package: `mpdecimal=2.4.2-3`

Binary Packages:

- `libmpdec2:amd64=2.4.2-3`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-3.dsc' mpdecimal_2.4.2-3.dsc 1932 SHA256:4cdd04de9915af3c9d787f4922affc1993d76c25cd0715ffdd2658da37c86753
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-3.debian.tar.xz' mpdecimal_2.4.2-3.debian.tar.xz 6352 SHA256:1baf12776a911bc77f76e16aa7600d4ace21a27817f4a56373093065205a9292
```

### `dpkg` source package: `mpfr4=4.0.2-1`

Binary Packages:

- `libmpfr6:amd64=4.0.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.2-1.dsc' mpfr4_4.0.2-1.dsc 1972 SHA256:9021ec2462ed0e73ea1379266740473abf5f826be819226497729f6c6b02e672
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.2.orig.tar.xz' mpfr4_4.0.2.orig.tar.xz 1441996 SHA256:1d3be708604eae0e42d578ba93b390c2a145f17743a744d8f3f8c2ad5855a38a
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.2-1.debian.tar.xz' mpfr4_4.0.2-1.debian.tar.xz 10544 SHA256:99c4d35654f33340f0efdec67142a34753157b20334cadad9018f5eab29738da
```

### `dpkg` source package: `mysql-8.0=8.0.31-0ubuntu0.20.04.2`

Binary Packages:

- `libmysqlclient-dev=8.0.31-0ubuntu0.20.04.2`
- `libmysqlclient21:amd64=8.0.31-0ubuntu0.20.04.2`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient21/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
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
$ apt-get source -qq --print-uris mysql-8.0=8.0.31-0ubuntu0.20.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.0/mysql-8.0_8.0.31-0ubuntu0.20.04.2.dsc' mysql-8.0_8.0.31-0ubuntu0.20.04.2.dsc 3497 SHA512:f0f0ecf09bb98e40219d6bc72a94be24fbccdefb5cdbce5cc465194a1b371cb1c7289bed0699aafaf52592eb6e7d1ac35240fa2fefdf1d9dae97c609e4d3e3b5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.0/mysql-8.0_8.0.31.orig.tar.gz' mysql-8.0_8.0.31.orig.tar.gz 334504577 SHA512:87b1678de8c2fd640fd6f3ae58266ea63fe240578330e3296d0e5fc209bbe9b0c22996214b6ca4cce8c0d9cc2f9897f4e6723d835b33fc4342983c82929c3d96
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.0/mysql-8.0_8.0.31-0ubuntu0.20.04.2.debian.tar.xz' mysql-8.0_8.0.31-0ubuntu0.20.04.2.debian.tar.xz 161700 SHA512:cb488701933937995bbd37d668ba79fd5e276420752bcf775d060c182501ebc92778d91b3a5494d70e6b61e73be6fd466450a82a4f47d293308a7b7a3d78b53a
```

### `dpkg` source package: `mysql-defaults=1.0.5ubuntu2`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.5ubuntu2`
- `mysql-common=5.8+1.0.5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.5ubuntu2.dsc' mysql-defaults_1.0.5ubuntu2.dsc 2251 SHA256:788762eca77d2718a5ecc8e5fc49f90b32e81639a4a06169789e8f34fc35d379
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.5ubuntu2.tar.xz' mysql-defaults_1.0.5ubuntu2.tar.xz 7168 SHA256:d1b17de186bf8afba5cfc0041ab3c3646dbbed653e72010e2222bb52396e54c0
```

### `dpkg` source package: `ncurses=6.2-0ubuntu2`

Binary Packages:

- `libncurses-dev:amd64=6.2-0ubuntu2`
- `libncurses5-dev:amd64=6.2-0ubuntu2`
- `libncurses6:amd64=6.2-0ubuntu2`
- `libncursesw5-dev:amd64=6.2-0ubuntu2`
- `libncursesw6:amd64=6.2-0ubuntu2`
- `libtinfo6:amd64=6.2-0ubuntu2`
- `ncurses-base=6.2-0ubuntu2`
- `ncurses-bin=6.2-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.2-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.2-0ubuntu2.dsc' ncurses_6.2-0ubuntu2.dsc 3831 SHA256:b580e8d50864a61bad0cedb17c8005ec6c24cd85d8ebbe472d1170552c8cd3bd
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.2.orig.tar.gz' ncurses_6.2.orig.tar.gz 3425862 SHA256:30306e0c76e0f9f1f0de987cf1c82a5c21e1ce6568b9227f7da5b71cbea86c9d
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.2-0ubuntu2.debian.tar.xz' ncurses_6.2-0ubuntu2.debian.tar.xz 61192 SHA256:3377d203f2ab08b119ed22ac420152f3c28872201e35b25e62dfe07641ed750a
```

### `dpkg` source package: `netbase=6.1`

Binary Packages:

- `netbase=6.1`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.1.dsc' netbase_6.1.dsc 1480 SHA256:d3d24cf00001259d3311c0509b4e23ac150cffea27b546e3a204864f52824556
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.1.tar.xz' netbase_6.1.tar.xz 31984 SHA256:084d743bd84d4d9380bac4c71c51e57406dce44f5a69289bb823c903e9b035d8
```

### `dpkg` source package: `nettle=3.5.1+really3.5.1-2ubuntu0.2`

Binary Packages:

- `libhogweed5:amd64=3.5.1+really3.5.1-2ubuntu0.2`
- `libnettle7:amd64=3.5.1+really3.5.1-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libhogweed5/copyright`, `/usr/share/doc/libnettle7/copyright`)

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
$ apt-get source -qq --print-uris nettle=3.5.1+really3.5.1-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.5.1%2breally3.5.1-2ubuntu0.2.dsc' nettle_3.5.1+really3.5.1-2ubuntu0.2.dsc 2490 SHA512:a5b45f1154e48fd7d6c48c57ae17cdcb7cd4a352d6b97bb408a49f5f4f3b40388d23bc12b09602fc9d0d6e91e8bc5525b12f98568ec64c18c4d6ca9fe5048c36
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.5.1%2breally3.5.1.orig.tar.gz' nettle_3.5.1+really3.5.1.orig.tar.gz 1989593 SHA512:f738121b9091cbe79435fb5d46b45cf6f10912320c233829356908127bab1cac6946ca56e022a832380c44f2c10f21d2feef64cb0f4f41e3da4a681dc0131784
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.5.1%2breally3.5.1.orig.tar.gz.asc' nettle_3.5.1+really3.5.1.orig.tar.gz.asc 573 SHA512:d8921622f2165fb4a05e7e75f75d82c0eabb816f265bae3f3267def20d81386b1da1a29ebfc52bbe26875b94b2050dd5493119d0efcb5143bc21e2f69b8449dd
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.5.1%2breally3.5.1-2ubuntu0.2.debian.tar.xz' nettle_3.5.1+really3.5.1-2ubuntu0.2.debian.tar.xz 27228 SHA512:389c303e679b6b6714f824f22bc8675c1ea4bdab0108b69e9514613109573d01592e3f80bf9a144866a159a9a09fa0f3218d62b9f6978bdfe5e95a18bcfe3a88
```

### `dpkg` source package: `nghttp2=1.40.0-1build1`

Binary Packages:

- `libnghttp2-14:amd64=1.40.0-1build1`

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
$ apt-get source -qq --print-uris nghttp2=1.40.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.40.0-1build1.dsc' nghttp2_1.40.0-1build1.dsc 2572 SHA256:2f945c4799485cae7ad8f0d1cf1720986bf13f6c65bab7582ef2ae51a48e3661
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.40.0.orig.tar.bz2' nghttp2_1.40.0.orig.tar.bz2 1937537 SHA256:82758e13727945f2408d0612762e4655180b039f058d5ff40d055fa1497bd94f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.40.0-1build1.debian.tar.xz' nghttp2_1.40.0-1build1.debian.tar.xz 12772 SHA256:d71772f726b343c803954c0bccf3150b736d0e1a7c82a03dc7560fc8bd3a0189
```

### `dpkg` source package: `npth=1.6-1`

Binary Packages:

- `libnpth0:amd64=1.6-1`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-1.dsc' npth_1.6-1.dsc 1925 SHA256:2c327ce494f702482e79ed620445cba303c4449dd0768fecee3ee7d5ade2544a
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA256:1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-1.debian.tar.xz' npth_1.6-1.debian.tar.xz 10532 SHA256:d312d4a3cf1d082e2f2cf3ea752c41d34f7e120f77a941c6c1680e6093834353
```

### `dpkg` source package: `openexr=2.3.0-6ubuntu0.5`

Binary Packages:

- `libopenexr-dev=2.3.0-6ubuntu0.5`
- `libopenexr24:amd64=2.3.0-6ubuntu0.5`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr24/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.3.0-6ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_2.3.0-6ubuntu0.5.dsc' openexr_2.3.0-6ubuntu0.5.dsc 2638 SHA512:b77e6d69deaf92ca2a3990578aaf21bfc4ec5c6fab9e42b93819dce0fe4c5432feeeae4abaf2cdbc160ff9ac5099b1622a36fbcd41845c4c1355bc76a28a6dcc
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_2.3.0.orig.tar.gz' openexr_2.3.0.orig.tar.gz 18416222 SHA512:f6810505428674451627ef09e5dfbf13d7413e118f9defec4d160d9f1327b47699fe770a96b61da7820d2a357ccb722ad909ba4ba0924703fa5fd532cdf0da69
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_2.3.0.orig.tar.gz.asc' openexr_2.3.0.orig.tar.gz.asc 566 SHA512:7110ddb22b2be7b570dcb1df278b2f7f39f2c5afd470094fd2a41c2f376d3991f756cbc5bef76dfc5bd7e1f55442bc8dff468d47224a495838083ef7de0c2a40
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_2.3.0-6ubuntu0.5.debian.tar.xz' openexr_2.3.0-6ubuntu0.5.debian.tar.xz 40348 SHA512:a7454052906c5b683ab905a80933a323de29dfbbbe9ed2b5160e7c5fe6db4197c03d6bb463b428c7e706702a2f0c9112debbfdc5f9a430225e81b57f949c9200
```

### `dpkg` source package: `openldap=2.4.49+dfsg-2ubuntu1.9`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.49+dfsg-2ubuntu1.9`
- `libldap-common=2.4.49+dfsg-2ubuntu1.9`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.49+dfsg-2ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.49%2bdfsg-2ubuntu1.9.dsc' openldap_2.4.49+dfsg-2ubuntu1.9.dsc 3136 SHA512:91045bb053dfa88d599f0481659aae3ace92fc9b6acd0dd9c43f67b1e02054acb24e39d5617628bf981bebf11355159e45fc4bd843da8e767c6a9b8841209da0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.49%2bdfsg.orig.tar.gz' openldap_2.4.49+dfsg.orig.tar.gz 4844726 SHA512:c2096f6e37bae8e4d4dcc5cc8dad783996bc8677e7e62a06b9f55857f8950726ca3e3b0d8368563c8985123175f63625354ad5ac271db8b55d3ac62e8906d4c7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.49%2bdfsg-2ubuntu1.9.debian.tar.xz' openldap_2.4.49+dfsg-2ubuntu1.9.debian.tar.xz 189676 SHA512:bf7e4ff9f710404704526a912932d7445fab4c6ce30a099dd890adc78b8afe740ac773596cb4fe409d495406e5bd103d186bd0b2993265cdafd3eb9a71d6a3b5
```

### `dpkg` source package: `openssh=1:8.2p1-4ubuntu0.5`

Binary Packages:

- `openssh-client=1:8.2p1-4ubuntu0.5`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:8.2p1-4ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_8.2p1-4ubuntu0.5.dsc' openssh_8.2p1-4ubuntu0.5.dsc 3098 SHA512:6b6c0dfcea6e32b4cae419adaa9f16612e1e599f9de31a7b43b181da1f10048ea852cef9d3337bfd77f708571ba521617fe5c23352be521bf36a946f72cc516d
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_8.2p1.orig.tar.gz' openssh_8.2p1.orig.tar.gz 1701197 SHA512:c4db64e52a3a4c410de9de49f9cb104dd493b10250af3599b92457dd986277b3fd99a6f51cec94892fd1be5bd0369c5757262ea7805f0de464b245c3d34c120a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_8.2p1-4ubuntu0.5.debian.tar.xz' openssh_8.2p1-4ubuntu0.5.debian.tar.xz 176572 SHA512:15200a62ea815f8de47631706059209f2e424809e044b4a6e1dc645cda145de10fd039721dfb7600df9e5f7ec755dd38308460e8230959d002e75bebf8fca510
```

### `dpkg` source package: `openssl=1.1.1f-1ubuntu2.16`

Binary Packages:

- `libssl-dev:amd64=1.1.1f-1ubuntu2.16`
- `libssl1.1:amd64=1.1.1f-1ubuntu2.16`
- `openssl=1.1.1f-1ubuntu2.16`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1f-1ubuntu2.16
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.16.dsc' openssl_1.1.1f-1ubuntu2.16.dsc 2470 SHA512:342eb385817ec2395e575c1d97f4c3fd4fc9b259783969025605a0465847583588dc7bc167f40cfb3c04d490ca53526b5cb0b0a300f2f32a0719a0f9d6edd558
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1f.orig.tar.gz' openssl_1.1.1f.orig.tar.gz 9792828 SHA512:b00bd9b5ad5298fbceeec6bb19c1ab0c106ca5cfb31178497c58bf7e0e0cf30fcc19c20f84e23af31cc126bf2447d3e4f8461db97bafa7bd78f69561932f000c
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.16.debian.tar.xz' openssl_1.1.1f-1ubuntu2.16.debian.tar.xz 209936 SHA512:0da9de97cb13495b309a4e341db144d48defe83a9f2888a3e5f4482c9a6afa1303bed4ced1b00314196c5f4f8ef3908037732fdfdf9ceaa1960104f4c437998e
```

### `dpkg` source package: `p11-kit=0.23.20-1ubuntu0.1`

Binary Packages:

- `libp11-kit0:amd64=0.23.20-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.20-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.20-1ubuntu0.1.dsc' p11-kit_0.23.20-1ubuntu0.1.dsc 2532 SHA512:8b315f15df7cd3a09d11046030baa864a0f61a3dfba80d97d708590f54a5fc5c31c81428ccc40bf04e9e769abda1204ef5cd4753a24e743e2728d38cdfe14803
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.20.orig.tar.xz' p11-kit_0.23.20.orig.tar.xz 822588 SHA512:1eb88773fdd49dd48c7e089744e9dbbf6c1033a4863f3bfe75a68d842804baa3c373cb1b28ee625dd69a6e16c89df4ac755e0928495dccf38c007c530f6cfa57
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.20.orig.tar.xz.asc' p11-kit_0.23.20.orig.tar.xz.asc 854 SHA512:9f0e0e690698637269b7d020aafd92ab3d487770196e13357ce0e5425fa02d5e279f9524b3858bce8bdb925e1e4d9fa2219a68e5888c06e48c3b085a77d329e9
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.20-1ubuntu0.1.debian.tar.xz' p11-kit_0.23.20-1ubuntu0.1.debian.tar.xz 24592 SHA512:b30c6640bb02f0651955447da65911942cd2e302bc5af0ab96787646e776486e317420682dd644079a47ac48d4e2732218545af56da7ec3d3af5fd0c7e55fb21
```

### `dpkg` source package: `pam=1.3.1-5ubuntu4.3`

Binary Packages:

- `libpam-modules:amd64=1.3.1-5ubuntu4.3`
- `libpam-modules-bin=1.3.1-5ubuntu4.3`
- `libpam-runtime=1.3.1-5ubuntu4.3`
- `libpam0g:amd64=1.3.1-5ubuntu4.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.3.1-5ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.3.1-5ubuntu4.3.dsc' pam_1.3.1-5ubuntu4.3.dsc 2761 SHA512:314394037f6006a11778f96aaac57c1a9997bc1b2b1c67224a46e670ea1707ae5d00e3c2d7ef42890e13f87d4edac16481050ae412b6092061e5fef27f6a80e4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.3.1.orig.tar.xz' pam_1.3.1.orig.tar.xz 912332 SHA512:6bc8e2a5b64686f0a23846221c5228c88418ba485b17c53b3a12f91262b5bb73566d6b6a5daa1f63bbae54310aee918b987e44a72ce809b4e7c668f0fadfe08e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.3.1-5ubuntu4.3.debian.tar.xz' pam_1.3.1-5ubuntu4.3.debian.tar.xz 170884 SHA512:0d10c47ed3aa1a1ef040413a746543c833b9bef971e70586d053d59ac8de2ad480ca69a5ed1c56df5322e793675b2fd8f7e65ddde1b2ee8340bb05f77fea846e
```

### `dpkg` source package: `pango1.0=1.44.7-2ubuntu4`

Binary Packages:

- `libpango-1.0-0:amd64=1.44.7-2ubuntu4`
- `libpangocairo-1.0-0:amd64=1.44.7-2ubuntu4`
- `libpangoft2-1.0-0:amd64=1.44.7-2ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Chromium-BSD-style`
- `Example`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `TCL`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.44.7-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.44.7-2ubuntu4.dsc' pango1.0_1.44.7-2ubuntu4.dsc 2915 SHA256:e7d7027628a38d12ee9e6f29f4f6d275757d9b1fdc9e55948194f233c55251fc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.44.7.orig.tar.xz' pango1.0_1.44.7.orig.tar.xz 521384 SHA256:66a5b6cc13db73efed67b8e933584509f8ddb7b10a8a40c3850ca4a985ea1b1f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.44.7-2ubuntu4.debian.tar.xz' pango1.0_1.44.7-2ubuntu4.debian.tar.xz 33516 SHA256:6f5f8c66299af90a94c4dbdfa146e840eec8bc2d183cd1fb42e8e7de6f335df5
```

### `dpkg` source package: `patch=2.7.6-6`

Binary Packages:

- `patch=2.7.6-6`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-6
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-6.dsc' patch_2.7.6-6.dsc 1699 SHA256:ad31c243b982ad8dede14f7b4dfe5bb798bb1dc6d4e28c51a797c3af58477c13
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA256:ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-6.debian.tar.xz' patch_2.7.6-6.debian.tar.xz 14464 SHA256:75ea94b265763b65005381f1eceeaf3351a70ec5c3243bc161d702776414db02
```

### `dpkg` source package: `pcre2=10.34-7ubuntu0.1`

Binary Packages:

- `libpcre2-16-0:amd64=10.34-7ubuntu0.1`
- `libpcre2-32-0:amd64=10.34-7ubuntu0.1`
- `libpcre2-8-0:amd64=10.34-7ubuntu0.1`
- `libpcre2-dev:amd64=10.34-7ubuntu0.1`
- `libpcre2-posix2:amd64=10.34-7ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.34-7ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.34-7ubuntu0.1.dsc' pcre2_10.34-7ubuntu0.1.dsc 2142 SHA512:f37aadf191246ca9e4605a57e9a15e3bac768649c19970259b03b5792b52ca848206866be5b5b79fec659c6b2defa50dd263d2e0ff41d706e613c707cb5540fc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.34.orig.tar.gz' pcre2_10.34.orig.tar.gz 2271533 SHA512:820b3805fc7fcf3a80dfd42ff570efc8518fe3c50f3feb720319b95316619e5b8f6601b3c9522606315aecd5558ccfc8a04a89fab9921fdfc3400dc2caf17c22
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.34-7ubuntu0.1.diff.gz' pcre2_10.34-7ubuntu0.1.diff.gz 10945 SHA512:92f25dddec9ca30dc7221ee09e5b401c59fbf86acd3612451f6c64e55f7a9f96fd9752ac7398f05aa59214d9649f63324ec0f6ede2f178653f361ae9adeb7e70
```

### `dpkg` source package: `pcre3=2:8.39-12ubuntu0.1`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-12ubuntu0.1`
- `libpcre3:amd64=2:8.39-12ubuntu0.1`
- `libpcre3-dev:amd64=2:8.39-12ubuntu0.1`
- `libpcre32-3:amd64=2:8.39-12ubuntu0.1`
- `libpcrecpp0v5:amd64=2:8.39-12ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-12ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-12ubuntu0.1.dsc' pcre3_8.39-12ubuntu0.1.dsc 2077 SHA512:8c8d2c065a5cfbc912747f44365b9d3c7dee77e2d5f1ff4049e1c505dfc792d2e44cf42dd108bb63fe23806d869927acfe52ae9e75160fbec9aa3ac6297ac8d1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA512:8b0f14ae5947c4b2d74876a795b04e532fd71c2479a64dbe0ed817e7c7894ea3cae533413de8c17322d305cb7f4e275d72b43e4e828eaca77dc4bcaf04529cf6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-12ubuntu0.1.debian.tar.gz' pcre3_8.39-12ubuntu0.1.debian.tar.gz 27476 SHA512:a6ca841c38badb86d9cf6170f24fe627688ebda39304f6adf6666c580fe64bb451c1ea4d3ed96d09b70d11a4c88cc05f38d45d72b985b3efaf1934d47acb0431
```

### `dpkg` source package: `perl=5.30.0-9ubuntu0.3`

Binary Packages:

- `libperl5.30:amd64=5.30.0-9ubuntu0.3`
- `perl=5.30.0-9ubuntu0.3`
- `perl-base=5.30.0-9ubuntu0.3`
- `perl-modules-5.30=5.30.0-9ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libperl5.30/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.30/copyright`)

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
$ apt-get source -qq --print-uris perl=5.30.0-9ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.30.0-9ubuntu0.3.dsc' perl_5.30.0-9ubuntu0.3.dsc 2962 SHA512:2377a1c211a465deb42ba927dc49329403924bd316abf5b90e028eb1543cf8d1feb7d8fd0c83561a95a022d8417d6d5cea3b3f889830f2bfbb3d19ace6669ab6
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.30.0.orig-regen-configure.tar.gz' perl_5.30.0.orig-regen-configure.tar.gz 833235 SHA512:ab977887b53249a2423708aa38ecbb8bdbfdb7ba533a795eaa20bac427b2eb326756b076ca11088036550a4db24418903c0565d168fe9641e18077a76d04274a
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.30.0.orig.tar.xz' perl_5.30.0.orig.tar.xz 12419868 SHA512:68a295eccd64debd9d6a10f0d5577f872a19ad8c2d702798f6b0f45b8c3af6ab3230768056e2131e9e2e2506d1035b27cfd627c845e32263fe448649c4b98ae9
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.30.0-9ubuntu0.3.debian.tar.xz' perl_5.30.0-9ubuntu0.3.debian.tar.xz 169880 SHA512:307dd75353f0b939a50fbbeb5e206655b931697d7334ffd2620729093263ef050d9846549db9794da20f46f8f152464ff5171f866e62aa135bb3cfea109c451c
```

### `dpkg` source package: `pinentry=1.1.0-3build1`

Binary Packages:

- `pinentry-curses=1.1.0-3build1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-3build1.dsc' pinentry_1.1.0-3build1.dsc 2714 SHA256:69f7f343287886eebadb94177767d9aa74890d9f8420e3ab254803fcd21852bf
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-3build1.debian.tar.xz' pinentry_1.1.0-3build1.debian.tar.xz 17224 SHA256:2a11ee552389ba0499d6a9e1bfc38ee65a28bb97758832b982bbede68d2cb1b9
```

### `dpkg` source package: `pixman=0.38.4-0ubuntu2.1`

Binary Packages:

- `libpixman-1-0:amd64=0.38.4-0ubuntu2.1`
- `libpixman-1-dev:amd64=0.38.4-0ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.38.4-0ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.38.4-0ubuntu2.1.dsc' pixman_0.38.4-0ubuntu2.1.dsc 2130 SHA512:9ec381b420c176be4e90baccddeff31e78bcfe97fa1f9008cac4eb7f93a2c3626ff25bf76765863dee92b48a8251b162d47b53b887d316b27617c246c1809c1d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.38.4.orig.tar.gz' pixman_0.38.4.orig.tar.gz 897926 SHA512:b66dc23c0bc7327cb90085cbc14ccf96ad58001a927f23af24e0258ca13f32d4255535862f1efcf00e9e723410aa9f51edf26fb01c8cde49379d1225acf7b5af
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.38.4-0ubuntu2.1.diff.gz' pixman_0.38.4-0ubuntu2.1.diff.gz 320623 SHA512:457ad061efc8bb96fb74e0c3bd1cb811be2db56a315ed4634e8f94355a0ef0e96b42d32721c9778299960eca143c1165f52dbfd8fb25906e500eedd2267b8b89
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu4`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu4.dsc' pkg-config_0.29.1-0ubuntu4.dsc 1799 SHA256:d60186d733ce808c04a0afeb4b6790161f4ffc5bae6a26a566eab047a31ef2dc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu4.diff.gz' pkg-config_0.29.1-0ubuntu4.diff.gz 9373 SHA256:ac6d503134b8fbaca066aa3dea622c69a58e8845896ffd75066d14de27a41d58
```

### `dpkg` source package: `postgresql-12=12.12-0ubuntu0.20.04.1`

Binary Packages:

- `libpq-dev=12.12-0ubuntu0.20.04.1`
- `libpq5:amd64=12.12-0ubuntu0.20.04.1`

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
- `blf`
- `double-metaphone`
- `imath`
- `nagaysau-ishii`
- `rijndael`

Source:

```console
$ apt-get source -qq --print-uris postgresql-12=12.12-0ubuntu0.20.04.1
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-12/postgresql-12_12.12-0ubuntu0.20.04.1.dsc' postgresql-12_12.12-0ubuntu0.20.04.1.dsc 3764 SHA512:7173ca458dcdf2b46ce9a08845514809703b295c64b29ba97b001b2fe99e1ff6f784a25aad1c19e04cb8e61e16f0cceab926965858919815d88203fbfdae6a7e
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-12/postgresql-12_12.12.orig.tar.gz' postgresql-12_12.12.orig.tar.gz 27619852 SHA512:c2c49f4b1bffaa8028c8c6b7b5ef2aafc6530bf4114f7fa2627bc9594477e22740567d5b578c6b824ed033e461d40911ef0634a168c55808bb45f8474522e5c2
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-12/postgresql-12_12.12-0ubuntu0.20.04.1.debian.tar.xz' postgresql-12_12.12-0ubuntu0.20.04.1.debian.tar.xz 26780 SHA512:1d2ef2f26790a391e7111028eb18e79751b2de136bafa6c6c43a57bc0fafe8fab19cc957a4fd32a07ec58c53f08e36d3e3365381b5d27330aeed49fa4cd05626
```

### `dpkg` source package: `procps=2:3.3.16-1ubuntu2.3`

Binary Packages:

- `libprocps8:amd64=2:3.3.16-1ubuntu2.3`
- `procps=2:3.3.16-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libprocps8/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.16-1ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.16-1ubuntu2.3.dsc' procps_3.3.16-1ubuntu2.3.dsc 1897 SHA512:48d20e1d3d1b097f060b3d2d0eba35dc255498f9890e912cfde1a04434959f9af6ee794e5690a026cc19171dbff509e2814fceed6fbfa542971beed529cf685d
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.16.orig.tar.xz' procps_3.3.16.orig.tar.xz 621892 SHA512:38db4f72fe40c2f027b23b18bbc8c29cfcdf6bcdb029199fe4bebede153943aa884157f56e792c399f9a4949cc514687500bb99a75a5e7ad7b9e878f52090304
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.16-1ubuntu2.3.debian.tar.xz' procps_3.3.16-1ubuntu2.3.debian.tar.xz 33972 SHA512:cbeb9513f4932d159eed653fbc568b4b26e61e92184f8d8e6fd4122cfdda62ff04a7e9dbba1914efff0fe7addfbd380a0def4b8cf1c61f4e91107b02b3b61064
```

### `dpkg` source package: `python-certifi=2019.11.28-1`

Binary Packages:

- `python3-certifi=2019.11.28-1`

Licenses: (parsed from: `/usr/share/doc/python3-certifi/copyright`)

- `GPL-2`
- `MPL-2`

Source:

```console
$ apt-get source -qq --print-uris python-certifi=2019.11.28-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-certifi/python-certifi_2019.11.28-1.dsc' python-certifi_2019.11.28-1.dsc 1726 SHA256:0b80ff1bc0a6db1caa3b0d1b7ff257ed1ea5caf82f62c4351ef320e07b631ed4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-certifi/python-certifi_2019.11.28.orig.tar.xz' python-certifi_2019.11.28.orig.tar.xz 142676 SHA256:1179028db926d69bc57d9d13381ccaf39da5f40184909860babb94caa294aeba
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-certifi/python-certifi_2019.11.28-1.debian.tar.xz' python-certifi_2019.11.28-1.debian.tar.xz 7612 SHA256:2fc3b18a83ee7ebdf1c96099ea58d14bac5e4eba26d7379ca92ca93212362c04
```

### `dpkg` source package: `python-defaults=2.7.17-2ubuntu4`

Binary Packages:

- `libpython2-stdlib:amd64=2.7.17-2ubuntu4`
- `python2=2.7.17-2ubuntu4`
- `python2-minimal=2.7.17-2ubuntu4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.17-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-defaults/python-defaults_2.7.17-2ubuntu4.dsc' python-defaults_2.7.17-2ubuntu4.dsc 2558 SHA256:3b07888350cc8d6f8506b0a42b65e4f83e21b582c2fd6f29b91bca181ba0666e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-defaults/python-defaults_2.7.17-2ubuntu4.tar.gz' python-defaults_2.7.17-2ubuntu4.tar.gz 82316 SHA256:571c7958e16daab3b3350f061fa3a4c2a30250fc9f8f5ef29a68a012fe83c1af
```

### `dpkg` source package: `python-fastimport=0.9.8-5build1`

Binary Packages:

- `python3-fastimport=0.9.8-5build1`

Licenses: (parsed from: `/usr/share/doc/python3-fastimport/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris python-fastimport=0.9.8-5build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-fastimport/python-fastimport_0.9.8-5build1.dsc' python-fastimport_0.9.8-5build1.dsc 2244 SHA256:2ca7934d75936cc98c4520b19844a02ba23c7325116dd0cd37b55a0265dbbf0f
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-fastimport/python-fastimport_0.9.8.orig.tar.gz' python-fastimport_0.9.8.orig.tar.gz 39512 SHA256:b2f2e8eb97000256e1aab83d2a0a053fc7b93c3aa4f7e9b971a5703dfc5963b9
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-fastimport/python-fastimport_0.9.8-5build1.debian.tar.xz' python-fastimport_0.9.8-5build1.debian.tar.xz 13644 SHA256:f83a7b8f5824f22c46aacb7ededbed2d801cbcedf67500c5ac3bc71aa6aa981c
```

### `dpkg` source package: `python-urllib3=1.25.8-2ubuntu0.1`

Binary Packages:

- `python3-urllib3=1.25.8-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/python3-urllib3/copyright`)

- `Expat`
- `PSF-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python2.7=2.7.18-1~20.04.3`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.18-1~20.04.3`
- `libpython2.7-stdlib:amd64=2.7.18-1~20.04.3`
- `python2.7=2.7.18-1~20.04.3`
- `python2.7-minimal=2.7.18-1~20.04.3`

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
$ apt-get source -qq --print-uris python2.7=2.7.18-1~20.04.3
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/python2.7_2.7.18-1%7e20.04.3.dsc' python2.7_2.7.18-1~20.04.3.dsc 3297 SHA512:7923db242804737a7adde1782a38a06b5fd2dc086d2e8cb1bceeb4fc098313d17f2fa62fc02bcab3831800b0d69cba5495fe91ecedbff18b56f4826eccd3de17
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/python2.7_2.7.18.orig.tar.gz' python2.7_2.7.18.orig.tar.gz 17539408 SHA512:9a81cea8f8853b183364b399a238604075b00d18badb0cde118b20fe4428135de5d75a3feca0d56a3d8d40d557e3933de573671072d9da6f76f84435d23bf1ba
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/python2.7_2.7.18-1%7e20.04.3.diff.gz' python2.7_2.7.18-1~20.04.3.diff.gz 297866 SHA512:716aa294efb5bb747742ad0b8989ae0ead9107270c6be78173b4ade8106f8cef44873c6d75ea75e146fe1aae99df20632fc3107b1a0ce47192e0eb32062e8fae
```

### `dpkg` source package: `python3-defaults=3.8.2-0ubuntu2`

Binary Packages:

- `libpython3-stdlib:amd64=3.8.2-0ubuntu2`
- `python3=3.8.2-0ubuntu2`
- `python3-minimal=3.8.2-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.8.2-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.8.2-0ubuntu2.dsc' python3-defaults_3.8.2-0ubuntu2.dsc 2879 SHA256:3fa296ea2cd52738ebc44a1b83a8df500bf654356336d9bf057144171fe9ee7d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.8.2-0ubuntu2.tar.gz' python3-defaults_3.8.2-0ubuntu2.tar.gz 138226 SHA256:e4969a54306421ebfd195d0c064935db7c53f9f152d8abaae63da33819235e9a
```

### `dpkg` source package: `python3-stdlib-extensions=3.8.10-0ubuntu1~20.04`

Binary Packages:

- `python3-distutils=3.8.10-0ubuntu1~20.04`
- `python3-lib2to3=3.8.10-0ubuntu1~20.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.8.10-0ubuntu1~20.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.8.10-0ubuntu1%7e20.04.dsc' python3-stdlib-extensions_3.8.10-0ubuntu1~20.04.dsc 2246 SHA512:7b78aa41ff95b914680a898c8f3c735e647a41c2b2c999870cbc9ce82b84e881ba2b009e0d08c4fbb7d5a782d07d652df13e9e0b94a229de58ddf4950c0d22c7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.8.10.orig.tar.xz' python3-stdlib-extensions_3.8.10.orig.tar.xz 1099836 SHA512:3b1f63d04544d990f3a028c84239f333b5120db104325c3196c4791a6437a19b9d29d52a019f884a3cae3732836aa334a1cb20b3c8fa9ffba4f86d772114fe8a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.8.10-0ubuntu1%7e20.04.debian.tar.xz' python3-stdlib-extensions_3.8.10-0ubuntu1~20.04.debian.tar.xz 24508 SHA512:ca4894ddf04e5f89c46183271e65978c4dadd90faac196e13600797b9b451356cea2a0ee2c1d25e82a11b4e192fc11c2125b533035cf75e8e28ff7fdc792c695
```

### `dpkg` source package: `python3.8=3.8.10-0ubuntu1~20.04.6`

Binary Packages:

- `libpython3.8-minimal:amd64=3.8.10-0ubuntu1~20.04.6`
- `libpython3.8-stdlib:amd64=3.8.10-0ubuntu1~20.04.6`
- `python3.8=3.8.10-0ubuntu1~20.04.6`
- `python3.8-minimal=3.8.10-0ubuntu1~20.04.6`

Licenses: (parsed from: `/usr/share/doc/libpython3.8-minimal/copyright`, `/usr/share/doc/libpython3.8-stdlib/copyright`, `/usr/share/doc/python3.8/copyright`, `/usr/share/doc/python3.8-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.8=3.8.10-0ubuntu1~20.04.6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.8/python3.8_3.8.10-0ubuntu1%7e20.04.6.dsc' python3.8_3.8.10-0ubuntu1~20.04.6.dsc 3504 SHA512:f6bfc8939d2a04e0d58db66ddb68afbe66688a24a59ccf9b692c336026a57341b1ad9e29575a23b8bbccad6d48ea5f530ff6b22189238b3b2df37c28209bb0a1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.8/python3.8_3.8.10.orig.tar.xz' python3.8_3.8.10.orig.tar.xz 18433456 SHA512:0be69705483ff9692e12048a96180e586f9d84c8d53066629f7fb2389585eb75c0f3506bb8182936e322508f58b71f4d8c6dfebbab9049b31b49da11d3b98e80
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.8/python3.8_3.8.10-0ubuntu1%7e20.04.6.debian.tar.xz' python3.8_3.8.10-0ubuntu1~20.04.6.debian.tar.xz 220316 SHA512:394532719e9c667e0fa24adfb4509f30718bd08748680328b683e69ec9a505fc8ae4fe1d4b06c4f411460d8e60f84470243dc0bee11c8a724cfccee4924ff21d
```

### `dpkg` source package: `readline=8.0-4`

Binary Packages:

- `libreadline-dev:amd64=8.0-4`
- `libreadline8:amd64=8.0-4`
- `readline-common=8.0-4`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.0-4.dsc' readline_8.0-4.dsc 2434 SHA256:ac9c7bb7380fe740aef09f54becf482eb81032a33dc11f1a8f00e933c5f168f4
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.0.orig.tar.gz' readline_8.0.orig.tar.gz 2975937 SHA256:e339f51971478d369f8a053a330a190781acb9864cf4c541060f12078948e461
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.0-4.debian.tar.xz' readline_8.0-4.debian.tar.xz 30408 SHA256:60ed18dab6d6b7fc998a263d917f06d9cce6e1ccd19cd8bf4a9d33c5350cf8d6
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2build1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2build1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2build1.dsc 2439 SHA256:fd89213f2d41b00c212a411a945146c6b2e00fce1d1819a9ec380b0d91bd1077
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2build1.debian.tar.xz 8216 SHA256:b256cc2aa96c9b99918052c4badfab0339ba95a852eab5ae37aa8b53c259efd2
```

### `dpkg` source package: `sed=4.7-1`

Binary Packages:

- `sed=4.7-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.7-1.dsc' sed_4.7-1.dsc 1880 SHA256:dd0e8daed987929920f7729771f9c7a5b48d094923aaf686efd2ab19db776108
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.7.orig.tar.xz' sed_4.7.orig.tar.xz 1298316 SHA256:2885768cd0a29ff8d58a6280a270ff161f6a3deb5690b2be6c49f46d4c67bd6a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.7-1.debian.tar.xz' sed_4.7-1.debian.tar.xz 59824 SHA256:a2ab8d50807fd2242f86d6c6257399e790445ab6f8932f7f487d34361b4fc483
```

### `dpkg` source package: `sensible-utils=0.0.12+nmu1`

Binary Packages:

- `sensible-utils=0.0.12+nmu1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.12+nmu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12%2bnmu1.dsc' sensible-utils_0.0.12+nmu1.dsc 1753 SHA256:68bcb3e542e29a8a0bf281d9145d0e4cd9def529af2ba0cfe0afee3c5af958bc
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12%2bnmu1.tar.xz' sensible-utils_0.0.12+nmu1.tar.xz 61988 SHA256:53c6606facf083adbbf0da04e6d774b31ff3f46c7ba36a82d3f182779f4c3f5b
```

### `dpkg` source package: `serf=1.3.9-8build1`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-8build1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `shadow=1:4.8.1-1ubuntu5.20.04.4`

Binary Packages:

- `login=1:4.8.1-1ubuntu5.20.04.4`
- `passwd=1:4.8.1-1ubuntu5.20.04.4`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.8.1-1ubuntu5.20.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-1ubuntu5.20.04.4.dsc' shadow_4.8.1-1ubuntu5.20.04.4.dsc 2081 SHA512:1968b47f4f96a0e846e478225362e29f2531dd1b4ded802bef531f989ce8972dfccf13e5a8f538a5e8d9f83ce2b9572cc7d7b57dcad59dcbc0d6bb2318cd51a6
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1.orig.tar.xz' shadow_4.8.1.orig.tar.xz 1611196 SHA512:780a983483d847ed3c91c82064a0fa902b6f4185225978241bc3bc03fcc3aa143975b46aee43151c6ba43efcfdb1819516b76ba7ad3d1d3c34fcc38ea42e917b
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-1ubuntu5.20.04.4.debian.tar.xz' shadow_4.8.1-1ubuntu5.20.04.4.debian.tar.xz 86684 SHA512:8e70ed00983db7bf2b182812cfa9d8c6151de836bacfdf23fbefea37419a72b6be0e126ad2f085ea46aff25de99e66470206cb91259a09b1f6852cb83ca1fb3f
```

### `dpkg` source package: `shared-mime-info=1.15-1`

Binary Packages:

- `shared-mime-info=1.15-1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.15-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.15-1.dsc' shared-mime-info_1.15-1.dsc 2198 SHA256:dca6ea0156110b4a2694dd96a721d34ad4f42b51f3d3a20d0d711b77bde5115d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.15.orig.tar.xz' shared-mime-info_1.15.orig.tar.xz 772708 SHA256:f482b027437c99e53b81037a9843fccd549243fd52145d016e9c7174a4f5db90
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.15-1.debian.tar.xz' shared-mime-info_1.15-1.debian.tar.xz 9728 SHA256:02c4fa8b2b3073c745287dd0e00c69c9f1ba028c7c6496105e3ecdcc02d9f1dd
```

### `dpkg` source package: `six=1.14.0-2`

Binary Packages:

- `python3-six=1.14.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.14.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.14.0-2.dsc' six_1.14.0-2.dsc 2426 SHA256:1655e1f7246bd08332615eb3f6bb7769435724cd60e2ed0c0ce717e1ffd89416
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.14.0.orig.tar.gz' six_1.14.0.orig.tar.gz 33857 SHA256:236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.14.0-2.debian.tar.xz' six_1.14.0-2.debian.tar.xz 4368 SHA256:02a80f76758dde7a8b2f42cd05a20db56d956f4678a882f0aba905ee49847050
```

### `dpkg` source package: `sqlite3=3.31.1-4ubuntu0.5`

Binary Packages:

- `libsqlite3-0:amd64=3.31.1-4ubuntu0.5`
- `libsqlite3-dev:amd64=3.31.1-4ubuntu0.5`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.31.1-4ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.31.1-4ubuntu0.5.dsc' sqlite3_3.31.1-4ubuntu0.5.dsc 2519 SHA512:a2e13e7f5795464a7ddea523dfc02a11d41f2263bf93651a756e7c9e7680d67066531f09cce459847471e1f6e3983402b0fa38805b5f55d159dc511c43f2bf56
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.31.1.orig-www.tar.xz' sqlite3_3.31.1.orig-www.tar.xz 5764424 SHA512:a47adacd46c673cfd674cb64fb54b054e69560aed8c8c429773f0eccdcdbce4be538397506eca8e2d169f4b46d0d47442b273e12d82f8c87e1aadf3ade458db6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.31.1.orig.tar.xz' sqlite3_3.31.1.orig.tar.xz 7108036 SHA512:67e1050efe2988fa3d0d7e4a87e147a8114c6ff9b6ca5307a068befb38e861930eaee0135048ff1abb1e6323b507cbc68a0aac3a8fe5f095d6fcea1547a7efaf
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.31.1-4ubuntu0.5.debian.tar.xz' sqlite3_3.31.1-4ubuntu0.5.debian.tar.xz 35824 SHA512:9a0a273044c4dd39856ba378c3c70c3bf3796179bb4e8e66e38b1895148cf286eceb1aac8fd8a45a026c4c6c9a311f64e3baee93d82fdb1b844806df1f41c20a
```

### `dpkg` source package: `subversion=1.13.0-3ubuntu0.2`

Binary Packages:

- `libsvn1:amd64=1.13.0-3ubuntu0.2`
- `subversion=1.13.0-3ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `AFL-3`
- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
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
$ apt-get source -qq --print-uris subversion=1.13.0-3ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.13.0-3ubuntu0.2.dsc' subversion_1.13.0-3ubuntu0.2.dsc 3181 SHA512:e4229587143e858b42592744b1f9b6257644fdc11ed7a848d68f1f82b29955dc2beed899d9779010e98e5bf50d276b0f85ad6b85b9219beb2d3c14cd5822d48f
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.13.0.orig.tar.gz' subversion_1.13.0.orig.tar.gz 11544359 SHA512:4d3f05f3379f4fe1eb81464173d5dcd4a90f7b9478c84288fec380dafdd67445735e14f517d635fed4f88e7b0c1ed45c4a5658ff53fe3ba000aefa0666df5694
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.13.0.orig.tar.gz.asc' subversion_1.13.0.orig.tar.gz.asc 2954 SHA512:0efec732e8576ff32f83c7d64041e5a9dc6b3fd399f76ab5bcbb83c790c9116f6554612f2265619a40c996e12ccf4f6ac4207604870cff9d7d5b1a1c44d9ecc7
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.13.0-3ubuntu0.2.debian.tar.xz' subversion_1.13.0-3ubuntu0.2.debian.tar.xz 423772 SHA512:8becd7530ae0cbb7c0ad0905fe9e555abd8d31b265a7ca705e2c5a6cbe4ca3f940a4f04e206b4231432f80f020bfab82fd36e23e5e635cec7fa66738cdf722c1
```

### `dpkg` source package: `systemd=245.4-4ubuntu3.19`

Binary Packages:

- `libsystemd0:amd64=245.4-4ubuntu3.19`
- `libudev1:amd64=245.4-4ubuntu3.19`

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
$ apt-get source -qq --print-uris systemd=245.4-4ubuntu3.19
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_245.4-4ubuntu3.19.dsc' systemd_245.4-4ubuntu3.19.dsc 5262 SHA512:aca2dbafb5592e58c927579f33e8640e38fb060a64a810cff913bfdd98e027ecae5721d1e0297a4ec92ea59c5741a79b688953f6ae97a0c9fdc62a02108a3bd3
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_245.4.orig.tar.gz' systemd_245.4.orig.tar.gz 9000780 SHA512:02036bb1ab05301a9d0dfdd4b9c9376e90134474482531e6e292122380be2f24f99177493dd3af6f8af1a8ed2599ee0996da91a3b1b7872bbfaf26a1c3e61b4c
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_245.4-4ubuntu3.19.debian.tar.xz' systemd_245.4-4ubuntu3.19.debian.tar.xz 283052 SHA512:449accbf74d703448dec6ebdcefcb51c56d921f13799843ffbbccaecddef6a117fceb353f13f3e24516da978e0b19daee1de64b4a38382f15913cbf3fb896ba8
```

### `dpkg` source package: `sysvinit=2.96-2.1ubuntu1`

Binary Packages:

- `sysvinit-utils=2.96-2.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.96-2.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.96-2.1ubuntu1.dsc' sysvinit_2.96-2.1ubuntu1.dsc 2751 SHA256:c8b5f2ef86c4c1b8bf6b8a48408a4aa0815b0cf416df51dc0a9b6b8134f7e42c
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.96.orig.tar.xz' sysvinit_2.96.orig.tar.xz 122164 SHA256:2a2e26b72aa235a23ab1c8471005f890309ce1196c83fbc9413c57b9ab62b587
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.96.orig.tar.xz.asc' sysvinit_2.96.orig.tar.xz.asc 313 SHA256:dfc184b95da12c8c888c8ae6b0f26fe8a23b07fbcdd240f6600a8a78b9439fa0
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.96-2.1ubuntu1.debian.tar.xz' sysvinit_2.96-2.1ubuntu1.debian.tar.xz 128840 SHA256:528041e261c90a957d9794bddb07217c89484d9c76a0279da508baec9684c4e6
```

### `dpkg` source package: `tar=1.30+dfsg-7ubuntu0.20.04.2`

Binary Packages:

- `tar=1.30+dfsg-7ubuntu0.20.04.2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-7ubuntu0.20.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30%2bdfsg-7ubuntu0.20.04.2.dsc' tar_1.30+dfsg-7ubuntu0.20.04.2.dsc 1816 SHA512:41897fe2364f5eccabb92f551efe0008be995b6651c951c1c0f9e8272b8e92563b5a5ae360d9bb566976a8d0c32e67187599cb262a835ebce432ddf4bf925158
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30%2bdfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA512:f9b3843bd4da03f58d6f88de70ecb36b8ac29312714fd2120ff00f17c99e6d77cc82a8f9de348f4c2bdba9a6cc8e8c6c78039b6c14cdee15d68f2517000c36f2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30%2bdfsg-7ubuntu0.20.04.2.debian.tar.xz' tar_1.30+dfsg-7ubuntu0.20.04.2.debian.tar.xz 23580 SHA512:2c9999bff0257251eb7d09a702898e42ce45b117d8e3595d68bf0a6ffdeb1d4a1d69202a2674d93a9193576f65dad4de4e094479228bfb4efc4a7931f00d3875
```

### `dpkg` source package: `tiff=4.1.0+git191117-2ubuntu0.20.04.7`

Binary Packages:

- `libtiff-dev:amd64=4.1.0+git191117-2ubuntu0.20.04.7`
- `libtiff5:amd64=4.1.0+git191117-2ubuntu0.20.04.7`
- `libtiffxx5:amd64=4.1.0+git191117-2ubuntu0.20.04.7`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.1.0+git191117-2ubuntu0.20.04.7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.1.0%2bgit191117-2ubuntu0.20.04.7.dsc' tiff_4.1.0+git191117-2ubuntu0.20.04.7.dsc 2434 SHA512:068c5d388de8c34d011fd0e6660cfde0a7d140bebae9c3f0886175da4bc76eb71ac4a90ee8fb8ebfa4abbc07c92fe47365fb301028013cd05cdaff63cbbf1186
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.1.0%2bgit191117.orig.tar.xz' tiff_4.1.0+git191117.orig.tar.xz 1533524 SHA512:25b4bc4522fc2e7f3ca6857b87acd4481d8643566b1120c755020afc8b48949238ee2078bc43dd3ba7407eaa4e36b1b712d7056f101ddaf60f94dab8607870b8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.1.0%2bgit191117-2ubuntu0.20.04.7.debian.tar.xz' tiff_4.1.0+git191117-2ubuntu0.20.04.7.debian.tar.xz 38460 SHA512:a65c721e0f17743adce409bd09e4b542daeccb3468086e85bd018b07792ba02681fd128992336182ad01b50a138b8f8661202aefe74bb61181066e7c0d1ed011
```

### `dpkg` source package: `tzdata=2022f-0ubuntu0.20.04.1`

Binary Packages:

- `tzdata=2022f-0ubuntu0.20.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ubuntu-keyring=2020.02.11.4`

Binary Packages:

- `ubuntu-keyring=2020.02.11.4`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2020.02.11.4
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2020.02.11.4.dsc' ubuntu-keyring_2020.02.11.4.dsc 1863 SHA512:1232fc109f9afe7f4245f841cb992aeb7329ec1c3d310a174b837c0584005a7c46ce73f6d49a52a3e6c0eea03369ea5f308093c1a849e8f6597f6df792a87fb1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2020.02.11.4.tar.gz' ubuntu-keyring_2020.02.11.4.tar.gz 39250 SHA512:318562b6892dad995e334ec44f08f065b4c6abed2d29c1f96f6ee0fa4d91a5cedc9b62a152c56cdf26a30c3ea97a58c1d037e892d155af5593a4e26b9a25a1ae
```

### `dpkg` source package: `ucf=3.0038+nmu1`

Binary Packages:

- `ucf=3.0038+nmu1`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038+nmu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038%2bnmu1.dsc' ucf_3.0038+nmu1.dsc 1420 SHA256:89b6f921a30e04a946f62e6996be7c16f2f7c383d20783cd4704b502c6d5b125
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038%2bnmu1.tar.xz' ucf_3.0038+nmu1.tar.xz 65860 SHA256:d00bc3dd8d2f91317f52b5352fe129023c72babad55bc0dd4ece7b34183c7436
```

### `dpkg` source package: `unzip=6.0-25ubuntu1.1`

Binary Packages:

- `unzip=6.0-25ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-25ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-25ubuntu1.1.dsc' unzip_6.0-25ubuntu1.1.dsc 1674 SHA512:5589dcca106750f69af732513552a3ad7940f9fb01e30d8663c536dda1b245c6b06786d81ac76ed299f87c6f945c0d631a70808056c6fcde48c224508a1a91d0
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA512:0694e403ebc57b37218e00ec1a406cae5cc9c5b52b6798e0d4590840b6cdbf9ddc0d9471f67af783e960f8fa2e620394d51384257dca23d06bcd90224a80ce5d
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-25ubuntu1.1.debian.tar.xz' unzip_6.0-25ubuntu1.1.debian.tar.xz 27520 SHA512:589ba60ba88eda4ca6713826268d68583b0c90fd7dbbed6aa831631bf77aee94fde7c29e5da26ddec9a13644eaf614c7bb9368707efc9d11f62db89e4a985456
```

### `dpkg` source package: `utf8proc=2.5.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.5.0-1.dsc' utf8proc_2.5.0-1.dsc 2154 SHA256:2137104a3712875650629305fe7d7ef37d4d99328846c18b087b289c0ddbf27c
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.5.0.orig.tar.gz' utf8proc_2.5.0.orig.tar.gz 155485 SHA256:d4e8dfc898cfd062493cb7f42d95d70ccdd3a4cd4d90bec0c71b47cca688f1be
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.5.0-1.debian.tar.xz' utf8proc_2.5.0-1.debian.tar.xz 5240 SHA256:333496cf4e178b5ccf4972fa52523d07a21a0cabf0cb123133c6c71f98e92eff
```

### `dpkg` source package: `util-linux=2.34-0.1ubuntu9.3`

Binary Packages:

- `bsdutils=1:2.34-0.1ubuntu9.3`
- `fdisk=2.34-0.1ubuntu9.3`
- `libblkid-dev:amd64=2.34-0.1ubuntu9.3`
- `libblkid1:amd64=2.34-0.1ubuntu9.3`
- `libfdisk1:amd64=2.34-0.1ubuntu9.3`
- `libmount-dev:amd64=2.34-0.1ubuntu9.3`
- `libmount1:amd64=2.34-0.1ubuntu9.3`
- `libsmartcols1:amd64=2.34-0.1ubuntu9.3`
- `libuuid1:amd64=2.34-0.1ubuntu9.3`
- `mount=2.34-0.1ubuntu9.3`
- `util-linux=2.34-0.1ubuntu9.3`
- `uuid-dev:amd64=2.34-0.1ubuntu9.3`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid-dev/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount-dev/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.34-0.1ubuntu9.3
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.34-0.1ubuntu9.3.dsc' util-linux_2.34-0.1ubuntu9.3.dsc 4042 SHA512:e65684c641d175110008f865369c35adb734f8a80626c0eb3b3f3f47e05c1a6277c9f92b4032e30bb69711d67c2a5ad651adb3ec9ac4ef67d45a2858ce48cc6a
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.34.orig.tar.xz' util-linux_2.34.orig.tar.xz 4974812 SHA512:2d0b76f63d32e7afb7acf61a83fabbfd58baa34ab78b3a331ce87f9c676a5fd71c56a493ded95039540d2c46b6048caaa38d7fb4491eb3d52d7b09dc54655cd7
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.34-0.1ubuntu9.3.debian.tar.xz' util-linux_2.34-0.1ubuntu9.3.debian.tar.xz 94976 SHA512:b6e55588aea32de6481dad01f194e6f71b8a859019e5c8d6d816c65f32c8b31821d1ab73f13ec34c5d3551311c43b7e24ac01c2af5878a85df72326293c3a71a
```

### `dpkg` source package: `wget=1.20.3-1ubuntu2`

Binary Packages:

- `wget=1.20.3-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.20.3-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.20.3-1ubuntu2.dsc' wget_1.20.3-1ubuntu2.dsc 2272 SHA512:acf0dc7618adda63d4579b6bb110bcad5ade7e4ed9474695a37397aeebf0d882c279c5318c15581630ddf7b2c2d7b665c241853e5922d39cf469d7439d4bc9aa
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.20.3.orig.tar.gz' wget_1.20.3.orig.tar.gz 4489249 SHA512:e8b82b40e270296228094a78d47f81580bdbdea9e6b93fd61b37dccb39430aeb9bda5397dc53a31c952a61629383c7e2a8c8abf414c8a4dd369af6ecf2717e6c
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.20.3.orig.tar.gz.asc' wget_1.20.3.orig.tar.gz.asc 833 SHA512:40e1bb87dba49e9b8a1e3a6e9ffb95e97933508cd8fef4aac9545b74073800e2945b80bab749e57d4ddc8260a612d784160bec45a6c9c057954d22960c8dd170
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.20.3-1ubuntu2.debian.tar.xz' wget_1.20.3-1ubuntu2.debian.tar.xz 64192 SHA512:39bcd9010374f8f99778e12cee5df9af16c734c14229b96c4d74de222207966c99448ff539257f8a642d92b67e7656618bd1b29a29ed1ac2c58df68ce1496af4
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

### `dpkg` source package: `xorg=1:7.7+19ubuntu14`

Binary Packages:

- `x11-common=1:7.7+19ubuntu14`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+19ubuntu14
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b19ubuntu14.dsc' xorg_7.7+19ubuntu14.dsc 2107 SHA256:d9d6449510066c3b34216cf08f797f00f64df3494567b5478a60d0feb50b9d95
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b19ubuntu14.tar.gz' xorg_7.7+19ubuntu14.tar.gz 299269 SHA256:b8a1c0f7b24ae5565f6f22ccf01cd0c8e46c4f5dad6c14bce4f3495e82138213
```

### `dpkg` source package: `xorgproto=2019.2-1ubuntu1`

Binary Packages:

- `x11proto-core-dev=2019.2-1ubuntu1`
- `x11proto-dev=2019.2-1ubuntu1`
- `x11proto-xext-dev=2019.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/x11proto-core-dev/copyright`, `/usr/share/doc/x11proto-dev/copyright`, `/usr/share/doc/x11proto-xext-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2019.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2019.2-1ubuntu1.dsc' xorgproto_2019.2-1ubuntu1.dsc 4096 SHA256:1b0fede1501745c7cfed22b86ea951ba6792ae6eda404fafae9533b01fbb2ee2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2019.2.orig.tar.gz' xorgproto_2019.2.orig.tar.gz 1080686 SHA256:ebfcfce48b66bec25d5dff0e9510e04053ef78e51a8eabeeee4c00e399226d61
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2019.2.orig.tar.gz.asc' xorgproto_2019.2.orig.tar.gz.asc 659 SHA256:75da45caac1d85fe37a5e7f33a087d456cad1dc38f2743b7f7df63d7ca583293
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2019.2-1ubuntu1.diff.gz' xorgproto_2019.2-1ubuntu1.diff.gz 21111 SHA256:9162224ecb85b35b37a51fbb2a1c53fc8262339fd3208ded60e141607aa835e8
```

### `dpkg` source package: `xtrans=1.4.0-1`

Binary Packages:

- `xtrans-dev=1.4.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0-1.dsc' xtrans_1.4.0-1.dsc 1919 SHA256:dd74ab9199e8f45215b566a9317cac7953bf063ce6893c185eccaf0fb4d84d8f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0.orig.tar.gz' xtrans_1.4.0.orig.tar.gz 225941 SHA256:48ed850ce772fef1b44ca23639b0a57e38884045ed2cbb18ab137ef33ec713f9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0-1.diff.gz' xtrans_1.4.0-1.diff.gz 9522 SHA256:0dac18165654d79e0796b80fab4c1104998d29e6d0b098af0426a1d72399521e
```

### `dpkg` source package: `xz-utils=5.2.4-1ubuntu1.1`

Binary Packages:

- `liblzma-dev:amd64=5.2.4-1ubuntu1.1`
- `liblzma5:amd64=5.2.4-1ubuntu1.1`
- `xz-utils=5.2.4-1ubuntu1.1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.4-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.4-1ubuntu1.1.dsc' xz-utils_5.2.4-1ubuntu1.1.dsc 2604 SHA512:458e4bd7a0823dc7e5f1dcf11bd4d0653b5c3f2474835a8422918faa25ab5b5ad005aa42af70bb9a993480ae1fe4e787965b19bd2ba4bee2ddedcaa24c10376c
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.4.orig.tar.xz' xz-utils_5.2.4.orig.tar.xz 1053868 SHA512:00db7dd31a61541b1ce6946e0f21106f418dd1ac3f27cdb8682979cbc3bd777cd6dd1f04f9ba257a0a7e24041e15ca40d0dd5c130380dce62280af67a0beb97f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.4.orig.tar.xz.asc' xz-utils_5.2.4.orig.tar.xz.asc 879 SHA512:dbfce0556bc85545ce3566a01c25e4876f560409fc2d48f2dc382b10fbd2538c61d8f2c3667d86fc7313aec86c05e53926015000320f19615e97875adae42450
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.4-1ubuntu1.1.debian.tar.xz' xz-utils_5.2.4-1ubuntu1.1.debian.tar.xz 136944 SHA512:627df70d2ff3b0227d6dd74137a660c5d722cce059ee36c1db8a50105ba6c236910bba5687290a7d88c9a53ead2a3b3ab00216f279f26a57d7e4020c6db23a24
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-2ubuntu1.5`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-2ubuntu1.5`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-2ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-2ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu1.5.dsc' zlib_1.2.11.dfsg-2ubuntu1.5.dsc 2649 SHA512:f28659c4389c08be0023850921a9a7fb29d5c1d79429fe2a4a754209102aa48e84835006bd79dfa5943ef8319969fa549a50668db10d22c37c46082cc58969d4
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA512:92819807c0b8de655021bb2d5d182f9b6b381d3072d8c8dc1df34bbaa25d36bcba140c85f754a43cc466aac65850b7a7366aa0c93e804180e5b255e61d5748de
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu1.5.debian.tar.xz' zlib_1.2.11.dfsg-2ubuntu1.5.debian.tar.xz 56436 SHA512:f6e3a370612f2a836c36f674e7647dc6cf339bf698648a3630c9b71515d317f846345c9d0db6e1c73e627ce239245a24083e705b8dfe3baece638bb3f5c0b195
```
