# `buildpack-deps:noble`

## Docker Metadata

- Image ID: `sha256:2f703546db972bae041beb4c2698ec36648425a55ae572226f36e0772c1fb684`
- Created: `2026-08-18T21:15:17.332119529Z`
- Virtual Size: ~ 794.39 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
- Labels:
  - `org.opencontainers.image.version=24.04`

## `dpkg` (`.deb`-based packages)

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

### `dpkg` source package: `aom=3.8.2-2ubuntu0.1`

Binary Packages:

- `libaom3:amd64=3.8.2-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libaom3/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `public-domain-md5`

Source:

```console
$ apt-get source -qq --print-uris aom=3.8.2-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.8.2.orig.tar.gz' aom_3.8.2.orig.tar.gz 5466676 SHA512:fca573bab8653fb99773377444c8890325ba0ba4d2cde7cdcbd5aba3465859b297df3ba9343f5917a46284413743efb0730646ac720bb4abf8324875103ab2e7
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.8.2-2ubuntu0.1.debian.tar.xz' aom_3.8.2-2ubuntu0.1.debian.tar.xz 22776 SHA512:cf01fad7c9c05a65ccabc046e91305612c8b9311502f51a09cf07e99296ef3900c85fb5bd18e7ab6cc5b562efdb6ba18a4c18c922f4d6aa6364950e16fd6ad25
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.8.2-2ubuntu0.1.dsc' aom_3.8.2-2ubuntu0.1.dsc 2395 SHA512:4a21de7415dbb23550b17ebebb98e443a20f3b811ee4e3d5da4995377fc308e6523f4f906aa77ad459e1aee8e8fad36348e45799277a98569fa367088455989f
```

### `dpkg` source package: `apr-util=1.6.3-1.1ubuntu7`

Binary Packages:

- `libaprutil1t64:amd64=1.6.3-1.1ubuntu7`

Licenses: (parsed from: `/usr/share/doc/libaprutil1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.3-1.1ubuntu7
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3-1.1ubuntu7.dsc' apr-util_1.6.3-1.1ubuntu7.dsc 2947 SHA512:67c60bb82cce5913648560305202055bfd02c55d70e4e16644965130b884477a2a60e1e50b80ad2c218d0844ff37f1cace5b87e09731f00cad7548e4e4173b04
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3.orig.tar.bz2' apr-util_1.6.3.orig.tar.bz2 432692 SHA512:8050a481eeda7532ef3751dbd8a5aa6c48354d52904a856ef9709484f4b0cc2e022661c49ddf55ec58253db22708ee0607dfa7705d9270e8fee117ae4f06a0fe
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3.orig.tar.bz2.asc' apr-util_1.6.3.orig.tar.bz2.asc 833 SHA512:6c483e823fb032b161b6bcf77f9a43945aee9afbe40050ebf042865434bc533d21168af20d4cdff597b60b782d8ac9322409a5c2a64bf921b22f5add2451d79d
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3-1.1ubuntu7.debian.tar.xz' apr-util_1.6.3-1.1ubuntu7.debian.tar.xz 342276 SHA512:64a09f76917cef4552b9494c54677d6c21938c31f0a957f09e6a601849fd14c7461b1d4ca39e854d41a42d723c0ec254cc2751e81600e9e0176d064c73cfb600
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

### `dpkg` source package: `attr=1:2.5.2-1build1.1`

Binary Packages:

- `libattr1:amd64=1:2.5.2-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `autoconf=2.71-3`

Binary Packages:

- `autoconf=2.71-3`

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
$ apt-get source -qq --print-uris autoconf=2.71-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.71-3.dsc' autoconf_2.71-3.dsc 1988 SHA512:77b5211bc883080da398a9b16ea5455b6e1562c4be7459844b58a61bcf57183bf6440547ef3bcc55b4ece3213347aaaa12dbf1603d5528d037cfb956413e29f6
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.71.orig.tar.gz' autoconf_2.71.orig.tar.gz 2003781 SHA512:2bc5331f9807da8754b2ee623a30299cc0d103d6f98068a4c22263aab67ff148b7ad3a1646bd274e604bc08a8ef0ac2601e6422e641ad0cfab2222d60a58c5a8
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.71-3.debian.tar.xz' autoconf_2.71-3.debian.tar.xz 23896 SHA512:12debf9cd25329130b7d9b00b77bbbfb7f3f26cdf6dbe60188203e3a66ed933f693de02c3816856e4157d5843647d7c834c3bd924345a7ac41ad35aac3689f63
```

### `dpkg` source package: `automake-1.16=1:1.16.5-1.3ubuntu1`

Binary Packages:

- `automake=1:1.16.5-1.3ubuntu1`

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
$ apt-get source -qq --print-uris automake-1.16=1:1.16.5-1.3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.5-1.3ubuntu1.dsc' automake-1.16_1.16.5-1.3ubuntu1.dsc 2657 SHA512:8000fe08014aaa9da51cefe063499a6f8932515916e81cd9b4a3201313609804ce69a353a0bbb5d6e0b574107259e0e8e61a7af21f1932f4b2cfcea359ed619f
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.5.orig.tar.xz' automake-1.16_1.16.5.orig.tar.xz 1601740 SHA512:3084ae543aa3fb5a05104ffb2e66cfa9a53080f2343c44809707fd648516869511500dba50dae67ff10f92a1bf3b5a92b2a0fa01cda30adb69b9da03994d9d88
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.5.orig.tar.xz.asc' automake-1.16_1.16.5.orig.tar.xz.asc 833 SHA512:032a7c39abb4cabbefa4eb9c15263baec0902e48c0c81364307361a41fd55be282b9640707c789f5ae572e8e60240e34d1b575a671b5710f5d2a5716fafc2d51
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.16/automake-1.16_1.16.5-1.3ubuntu1.debian.tar.xz' automake-1.16_1.16.5-1.3ubuntu1.debian.tar.xz 14624 SHA512:95bf57bcfe7f509c2c1c5e3c6fbe9a407af96dca49ccde0e990580720b301974c882a3a4ae7a9e9bb26c0129918f0847fb480749a315a52204b705a0a277f2c2
```

### `dpkg` source package: `autotools-dev=20220109.1`

Binary Packages:

- `autotools-dev=20220109.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20220109.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20220109.1.dsc' autotools-dev_20220109.1.dsc 1661 SHA512:aca60be8ed006832005e58bf176f8c7e8abe85986dbcc6d15d8b5c092c89322a132601784ef1f977d7e071c8b033debcef7c3cb5712765be00c2d298d9812d71
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20220109.1.tar.xz' autotools-dev_20220109.1.tar.xz 87340 SHA512:5427cc6897685355018db547ec39fd6bcc0ecbd73ba25869fb841f3503c1753af9a323d963a2b3150ef40ff07486f39377acdec878b2c054c1fa51de9afe01bb
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

### `dpkg` source package: `binutils=2.42-4ubuntu2.10`

Binary Packages:

- `binutils=2.42-4ubuntu2.10`
- `binutils-common:amd64=2.42-4ubuntu2.10`
- `binutils-x86-64-linux-gnu=2.42-4ubuntu2.10`
- `libbinutils:amd64=2.42-4ubuntu2.10`
- `libctf-nobfd0:amd64=2.42-4ubuntu2.10`
- `libctf0:amd64=2.42-4ubuntu2.10`
- `libgprofng0:amd64=2.42-4ubuntu2.10`
- `libsframe1:amd64=2.42-4ubuntu2.10`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe1/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.42-4ubuntu2.10
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.42.orig.tar.xz' binutils_2.42.orig.tar.xz 27567160 SHA256:f6e4d41fd5fc778b06b7891457b3620da5ecea1006c6a4a41ae998109f85a800
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.42-4ubuntu2.10.debian.tar.xz' binutils_2.42-4ubuntu2.10.debian.tar.xz 196552 SHA256:6acc777971890cb1efaeeb33a0a5358651c71067ced69dcfd59da7d0977f7530
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.42-4ubuntu2.10.dsc' binutils_2.42-4ubuntu2.10.dsc 10152 SHA256:a14a8e2efdb3566955476bccd2248cebed5cf2a2f5d28e223d08200ec1a18d75
```

### `dpkg` source package: `brotli=1.1.0-2build2`

Binary Packages:

- `libbrotli-dev:amd64=1.1.0-2build2`
- `libbrotli1:amd64=1.1.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.1.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0-2build2.dsc' brotli_1.1.0-2build2.dsc 2401 SHA512:74b6f53c8917622cf69f3a5ec7d2032a5ffaf3673700efa7c0f1a095280024a48bee2518c17329d0d23a0c54d1868d0fa247e663aeca9b4587883b5f88eea1b6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0.orig.tar.gz' brotli_1.1.0.orig.tar.gz 512036 SHA512:7a94f8b1ca1d3a411c6b5681bd2ed66183468f7b37a24741601d77ed4353577805de84c810dd26086d4afe6b11bfc4791db3ba7f6f9986bc7acbb8e9b43f488b
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.1.0-2build2.debian.tar.xz' brotli_1.1.0-2build2.debian.tar.xz 5644 SHA512:d7f430be5228cfb92ccc2908b915ab817d6165291671721112c1b5511949e92a2bfd1017f7ad44afd00fa0a133c3724c02e9d22f81e2a726d9958bbdae9f44f0
```

### `dpkg` source package: `build-essential=12.10ubuntu1`

Binary Packages:

- `build-essential=12.10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.10ubuntu1.dsc' build-essential_12.10ubuntu1.dsc 2367 SHA512:7ca7db214eca918ef292b78eb57b0616c3d03975aa2d2ed938b4f2da11d87d270a711f213d3f87a9e5da525fd8c02baed39c97fa8084ffdf05e07ae66a76c1f6
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.10ubuntu1.tar.xz' build-essential_12.10ubuntu1.tar.xz 51788 SHA512:0a8dd8183658a93325dee583a99b39f1fa0e4563825865602abeae29f96e53eb97407bf2d1e85b2d7bc5e64a47da193a021ca492061dce4c4be48b12fd546bb4
```

### `dpkg` source package: `bzip2=1.0.8-5.1build0.1`

Binary Packages:

- `bzip2=1.0.8-5.1build0.1`
- `libbz2-1.0:amd64=1.0.8-5.1build0.1`
- `libbz2-dev:amd64=1.0.8-5.1build0.1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

- `libcairo-gobject2:amd64=1.18.0-3build1`
- `libcairo-script-interpreter2:amd64=1.18.0-3build1`
- `libcairo2:amd64=1.18.0-3build1`
- `libcairo2-dev:amd64=1.18.0-3build1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `curl=8.5.0-2ubuntu10.11`

Binary Packages:

- `curl=8.5.0-2ubuntu10.11`
- `libcurl3t64-gnutls:amd64=8.5.0-2ubuntu10.11`
- `libcurl4-openssl-dev:amd64=8.5.0-2ubuntu10.11`
- `libcurl4t64:amd64=8.5.0-2ubuntu10.11`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

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

### `dpkg` source package: `db-defaults=1:5.3.21ubuntu2`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu2.dsc' db-defaults_5.3.21ubuntu2.dsc 1663 SHA512:018dc4aedcf739f611a55d1ad1ee6ad62f0ed60d33ebfeb493ac9709e743f5cb2bd318ee246a3f52f0274424048c94c25f685889a82c16b24357c023f63917df
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu2.tar.xz' db-defaults_5.3.21ubuntu2.tar.xz 2644 SHA512:7a41ab8046316afe6da9623ba36bf6803b6de49059f29acdb5d931009e3f317381713c3d2f68c4aeefa5bbed2e625196359b4735421d8e9caffd07f0f06184b4
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-7`

Binary Packages:

- `libdb5.3-dev=5.3.28+dfsg2-7`
- `libdb5.3t64:amd64=5.3.28+dfsg2-7`

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-7
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-7.dsc' db5.3_5.3.28+dfsg2-7.dsc 2374 SHA512:3877ed17196ea9d9bac87112b81461ba3bfa02fd5017043baf277728cc151bed2238a90f707464d0a4e24aab865bf5f6c0c6ee6d0eb5ec866efe4cea91f7b93c
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA512:f9c9d042702ef3fcfdd4b4859583048f3396b161009dc24b6d3a2c53533d58214239fc80e2c42db17e9f092df44d531502737f3b368b956bff49ef057b6b51ef
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-7.debian.tar.xz' db5.3_5.3.28+dfsg2-7.debian.tar.xz 35232 SHA512:9e91cdf98925d94c7f318e534474e208ce8796113867f290bcaf8ca9c3f35d309266a35e17eb5624246c5e0bf94e5893c203f5154d7d0ba50b13babf53339156
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

### `dpkg` source package: `djvulibre=3.5.28-2ubuntu0.24.04.2`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.28-2ubuntu0.24.04.2`
- `libdjvulibre-text=3.5.28-2ubuntu0.24.04.2`
- `libdjvulibre21:amd64=3.5.28-2ubuntu0.24.04.2`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.28-2ubuntu0.24.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.28.orig.tar.xz' djvulibre_3.5.28.orig.tar.xz 2959024 SHA256:1223b7bf7c8dfe2e290882f3bfb88ba2468b30495a1bf8dfd54dc7e810987887
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.28-2ubuntu0.24.04.2.debian.tar.xz' djvulibre_3.5.28-2ubuntu0.24.04.2.debian.tar.xz 18644 SHA256:b1b370a10f3d6542056f0c3a42201101ab095b878650fdf6c4fd31f44d4c851f
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.28-2ubuntu0.24.04.2.dsc' djvulibre_3.5.28-2ubuntu0.24.04.2.dsc 2506 SHA256:98c50115bfc9cdd0a614d86cb7be2f3554eb79fc57a87e2db056be9290ed38a5
```

### `dpkg` source package: `dpkg=1.22.6ubuntu6.6`

Binary Packages:

- `dpkg=1.22.6ubuntu6.6`
- `dpkg-dev=1.22.6ubuntu6.6`
- `libdpkg-perl=1.22.6ubuntu6.6`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

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

- `comerr-dev:amd64=2.1-1.47.0-2.4~exp1ubuntu4.1`
- `e2fsprogs=1.47.0-2.4~exp1ubuntu4.1`
- `libcom-err2:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `libext2fs2t64:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `libss2:amd64=1.47.0-2.4~exp1ubuntu4.1`
- `logsave=1.47.0-2.4~exp1ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2t64/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0.orig.tar.gz' e2fsprogs_1.47.0.orig.tar.gz 9637717 SHA512:4f03a469d03cb0f0656bd17c64d944606fb25e68002e3e42c278f3775fee6bf776cc2061ae378b5df4f167a5c33444490111fdcbb140e0320445706f9d048dd0
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0.orig.tar.gz.asc' e2fsprogs_1.47.0.orig.tar.gz.asc 488 SHA512:cd3652ec12f694f1c1f5bd4af4964bb32ad832ba8a06a48864d12a998dc514e9a950ebdb475707a3abb8360852a3469794f2327f097328c99233beef575df144
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0-2.4%7eexp1ubuntu4.1.debian.tar.xz' e2fsprogs_1.47.0-2.4~exp1ubuntu4.1.debian.tar.xz 90580 SHA512:c95606b9d20cdfeacedf1b7fb7185406562117a71afaae5e1c246f30a510ba46abe79e12221503e3809a8595caa967835f640990dd41921ca6ec5abbea20a371
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.0-2.4%7eexp1ubuntu4.1.dsc' e2fsprogs_1.47.0-2.4~exp1ubuntu4.1.dsc 3294 SHA512:0b9616118928aee8c2893dd1d6444735fd2c1852975414fbfeccb8d94bd01c34b49111282d728f835d539a17b6642b1c20509b17367b0bafc1d417b2910621b0
```

### `dpkg` source package: `elfutils=0.190-1.1ubuntu0.1`

Binary Packages:

- `libelf1t64:amd64=0.190-1.1ubuntu0.1`

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
$ apt-get source -qq --print-uris elfutils=0.190-1.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190.orig.tar.bz2' elfutils_0.190.orig.tar.bz2 9162766 SHA256:8e00a3a9b5f04bc1dc273ae86281d2d26ed412020b391ffcc23198f10231d692
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190-1.1ubuntu0.1.debian.tar.xz' elfutils_0.190-1.1ubuntu0.1.debian.tar.xz 46976 SHA256:4c3130951f7b865d50ff57379a258926a66bcd2753e3c12301bbb110fbb417fa
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.190-1.1ubuntu0.1.dsc' elfutils_0.190-1.1ubuntu0.1.dsc 3410 SHA256:7852785ce5ce51a6dad0f6b67188d94ffedaffa6d0128fecabeb6a1ccc2aabea
```

### `dpkg` source package: `expat=2.6.1-2ubuntu0.4`

Binary Packages:

- `libexpat1:amd64=2.6.1-2ubuntu0.4`
- `libexpat1-dev:amd64=2.6.1-2ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.6.1-2ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1.orig.tar.gz' expat_2.6.1.orig.tar.gz 8414649 SHA256:14113ed69357172a0bf5a268793c8b5b01afc77c7a2e5fb8dd0b06cb87c02c4a
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1-2ubuntu0.4.debian.tar.xz' expat_2.6.1-2ubuntu0.4.debian.tar.xz 31092 SHA256:8a24bd6c87fe292a2f00a2df71f7d2bbe3713fa63b1952c8552cdac4288d10fd
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.6.1-2ubuntu0.4.dsc' expat_2.6.1-2ubuntu0.4.dsc 1945 SHA256:a25d3fde103454ad5d34d4770bd5adb60bb5872da775df74cad193b5c4de1dff
```

### `dpkg` source package: `fftw3=3.3.10-1ubuntu3`

Binary Packages:

- `libfftw3-double3:amd64=3.3.10-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.10-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10-1ubuntu3.dsc' fftw3_3.3.10-1ubuntu3.dsc 2890 SHA512:5e7ee03298273c37c7308704861fecfa5ee011160c8789cbb1385c936a10001df5762652481434048132dad71d576c95554243a4ce48c328931b3b39b821f4d6
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10.orig.tar.gz' fftw3_3.3.10.orig.tar.gz 4262403 SHA512:fa2ea740449fd06c833a82e1fff82bacd554188d500cbedff5a0bc185551799ef9ef9b8b1c227283abdbbdd185424d19df9c0f06ed88d5fe3d9c001d6fab6109
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10-1ubuntu3.debian.tar.xz' fftw3_3.3.10-1ubuntu3.debian.tar.xz 14864 SHA512:219d9d15aa005c1f98d32bd9b9c2cc748ae2b43e24b04f10918c39b73ba8d13dc38a3f0f8fc3ac9152db19e416a3aeadca52af2db37ee07471c949e9182eb8d5
```

### `dpkg` source package: `file=1:5.45-3build1`

Binary Packages:

- `file=1:5.45-3build1`
- `libmagic-mgc=1:5.45-3build1`
- `libmagic1t64:amd64=1:5.45-3build1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1t64/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.45-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.45-3build1.dsc' file_5.45-3build1.dsc 2408 SHA512:366c97f8faa11661879e0907bda25730f24dd6369455d60723790152a6d3e67b858ce99de82b095cae396d0621efff6dcd25ae11ce8e5e4af75006623ad85f19
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.45.orig.tar.gz' file_5.45.orig.tar.gz 1246503 SHA512:12611a59ff766c22a55db4b4a9f80f95a0a2e916a1d8593612c6ead32c247102a8fdc23693c6bf81bda9b604d951a62c0051e91580b1b79e190a3504c0efc20a
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.45.orig.tar.gz.asc' file_5.45.orig.tar.gz.asc 169 SHA512:4bda3c9b23e534e31d8726eae110e108c538c88ca4884666989da9bedc5dcfd9cfcb3754e68885ca5310db67bff151f9bf4f21913f7b5046f158a9ca38bc00a4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.45-3build1.debian.tar.xz' file_5.45-3build1.debian.tar.xz 35964 SHA512:292021c05c73e2ea593af147e6df690a73df6ebf5b10408760be48c161ed341d974145aed93161d09fcea6a7ce0348edfea8a4c0ece9fdf54e1c33e5d3673b86
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
- `libfontconfig-dev:amd64=2.15.0-1.1ubuntu2`
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

- `libfreetype-dev:amd64=2.13.2+dfsg-1ubuntu0.1`
- `libfreetype6:amd64=2.13.2+dfsg-1ubuntu0.1`

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
$ apt-get source -qq --print-uris freetype=2.13.2+dfsg-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2demos.tar.xz' freetype_2.13.2+dfsg.orig-ft2demos.tar.xz 341140 SHA256:99ee2ed8b98bcfad17bc57c2d9699d764f20fe29ad304c69b8eb28834ca3b48e
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.13.2+dfsg.orig-ft2demos.tar.xz.asc 833 SHA256:e58ba462f7bdcdc5899f777d33453c1ce6f6e46b080047580f45c9fd9f2dc08c
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2docs.tar.xz' freetype_2.13.2+dfsg.orig-ft2docs.tar.xz 2173920 SHA256:685c25e1035a5076e5097186b3143b9c06878f3f9087d0a81e4d8538d5d15424
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.13.2+dfsg.orig-ft2docs.tar.xz.asc 833 SHA256:d7e17c8a3bce50181530ebe06346f506cbfc92ecc5ca7cc395c7dbb24a71a5c0
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg.orig.tar.xz' freetype_2.13.2+dfsg.orig.tar.xz 2220368 SHA256:48c78a4194adfcd15a4d089f3206dab8454c311f5577f3ef7eaef95f777f86e6
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg-1ubuntu0.1.debian.tar.xz' freetype_2.13.2+dfsg-1ubuntu0.1.debian.tar.xz 44692 SHA256:41371d9748c0e6f407c44c52c7fe5fbd4fbc2276a168ae528404731ae2e95b31
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.13.2%2bdfsg-1ubuntu0.1.dsc' freetype_2.13.2+dfsg-1ubuntu0.1.dsc 3606 SHA256:05368dead2fd8739fb2aa3a11e6ffd4376039b57536cc1c5cdadceb75496f385
```

### `dpkg` source package: `fribidi=1.0.13-3build1`

Binary Packages:

- `libfribidi0:amd64=1.0.13-3build1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.13-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.13-3build1.dsc' fribidi_1.0.13-3build1.dsc 2439 SHA512:3f2dfad48107ebb7477654414f1f2818040a63bb017a865bf9ff6bb669c22c584e984bf90cc023abe4fec63933e779bc2cf89ca57d2c796bbd319329c5efdf15
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.13.orig.tar.xz' fribidi_1.0.13.orig.tar.xz 1170100 SHA512:09357d842ff9e05b918f826e28e4a25ad996e17f73242ee9ce53fae9f37ec6c639f9cae4271577f6e0269f34265afc893858225c4a94610f0a6ee7580fb1fe07
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.13-3build1.debian.tar.xz' fribidi_1.0.13-3build1.debian.tar.xz 8992 SHA512:a772c10d41ed7ae62ce042cf89563c64f26959b7bdcbe285d5dbc4b848ddf64005d658ac3cbdfa65d3327be6cf028bff87e5adfe025f78749b67f790316efa7b
```

### `dpkg` source package: `gcc-13=13.3.0-6ubuntu2~24.04.1`

Binary Packages:

- `cpp-13=13.3.0-6ubuntu2~24.04.1`
- `cpp-13-x86-64-linux-gnu=13.3.0-6ubuntu2~24.04.1`
- `g++-13=13.3.0-6ubuntu2~24.04.1`
- `g++-13-x86-64-linux-gnu=13.3.0-6ubuntu2~24.04.1`
- `gcc-13=13.3.0-6ubuntu2~24.04.1`
- `gcc-13-base:amd64=13.3.0-6ubuntu2~24.04.1`
- `gcc-13-x86-64-linux-gnu=13.3.0-6ubuntu2~24.04.1`
- `libgcc-13-dev:amd64=13.3.0-6ubuntu2~24.04.1`
- `libstdc++-13-dev:amd64=13.3.0-6ubuntu2~24.04.1`

Licenses: (parsed from: `/usr/share/doc/cpp-13/copyright`, `/usr/share/doc/cpp-13-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-13/copyright`, `/usr/share/doc/g++-13-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-13/copyright`, `/usr/share/doc/gcc-13-base/copyright`, `/usr/share/doc/gcc-13-x86-64-linux-gnu/copyright`, `/usr/share/doc/libgcc-13-dev/copyright`, `/usr/share/doc/libstdc++-13-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-13=13.3.0-6ubuntu2~24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-13/gcc-13_13.3.0.orig.tar.gz' gcc-13_13.3.0.orig.tar.gz 92761021 SHA256:3b85d91bf38d1b858d9d01134f4046b3359731968ed4e6e912d29717a35d1a46
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-13/gcc-13_13.3.0-6ubuntu2%7e24.04.1.debian.tar.xz' gcc-13_13.3.0-6ubuntu2~24.04.1.debian.tar.xz 646156 SHA256:5523658f272ad6d15a83b6e26d178fbd5cb7709ec7ce2ca52b0c843e19c228e3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-13/gcc-13_13.3.0-6ubuntu2%7e24.04.1.dsc' gcc-13_13.3.0-6ubuntu2~24.04.1.dsc 39540 SHA256:86b4012c312ac13e3e092877719a62a5b5dbab082ae7e9680780a25c6a13ddc6
```

### `dpkg` source package: `gcc-14=14.2.0-4ubuntu2~24.04.1`

Binary Packages:

- `gcc-14-base:amd64=14.2.0-4ubuntu2~24.04.1`
- `libasan8:amd64=14.2.0-4ubuntu2~24.04.1`
- `libatomic1:amd64=14.2.0-4ubuntu2~24.04.1`
- `libcc1-0:amd64=14.2.0-4ubuntu2~24.04.1`
- `libgcc-s1:amd64=14.2.0-4ubuntu2~24.04.1`
- `libgomp1:amd64=14.2.0-4ubuntu2~24.04.1`
- `libhwasan0:amd64=14.2.0-4ubuntu2~24.04.1`
- `libitm1:amd64=14.2.0-4ubuntu2~24.04.1`
- `liblsan0:amd64=14.2.0-4ubuntu2~24.04.1`
- `libquadmath0:amd64=14.2.0-4ubuntu2~24.04.1`
- `libstdc++6:amd64=14.2.0-4ubuntu2~24.04.1`
- `libtsan2:amd64=14.2.0-4ubuntu2~24.04.1`
- `libubsan1:amd64=14.2.0-4ubuntu2~24.04.1`

Licenses: (parsed from: `/usr/share/doc/gcc-14-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

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

### `dpkg` source package: `gcc-defaults=1.214ubuntu1`

Binary Packages:

- `cpp=4:13.2.0-7ubuntu1`
- `cpp-x86-64-linux-gnu=4:13.2.0-7ubuntu1`
- `g++=4:13.2.0-7ubuntu1`
- `g++-x86-64-linux-gnu=4:13.2.0-7ubuntu1`
- `gcc=4:13.2.0-7ubuntu1`
- `gcc-x86-64-linux-gnu=4:13.2.0-7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/cpp-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/g++-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gcc-x86-64-linux-gnu/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.214ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.214ubuntu1.dsc' gcc-defaults_1.214ubuntu1.dsc 38086 SHA512:92a05fd0a26767c0e74913e73264fb344f18d418b8826dd9e349de60911b3bbae0f4ed7b8e464b48cfc9024360fe55f98a07431914803fe25e4455bc23c89b23
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.214ubuntu1.tar.xz' gcc-defaults_1.214ubuntu1.tar.xz 56660 SHA512:be93edc8ae05a557021f3f6c283af75cd6f08c53fe26f3d09230275c74efeeedd0ef2dd1383b96f3265f81a640afb31bcc56bf6966feed2bc9f278011663e519
```

### `dpkg` source package: `gdbm=1.23-5.1build1`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.23-5.1build1`
- `libgdbm-dev:amd64=1.23-5.1build1`
- `libgdbm6t64:amd64=1.23-5.1build1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.23-5.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-5.1build1.dsc' gdbm_1.23-5.1build1.dsc 2608 SHA512:306270e281aa258ed61084ecceb7e9543edecb2178ab4ed584f95df9fcf22572fe4517d59c1f4a3ed26793ea0c3b289ca24f290431cfd1994bc0a03621d8fb99
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz' gdbm_1.23.orig.tar.gz 1115854 SHA512:918080cb0225b221c11eb7339634a95e00c526072395f7a3d46ccf42ef020dea7c4c5bec34aff2c4f16033e1fff6583252b7e978f68b8d7f8736b0e025838e10
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz.asc' gdbm_1.23.orig.tar.gz.asc 181 SHA512:6653751c04584f10aa3325bd1cb5b9f7970a786dd2a99602ea620c11a86a9ba5c342aa52627bd06c03da822e9e1600dc034d9a8f42856a287fd67f6b9f161c71
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-5.1build1.debian.tar.xz' gdbm_1.23-5.1build1.debian.tar.xz 18524 SHA512:93936a3cb86632d3ba4c2c4275e045749d04cd0ef3caf88fce52e2de46ac419ef75478f7ccb1b8d89de0f8c6835fe5231aa85884e2ba095950f3831e26947855
```

### `dpkg` source package: `gdk-pixbuf=2.42.10+dfsg-3ubuntu3.3`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.42.10+dfsg-3ubuntu3.3`
- `libgdk-pixbuf-2.0-0:amd64=2.42.10+dfsg-3ubuntu3.3`
- `libgdk-pixbuf-2.0-dev:amd64=2.42.10+dfsg-3ubuntu3.3`
- `libgdk-pixbuf2.0-bin=2.42.10+dfsg-3ubuntu3.3`
- `libgdk-pixbuf2.0-common=2.42.10+dfsg-3ubuntu3.3`

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
$ apt-get source -qq --print-uris gdk-pixbuf=2.42.10+dfsg-3ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg.orig.tar.xz' gdk-pixbuf_2.42.10+dfsg.orig.tar.xz 6439240 SHA512:34f8d7d44d12308c57bd9622efdb7344bad5a89bad7043b40d4d1cab4112ff505ebb9df98d788068ddd2e44cee193e7bcb4f1d56f0432cc859075425652a06fc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg-3ubuntu3.3.debian.tar.xz' gdk-pixbuf_2.42.10+dfsg-3ubuntu3.3.debian.tar.xz 29808 SHA512:7a9fe1add1883bbdd637e000d5f683c2b0e3a8b38bc960f579c4379ae277c5e49ab4e1a9aa146c3a65f301a7139be6c20cd48c214fd1c3bb0e86433f7bd37865
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.42.10%2bdfsg-3ubuntu3.3.dsc' gdk-pixbuf_2.42.10+dfsg-3ubuntu3.3.dsc 3187 SHA512:5f5b1134c78e16efc1171759c6bd7750c4113534517da3f0ed2158cf7066596994794f701a95f4f7718e3082c543dd7c20429bd111a9c3a348491d1d00df91b4
```

### `dpkg` source package: `git=1:2.43.0-1ubuntu7.3`

Binary Packages:

- `git=1:2.43.0-1ubuntu7.3`
- `git-man=1:2.43.0-1ubuntu7.3`

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
$ apt-get source -qq --print-uris git=1:2.43.0-1ubuntu7.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.43.0.orig.tar.xz' git_2.43.0.orig.tar.xz 7382996 SHA256:5446603e73d911781d259e565750dcd277a42836c8e392cac91cf137aa9b76ec
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.43.0-1ubuntu7.3.debian.tar.xz' git_2.43.0-1ubuntu7.3.debian.tar.xz 795448 SHA256:5bb363b59fda93816ec9ef34476e720b4f66f4b9947866bfaf414964be7dd4a7
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.43.0-1ubuntu7.3.dsc' git_2.43.0-1ubuntu7.3.dsc 2972 SHA256:1e3e5b83bf41318cc957a9e471ed82f8ca4d6befe91b008699959072c97430f4
```

### `dpkg` source package: `glib2.0=2.80.0-6ubuntu3.8`

Binary Packages:

- `gir1.2-glib-2.0:amd64=2.80.0-6ubuntu3.8`
- `gir1.2-glib-2.0-dev:amd64=2.80.0-6ubuntu3.8`
- `libgirepository-2.0-0:amd64=2.80.0-6ubuntu3.8`
- `libglib2.0-0t64:amd64=2.80.0-6ubuntu3.8`
- `libglib2.0-bin=2.80.0-6ubuntu3.8`
- `libglib2.0-data=2.80.0-6ubuntu3.8`
- `libglib2.0-dev:amd64=2.80.0-6ubuntu3.8`
- `libglib2.0-dev-bin=2.80.0-6ubuntu3.8`

Licenses: (parsed from: `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/gir1.2-glib-2.0-dev/copyright`, `/usr/share/doc/libgirepository-2.0-0/copyright`, `/usr/share/doc/libglib2.0-0t64/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

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

### `dpkg` source package: `glibc=2.39-0ubuntu8.8`

Binary Packages:

- `libc-bin=2.39-0ubuntu8.8`
- `libc-dev-bin=2.39-0ubuntu8.8`
- `libc6:amd64=2.39-0ubuntu8.8`
- `libc6-dev:amd64=2.39-0ubuntu8.8`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GFDL-1.3`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.39-0ubuntu8.8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39.orig.tar.xz' glibc_2.39.orig.tar.xz 18520988 SHA512:818f58172a52815b4338ea9f2a69ecaa3335492b9f8f64cbf8afb24c0d737982341968ecd79631cae3d3074ab0ae4bc6056fc4ba3ffe790849dc374835cd57e2
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39.orig.tar.xz.asc' glibc_2.39.orig.tar.xz.asc 833 SHA512:5c054af523bbf5c2453363c023eadd1a75b6a5ff55c739011030115d3b117dbfc7d80cc74fbf157ea74a8d24aa14ff560c675374f875ec5c1ed3030e26a5ee07
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39-0ubuntu8.8.debian.tar.xz' glibc_2.39-0ubuntu8.8.debian.tar.xz 483068 SHA512:9b63c58bba9d66e86476fa40904618a4ebaef1f3468adc048e3f49ef11ea69c12872ad62cfb6a8d3e0129dd1bf4c3354d00fddacd174c42cd30e747c5b0cb3e6
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.39-0ubuntu8.8.dsc' glibc_2.39-0ubuntu8.8.dsc 9387 SHA512:db16cb164374e08b21f98342a70ec5a69817078037207373f2b1d18cd0a758f666dc3b4fde30b76f1c3c604dab94c4457b77575725fc941ac448c016bb6c009b
```

### `dpkg` source package: `gmp=2:6.3.0+dfsg-2ubuntu6.1`

Binary Packages:

- `libgmp-dev:amd64=2:6.3.0+dfsg-2ubuntu6.1`
- `libgmp10:amd64=2:6.3.0+dfsg-2ubuntu6.1`
- `libgmpxx4ldbl:amd64=2:6.3.0+dfsg-2ubuntu6.1`

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

### `dpkg` source package: `gobject-introspection=1.80.1-1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.80.1-1`
- `gir1.2-freedesktop-dev:amd64=1.80.1-1`
- `gir1.2-girepository-2.0:amd64=1.80.1-1`
- `gir1.2-girepository-2.0-dev:amd64=1.80.1-1`
- `gobject-introspection:amd64=1.80.1-1`
- `gobject-introspection-bin=1.80.1-1`
- `libgirepository-1.0-1:amd64=1.80.1-1`
- `libgirepository-1.0-dev:amd64=1.80.1-1`
- `libgirepository1.0-dev=1.80.1-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-freedesktop-dev/copyright`, `/usr/share/doc/gir1.2-girepository-2.0/copyright`, `/usr/share/doc/gir1.2-girepository-2.0-dev/copyright`, `/usr/share/doc/gobject-introspection/copyright`, `/usr/share/doc/gobject-introspection-bin/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`, `/usr/share/doc/libgirepository-1.0-dev/copyright`, `/usr/share/doc/libgirepository1.0-dev/copyright`)

- `AFL-2.0`
- `Apache-2.0`
- `Apache-2.0 with LLVM exception`
- `BSD-2-clause`
- `CC-BY-SA-3.0`
- `CC0-1.0`
- `Expat`
- `FSFAP`
- `FSFULLR`
- `GPL with Autoconf exception`
- `GPL-2`
- `GPL-2+`
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
$ apt-get source -qq --print-uris gobject-introspection=1.80.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.80.1-1.dsc' gobject-introspection_1.80.1-1.dsc 4044 SHA512:0f39713385d11bbe4cd68d722f9a206688e27960b7e69465b29f0c7a73394e8f25c912033101736db5d8cc2b40801ae574ed6bc461eb011b246ebf8031bcf7dd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.80.1.orig-glib.tar.xz' gobject-introspection_1.80.1.orig-glib.tar.xz 5475296 SHA512:6968ac28451a72f2d8d50ce31a887be2c26ae2bc5ddba1a4aadaafb955c1bb11576017084006d78a6e6f09e88696534b94eb50c61b0b0509695a547de34c7620
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.80.1.orig.tar.xz' gobject-introspection_1.80.1.orig.tar.xz 1040228 SHA512:f45c2c1b105086488d974c6134db9910746df8edb187772f2ecd249656a1047c8ac88ba51f5bf7393c3d99c3ace143ecd09be256c2f4d0ceee110c9ad51a839a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.80.1-1.debian.tar.xz' gobject-introspection_1.80.1-1.debian.tar.xz 56948 SHA512:817d7a9bdd8aff7625fcb11120e8e7d18b71c0563dc89ceef104ae482cf05457949f5bec9ac62cfb49f984d66eaf0d75e6f52c5786e4ef6ad8dc762e5b1f7813
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

### `dpkg` source package: `gzip=1.12-1ubuntu3.2`

Binary Packages:

- `gzip=1.12-1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.12-1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12.orig.tar.xz' gzip_1.12.orig.tar.xz 825548 SHA512:116326fe991828227de150336a0c016f4fe932dfbb728a16b4a84965256d9929574a4f5cfaf3cf6bb4154972ef0d110f26ab472c93e62ec9a5fd7a5d65abea24
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12-1ubuntu3.2.debian.tar.xz' gzip_1.12-1ubuntu3.2.debian.tar.xz 22820 SHA512:5a5281803f6712bbd4271c73420ed3d0447b591313505783bf98b6cf4ca6e13182fc95c071a62dbaea70f0d73d49aae4fa3460c765797afbab2ea80cff2b0ec4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12-1ubuntu3.2.dsc' gzip_1.12-1ubuntu3.2.dsc 2042 SHA512:ae15e5cfb183c8f9dd68387dd31e05f68da556e1072ff2c18dd260e79e83d5ed5766e3197707a7ff34f1d7f60aae018dc3fbbc1cc3c3355346aa63faca6a8151
```

### `dpkg` source package: `harfbuzz=8.3.0-2build2`

Binary Packages:

- `libharfbuzz0b:amd64=8.3.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

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

### `dpkg` source package: `hicolor-icon-theme=0.17-2`

Binary Packages:

- `hicolor-icon-theme=0.17-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.dsc' hicolor-icon-theme_0.17-2.dsc 2053 SHA512:5b8b3088f8d9469076d5d2a3448e1115a910958a4ba4b3bbeae287ae3e91fa3a26b87f544a1f92925230e33f6f20e96df51bc5ec01b2735e07bb3f9be2e06c3c
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA512:eca8655930aa7e234f42630041c0053fde067b970fad1f81c55fcd4c5046c03edfdf2ede72a3e78fba2908e7da53e9463d3c5ae12ab9f5ef261e29a49f9c7a8d
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.debian.tar.xz' hicolor-icon-theme_0.17-2.debian.tar.xz 3536 SHA512:74b8de58f18f861f0f724419514b787495cf67b39abcfdbdc7be6923e44112b86710c015ea5e4c83301d201b503a1014fca335c6dadc522d7f7edca80f638489
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

### `dpkg` source package: `icu=74.2-1ubuntu3.1`

Binary Packages:

- `icu-devtools=74.2-1ubuntu3.1`
- `libicu-dev:amd64=74.2-1ubuntu3.1`
- `libicu74:amd64=74.2-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/icu-devtools/copyright`, `/usr/share/doc/libicu-dev/copyright`, `/usr/share/doc/libicu74/copyright`)

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

### `dpkg` source package: `imagemagick=8:6.9.12.98+dfsg1-5.2build2`

Binary Packages:

- `imagemagick=8:6.9.12.98+dfsg1-5.2build2`
- `imagemagick-6-common=8:6.9.12.98+dfsg1-5.2build2`
- `imagemagick-6.q16=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-6-arch-config:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-6-headers=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-6.q16-7-extra:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-6.q16-7t64:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-6.q16-dev:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickcore-dev=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickwand-6-headers=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickwand-6.q16-7t64:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickwand-6.q16-dev:amd64=8:6.9.12.98+dfsg1-5.2build2`
- `libmagickwand-dev=8:6.9.12.98+dfsg1-5.2build2`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-7-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-7t64/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-7t64/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
$ apt-get source -qq --print-uris imagemagick=8:6.9.12.98+dfsg1-5.2build2
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.12.98%2bdfsg1-5.2build2.dsc' imagemagick_6.9.12.98+dfsg1-5.2build2.dsc 5232 SHA512:b47adcbaad827bac1bcdd5211691b85648180fcf4a278c90d520e9d7b06ae99c095605a76fa76bd76855c99b1c2ded5a80306f549395f1c58833684be1cdac84
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.12.98%2bdfsg1.orig.tar.xz' imagemagick_6.9.12.98+dfsg1.orig.tar.xz 9606104 SHA512:9e7c96f4f84e3ea6a75e9fc3db06509fe091057f7c0c6f69c68464ce8337f39f81654897f4cf22bdbf326a3c886fc9951141301485699682396e20efdfff344e
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_6.9.12.98%2bdfsg1-5.2build2.debian.tar.xz' imagemagick_6.9.12.98+dfsg1-5.2build2.debian.tar.xz 260836 SHA512:e66e5db8b06154d7bc0ab8c8796157d469f90bf09d72203f1c028bceac9ae9bc564f65a0ae3ec5389d8f6133090b6e631330e274944cdd2296d6ff993bda4a28
```

### `dpkg` source package: `imath=3.1.9-3.1ubuntu2`

Binary Packages:

- `libimath-3-1-29t64:amd64=3.1.9-3.1ubuntu2`
- `libimath-dev:amd64=3.1.9-3.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libimath-3-1-29t64/copyright`, `/usr/share/doc/libimath-dev/copyright`)

- `imath`

Source:

```console
$ apt-get source -qq --print-uris imath=3.1.9-3.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.9-3.1ubuntu2.dsc' imath_3.1.9-3.1ubuntu2.dsc 2760 SHA512:ed8a9bee88c349d5e78bf3dee09ad5a000175d9571aee61ae972ea3fdd70caadc9168d755000a5cea5a04c2e9b7aa54d2f91404e1ffbbf0b65389b165fc05520
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.9.orig.tar.gz' imath_3.1.9.orig.tar.gz 598497 SHA512:ad96b2ac306fc13c01e8ea3256f885499c3f545be327feaba0f5e093b70b544bcca6f8b353fa7e35107aae515c19caced44331a95d0414f367ead4691ec73564
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.9.orig.tar.gz.asc' imath_3.1.9.orig.tar.gz.asc 287 SHA512:9b3978e44b531429aba42b9cc4969a470898d9d74652e3809edb0273ba9b127c471aec6570b5d352be738f59810091c0df2c70d39c16d2c32833d173b270f72c
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.9-3.1ubuntu2.debian.tar.xz' imath_3.1.9-3.1ubuntu2.debian.tar.xz 10220 SHA512:53cacf3e1c998794226d94bd06ff3e2949a383577ced09fc76e9e2fa13558f59226198161c81a7fcc82be6385775d16adf92a899729981764aa9e4f650364515
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

### `dpkg` source package: `isl=0.26-3build1.1`

Binary Packages:

- `libisl23:amd64=0.26-3build1.1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.26-3build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.26.orig.tar.xz' isl_0.26.orig.tar.xz 2035560 SHA256:a0b5cb06d24f9fa9e77b55fabbe9a3c94a336190345c2555f9915bb38e976504
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.26-3build1.1.debian.tar.xz' isl_0.26-3build1.1.debian.tar.xz 24948 SHA256:e05d478dbbdd772cc4cffba3428ac70788cab1fddaaba3e275917a92ef1f9e3a
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.26-3build1.1.dsc' isl_0.26-3build1.1.dsc 1918 SHA256:8a552d2e58565e2c7186158d5c1c5a9e0417a9dde017bc37a23f06757c09d6a2
```

### `dpkg` source package: `jansson=2.14-2build2`

Binary Packages:

- `libjansson4:amd64=2.14-2build2`

Licenses: (parsed from: `/usr/share/doc/libjansson4/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jansson=2.14-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build2.dsc' jansson_2.14-2build2.dsc 2120 SHA512:46ec9f5477e738ee6ed2c10b7406dd0edcfe0148a394af3ca3ee214b14c9de95e691fefa34c3aa9770c1e23ec77d26b1f5149cc8faa4201f15680ba9f3a6d754
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14.orig.tar.gz' jansson_2.14.orig.tar.gz 141500 SHA512:c56e2e8d18819e3f5caa46edd4819694a240aeb3524a6f9d9f4465edf65b183d1870bd5d256cdd378d411a52979121369b951406fdf7bf323db5c30001fa1bc4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build2.debian.tar.xz' jansson_2.14-2build2.debian.tar.xz 5580 SHA512:1eec1f274a77512033b857a64bb26f8bc2fa98212c33c17dcfedbbd7f82711d32a803ad4ea4d8d158ef9949be2a69f3d5d4126fc4ac3b63c9200c361bba0f939
```

### `dpkg` source package: `jbigkit=2.1-6.1ubuntu2`

Binary Packages:

- `libjbig-dev:amd64=2.1-6.1ubuntu2`
- `libjbig0:amd64=2.1-6.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

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

### `dpkg` source package: `krb5=1.20.1-6ubuntu2.8`

Binary Packages:

- `krb5-multidev:amd64=1.20.1-6ubuntu2.8`
- `libgssapi-krb5-2:amd64=1.20.1-6ubuntu2.8`
- `libgssrpc4t64:amd64=1.20.1-6ubuntu2.8`
- `libk5crypto3:amd64=1.20.1-6ubuntu2.8`
- `libkadm5clnt-mit12:amd64=1.20.1-6ubuntu2.8`
- `libkadm5srv-mit12:amd64=1.20.1-6ubuntu2.8`
- `libkdb5-10t64:amd64=1.20.1-6ubuntu2.8`
- `libkrb5-3:amd64=1.20.1-6ubuntu2.8`
- `libkrb5-dev:amd64=1.20.1-6ubuntu2.8`
- `libkrb5support0:amd64=1.20.1-6ubuntu2.8`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4t64/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10t64/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.20.1-6ubuntu2.8
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20.1.orig.tar.gz' krb5_1.20.1.orig.tar.gz 8661660 SHA512:6f57479f13f107cd84f30de5c758eb6b9fc59171329c13e5da6073b806755f8d163eb7bd84767ea861ad6458ea0c9eeb00ee044d3bcad01ef136e9888564b6a2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20.1-6ubuntu2.8.debian.tar.xz' krb5_1.20.1-6ubuntu2.8.debian.tar.xz 130012 SHA512:8eb9f9c79acca668a11b7b9747cc17bbaeaf3e899d86b5a381598ccf87ffb6317dbd6f26c8ddaea998c000ee2d41557bd42a936e5e5d97a0c7fe5dd39b8b5727
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20.1-6ubuntu2.8.dsc' krb5_1.20.1-6ubuntu2.8.dsc 3256 SHA512:052846c5a5402378d2a512bb30ec4e9d21508821054d6f4456d3b9b15e736a1c0b7801d5e417993d7c53ba745f5aa1fd0a9075d7071bc8027998bf9db5524471
```

### `dpkg` source package: `lcms2=2.14-2ubuntu0.1`

Binary Packages:

- `liblcms2-2:amd64=2.14-2ubuntu0.1`
- `liblcms2-dev:amd64=2.14-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

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

- `liblerc-dev:amd64=4.0.0+ds-4ubuntu2`
- `liblerc4:amd64=4.0.0+ds-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-4ubuntu2.dsc' lerc_4.0.0+ds-4ubuntu2.dsc 2733 SHA512:b9fcf936ebc688ac277f11bc4a1233460d4745269c69d26a71867fc92c06ad7540a81c9275c235b66a9623e7360b03db6a9e1ea7aa668aaa084cae22b174edfc
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA512:d5539360fa92f40319466fea73a66d0d03aedff886fb75985bfcaeeb77ef516b9fa24b8d83da09c114bf6090bbd68e64d9ac2649a19315895134fa86023478e1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-4ubuntu2.debian.tar.xz' lerc_4.0.0+ds-4ubuntu2.debian.tar.xz 7344 SHA512:61f8c1a0b20e3c3016a7787307325e0a56549ff13f88af815bbdfa5e24285e0a090c05ae51b9c9b068b917a64e808cd329c7204e81273169489ba0727e59d1c7
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

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

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

### `dpkg` source package: `libcbor=0.10.2-1.2ubuntu2`

Binary Packages:

- `libcbor0.10:amd64=0.10.2-1.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcbor0.10/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.10.2-1.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-1.2ubuntu2.dsc' libcbor_0.10.2-1.2ubuntu2.dsc 2283 SHA512:69f6e793bc9fc1a23f298a3738fc2d810b8aa243c2426347be18d9bebe7a6b0c7b82177545ec0bb4cc3deb5932228e72576c03026da0d5fe95f34b034ebb0bc1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2.orig.tar.gz' libcbor_0.10.2.orig.tar.gz 289450 SHA512:23c6177443778d4b4833ec7ed0d0e639a0d4863372e3a38d772fdce2673eae6d5cb2a31a2a021d1a699082ea53494977c907fd0e94149b97cb23a4b6d039228a
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-1.2ubuntu2.debian.tar.xz' libcbor_0.10.2-1.2ubuntu2.debian.tar.xz 6560 SHA512:d42dc2b89e3af8c1b65c3d227f1c98a2025f620645052fba062c9bf415830970ed4b3ed47878d5de316661201dafbd69c6c30bb3b40e242dc0b6738df8e6323b
```

### `dpkg` source package: `libdatrie=0.2.13-3build1`

Binary Packages:

- `libdatrie1:amd64=0.2.13-3build1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.13-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13-3build1.dsc' libdatrie_0.2.13-3build1.dsc 2368 SHA512:37dc9a866dc340d8291bcb07cdb8a20f39ba8ee0dca0c8c37cbbfb9403afe0a8229b18f1d019a54d19855977ac499df9067e7ecdf0a297cedc4d239e67353272
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13.orig.tar.xz' libdatrie_0.2.13.orig.tar.xz 314072 SHA512:db3c879d825ead5871c12ef3a06bb093cb1708a6e7e20775eaf82356af9dd6ad54c6b5cabbe1773f2494d3dfa2426528fdd49441038b6294b70ccb1a3d90099a
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13-3build1.debian.tar.xz' libdatrie_0.2.13-3build1.debian.tar.xz 9776 SHA512:a44919cfcb079af400a09c4f9468cf16edc3fc05fe46bf57b7a22abd80130da91b5ce3b6d8c8cacfa8c0f48b751220b0b74bc624be433db01b3ab1aac9bc6524
```

### `dpkg` source package: `libdeflate=1.19-1build1.1`

Binary Packages:

- `libdeflate-dev:amd64=1.19-1build1.1`
- `libdeflate0:amd64=1.19-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.19-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19.orig.tar.gz' libdeflate_1.19.orig.tar.gz 187684 SHA256:27bf62d71cd64728ff43a9feb92f2ac2f2bf748986d856133cc1e51992428c25
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19-1build1.1.debian.tar.xz' libdeflate_1.19-1build1.1.debian.tar.xz 5004 SHA256:58f866e842d3d8cf6735e6a2cf7be887c712f8c07f8352a94e2fc4fed9d008bf
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.19-1build1.1.dsc' libdeflate_1.19-1build1.1.dsc 2306 SHA256:3a2552cdace2cae2b98b81b64d225f4247bc2ed4409dc0ff9eff1db9843d79d0
```

### `dpkg` source package: `libedit=3.1-20230828-1build1`

Binary Packages:

- `libedit2:amd64=3.1-20230828-1build1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20230828-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20230828-1build1.dsc' libedit_3.1-20230828-1build1.dsc 2399 SHA512:4cd638bfcb6204c6c3e141fb25b5fe8e06ec328a24dd32414d96a061c3f314c25bf498dfa1ed74e8626eed42fd96fe34c72adcf18ceaaa35f6e9bd948dae6a47
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20230828.orig.tar.gz' libedit_3.1-20230828.orig.tar.gz 534072 SHA512:c7232376ef1bc128ed79f950a5f1f207f874011218682d7e6186f76443927df5483b46c4daa8cf02e327079259aee1a56e2b791aa682491eb802d90ff8940cca
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20230828-1build1.debian.tar.xz' libedit_3.1-20230828-1build1.debian.tar.xz 16748 SHA512:68b5c9a1ec13f38993a2a04976ec8471ad7ca8ece5dc17ae7501c143dbb29dca922594f82bff6240136abf7948fbf5d3791fc9cfa7ebb60c225fd86c9dfe04c7
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-2.dsc' liberror-perl_0.17029-2.dsc 2085 SHA512:9b469f24ebdd65c5aacfa41b7099cb1fec5214d98e6e0d793d55a56bc0f0edae8f2ad3c0e09f44558249ff5456f05704c213d7e84661e0e4d774e644d3fd405a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029.orig.tar.gz' liberror-perl_0.17029.orig.tar.gz 33304 SHA512:266ba1feff897c1d162e69a83e595cb40da9a6e1d8b10cc5531626eff392c6da94be03ba722c74827fc2ea0d9d1c1e62e824d9021e098b700db65dd0b3acbd0a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-2.debian.tar.xz' liberror-perl_0.17029-2.debian.tar.xz 4608 SHA512:beb596444319797a60470e98c14e8e736fd5be9c307ba5482fe96bf77c1382603b1f2a58d68406ecbf2bc5469cab4654645f5469cf059336fef24605b235cb61
```

### `dpkg` source package: `libevent=2.1.12-stable-9ubuntu2`

Binary Packages:

- `libevent-2.1-7t64:amd64=2.1.12-stable-9ubuntu2`
- `libevent-core-2.1-7t64:amd64=2.1.12-stable-9ubuntu2`
- `libevent-dev=2.1.12-stable-9ubuntu2`
- `libevent-extra-2.1-7t64:amd64=2.1.12-stable-9ubuntu2`
- `libevent-openssl-2.1-7t64:amd64=2.1.12-stable-9ubuntu2`
- `libevent-pthreads-2.1-7t64:amd64=2.1.12-stable-9ubuntu2`

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
$ apt-get source -qq --print-uris libevent=2.1.12-stable-9ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-9ubuntu2.dsc' libevent_2.1.12-stable-9ubuntu2.dsc 2551 SHA512:8a52a85db1ad2dab17ad21cb4f90776fbc5ba554bf1936132e70d44c4ddbd92e2b2b76fdae5651ef552d56f66c01c2839783499e09cb1cd8a80d731f809ef695
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable.orig.tar.gz' libevent_2.1.12-stable.orig.tar.gz 1100847 SHA512:88d8944cd75cbe78bc4e56a6741ca67c017a3686d5349100f1c74f8a68ac0b6410ce64dff160be4a4ba0696ee29540dfed59aaf3c9a02f0c164b00307fcfe84f
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-9ubuntu2.debian.tar.xz' libevent_2.1.12-stable-9ubuntu2.debian.tar.xz 18092 SHA512:6e97ccc6586c201ae5c6c785c371a914331a2c65d41b10d8a09899867d5c74f9407abb37f05b173c8b2e475e50a34560c6526ebdbd957bbab0f30741c9640165
```

### `dpkg` source package: `libexif=0.6.24-1ubuntu0.24.04.1`

Binary Packages:

- `libexif-dev:amd64=0.6.24-1ubuntu0.24.04.1`
- `libexif12:amd64=0.6.24-1ubuntu0.24.04.1`

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
$ apt-get source -qq --print-uris libexif=0.6.24-1ubuntu0.24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.24.orig.tar.gz' libexif_0.6.24.orig.tar.gz 1140079 SHA512:0b15a157c1030490bf1c4239487dffda90daad467ac6281db2a1b34a8419fca32b4b5265452e75cbcd2c9dc9a829643231cd3749e88251ed1b596756d1c5a9f4
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.24-1ubuntu0.24.04.1.debian.tar.xz' libexif_0.6.24-1ubuntu0.24.04.1.debian.tar.xz 13340 SHA512:711985bbb457ab000ee6043074a9f773ed40974a10ab8d79875ba42a53896b1c56e52041f49ff18f9ed46156b241f07088b7a71062683e98aa464a384cae92fe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.24-1ubuntu0.24.04.1.dsc' libexif_0.6.24-1ubuntu0.24.04.1.dsc 2218 SHA512:a54a2860ca1b24d98e88f5e07c245c8fc93887069848d6f0b1c7c26cd6008ac1a98e6cf2ce2c783132f4c131e965dd79f767f0f84ca75fa5668c6a98418f9193
```

### `dpkg` source package: `libffi=3.4.6-1build1`

Binary Packages:

- `libffi-dev:amd64=3.4.6-1build1`
- `libffi8:amd64=3.4.6-1build1`

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
$ apt-get source -qq --print-uris libffi=3.4.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6-1build1.dsc' libffi_3.4.6-1build1.dsc 2055 SHA512:21cc7b6880fac7c143e88a81c47e5144d38bea3fd66f71182d1408f56bfc6801d39481638e04c02bb29dfc2429e3d968b65591cf95d20cfeca6769684d3c86ac
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6.orig.tar.gz' libffi_3.4.6.orig.tar.gz 598175 SHA512:cbacde8911aa6a9fae5c0a8d5959221a25bf8a3310c44a7f4ef755e6676f5226b9f2d1c6cfb36c117ebed10d379aa24b4b7516c3e0dca3bf73f9439057463eb8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.6-1build1.debian.tar.xz' libffi_3.4.6-1build1.debian.tar.xz 10736 SHA512:432e6e7ddb9aecca508f982293112b2bf86f5da2d6d646437b10b2857dadaf2c8aecb1646d2e592c259df26a5240f69cc1411155cbad8c3d942748d6856e587c
```

### `dpkg` source package: `libfido2=1.14.0-1build3`

Binary Packages:

- `libfido2-1:amd64=1.14.0-1build3`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.14.0-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.14.0-1build3.dsc' libfido2_1.14.0-1build3.dsc 2577 SHA512:1f0c68213816f6d8584c56db3dd02af78300a252a1582eb4c632716d3612876bcec28ed1fd06718b9fc49f47d34afe94dd5517800b99f53ece6e426da1fbe9cd
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.14.0.orig.tar.gz' libfido2_1.14.0.orig.tar.gz 660289 SHA512:83454b0db0cc8546f377d0dd59f95785fe6b73cf28e499a6182a6ece4b7bce17c3e750155262adf71f339ec0b3b6c3d3d64a07b01c8428b4b91de97ae768f0e6
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.14.0.orig.tar.gz.asc' libfido2_1.14.0.orig.tar.gz.asc 228 SHA512:0f0116e1eb13d1fb18bddba6817e8f279a316fe0d74631fb350ba4c71a09cfdeffc12f4f5664e49575bfb1a334794e9f82c3151a02ab6d3fd27c21d9f5f60c20
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.14.0-1build3.debian.tar.xz' libfido2_1.14.0-1build3.debian.tar.xz 53020 SHA512:b72646b327d602059f6dd2c3e8ac57118ce75e4342b94665e1fd3771b2d3c132831ae51b67d2512a383f30d9d51903e8a423003825e3f75e8470b8f5ab9c63d6
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

### `dpkg` source package: `libheif=1.17.6-1ubuntu4.6`

Binary Packages:

- `libheif-plugin-aomdec:amd64=1.17.6-1ubuntu4.6`
- `libheif1:amd64=1.17.6-1ubuntu4.6`

Licenses: (parsed from: `/usr/share/doc/libheif-plugin-aomdec/copyright`, `/usr/share/doc/libheif1/copyright`)

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


### `dpkg` source package: `libice=2:1.0.10-1build3`

Binary Packages:

- `libice-dev:amd64=2:1.0.10-1build3`
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
- `libjpeg-turbo8-dev:amd64=2.1.5-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

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

- `libjpeg-dev:amd64=8c-2ubuntu11`
- `libjpeg8:amd64=8c-2ubuntu11`
- `libjpeg8-dev:amd64=8c-2ubuntu11`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

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

### `dpkg` source package: `liblqr=0.4.2-2.1build2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.1build2`
- `liblqr-1-0-dev:amd64=0.4.2-2.1build2`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.1build2.dsc' liblqr_0.4.2-2.1build2.dsc 2096 SHA512:30b38f252c27f4d20ef46e5c923eb0da2ba7e32fdb4277181980c6e0f82de4d5624cfd51339a3a16883357b1f6db4f6b8cf827be09f14c882752ec866ed5ca08
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA512:acfa5868c41ea145092711e84d6c9eb62cb725b3d7531917b0d91b7d4af2a9912b18a96edc2594a826f09dabe0a0a82936ceea7d1f31301a23d558b1450d2547
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.1build2.debian.tar.xz' liblqr_0.4.2-2.1build2.debian.tar.xz 5448 SHA512:ff140c20c1683b3fc3c4a91682d72214a39ce60b4a3ecaf9bbfdf6229b79a48e2d38e26009f2243dafc953bad3c54ef8520de2dad51b762ba0d019691a678ce2
```

### `dpkg` source package: `libmaxminddb=1.9.1-1build1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.9.1-1build1`
- `libmaxminddb0:amd64=1.9.1-1build1`

Licenses: (parsed from: `/usr/share/doc/libmaxminddb-dev/copyright`, `/usr/share/doc/libmaxminddb0/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `CC-BY-SA-3.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libmaxminddb=1.9.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.9.1-1build1.dsc' libmaxminddb_1.9.1-1build1.dsc 2454 SHA512:1a91edbd7ca9637e4b3acd1f13322934f079be91c727cc4f540adb1d7104df708f37b428b5f988e4dd05b475b94f78df12b565f0ccf8be958fe49a4819739462
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.9.1.orig.tar.gz' libmaxminddb_1.9.1.orig.tar.gz 243507 SHA512:bd3d0f65a80df52da39be77457dd68fc1bc64f2cf37c3ec0f24af97e6ff00fd0423969a9016cc7bd97dbb04dbdf3bd56597c88039b9d98526032ab845c070c2e
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.9.1-1build1.debian.tar.xz' libmaxminddb_1.9.1-1build1.debian.tar.xz 12604 SHA512:906cd6a42c21ed640527d8234de1264285c0e5c934b059b43d170059fba08c6846a39f0c53af7dd71105f96b503d0934626a9025e0aaf921263a4a9e6cb5c052
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

### `dpkg` source package: `libpng1.6=1.6.43-5ubuntu0.6`

Binary Packages:

- `libpng-dev:amd64=1.6.43-5ubuntu0.6`
- `libpng16-16t64:amd64=1.6.43-5ubuntu0.6`

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

### `dpkg` source package: `libpthread-stubs=0.4-1build3`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.4-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.4-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1build3.dsc' libpthread-stubs_0.4-1build3.dsc 2034 SHA512:40fdd1e868a59c32e39f3cfad4665d2279e97f2005967bc94e62d5f3b3a02bb1cad1b5e506173ed7e2ac4caeb56827b86cf196e06df16bf57251aea400345b5f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4.orig.tar.gz' libpthread-stubs_0.4.orig.tar.gz 71252 SHA512:5293c847f5d0c47a6956dd85b6630866f717e51e1e9c48fa10f70aa1e8268adc778eaf92504989c5df58c0dcde656f036248993b0ea5f79d4303012bfeff3c72
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.4-1build3.diff.gz' libpthread-stubs_0.4-1build3.diff.gz 2591 SHA512:b5e76d1bf48a277e5422be4b237c7b439e8a5c9cc0d9802053a995df38b9e84c47a77d07fbd673d0a251cdcf1cc00d915c562b9d60809a0d8d9ddaf791d23e75
```

### `dpkg` source package: `libraw=0.21.2-2.1ubuntu0.24.04.2`

Binary Packages:

- `libraw23t64:amd64=0.21.2-2.1ubuntu0.24.04.2`

Licenses: (parsed from: `/usr/share/doc/libraw23t64/copyright`)

- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.21.2-2.1ubuntu0.24.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.2.orig.tar.gz' libraw_0.21.2.orig.tar.gz 565383 SHA512:a8b0ec275cc0055d6eb2069008c3312ae007cd86e481111f68d5d60544afcd76b728f8418bf63a80d35d7d00283536da63e03f5eecb4cc28f4cc8d92070e8b39
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.2-2.1ubuntu0.24.04.2.debian.tar.xz' libraw_0.21.2-2.1ubuntu0.24.04.2.debian.tar.xz 32936 SHA512:810f9d4beb5bee4b9dab86f834694c12ade12afbf97d16e26801522065bb449b9633d3c4a71d66954ad30f9f1ea0d39a1425fb843d825bc32789ae1abffcb445
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.2-2.1ubuntu0.24.04.2.dsc' libraw_0.21.2-2.1ubuntu0.24.04.2.dsc 2359 SHA512:e9b6c66fe0911a85a266a21be43cfe6063af2379776538849cbe551f00702c92f9f59df1a12c779640297f431b56d3975541acd85d21f9b80a6bcb2af70af5f4
```

### `dpkg` source package: `librsvg=2.58.0+dfsg-1build1`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.58.0+dfsg-1build1`
- `librsvg2-2:amd64=2.58.0+dfsg-1build1`
- `librsvg2-common:amd64=2.58.0+dfsg-1build1`
- `librsvg2-dev:amd64=2.58.0+dfsg-1build1`

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
$ apt-get source -qq --print-uris librsvg=2.58.0+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.58.0%2bdfsg-1build1.dsc' librsvg_2.58.0+dfsg-1build1.dsc 3208 SHA512:fcc1491830d429dedff8a131269a86b9f96f9c86cf0120edc2c6d5d884b35e8a6931534628fd8dc3c5cb8ef886fb8b9196afcfbe15df92e4bfba5936dd4a49a6
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.58.0%2bdfsg.orig.tar.xz' librsvg_2.58.0+dfsg.orig.tar.xz 5736316 SHA512:30458b535b88a3c49645aee444dd690b6b70d332f54eb7b0159c26fab816ee7ee9443ee52f6f61a5e93f37cf0ab18351d27deb43b3419bdf8a93162fa964234a
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.58.0%2bdfsg-1build1.debian.tar.xz' librsvg_2.58.0+dfsg-1build1.debian.tar.xz 29508816 SHA512:323561cc3b7df571f2e975e98895637056e4513392f141877b7a5b71e3e10f188de7fd6a73b481a066d9aeb8b4c6875f69bb3984842f0a08529f016fb63b3906
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
- `libselinux1-dev:amd64=3.5-2ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`, `/usr/share/doc/libselinux1-dev/copyright`)

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

- `libsepol-dev:amd64=3.5-2build1`
- `libsepol2:amd64=3.5-2build1`

Licenses: (parsed from: `/usr/share/doc/libsepol-dev/copyright`, `/usr/share/doc/libsepol2/copyright`)

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

- `libsm-dev:amd64=2:1.2.3-1build3`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `libthai=0.1.29-2build1`

Binary Packages:

- `libthai-data=0.1.29-2build1`
- `libthai0:amd64=0.1.29-2build1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.29-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29-2build1.dsc' libthai_0.1.29-2build1.dsc 2451 SHA512:63a4a7a95532beb3aed3d7311b7f341689b89b0ff87e112a02a03448408a14464c4ad3339e16a1fae76fefacb8e72286850494c907d8c49e0c7eb83651d7ab36
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29.orig.tar.xz' libthai_0.1.29.orig.tar.xz 417728 SHA512:0ba1261581a1705a2a2546a3071acb3c63892dbf111f0dad415667165a6b9542a5e4549061c67b11ec53de7c9e70fceb3c04d794fd12a22d991a539dbacebda1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29-2build1.debian.tar.xz' libthai_0.1.29-2build1.debian.tar.xz 12744 SHA512:40ede6bac42730219a2df5db772814ff4185e5464ea33ebde225b8a068bbbb277c5201ba6f0e6f8e57fdf2733925ead1b54a86463073cb79c402fde101774577
```

### `dpkg` source package: `libtool=2.4.7-7build1`

Binary Packages:

- `libltdl-dev:amd64=2.4.7-7build1`
- `libltdl7:amd64=2.4.7-7build1`
- `libtool=2.4.7-7build1`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

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

### `dpkg` source package: `libwebp=1.3.2-0.4build3`

Binary Packages:

- `libsharpyuv-dev:amd64=1.3.2-0.4build3`
- `libsharpyuv0:amd64=1.3.2-0.4build3`
- `libwebp-dev:amd64=1.3.2-0.4build3`
- `libwebp7:amd64=1.3.2-0.4build3`
- `libwebpdecoder3:amd64=1.3.2-0.4build3`
- `libwebpdemux2:amd64=1.3.2-0.4build3`
- `libwebpmux3:amd64=1.3.2-0.4build3`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv-dev/copyright`, `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdecoder3/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.3.2-0.4build3
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2-0.4build3.dsc' libwebp_1.3.2-0.4build3.dsc 2468 SHA512:6ff5c7d8eb701dbf23e729287e65b20c0d1140f2a7b0054d30e1fd51545796f1b4dda83e8e6ca62e44ee96f8ebb42d4a7521931526ecd5ff49d7cfa43e868843
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2.orig.tar.gz' libwebp_1.3.2.orig.tar.gz 4162949 SHA512:2b624d2ecfbff6b4db2719e38f146722638ae262acd96327073a04451dd05fb27ef70c5681187821d251df728a6be7e89209c861c561a13bfb786495a830bc20
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.3.2-0.4build3.debian.tar.xz' libwebp_1.3.2-0.4build3.debian.tar.xz 15816 SHA512:67796f091daf95214880955c3c6a430b6622d525e2db65d52cc4072364a253fb0263e5faa0307cd50e59c62ed3dbfbc3ea234134d3ffac3967fb45da9c9546fd
```

### `dpkg` source package: `libwmf=0.2.13-1.1build3`

Binary Packages:

- `libwmf-0.2-7:amd64=0.2.13-1.1build3`
- `libwmf-dev=0.2.13-1.1build3`
- `libwmflite-0.2-7:amd64=0.2.13-1.1build3`

Licenses: (parsed from: `/usr/share/doc/libwmf-0.2-7/copyright`, `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmflite-0.2-7/copyright`)

- `AGPL-3 with Font exception`
- `GD`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.13-1.1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.13-1.1build3.dsc' libwmf_0.2.13-1.1build3.dsc 2635 SHA512:c14c4480ca692ed9652cb54f75bac5ddbb79dc9a4fc2c3661ee6d52979e1f5d6fe454c5df1a418838383fb1eff3fcf4b151f770d156cbd3fed5a01d557f09bc7
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.13.orig.tar.gz' libwmf_0.2.13.orig.tar.gz 3044235 SHA512:f45a936c9bc98fc1a5f2b0808b497119e4dcd3c132615fdddb7583e5719c7d1d7f85c16ebf313cad453e5b7ae3508bf6b80c4ed2b42322b7dec295d8f4eb86ce
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.13-1.1build3.debian.tar.xz' libwmf_0.2.13-1.1build3.debian.tar.xz 25912 SHA512:0a2a4aeef81c7644eeebaa5ed800c26107472244667814477b153b0597c7fc9c8f2684e6e3a2bc4f3607e84adbcfa09c88116795eb21146b5fa792f0e87372be
```

### `dpkg` source package: `libx11=2:1.8.7-1build1`

Binary Packages:

- `libx11-6:amd64=2:1.8.7-1build1`
- `libx11-data=2:1.8.7-1build1`
- `libx11-dev:amd64=2:1.8.7-1build1`

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

- `libxau-dev:amd64=1:1.0.9-1build6`
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
- `libxcb-render0-dev:amd64=1.15-1ubuntu2`
- `libxcb-shm0:amd64=1.15-1ubuntu2`
- `libxcb-shm0-dev:amd64=1.15-1ubuntu2`
- `libxcb1:amd64=1.15-1ubuntu2`
- `libxcb1-dev:amd64=1.15-1ubuntu2`

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

- `libcrypt-dev:amd64=1:4.4.36-4build1`
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

- `libxdmcp-dev:amd64=1:1.1.3-0ubuntu6`
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

- `libxext-dev:amd64=2:1.3.4-1build2`
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

### `dpkg` source package: `libxml2=2.9.14+dfsg-1.3ubuntu3.8`

Binary Packages:

- `libxml2:amd64=2.9.14+dfsg-1.3ubuntu3.8`
- `libxml2-dev:amd64=2.9.14+dfsg-1.3ubuntu3.8`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.14+dfsg-1.3ubuntu3.8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg.orig.tar.xz' libxml2_2.9.14+dfsg.orig.tar.xz 2351200 SHA512:1eacc9ac2cd8d38b8466659b3b9d84b94eb765c8f869d6cca0da131060bbc35c2b31c6148d59690547871a20cea339eac8fbe953b4fe37cf0900862f3fd9621b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.3ubuntu3.8.debian.tar.xz' libxml2_2.9.14+dfsg-1.3ubuntu3.8.debian.tar.xz 58596 SHA512:622c5a74574cde7bfc49748f8dd1d42a9cdab39e117ddd099293dd1aa981bed1e8156e22d28917d1d01a2746e17991d17bce93c31ddb68d5ac925e93bf539984
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.14%2bdfsg-1.3ubuntu3.8.dsc' libxml2_2.9.14+dfsg-1.3ubuntu3.8.dsc 3079 SHA512:4d6416be5ad25c5901bf7622f0c74aec99a18ea7b7ce2c579eb8d80f17d6b0c9b39d0355b95b349126034456c13c737918776218ceeeed1da28db183f9b807a8
```

### `dpkg` source package: `libxrender=1:0.9.10-1.1build1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1.1build1`
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

- `libxslt1-dev:amd64=1.1.39-0exp1ubuntu0.24.04.3`
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

### `dpkg` source package: `libxt=1:1.2.1-1.2build1`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1.2build1`
- `libxt6t64:amd64=1:1.2.1-1.2build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.2build1.dsc' libxt_1.2.1-1.2build1.dsc 2488 SHA512:ebe5d28a22400920f1ce994c3977affdb7da2033a8a6fe0d8b460b90d9eb37de4053843c9e6cc0addd0e712928870eae79d7bdbed0690577701f6d1bca400265
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA512:73c2fd8a6590ab5ee93cf646e4f41fb71d424961ecbf9bc13c68abdf539c63ab0c59a4d3b22195ba21859523f4cf0e937648424532794a1350a5891061096503
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA512:135e01b8a79beac9530087dee1a5458c359b4f1ae8346e2502f72f4fc24be400477fda90944315c585e3416e80cb74d1a140d5dfec81e854a4996199a8b221dc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.2build1.diff.gz' libxt_1.2.1-1.2build1.diff.gz 45676 SHA512:e16fcaaba4f0574d31b7418b2a364a09eb9cee3008c4022a09ebd606ee2eecdcbb49c8e1562f1479b1eda5bdea977b3777c384848c21c437793a6a76cc007467
```

### `dpkg` source package: `libyaml=0.2.5-1build1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.5-1build1`
- `libyaml-dev:amd64=0.2.5-1build1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-1build1.dsc' libyaml_0.2.5-1build1.dsc 2203 SHA512:872e28e7564a127ef6da7a47c401d2cd7a339d789b2e8fa6c514baad5fa986e96698661649e77fbfcdc31e38c1bea058fb1e004d7b2340854802bc90bfcae3f6
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA512:a0f01e3fc616b65b18a4aa17692ee8ea1a84dc6387d1cf02ac7ef7ab7f46b9744c2aac0a047ff69d6c2da1d2a2d7b355c877da0db57e34d95cd4f37213ab6e7e
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-1build1.debian.tar.xz' libyaml_0.2.5-1build1.debian.tar.xz 5496 SHA512:d1b42bf0a1076d970298ca762a51f57c1ed76a2eac44d5385928709ce5876617f2629dab7841f8e1b6837264098cfc4c9c2aa214466f781b66077fa1979c809a
```

### `dpkg` source package: `libzstd=1.5.5+dfsg2-2build1.1`

Binary Packages:

- `libzstd-dev:amd64=1.5.5+dfsg2-2build1.1`
- `libzstd1:amd64=1.5.5+dfsg2-2build1.1`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

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

### `dpkg` source package: `linux=6.8.0-138.138`

Binary Packages:

- `linux-libc-dev:amd64=6.8.0-138.138`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris linux=6.8.0-138.138
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_6.8.0.orig.tar.gz' linux_6.8.0.orig.tar.gz 230060117 SHA512:296f93b24e1f7d116377ba8ccd0d8a977e82248ef469586e52db496190092572e90bc05704760424d215261fcbf62e7240819dffd0976b0f6407361e1eac380c
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_6.8.0-138.138.diff.gz' linux_6.8.0-138.138.diff.gz 8974445 SHA512:17633904396ecf3c583c5b01bcf485ed2eb864dd0a4550bd9f6d62a73a96c13dde7725dae1425e20b79b5961d7098da200a3d9b0fa7fa95c07406d711162fa4c
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_6.8.0-138.138.dsc' linux_6.8.0-138.138.dsc 9463 SHA512:6dee513958c7e1175c474abbbc3db9200b84d4cafd27336e1de654cbf8d3e100c1b80452a2053e4b13d92f05c5e2c27215fa985607c9bdd466defcb0023568ca
```

### `dpkg` source package: `lto-disabled-list=47`

Binary Packages:

- `lto-disabled-list=47`

Licenses: (parsed from: `/usr/share/doc/lto-disabled-list/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lto-disabled-list=47
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_47.dsc' lto-disabled-list_47.dsc 1435 SHA512:fb23ada0a2c9e1d707f93c8563a653ee4dec5abecca81a71ba2913732b8d5c8af7d533b543b89e2f8dbc059103bb87dab2f2af633c36c985d545f907374bec3e
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_47.tar.xz' lto-disabled-list_47.tar.xz 13464 SHA512:8365c7c06c3b69705d6370bc67a7d71423912cbaaefae1eff8cb6aa78ff76abbf8a15306c3c11f7b7c8e8168f3fc67513e60a6536e7a17eb1bcb1e66aa37a0d5
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

### `dpkg` source package: `lzo2=2.10-2build4`

Binary Packages:

- `liblzo2-2:amd64=2.10-2build4`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.10-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10-2build4.dsc' lzo2_2.10-2build4.dsc 2058 SHA512:0f8b41c3996156109afc6ff36d35347191f57231fceebc16753f842937242748bded54442b2bb20df75263115f7158367e7ecf30848414b1ffdba7b541e9fc38
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10.orig.tar.gz' lzo2_2.10.orig.tar.gz 600622 SHA512:a3dae5e4a6b93b1f5bf7435e8ab114a9be57252e9efc5dd444947d7a2d031b0819f34bcaeb35f60b5629a01b1238d738735a64db8f672be9690d3c80094511a4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.10-2build4.debian.tar.xz' lzo2_2.10-2build4.debian.tar.xz 7120 SHA512:f8705ebdca5a759ca415e6234c31b9eec3a1fd28ef992f7db1e126efd65039858188bc32a989ca4a194b94f27edf8ae96887a1f20ebc7e2f1428169f2887c479
```

### `dpkg` source package: `m4=1.4.19-4build1`

Binary Packages:

- `m4=1.4.19-4build1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.19-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.19-4build1.dsc' m4_1.4.19-4build1.dsc 2114 SHA512:af4b77797c56d650ba50831f6730de1b45c9ee9a22e6875db30145b46c972b94507fc075b1ecfeee75c47616b3aaba5a9247d4c4989e1fe33ad33641613ad87d
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.19.orig.tar.xz' m4_1.4.19.orig.tar.xz 1654908 SHA512:47f595845c89709727bda0b3fc78e3188ef78ec818965b395532e7041cabe9e49677ee4aca3d042930095a7f8df81de3da1026b23b6897be471f6cf13ddd512b
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.19.orig.tar.xz.asc' m4_1.4.19.orig.tar.xz.asc 488 SHA512:d6ac9c6a54c57e9b53fb3e34a60d49df2f46a6e494da0a0c9ae8246b984e68a853b5d8c42677c1a0485c3f36b0bce10a481d3775c0edc1dbdfb27b43545bc31e
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.19-4build1.debian.tar.xz' m4_1.4.19-4build1.debian.tar.xz 17460 SHA512:cd8501c3323749074e702ced7c648506034f69e25442b648876aa46a186b9ff613e969a737437757ad8595b660aa298e677c8ebfd4dc8797a36510acc3d359f9
```

### `dpkg` source package: `make-dfsg=4.3-4.1build2`

Binary Packages:

- `make=4.3-4.1build2`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.3-4.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3-4.1build2.dsc' make-dfsg_4.3-4.1build2.dsc 2151 SHA512:78402aabf7f2d9cf40f9bc2ecb5d0063e005ce8ecd131145863dd4c57c2f78ecdc0d98f8c78861903472b211f37975c6004a05fc88c9bce1c6f405569aca89cb
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3.orig.tar.gz' make-dfsg_4.3.orig.tar.gz 1845906 SHA512:bdc150f9d256145923380d6e7058ab9b2b4e43fcb1d75ab2984fa8f859eab6852a68e4ea5f626633e0bec76fbebf1477378e268e8ffdb5cb2a53b29cbc439bc1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3-4.1build2.diff.gz' make-dfsg_4.3-4.1build2.diff.gz 50933 SHA512:84074f8c50818009fc0beeb1a61bb74d9fba8b277f2911cfb20ba1f5807e72f18d83b69a318b0799bd3568d0756e790c8a27d09d382b8379d79a22ad58db5f9e
```

### `dpkg` source package: `mako=1.3.2-1ubuntu0.1`

Binary Packages:

- `python3-mako=1.3.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/python3-mako/copyright`)

- `BSD-3-clause`
- `Expat`
- `WTFPL`

Source:

```console
$ apt-get source -qq --print-uris mako=1.3.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mako/mako_1.3.2.orig.tar.gz' mako_1.3.2.orig.tar.gz 197955 SHA512:1e394faeaf576c79bde85f2546f5b91bf4b5b7a595c852b3f0e843a9735f5858fb336c83ee91eb1e51f29655490b6051194b0cbe705611443e918eeba0958cac
'http://archive.ubuntu.com/ubuntu/pool/main/m/mako/mako_1.3.2-1ubuntu0.1.debian.tar.xz' mako_1.3.2-1ubuntu0.1.debian.tar.xz 14312 SHA512:b03f0069a19d3ffbed1a5747480d7dc19a3b05c891c73e46eb5eadc2281e0b5cf1af6c282a834064c83fe0445ce214fdd6d7a4e2b64a2afce65ce4097f73b925
'http://archive.ubuntu.com/ubuntu/pool/main/m/mako/mako_1.3.2-1ubuntu0.1.dsc' mako_1.3.2-1ubuntu0.1.dsc 2559 SHA512:20ff7b156eb3521e38f5d794b5bf1011d546da79fd7fd3fa15e7edf8bf62cbf1fd21b25bfc23ff8a20a40728aa34a360fd3cb7156d84044dd98798ef0b8767aa
```

### `dpkg` source package: `markupsafe=2.1.5-1build2`

Binary Packages:

- `python3-markupsafe=2.1.5-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris markupsafe=2.1.5-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/m/markupsafe/markupsafe_2.1.5-1build2.dsc' markupsafe_2.1.5-1build2.dsc 2193 SHA512:65313010aa8b4df3ce9a0fcb4666a4d54b557ce9a3ce570a5ba146546c27ba15578ec47c3e85f3997f61d61549e17fdaea7ced377bd487b4802f11220485b23b
'http://archive.ubuntu.com/ubuntu/pool/main/m/markupsafe/markupsafe_2.1.5.orig.tar.gz' markupsafe_2.1.5.orig.tar.gz 19384 SHA512:3ba5af43d23c266377f5d32b11e1faa7955ea8c67eb1c32886c308527f93e75e387294d0eec7794c0c20aad0c705b27f3d1f86b04202f3b63068d12d4053cc71
'http://archive.ubuntu.com/ubuntu/pool/main/m/markupsafe/markupsafe_2.1.5-1build2.debian.tar.xz' markupsafe_2.1.5-1build2.debian.tar.xz 3812 SHA512:c4997a14ea90fc1eb0c2e56b4d7b9c3f7e61f63d5803cfcbced0d39967d69bc1b80e61730a130b909dab95d1f83bfb164416f3cdec7c22ace066f8ce93ba8f0d
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

### `dpkg` source package: `mercurial=6.7.2-1ubuntu2.2`

Binary Packages:

- `mercurial=6.7.2-1ubuntu2.2`
- `mercurial-common=6.7.2-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=6.7.2-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.7.2.orig.tar.gz' mercurial_6.7.2.orig.tar.gz 8302143 SHA256:1c22070c05dfaac41ff88a39ce2508dde480f0dd05d45d7efab4c5cdc6ddd806
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.7.2.orig.tar.gz.asc' mercurial_6.7.2.orig.tar.gz.asc 659 SHA256:954a0ee6421c46ab815956465c821336e96d7af32c69d138b0f2b9ad6bdaf431
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.7.2-1ubuntu2.2.debian.tar.xz' mercurial_6.7.2-1ubuntu2.2.debian.tar.xz 75080 SHA256:460ca374564f09783763c0348c5ea034d46fbd8509b75b71622450dd9622b779
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.7.2-1ubuntu2.2.dsc' mercurial_6.7.2-1ubuntu2.2.dsc 2929 SHA256:38c2ba115566edbd8aee70dd239bfbac3761518d21ab1db6e25462e7c4939389
```

### `dpkg` source package: `mpclib3=1.3.1-1build1.1`

Binary Packages:

- `libmpc3:amd64=1.3.1-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.3.1-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1.orig.tar.gz' mpclib3_1.3.1.orig.tar.gz 773573 SHA256:ab642492f5cf882b74aa0cb730cd410a81edcdbec895183ce930e706c1c759b8
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-1build1.1.debian.tar.xz' mpclib3_1.3.1-1build1.1.debian.tar.xz 4844 SHA256:1a5294ea4ffb07338252041b22038be6bcc0fce3622a7dcfd7521a4529796090
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-1build1.1.dsc' mpclib3_1.3.1-1build1.1.dsc 1963 SHA256:3025acde5f262fde13b7678cf7d5a3f2216a7d62cad764879a0764654ab91c05
```

### `dpkg` source package: `mpfr4=4.2.1-1build1.1`

Binary Packages:

- `libmpfr6:amd64=4.2.1-1build1.1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.2.1-1build1.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.1.orig.tar.xz' mpfr4_4.2.1.orig.tar.xz 1493608 SHA256:277807353a6726978996945af13e52829e3abd7a9a5b7fb2793894e18f1fcbb2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.1-1build1.1.debian.tar.xz' mpfr4_4.2.1-1build1.1.debian.tar.xz 12760 SHA256:55770c471715c710690129e45c627d77da05547a8f6faee81dd420a9b2b5fded
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.1-1build1.1.dsc' mpfr4_4.2.1-1build1.1.dsc 2045 SHA256:9adabba2fbe45f0705b630b9b225752d945718ed4742b1c5b9fb1aa0fbcd0766
```

### `dpkg` source package: `mysql-8.0=8.0.46-0ubuntu0.24.04.3`

Binary Packages:

- `libmysqlclient-dev=8.0.46-0ubuntu0.24.04.3`
- `libmysqlclient21:amd64=8.0.46-0ubuntu0.24.04.3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `mysql-defaults=1.1.0build1`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.1.0build1`
- `mysql-common=5.8+1.1.0build1`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.1.0build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.0build1.dsc' mysql-defaults_1.1.0build1.dsc 2411 SHA512:cb22278ef04b2f9de5f799994531f0302811b903eba79f2ea7c8d70f36cf42e23550db252c1d1a93da53c9e2cbd6e46d40c6b109690f4baca77d7d7529bcc6b7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.0build1.tar.xz' mysql-defaults_1.1.0build1.tar.xz 7524 SHA512:19dc3288a7f9200ba3b62b097f259ecfcbcec998cd846371b35901530da2f59510ad17bdb24185ce4ba5fff88cfd1b106880e0bdabb816a7d65ecf1ddb8ad75e
```

### `dpkg` source package: `ncurses=6.4+20240113-1ubuntu2.1`

Binary Packages:

- `libncurses-dev:amd64=6.4+20240113-1ubuntu2.1`
- `libncurses6:amd64=6.4+20240113-1ubuntu2.1`
- `libncursesw6:amd64=6.4+20240113-1ubuntu2.1`
- `libtinfo6:amd64=6.4+20240113-1ubuntu2.1`
- `ncurses-base=6.4+20240113-1ubuntu2.1`
- `ncurses-bin=6.4+20240113-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libncurses-dev/copyright`, `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.4+20240113-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113.orig.tar.gz' ncurses_6.4+20240113.orig.tar.gz 3688489 SHA512:45a4fbfa7d6fa51f7226b35698f2ca9b9f5bbbf3243cfee28886751244d238f698d5eaae1498ae9f7965b2d618a669ff827cfbba830e3a52a26bef825dec8ed9
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113.orig.tar.gz.asc' ncurses_6.4+20240113.orig.tar.gz.asc 729 SHA512:df94456e47857abfbb47f3a5a69f03b3d418a44542e1fa699c4b13eba812e5a85173cd651d77d07973f8f8d96bc301d7e413ad379f9ba1e9feb434c4da019f13
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113-1ubuntu2.1.debian.tar.xz' ncurses_6.4+20240113-1ubuntu2.1.debian.tar.xz 50052 SHA512:cb1a0ac2a1c0583cd10192dd4c72be382546086f51696e814425c1a240bc03b05e4e428fb092427c0fae04c681fe82e6f973fc9de123ba58ba9312f0183cc2ed
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.4%2b20240113-1ubuntu2.1.dsc' ncurses_6.4+20240113-1ubuntu2.1.dsc 3942 SHA512:492a8295cc74c4494a96ae1de646c69c50bcb321a148c4914bf782b7ef74b42591bfae429a5e0d6e786e7c448479c2a8422715e802b14a689661352285671592
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

### `dpkg` source package: `nghttp2=1.59.0-1ubuntu0.4`

Binary Packages:

- `libnghttp2-14:amd64=1.59.0-1ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.59.0-1ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.59.0.orig.tar.gz' nghttp2_1.59.0.orig.tar.gz 1055492 SHA512:bcb53ff45afae003f11a9feaa21dd80a3abfcde9b3a7fd1f04fc4382d71b5d4430e2d015765a7ae8d68454fcf06e4560c4cb585133aefb237d6ea526f61a8ebd
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.59.0-1ubuntu0.4.debian.tar.xz' nghttp2_1.59.0-1ubuntu0.4.debian.tar.xz 18840 SHA512:772de1e6c13fcac45ebe7050db19c225b5e889f11234da446268ac9c84e932fee6a3ca2161bdf75092ce518f0637f189d91cbb189d362fc9118cd8039a78e6fa
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.59.0-1ubuntu0.4.dsc' nghttp2_1.59.0-1ubuntu0.4.dsc 2624 SHA512:0b952d54608ccef01e309c91512f3567c2e847d2d76a983cc3be56f66f4a20226de629e5d4e96472334d5c06a1444db6922964f85952066d5dae08449ce86a72
```

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

### `dpkg` source package: `openexr=3.1.5-5.1build3`

Binary Packages:

- `libopenexr-3-1-30:amd64=3.1.5-5.1build3`
- `libopenexr-dev=3.1.5-5.1build3`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-1-30/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.1.5-5.1build3
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.5-5.1build3.dsc' openexr_3.1.5-5.1build3.dsc 2629 SHA512:6754aafb095ee18dbd5f3df736e9e619af5189e3fb6d61245d64d18aaec9874e23b75daa51b8e55b61c93732163575f85496e1e61baf97de1470939dfe8eae8e
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.5.orig.tar.gz' openexr_3.1.5.orig.tar.gz 20327926 SHA512:01ef16eacd2dde83c67b81522bae87f47ba272a41ce7d4e35d865dbdcaa03093e7ac504b95d2c1b3a19535f2364a4f937b0e0570c74243bb1c6e021fce7b620c
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.5.orig.tar.gz.asc' openexr_3.1.5.orig.tar.gz.asc 287 SHA512:9b3978e44b531429aba42b9cc4969a470898d9d74652e3809edb0273ba9b127c471aec6570b5d352be738f59810091c0df2c70d39c16d2c32833d173b270f72c
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.5-5.1build3.debian.tar.xz' openexr_3.1.5-5.1build3.debian.tar.xz 18952 SHA512:717a1362e1150abf4d555725539bd4b873591646f1c48859c200cb9a7b46946e00824d58ce68cb5dbee4ab3231e77f01cb75624a3eca99f633a4a99ba72e4e09
```

### `dpkg` source package: `openjpeg2=2.5.0-2ubuntu0.5`

Binary Packages:

- `libopenjp2-7:amd64=2.5.0-2ubuntu0.5`
- `libopenjp2-7-dev:amd64=2.5.0-2ubuntu0.5`

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

### `dpkg` source package: `openssh=1:9.6p1-3ubuntu13.18`

Binary Packages:

- `openssh-client=1:9.6p1-3ubuntu13.18`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:9.6p1-3ubuntu13.18
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.6p1.orig.tar.gz' openssh_9.6p1.orig.tar.gz 1857862 SHA512:0ebf81e39914c3a90d7777a001ec7376a94b37e6024baf3e972c58f0982b7ddef942315f5e01d56c00ff95603b4a20ee561ab918ecc55511df007ac138160509
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.6p1-3ubuntu13.18.debian.tar.xz' openssh_9.6p1-3ubuntu13.18.debian.tar.xz 216576 SHA512:f4ab6ef50e5313fccaec95217eb27eee5798b86f103a405835b10d413f4038500e94c464698b0a63cadc8e10a82dd705c9f8e3f3372085aff63d2053877d51d5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.6p1-3ubuntu13.18.dsc' openssh_9.6p1-3ubuntu13.18.dsc 3102 SHA512:d748838faa8abef11c028c43d127e37418f9fa5f36ecc89ca4a69440def148a5642e623f64f910c8d3fd021eefac938dc83ee0bb842c8bc3cb9ea1399fae0c28
```

### `dpkg` source package: `openssl=3.0.13-0ubuntu3.12`

Binary Packages:

- `libssl-dev:amd64=3.0.13-0ubuntu3.12`
- `libssl3t64:amd64=3.0.13-0ubuntu3.12`
- `openssl=3.0.13-0ubuntu3.12`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `p11-kit=0.25.3-4ubuntu2.1`

Binary Packages:

- `libp11-kit0:amd64=0.25.3-4ubuntu2.1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pam=1.5.3-5ubuntu5.6`

Binary Packages:

- `libpam-modules:amd64=1.5.3-5ubuntu5.6`
- `libpam-modules-bin=1.5.3-5ubuntu5.6`
- `libpam-runtime=1.5.3-5ubuntu5.6`
- `libpam0g:amd64=1.5.3-5ubuntu5.6`

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


### `dpkg` source package: `pango1.0=1.52.1+ds-1build1`

Binary Packages:

- `libpango-1.0-0:amd64=1.52.1+ds-1build1`
- `libpangocairo-1.0-0:amd64=1.52.1+ds-1build1`
- `libpangoft2-1.0-0:amd64=1.52.1+ds-1build1`

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
$ apt-get source -qq --print-uris pango1.0=1.52.1+ds-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.52.1%2bds-1build1.dsc' pango1.0_1.52.1+ds-1build1.dsc 3654 SHA512:1e3fc5e9547deb7955af472ce03dbd554f91fbe4c42abf2ab4ff38fa787580540fe74417f0d3cc4641ceb8942a72672f500e0a08e171d33a50a1cbb29c930005
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.52.1%2bds.orig.tar.xz' pango1.0_1.52.1+ds.orig.tar.xz 1738052 SHA512:4aa6e423f2fdb72d564f13251d263e74831113f8b8e515b8473f7d030ac62c29c7665d92ed89ce5d5a3750d56e19f7105b138b1c734a88f7e0882be53c27c8fa
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.52.1%2bds-1build1.debian.tar.xz' pango1.0_1.52.1+ds-1build1.debian.tar.xz 41748 SHA512:086e4e6b5e311fc84896292ed6f99f1cfdb9107adad199b1c192827f1101225ef5acbffaeb3522b2d006a74479132e96065b4c5114dfe1f650bbeb00435fa08e
```

### `dpkg` source package: `patch=2.7.6-7build3`

Binary Packages:

- `patch=2.7.6-7build3`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-7build3
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-7build3.dsc' patch_2.7.6-7build3.dsc 1838 SHA512:205ad1e6f47a5c039c878387f95ee3a91e2115ccd740f6d2e6ce0b7d9996bad38332739418e3cb70d215f93a083c3fc5174269893f5d3e200caf18ef0d8e1f05
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA512:fcca87bdb67a88685a8a25597f9e015f5e60197b9a269fa350ae35a7991ed8da553939b4bbc7f7d3cfd863c67142af403b04165633acbce4339056a905e87fbd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-7build3.debian.tar.xz' patch_2.7.6-7build3.debian.tar.xz 15324 SHA512:46d2d3d5da88ddf723891df3288165405794cf414c6fdad65723a0f7333e918676a04eaa254d2dbc7b682e4e214d6089af461b490c51a5c8e7e02d4743b4249f
```

### `dpkg` source package: `pcre2=10.42-4ubuntu2.1`

Binary Packages:

- `libpcre2-16-0:amd64=10.42-4ubuntu2.1`
- `libpcre2-32-0:amd64=10.42-4ubuntu2.1`
- `libpcre2-8-0:amd64=10.42-4ubuntu2.1`
- `libpcre2-dev:amd64=10.42-4ubuntu2.1`
- `libpcre2-posix3:amd64=10.42-4ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

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

### `dpkg` source package: `perl=5.38.2-3.2ubuntu0.3`

Binary Packages:

- `libperl5.38t64:amd64=5.38.2-3.2ubuntu0.3`
- `perl=5.38.2-3.2ubuntu0.3`
- `perl-base=5.38.2-3.2ubuntu0.3`
- `perl-modules-5.38=5.38.2-3.2ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libperl5.38t64/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.38/copyright`)

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
- `libpixman-1-dev:amd64=0.42.2-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.42.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2-1build1.dsc' pixman_0.42.2-1build1.dsc 2153 SHA512:433d3a48159ab6d981bc4a6c40abfb7cef8aa6ca7c893420042d071e1c236ad78471df956ac83d2e88df25e107b36b3ce808fa97bc701178804d452523ba0826
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2.orig.tar.gz' pixman_0.42.2.orig.tar.gz 959669 SHA512:0a4e327aef89c25f8cb474fbd01de834fd2a1b13fdf7db11ab72072082e45881cd16060673b59d02054b1711ae69c6e2395f6ae9214225ee7153939efcd2fa5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.42.2-1build1.diff.gz' pixman_0.42.2-1build1.diff.gz 327276 SHA512:a07846ba47b3f3407e43aefee37efe6265445a8c1e81589a715f175e426ed2a75822cce7545ac94bb368c3eecaaa2ccd7b0c7944aba9b51f0e939403b2f57d1e
```

### `dpkg` source package: `pkgconf=1.8.1-2build1`

Binary Packages:

- `libpkgconf3:amd64=1.8.1-2build1`
- `pkgconf:amd64=1.8.1-2build1`
- `pkgconf-bin=1.8.1-2build1`

Licenses: (parsed from: `/usr/share/doc/libpkgconf3/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=1.8.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_1.8.1-2build1.dsc' pkgconf_1.8.1-2build1.dsc 2262 SHA512:2f42caf03cbabdd31c642775890e4914d00cb2572d0ec8a6b76d670b680870913572c0d14c0e074a6ab134a4b7d6929c88e3e0e049e982c7eca31a2762e5840b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_1.8.1.orig.tar.xz' pkgconf_1.8.1.orig.tar.xz 302372 SHA512:7a7d5204c1c9bfb6578bda56f299d1fa0300e69a133a65730b10ad77aefbf26fceb74ae77cecda326b3ed5db5736f27fcce94764b3a56d40f4bb99fecdc80bba
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_1.8.1-2build1.debian.tar.xz' pkgconf_1.8.1-2build1.debian.tar.xz 15672 SHA512:737cdc1f7867ee564085b78256acd259d62721f0f385f8b551ff8eafa9ccaffd7d4f2d3765b058f89c918c0c0192761fd72c19c8714fb98c5f4ebd7e55a604f7
```

### `dpkg` source package: `postgresql-16=16.14-0ubuntu0.24.04.1`

Binary Packages:

- `libpq-dev=16.14-0ubuntu0.24.04.1`
- `libpq5:amd64=16.14-0ubuntu0.24.04.1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python-markdown=3.5.2-1`

Binary Packages:

- `python3-markdown=3.5.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-markdown/copyright`)

- `BSD-3-clause`
- `etree13`

Source:

```console
$ apt-get source -qq --print-uris python-markdown=3.5.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-markdown/python-markdown_3.5.2-1.dsc' python-markdown_3.5.2-1.dsc 2610 SHA512:8a400cae0b3b147b15bb36a748c91317e8c8c1ea796de678af3587ce9323ac6f069a24a2a3460caf9c844b54a5a794f5a610760b2e752310527e30101fca2086
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-markdown/python-markdown_3.5.2.orig.tar.gz' python-markdown_3.5.2.orig.tar.gz 349398 SHA512:a112620162cb0764848dbe766bd23df6b7220ec3db6eb60d5663757092300c5c6abb9af6a412280fc3f59e617263c3abf0ed4a969eebacd3e964228525165f24
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-markdown/python-markdown_3.5.2-1.debian.tar.xz' python-markdown_3.5.2-1.debian.tar.xz 12324 SHA512:454bd51f85060d924a3fc92b9e586b2618f3d2fed27b02fd0ae18a6ed8e73cb616d95b49845c1299fbe172243345cde5b89f9f76e22cdf5174b581323f7f5829
```

### `dpkg` source package: `python-packaging=24.0-1`

Binary Packages:

- `python3-packaging=24.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=24.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_24.0-1.dsc' python-packaging_24.0-1.dsc 1932 SHA512:c302a450bebacef271040baa539e790e68b5a58f55316820a60f7fecfb3e9c1de0ebdb9e784a21eb1bcede5df7f6036cfe170fe367bea52f84d3d2bf9ae8499e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_24.0.orig.tar.gz' python-packaging_24.0.orig.tar.gz 147882 SHA512:b6af704f93bcb7611a06eb2bfa94d8dc4bb1e5e9898af7c0eb85e67cf1ebdb858e272ca18019be4daaa43ac3f73b1cb2e690d8b50a4252380a2dc9f2d0e03a58
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_24.0-1.debian.tar.xz' python-packaging_24.0-1.debian.tar.xz 2928 SHA512:019649bd458d772025f1465e3df7daee7b206652c0f247a9596202975913cdcf2b75827ffec1583fd62d08d8d8f22573d2a2440cc7f3a0002471c36a07aad170
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
- `python3.12=3.12.3-1ubuntu0.15`
- `python3.12-minimal=3.12.3-1ubuntu0.15`

Licenses: (parsed from: `/usr/share/doc/libpython3.12-minimal/copyright`, `/usr/share/doc/libpython3.12-stdlib/copyright`, `/usr/share/doc/python3.12/copyright`, `/usr/share/doc/python3.12-minimal/copyright`)

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
'http://security.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3.orig.tar.xz' python3.12_3.12.3.orig.tar.xz 20625068 SHA512:4a2213b108e7f1f1525baa8348e68b2a2336d925e60d0a59f0225fc470768a2c8031edafc0b8243f94dbae18afda335ee5adf2785328c2218fd64cbb439f13a4
'http://security.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3-1ubuntu0.15.debian.tar.xz' python3.12_3.12.3-1ubuntu0.15.debian.tar.xz 299248 SHA512:cc765bbb9c7487599b37697c637e8b806bcaec44a42ad038aa75f92011158ae8fb7da59ed58b31b504917660d9df30dc77e318ef832eccd898ed3abd9f309936
'http://security.ubuntu.com/ubuntu/pool/main/p/python3.12/python3.12_3.12.3-1ubuntu0.15.dsc' python3.12_3.12.3-1ubuntu0.15.dsc 3879 SHA512:bcf9b36359ec28d3ff0c75d9b47fc60d3de150ce10d8451e84b313edeb67c459d599ff0598c327021e1a527ced7ac36c0fba343fec89d85a02ff7832dd744758
```

### `dpkg` source package: `readline=8.2-4build1`

Binary Packages:

- `libreadline-dev:amd64=8.2-4build1`
- `libreadline8t64:amd64=8.2-4build1`
- `readline-common=8.2-4build1`

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
$ apt-get source -qq --print-uris readline=8.2-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-4build1.dsc' readline_8.2-4build1.dsc 2926 SHA512:8ad7e70792466e093ff1202b123e24c6fa1a9850e57ca0b775b06bfe4e502ef8ffc876eda32fb164565cda1e4e048f3f80e6ff69ae9c56f87841f15c759a7658
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2.orig.tar.gz' readline_8.2.orig.tar.gz 3043952 SHA512:0a451d459146bfdeecc9cdd94bda6a6416d3e93abd80885a40b334312f16eb890f8618a27ca26868cebbddf1224983e631b1cbc002c1a4d1cd0d65fba9fea49a
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-4build1.debian.tar.xz' readline_8.2-4build1.debian.tar.xz 33816 SHA512:b8c92282e25f3d28acd02c1431088f5f29aa1398ce919c312de50813e8a0df07d973ffd49fccde51505538ed7e29f666d812931961746b12ebde219d16be914f
```

### `dpkg` source package: `rpcsvc-proto=1.4.2-0ubuntu7`

Binary Packages:

- `rpcsvc-proto=1.4.2-0ubuntu7`

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
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.2-0ubuntu7
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2-0ubuntu7.dsc' rpcsvc-proto_1.4.2-0ubuntu7.dsc 2113 SHA512:898f925a91776d16b8f6934b502f0a05983079af42a633245d2f5e25975daf3eece0be7a999dc640739b0c29315a657d33c1d5e5ed03e74ab5b911638571a96c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2.orig.tar.xz' rpcsvc-proto_1.4.2.orig.tar.xz 171620 SHA512:631fbfc00af94c5d7def0759f27e97dc14d400b4468c906719ae18ecef74815730798c882d1aaa4f90359224e7b829019b786baddc3097905b54f940ca85a714
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2-0ubuntu7.debian.tar.xz' rpcsvc-proto_1.4.2-0ubuntu7.debian.tar.xz 4336 SHA512:faf9f6eb4e7da5e4fed0e358e836cc4137f783079127cbabe3bed82f8ad2d08250d827d62f0f49df23604d685b7c55d6c30b8ec69dff0f14e3267ae180cb9f96
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

### `dpkg` source package: `rust-sequoia-sq=0.33.0-3`

Binary Packages:

- `sq=0.33.0-3`

Licenses: (parsed from: `/usr/share/doc/sq/copyright`)

- `GPL-2`
- `GPL-2.0-or-later`
- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sq=0.33.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_0.33.0-3.dsc' rust-sequoia-sq_0.33.0-3.dsc 3613 SHA512:393234c00940c618d43e109ddf12169566fb82076e703b04adb1bf2579c80887563b833d059c64595dc222cc096810a8025d70b890f15316a1568423b8bda5ad
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_0.33.0.orig.tar.gz' rust-sequoia-sq_0.33.0.orig.tar.gz 388309 SHA512:c366c7c2f2fcc398194f20922fed72bf18ede12164f8d0438bac0ca08f0900004f3c1039f8cd3ee480ded3e42104cf6ac4365020b9f258dc115594112ec3b101
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_0.33.0-3.debian.tar.xz' rust-sequoia-sq_0.33.0-3.debian.tar.xz 5524 SHA512:81d510431bc0116e4aa79f005e28bc054b1712b28c76206e4d663111598ec257170d91a865c013ba5c957f1979d4570873393fa2119f24b09ada10151c56a38d
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

### `dpkg` source package: `serf=1.3.10-1ubuntu0.24.04.1`

Binary Packages:

- `libserf-1-1:amd64=1.3.10-1ubuntu0.24.04.1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `setuptools=68.1.2-2ubuntu1.2`

Binary Packages:

- `python3-pkg-resources=68.1.2-2ubuntu1.2`
- `python3-setuptools=68.1.2-2ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/python3-pkg-resources/copyright`, `/usr/share/doc/python3-setuptools/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris setuptools=68.1.2-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_68.1.2.orig.tar.gz' setuptools_68.1.2.orig.tar.gz 2198001 SHA256:3d4dfa6d95f1b101d695a6160a7626e15583af71a5f52176efa5d39a054d475d
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_68.1.2-2ubuntu1.2.debian.tar.xz' setuptools_68.1.2-2ubuntu1.2.debian.tar.xz 17712 SHA256:535a05c43a79ba7519c1a791ba5ef75350d8e48c5b4bb8ddb7c626733a3f36b5
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_68.1.2-2ubuntu1.2.dsc' setuptools_68.1.2-2ubuntu1.2.dsc 2296 SHA256:b3bdc1cbae0009f96916286d76877bbb53bb92414be9d10845b84ebb6bf99184
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

### `dpkg` source package: `shared-mime-info=2.4-4`

Binary Packages:

- `shared-mime-info=2.4-4`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=2.4-4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4-4.dsc' shared-mime-info_2.4-4.dsc 2237 SHA512:c33bb340414ba0813877e431be1c57d674255306e4165b308f1cfc38c390c39584743f592ff4ba96cea6c18890e9910fada839f1f931038e2b725f11ae4cd81f
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4.orig.tar.bz2' shared-mime-info_2.4.orig.tar.bz2 7096347 SHA512:712f414e80919bf2a0f5083ced44c54a350948a526850466a6e9f35365dcfd97fad8bcdbb29945de2715a8f9b70a108e931c8500209a4d6e3dddf97af02771cb
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_2.4-4.debian.tar.xz' shared-mime-info_2.4-4.debian.tar.xz 10688 SHA512:579ea2e748879023c746b18cc019ef2a0192de0baaaf804d19a74760af3a02b7cb042cbc787b5ebbece862f10164057a5cff9265d6a7a638f43c390b1a8b59bf
```

### `dpkg` source package: `sqlite3=3.45.1-1ubuntu2.7`

Binary Packages:

- `libsqlite3-0:amd64=3.45.1-1ubuntu2.7`
- `libsqlite3-dev:amd64=3.45.1-1ubuntu2.7`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.45.1-1ubuntu2.7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.45.1.orig-www.tar.xz' sqlite3_3.45.1.orig-www.tar.xz 5693812 SHA512:dbbf32bad3912dca4d1d3366053c66dc53745d4e5c6892c10470b7452f338de03eee1406cb6c5a972c9890bd71a7b30563e4863f27bf0f2813a92ffdfd95832f
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.45.1.orig.tar.xz' sqlite3_3.45.1.orig.tar.xz 8257884 SHA512:8ea4a50fe730b072271978bbeee074d567bc8cbaa3bb4a8b8802e012d470fd482d800532eedea48a54fd64785f3b02aab7b033c8e2767a5e8b9f02a9cc844b80
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.45.1-1ubuntu2.7.debian.tar.xz' sqlite3_3.45.1-1ubuntu2.7.debian.tar.xz 37004 SHA512:db667b39cfe043e12ae692f922e6d5372ea26f6ce37de51f193a57e19e766ec77a76e33c1a61c99714c1e55ea157b170c6f2502c9893bcfec1afc00e35d39aaf
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.45.1-1ubuntu2.7.dsc' sqlite3_3.45.1-1ubuntu2.7.dsc 2601 SHA512:3facf920149eb11209b1487c864bdfc1d1858cdb9107dddf8f38677714ad25fe4f477132a58ebc4a819ac7c0aa6646ecc3554052a40e32fbcbb5ca6308986444
```

### `dpkg` source package: `subversion=1.14.3-1build4`

Binary Packages:

- `libsvn1:amd64=1.14.3-1build4`
- `subversion=1.14.3-1build4`

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
$ apt-get source -qq --print-uris subversion=1.14.3-1build4
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.3-1build4.dsc' subversion_1.14.3-1build4.dsc 3873 SHA512:568ed9b4135d16062f6d1423f3412bbdfcae4e28a7e43d37fcb7a1a4f4b2a734e6596cce946f396ed4ab0b2eb506f64deb22cfce61ef999bae38893c9c51d26b
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.3.orig.tar.gz' subversion_1.14.3.orig.tar.gz 11621442 SHA512:12188a1c07b8b72594d27b1058c13b2ab81d0306d6da2853400be5a73f12ac5d5ff5ae80b6bfd0320e58d8d797b813d71d6c688ba230d3a010ebaf8bdd910c13
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.3.orig.tar.gz.asc' subversion_1.14.3.orig.tar.gz.asc 1724 SHA512:d3922207f672cf17446ce05aa1c7361f4c15279fd1182f7c44cab18be63b086cbac4f22830377f8a4e6ca3cc130dfd5cccaa5536c190b5ac8d786af6ecb7ef30
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.3-1build4.debian.tar.xz' subversion_1.14.3-1build4.debian.tar.xz 337036 SHA512:62a40df50e32846f25ffde6e806575427cca51b0f7ff24f184d1dc73b58c120b19739893280371764e23d174bab4b714ae6caf95eaf620fde5bd28cd35b6ace8
```

### `dpkg` source package: `systemd=255.4-1ubuntu8.17`

Binary Packages:

- `libsystemd0:amd64=255.4-1ubuntu8.17`
- `libudev1:amd64=255.4-1ubuntu8.17`

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
$ apt-get source -qq --print-uris systemd=255.4-1ubuntu8.17
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4.orig.tar.gz' systemd_255.4.orig.tar.gz 14952427 SHA512:8a2bde11a55f7f788ba7751789a5e9be6ce9634e88d54e49f6e832c4c49020c6cacaf2a610fe26f92998b0cbf43c6c2150a96b2c0953d23261009f57d71ea979
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4-1ubuntu8.17.debian.tar.xz' systemd_255.4-1ubuntu8.17.debian.tar.xz 272596 SHA512:0019048e54e69c48dd0724d753ae1e1c8feca0d7f5078231b370e23205cb5cd3630182c48cacf41a71031cb3e90cfda5f802035c0937c3ae788382960fe495ef
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_255.4-1ubuntu8.17.dsc' systemd_255.4-1ubuntu8.17.dsc 7324 SHA512:d329cc29055aad81ea4020ebc8a9e72c9192a205b8e8df71b58993dfc0cd8cdcf7bcfdb877009c5aadc0a017190ab625cb09228d04c3b30bd591a396aa13496d
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

### `dpkg` source package: `tar=1.35+dfsg-3ubuntu0.4`

Binary Packages:

- `tar=1.35+dfsg-3ubuntu0.4`

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
$ apt-get source -qq --print-uris tar=1.35+dfsg-3ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA512:3aea32b5c8de229131308420d8a7aa57f7fd1b376980456dd1aa66f97509572750c3833ab9cc2edc6fdea51f802033598c83a0d6e7f18680b1638996f0acaae7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-3ubuntu0.4.debian.tar.xz' tar_1.35+dfsg-3ubuntu0.4.debian.tar.xz 52244 SHA512:3a73fba77c7b5703af0aae94822bb1fb5e581565d2affa0c612a31b1509a8c572b5d8f1d0a920f269a7a173ac305411c3a17fff8f3c8ff7080db492e178d7b75
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-3ubuntu0.4.dsc' tar_1.35+dfsg-3ubuntu0.4.dsc 2124 SHA512:7db5e186409ad66a391743f641ff273f46d95773f3de6fe3c452fb55ea38aef471dcb64717d2622c1abbf74406c83e561ed0b22da63afee7bc9aae9198f201f2
```

### `dpkg` source package: `tiff=4.5.1+git230720-4ubuntu2.5`

Binary Packages:

- `libtiff-dev:amd64=4.5.1+git230720-4ubuntu2.5`
- `libtiff6:amd64=4.5.1+git230720-4ubuntu2.5`
- `libtiffxx6:amd64=4.5.1+git230720-4ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff6/copyright`, `/usr/share/doc/libtiffxx6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.5.1+git230720-4ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720.orig.tar.xz' tiff_4.5.1+git230720.orig.tar.xz 1781896 SHA256:0e51bcf3a3ffa5fc76ea6aeb74a797f95c84544fcc8b6a1ec5def967a78e9e12
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720-4ubuntu2.5.debian.tar.xz' tiff_4.5.1+git230720-4ubuntu2.5.debian.tar.xz 33152 SHA256:e3106320d41790b741b0db9a7fccf72b6a8d425743b6407e9a9dd369d958be76
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.5.1%2bgit230720-4ubuntu2.5.dsc' tiff_4.5.1+git230720-4ubuntu2.5.dsc 2309 SHA256:46e2765124bce104413733352d548117c5e9cee73953758a2040df613f3d6b9c
```

### `dpkg` source package: `tzdata=2026c-0ubuntu0.24.04.1`

Binary Packages:

- `tzdata=2026c-0ubuntu0.24.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026c-0ubuntu0.24.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz' tzdata_2026c.orig.tar.gz 475694 SHA512:e0b4b7044b66fbc27bc21d13d18063abcdf78ab58d5ba5fd64bd1a88d86e9d495f45add4d8e65bb6c40249f9c94ca29b72c8ebba8d0e4c468f2965ac77932ef0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz.asc' tzdata_2026c.orig.tar.gz.asc 833 SHA512:e1d44216608666bfb8a1855caacc9e6d30a1576f302c4db59faf8ec6aa2f7d5ae299c4c9b17b255b9612c30582358ca2a48f5fea82ab9b7d77d030e713c9010d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.24.04.1.debian.tar.xz' tzdata_2026c-0ubuntu0.24.04.1.debian.tar.xz 188348 SHA512:fd539785392a3f9e79f88ca6e299baae834a9db8e18e3b0c9dba283024e65137d66e09ecf92501656ee3857ca66cd72918231800ba3c85b2eadd2123ecb3cf85
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.24.04.1.dsc' tzdata_2026c-0ubuntu0.24.04.1.dsc 2728 SHA512:df7df3199b1af5d6dc73bdd0296f2000e7068a1ba24b7e01db00d21a114cbe292db3993730d7be6ee5e0469401105bc441b50dc9680d430b01dce9ad904ed3e3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/u/unminimize/unminimize_0.2.1.tar.xz' unminimize_0.2.1.tar.xz 9400 SHA512:692ed9d0bb2d42ab5c74ef0f4c86d8f5922e4d1ee9d8efa8a03490437aff35c13b0114f7a62aa5464e95d4014db2745605a83fe7d9bfc81977de8ad56e3e901e
'http://archive.ubuntu.com/ubuntu/pool/main/u/unminimize/unminimize_0.2.1.dsc' unminimize_0.2.1.dsc 1554 SHA512:28b51904aaf6edb27c93d250e5b91caa1d39ff749e059be036be4bf8ff710ee9812b5080c678b155db45dfbbb01dd30ea7908728aa5d0129108aa630db1c2aef
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

### `dpkg` source package: `utf8proc=2.9.0-1build1`

Binary Packages:

- `libutf8proc3:amd64=2.9.0-1build1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc3/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.9.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.9.0-1build1.dsc' utf8proc_2.9.0-1build1.dsc 2294 SHA512:0a183389b81b1ad614d5a5bf1ace1a2fac8cd91ea7724da25b8443a006c71099cd5ea0d2dc909bfa4a580e816e9e34cc9c4f64a752fef5b0ece510e092690491
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.9.0.orig.tar.gz' utf8proc_2.9.0.orig.tar.gz 193465 SHA512:544ed59812279af4135e5622e2e77b3f067765df819cf8b78e679dfc481e9baa5a357a33c40426c5053c1d5107109e3c4c191ed83f3f7c4a6b1769d04b17715c
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.9.0-1build1.debian.tar.xz' utf8proc_2.9.0-1build1.debian.tar.xz 5956 SHA512:66f918055be1f55b39929c504521094860b66518c99f644a2d826a52076416a7e79d0ed6ec260617e47202e4907f69d7489549737d38ff920942c173e0867693
```

### `dpkg` source package: `util-linux=2.39.3-9ubuntu6.5`

Binary Packages:

- `bsdutils=1:2.39.3-9ubuntu6.5`
- `libblkid-dev:amd64=2.39.3-9ubuntu6.5`
- `libblkid1:amd64=2.39.3-9ubuntu6.5`
- `libmount-dev:amd64=2.39.3-9ubuntu6.5`
- `libmount1:amd64=2.39.3-9ubuntu6.5`
- `libsmartcols1:amd64=2.39.3-9ubuntu6.5`
- `libuuid1:amd64=2.39.3-9ubuntu6.5`
- `mount=2.39.3-9ubuntu6.5`
- `util-linux=2.39.3-9ubuntu6.5`
- `uuid-dev:amd64=2.39.3-9ubuntu6.5`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid-dev/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount-dev/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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


### `dpkg` source package: `wget=1.21.4-1ubuntu4.4`

Binary Packages:

- `wget=1.21.4-1ubuntu4.4`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1.1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1.dsc' xorg-sgml-doctools_1.11-1.1.dsc 1987 SHA512:1682e1a4d4be1bfb1242adfa22b2764a9425b035cbfae9fd58925d4904eb301fe48bf92fc5935e973d7653db001ab221a8eac8cc5e2840d5a2e0cb4f1bb4895c
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA512:a2386e41a8e2f7deaded61e00eaeab922647c0d0f4e36268c4337dc71d2412b0ec433140d080a0fd118b6112ed0a4f960280f932fe8d4a90ea9dc8bedf1eb75e
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1.diff.gz' xorg-sgml-doctools_1.11-1.1.diff.gz 3296 SHA512:0ea09f6de75cf649fb82705a0470e5ba04edbe59ccfa26132e60120e04036b86e9ff47785fdcee2499fa005cbbdfc9e04ebdca619d0253ea558e2fe5501b9ec4
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

### `dpkg` source package: `xorgproto=2023.2-1`

Binary Packages:

- `x11proto-core-dev=2023.2-1`
- `x11proto-dev=2023.2-1`

Licenses: (parsed from: `/usr/share/doc/x11proto-core-dev/copyright`, `/usr/share/doc/x11proto-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2023.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2023.2-1.dsc' xorgproto_2023.2-1.dsc 3336 SHA512:d6459c917da1e6cc44e5661744780998f1cd3663dafb70621d304b6bc5113a6bd1d16f13a2b13739b065ea8fbf535096a3d1f0a5e9d145d823a86610baa247a4
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2023.2.orig.tar.gz' xorgproto_2023.2.orig.tar.gz 1150326 SHA512:9f03dcf7b2e7363523cdae6618f7c7db0041335aad505e0322571c391f2ef294957012a755b70e1dd24c3c0178e0423a36554032f552786d724eb9be31891436
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2023.2.orig.tar.gz.asc' xorgproto_2023.2.orig.tar.gz.asc 195 SHA512:bf84acc1adc37a2fe17193dec431a628980707200d8dd571c85f009bd5218d5470b3ac76d31756d10551dc75dfcfc791ec262c933837d0b8554181c2b99893b5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2023.2-1.diff.gz' xorgproto_2023.2-1.diff.gz 25092 SHA512:ce40310bb67106bfe53052506d277c94e5a16a0c82a20e43944cdf57de1c724bc88af72aff3cd946f4d1f8527bc898f2d43ed9caa4d02a9dbf0647b6e3f3c798
```

### `dpkg` source package: `xtrans=1.4.0-1`

Binary Packages:

- `xtrans-dev=1.4.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0-1.dsc' xtrans_1.4.0-1.dsc 1919 SHA512:ac171ce0f00e1741e97a4ddad630ccff69070c0ef60047071b3f940fad08cb468d5ded7b2d4f0f500aeda73f2b703d55a7a4bbe0d5fff88cc3381486a111f580
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0.orig.tar.gz' xtrans_1.4.0.orig.tar.gz 225941 SHA512:21287ccf18fe2ebd458765496b026d175bf47c6e8e5c21d5b9ea17203967efc0cf6928fa2f3385d289a680c7002c3640e4731937029e99933c2a64bb9fab5326
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.4.0-1.diff.gz' xtrans_1.4.0-1.diff.gz 9522 SHA512:d6deaa9579fb61e6ffd296ffe6b083eb9de572001c0a5bc82229ecc3d50bf2ee2f6504b3daa533bd34f3d647d6bd2235728084ec0b59869f6446652b998797f7
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

- `liblzma-dev:amd64=5.6.1+really5.4.5-1ubuntu0.3`
- `liblzma5:amd64=5.6.1+really5.4.5-1ubuntu0.3`
- `xz-utils=5.6.1+really5.4.5-1ubuntu0.3`

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
$ apt-get source -qq --print-uris xz-utils=5.6.1+really5.4.5-1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5.orig.tar.xz' xz-utils_5.6.1+really5.4.5.orig.tar.xz 1680520 SHA512:5cbc3b5bb35a9f5773ad657788fe77013471e3b621c5a8149deb7389d48535926e5bed103456fcfe5ecb044b236b1055b03938a6cc877cfc749372b899fc79e5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5-1ubuntu0.3.debian.tar.xz' xz-utils_5.6.1+really5.4.5-1ubuntu0.3.debian.tar.xz 31672 SHA512:01c822e725f025608a346ca8498889d5e4b65990b68d6de4e0fc18c1da1814a11d2c5820f738eca52417a93acfe102b2d67d28d0e83601946950df03af2b2e47
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.6.1%2breally5.4.5-1ubuntu0.3.dsc' xz-utils_5.6.1+really5.4.5-1ubuntu0.3.dsc 2505 SHA512:317b65fd00056cc31250763e70de5e106c7ee4aeda701bd6e080a3d96cf14ba2fd5b2739fe65e2a356bf37afcb43d388159af6e1fb480ad5ec645b5ce404b2eb
```

### `dpkg` source package: `zlib=1:1.3.dfsg-3.1ubuntu2.1`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg-3.1ubuntu2.1`
- `zlib1g-dev:amd64=1:1.3.dfsg-3.1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

