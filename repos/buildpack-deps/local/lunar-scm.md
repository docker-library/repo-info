# `buildpack-deps:lunar-scm`

## Docker Metadata

- Image ID: `sha256:ec357e0449733f3924c6bcef3e03c0c8ae7bfef5bd0c4a0a87c91539675da22d`
- Created: `2023-01-02T19:14:40.075413161Z`
- Virtual Size: ~ 221.50 Mb  
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


### `dpkg` source package: `adduser=3.121ubuntu1`

Binary Packages:

- `adduser=3.121ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `apr-util=1.6.1-5ubuntu5`

Binary Packages:

- `libaprutil1:amd64=1.6.1-5ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-5ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-5ubuntu5.dsc' apr-util_1.6.1-5ubuntu5.dsc 2648 SHA512:5387d78b226611d58f6c7c50689162419bf44a39cb5ecb81280c205d64480aa3acde9890bf6d81af261fcd7702ba74243de56f069625f93e5885a7277b0a030e
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA512:40eff8a37c0634f7fdddd6ca5e596b38de15fd10767a34c30bbe49c632816e8f3e1e230678034f578dd5816a94f246fb5dfdf48d644829af13bf28de3225205d
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-5ubuntu5.debian.tar.xz' apr-util_1.6.1-5ubuntu5.debian.tar.xz 342904 SHA512:4561b617c3186580bee9b14a2064a9c3b08daab9c1bc306ed56e4db700e0ed22f3008633574ac194099c45de2e0cb91e1ebcd5b35d5369972ca45f27ffc535b1
```

### `dpkg` source package: `apr=1.7.0-8build1`

Binary Packages:

- `libapr1:amd64=1.7.0-8build1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.0-8build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.0-8build1.dsc' apr_1.7.0-8build1.dsc 1951 SHA512:c9da10b8d05e62a7e5e25832408e97f2c512592bc9ea4f6d55e7edcb28ca3c7a9446492eef0c3c26ee67b31d99307b70e6bc4c655454fa983f5da263fd8a73c0
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.0.orig.tar.bz2' apr_1.7.0.orig.tar.bz2 872238 SHA512:3dc42d5caf17aab16f5c154080f020d5aed761e22db4c5f6506917f6bfd2bf8becfb40af919042bd4ce1077d5de74aa666f5edfba7f275efba78e8893c115148
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.0.orig.tar.bz2.asc' apr_1.7.0.orig.tar.bz2.asc 801 SHA512:19b2b128c7c4cb40db06149c75325013a716c783e28e366c1bacf289fdb5d305e5779d8dc55a63729250ad3338cd4c726e133c788fe53ab3519f1bc8d4da6f90
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.0-8build1.debian.tar.xz' apr_1.7.0-8build1.debian.tar.xz 215944 SHA512:c11d784190391ea47706d34c7d324804ca9e8402bbb11cc9fecbb38827f0454a6ef8a8f8003f5e0b597fbc2e38da663e6bbeef371aa6a1685bb3c6f401030b6c
```

### `dpkg` source package: `apt=2.5.4`

Binary Packages:

- `apt=2.5.4`
- `libapt-pkg6.0:amd64=2.5.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.5.4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.5.4.dsc' apt_2.5.4.dsc 2933 SHA512:d458fc9047c8500be70cac1181bafbe4f2f81c7c1cdf2f88e34fb0e33d69cc75e0eb6069097bb9fb7283b6e84d1d6642cb55f36ffa1a886435eefb72f1245a5a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.5.4.tar.xz' apt_2.5.4.tar.xz 2322832 SHA512:bb01b3e8a6b4f3638636533c340ed08f4e047188c3f1a08735a6c79b7c06b1e95a7f5c88b2029090c0ae0eecf18a9010a9988786006297441754da01caae4f6c
```

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


### `dpkg` source package: `audit=1:3.0.7-1ubuntu2`

Binary Packages:

- `libaudit-common=1:3.0.7-1ubuntu2`
- `libaudit1:amd64=1:3.0.7-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `base-files=12.3ubuntu1`

Binary Packages:

- `base-files=12.3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=12.3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12.3ubuntu1.dsc' base-files_12.3ubuntu1.dsc 1253 SHA512:1337275ab0357ea5a42082ac2cce9ce7a9b521a4d2763ec98d9875351cf189b59ba78cbda607bd620839cab1a12a2fdbdb5087f0d946377ba8cb7cd19ae2d573
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12.3ubuntu1.tar.xz' base-files_12.3ubuntu1.tar.xz 92740 SHA512:fff32fd198950ea232c1efe5e3aebb86880c49f3f93175d4245ec512dd40563a7b2720da82941872f3bb4777a360652e3e02411bb97ed338f4a5e0247618af62
```

### `dpkg` source package: `base-passwd=3.6.1`

Binary Packages:

- `base-passwd=3.6.1`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.1.dsc' base-passwd_3.6.1.dsc 1740 SHA512:b631fac3bb17d25bca3a04d74a542dcb7a97f29bd98da38dabd4c38ebfeb9638466876e20e60ea9b86f8168cc50f5ae2153a9a59d635114ff10bc9425a7a998e
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.1.tar.xz' base-passwd_3.6.1.tar.xz 56072 SHA512:f26df2acbd103c60dd2003bc72ce043c05f66009464245d2740e4389374687e7c67114ee2120dab79546a29f9b5bd29fd8321f758fc7db32165125c4286593a8
```

### `dpkg` source package: `bash=5.2-1ubuntu2`

Binary Packages:

- `bash=5.2-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `brotli=1.0.9-2build7`

Binary Packages:

- `libbrotli1:amd64=1.0.9-2build7`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.0.9-2build7
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9-2build7.dsc' brotli_1.0.9-2build7.dsc 2285 SHA512:ae62b6933300cd10c65559f6d94e03a4fa6404168042a52481cfbc87715f05258a5c3b1cec00e1dd33c5111fa3d46d43dd3ea53667e71559ae88a9eae81e56f6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9.orig.tar.gz' brotli_1.0.9.orig.tar.gz 486984 SHA512:b8e2df955e8796ac1f022eb4ebad29532cb7e3aa6a4b6aee91dbd2c7d637eee84d9a144d3e878895bb5e62800875c2c01c8f737a1261020c54feacf9f676b5f5
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9-2build7.debian.tar.xz' brotli_1.0.9-2build7.debian.tar.xz 5836 SHA512:03247406da55d9742fcf3aed6a4ba6837887483b9e737b9fc7b8554e5103dd09cd0f48dd7832aabaa50ab06a2a7076856d6a95dc6debd3c4bb8d9557ae35d1b5
```

### `dpkg` source package: `bzip2=1.0.8-5build1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-5build1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.dsc' bzip2_1.0.8-5build1.dsc 1860 SHA512:dfb9cd3a99f8c80a27e088b6ba7f06f50bc2bdbc61f574ed8f77d0fa58ff07fa1c34a060351fd4b601537181143dd934caadd7a00eb97aea5933febb7b61743d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.debian.tar.bz2' bzip2_1.0.8-5build1.debian.tar.bz2 26870 SHA512:e030c257c3458d780fd0ffc6f328efd69d0e875e81acd7441a7c6651194ebded61017c96aad7c99061f93d50dfc33056abe98c9a599abc900f49d51c4a1eed6f
```

### `dpkg` source package: `ca-certificates=20211016ubuntu1`

Binary Packages:

- `ca-certificates=20211016ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu1.dsc' ca-certificates_20211016ubuntu1.dsc 1846 SHA512:2cb0046a5407819dc4e6a7017e60a4c1c12898824cbae55a0638710e0829fcf6401202b7758e10d73e268fa6618c2feb9f37d6d29dacafa5acd993fd7c1494b6
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu1.tar.xz' ca-certificates_20211016ubuntu1.tar.xz 239852 SHA512:3097abc8c4e60cb52990940ad0974d95e3a63d49d43563d73aaf7d0b57f822a0584b23cb0a94674de2505adb3985e7dc79553984b7f96507803d4acdbba96578
```

### `dpkg` source package: `cdebconf=0.264ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.264ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.264ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.264ubuntu1.dsc' cdebconf_0.264ubuntu1.dsc 2898 SHA512:f34fac21b8ef101bf2e2503aa55964be0050c1fb0d689034a1b3d9df5181acacd497e44c3f2e83898b461f6fa44043cf99d757412fbf7761c8e946182acc3331
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.264ubuntu1.tar.xz' cdebconf_0.264ubuntu1.tar.xz 282992 SHA512:5a6683e2e5f42747558a4f333ff50ac6acec3b7e4dae48aafdd48a721ccfc2fc4c1666038df9879a494df4ab08c3095f813f94d71864cba9a174c7c674f89c3f
```

### `dpkg` source package: `coreutils=8.32-4.1ubuntu1`

Binary Packages:

- `coreutils=8.32-4.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.32-4.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.dsc' coreutils_8.32-4.1ubuntu1.dsc 2291 SHA512:891c9ffe7dbdc3603bddd3bd4f89c26f9c348c19a59c36ba4fb4659090bcac02bf72e349c71b64b94fa3f398681956738d67c3c7cc2cc8090eec1287b01b6959
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz' coreutils_8.32.orig.tar.xz 5547836 SHA512:1c8f3584efd61b4b02e7ac5db8e103b63cfb2063432caaf1e64cb2dcc56d8c657d1133bbf10bd41468d6a1f31142e6caa81d16ae68fa3e6e84075c253613a145
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz.asc' coreutils_8.32.orig.tar.xz.asc 833 SHA512:9c73b35c9e8f7c2b8eff317afcb5aa3234c5f41c80d1882f3c2342906f3fdc876ae45d1256dd1b8fd3cb58c50925f3c13f93de5018626634fdca3c72c14a9acb
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.debian.tar.xz' coreutils_8.32-4.1ubuntu1.debian.tar.xz 41096 SHA512:74adfa2f2a85af8d7024ad6d13942e915217dcb10e29caa9c314e0a15da6ec019e7aa52ac5351c35ccea1bace7a05c6dc7569b7b0487c8fcd46b3ba42d66d89d
```

### `dpkg` source package: `curl=7.86.0-2`

Binary Packages:

- `curl=7.86.0-2`
- `libcurl3-gnutls:amd64=7.86.0-2`
- `libcurl4:amd64=7.86.0-2`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris curl=7.86.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.86.0-2.dsc' curl_7.86.0-2.dsc 2955 SHA512:94826b59138618510f354d0ba010697d08f9e72a5cf99a4a3e125700220afee2413f2045d5b0cbc7889b10a4f6a53042122cfca063f97bdb5c73d46a4dcef60a
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.86.0.orig.tar.gz' curl_7.86.0.orig.tar.gz 4232231 SHA512:b2d30b4d145a3621862a0f5e6378b5099ba92f4be6e92f4e070ec1299fc5eacba851bf993efd613b366fb81642f3f5cccb6e02adcd472dccc9c5e65c1a51812c
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.86.0.orig.tar.gz.asc' curl_7.86.0.orig.tar.gz.asc 488 SHA512:37edc2dd541fe046926a65ade8500cd1fb13d81aecbf98fc9e1526404a48b9c49a061e1aa5572607e80bc3a7044c985374208c8fce586a058d2d09e57bf59ffe
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.86.0-2.debian.tar.xz' curl_7.86.0-2.debian.tar.xz 40508 SHA512:12765021399404995f85904adb844228b2af166c104c955f65ad24ded1080bbb97b6cf688c6aaf9368cb9f0a3cb11742e058a8918d8eba0d28931b64468338c1
```

### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg-6ubuntu2`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg-6ubuntu2`
- `libsasl2-modules-db:amd64=2.1.28+dfsg-6ubuntu2`

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


### `dpkg` source package: `dash=0.5.11+git20210903+057cd650a4ed-9ubuntu1`

Binary Packages:

- `dash=0.5.11+git20210903+057cd650a4ed-9ubuntu1`

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
$ apt-get source -qq --print-uris dash=0.5.11+git20210903+057cd650a4ed-9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-9ubuntu1.dsc' dash_0.5.11+git20210903+057cd650a4ed-9ubuntu1.dsc 2208 SHA512:abab0db6a4207e39430f10e3841c2c6f8042e5157620b6cd08d5b3902b8207277772585d49f9e3f3b0cbbef82fcc205dcd0e0345dcc1726fa3204fa4dbf92d49
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed.orig.tar.xz' dash_0.5.11+git20210903+057cd650a4ed.orig.tar.xz 133320 SHA512:eced6bc60ca6ba4394a2ee65d8c6b88eca729c43e47053fc01dec5500ebe002a12f536c128c3fd821a2eb61b97e92c8a0be6d4532926479ce4b7d986be109cb7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-9ubuntu1.debian.tar.xz' dash_0.5.11+git20210903+057cd650a4ed-9ubuntu1.debian.tar.xz 35616 SHA512:9d6115f675e6ec3e3fe09c6f4082110985b4d0d29043c349a83647a14508bf3f13cb1143d95fdc88f46e8a6078928190c61bf52b0df517674aeac9f7ff5cd992
```

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


### `dpkg` source package: `debconf=1.5.79ubuntu1`

Binary Packages:

- `debconf=1.5.79ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7-0.4.dsc' debianutils_5.7-0.4.dsc 1737 SHA512:91f750cac588110e2790b886a5408152411fa0a1df78f6e6544fedc19200a5efc7e9da417ee152b077ddb5a87c68bd8130314f628879acb30724fe240fc4293e
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7.orig.tar.gz' debianutils_5.7.orig.tar.gz 257231 SHA512:79acd8885abca93842d696167171a359011c49a40f38deeb25bc94d62905f95afa3a7b2540d3bd4b0ffd363c5c48a439a1a68139a29d6c033980b019cea75d92
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7-0.4.debian.tar.xz' debianutils_5.7-0.4.debian.tar.xz 22412 SHA512:dff3affac8165446b05a911fcc54c4d0db0491f0bdba3f0e1464f2f6bc3020f607a4df324edbc59b72a02df5cd3351804763bb7a2b20785f0453fd30c0fec25f
```

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


### `dpkg` source package: `dpkg=1.21.11ubuntu2`

Binary Packages:

- `dpkg=1.21.11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `e2fsprogs=1.46.6~rc1-1ubuntu1`

Binary Packages:

- `e2fsprogs=1.46.6~rc1-1ubuntu1`
- `libcom-err2:amd64=1.46.6~rc1-1ubuntu1`
- `libext2fs2:amd64=1.46.6~rc1-1ubuntu1`
- `libss2:amd64=1.46.6~rc1-1ubuntu1`
- `logsave=1.46.6~rc1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.6~rc1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1-1ubuntu1.dsc' e2fsprogs_1.46.6~rc1-1ubuntu1.dsc 2957 SHA512:053deb1cadfbb95b9894216ec1a1fb90d32cba597dfd3da9e2b3895b032fa4c1ed2eaa3434158db46775a40a0296d60e9f1383905331827221df50807a9475bf
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1.orig.tar.gz' e2fsprogs_1.46.6~rc1.orig.tar.gz 9615342 SHA512:2b6afe2f8b5c83fd061bf72fe507bdc22206b1a781d3baecca693a6744f203715e8e6dd6e7864dfa853c85e72f4e94a813ff362ea8e43c0443025ab644550648
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.6%7erc1-1ubuntu1.debian.tar.xz' e2fsprogs_1.46.6~rc1-1ubuntu1.debian.tar.xz 85224 SHA512:d9ee270014468c1a00b7ada6715e3b3479b6d2f3bd3c6b044aad670304cfad4ab1bf275bc359642ca0c4d2c4d46ced52ba7740b3711ea974a75e11240d908dbd
```

### `dpkg` source package: `expat=2.5.0-1`

Binary Packages:

- `libexpat1:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.5.0-1.dsc' expat_2.5.0-1.dsc 1981 SHA512:feecb87fde8af281f051009ff4544a8c69f1161dad9d449402e309943f2f6e7593f7fce8007123f769af13f69ed0bbfdd99203b9c33658a2a55cd6fad3761bf6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.5.0.orig.tar.gz' expat_2.5.0.orig.tar.gz 8320988 SHA512:779f0d0f3f2d8b33db0fd044864ab5ab1a40f20501f792fe90ad0d18de536c4765c3749f120e21fec11a0e6c89af1dc576d1fe261c871ca44a594f7b61fd1d9e
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.5.0-1.debian.tar.xz' expat_2.5.0-1.debian.tar.xz 12680 SHA512:f34443bb81bc18d447ce75f9a37332eabd839ac090687ebd308cdd9a906d63177ce2eb3b43757a20d8449bc852730c44e5423707d2e7c380823254551562b493
```

### `dpkg` source package: `findutils=4.9.0-3ubuntu1`

Binary Packages:

- `findutils=4.9.0-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.9.0-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0-3ubuntu1.dsc' findutils_4.9.0-3ubuntu1.dsc 2066 SHA512:0967a16fb4f83f749314e0e61ecdd112b2ba2e6c8bc2da1650e85cb45f4e4f489cf03e80bb96248fb0d3fe5fe91167cf84840d68e5f6b5fb977a284e5199029c
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0.orig.tar.xz' findutils_4.9.0.orig.tar.xz 2046252 SHA512:ba4844f4403de0148ad14b46a3dbefd5a721f6257c864bf41a6789b11705408524751c627420b15a52af95564d8e5b52f0978474f640a62ab86a41d20cf14be9
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0.orig.tar.xz.asc' findutils_4.9.0.orig.tar.xz.asc 488 SHA512:b8e0b5471242912a20b9e468fa27b7f27339af5f7be8918173105262dee0152183bf4cf516844d348b206a694e028490d5d3b190f3aed8c698ba5444941f8dfc
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.9.0-3ubuntu1.debian.tar.xz' findutils_4.9.0-3ubuntu1.debian.tar.xz 28484 SHA512:2aeef5a8931606e3aec4f6e4f28c560d564b6bf43f2c459b189514a96fba4837104ba04ed1fdef75d101b5055f5692df47615369317e10f36f2d03e28b09dd24
```

### `dpkg` source package: `gcc-12=12.2.0-9ubuntu1`

Binary Packages:

- `gcc-12-base:amd64=12.2.0-9ubuntu1`
- `libgcc-s1:amd64=12.2.0-9ubuntu1`
- `libstdc++6:amd64=12.2.0-9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-3.dsc' gdbm_1.23-3.dsc 2583 SHA512:847e5955f668b7ed9e68ff9dd83f68582f53de50190d7fdade5a3ac0fdb9d2f76bf0e17aa5e873e29c2ac9f8b6e611980e80fc2084fd25cca8364ed4c23e0496
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz' gdbm_1.23.orig.tar.gz 1115854 SHA512:918080cb0225b221c11eb7339634a95e00c526072395f7a3d46ccf42ef020dea7c4c5bec34aff2c4f16033e1fff6583252b7e978f68b8d7f8736b0e025838e10
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz.asc' gdbm_1.23.orig.tar.gz.asc 181 SHA512:6653751c04584f10aa3325bd1cb5b9f7970a786dd2a99602ea620c11a86a9ba5c342aa52627bd06c03da822e9e1600dc034d9a8f42856a287fd67f6b9f161c71
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-3.debian.tar.xz' gdbm_1.23-3.debian.tar.xz 18552 SHA512:bf4f6cc7fba1a2d1eb8aecbb373fdcbd6244040964def34c5559c2643ec02b2acb25f0ff7107336553b3e2abf9ceaf73453e1990988efd951f63c47e67ae4ac6
```

### `dpkg` source package: `git=1:2.37.2-1ubuntu1`

Binary Packages:

- `git=1:2.37.2-1ubuntu1`
- `git-man=1:2.37.2-1ubuntu1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `glibc=2.36-0ubuntu4`

Binary Packages:

- `libc-bin=2.36-0ubuntu4`
- `libc6:amd64=2.36-0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`)

- `GFDL-1.3`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.36-0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.36-0ubuntu4.dsc' glibc_2.36-0ubuntu4.dsc 8718 SHA512:c731c14abae40b97be15d00a53ba478862e32dbd21e3a859220d4d08e56e300236c9dc12f7646d14bfd70a3b83fe720e5198defab0fac7f860b4b13c10f08874
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.36.orig.tar.xz' glibc_2.36.orig.tar.xz 18610836 SHA512:9ea0bbda32f83a85b7da0c34f169607fb8a102f0a11a914e6bf531be47d1bef4f5307128286cffa1e2dc5879f0e6ccaef527dd353486883fa332a0b44bde8b3e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.36.orig.tar.xz.asc' glibc_2.36.orig.tar.xz.asc 833 SHA512:b6999ebc4067e08950207e9c67f5172c6d43144e6680677bf3d93093c2270cb4c6e75f9ad37a60e7fec243141fd64b4348782c5794fcf03be363adf0b4543d53
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.36-0ubuntu4.debian.tar.xz' glibc_2.36-0ubuntu4.debian.tar.xz 931048 SHA512:6a70647fceb9f8db048865685f0101b45a87291bbd0b10780ed45a0e9c8ff353edd31ade36976e05cf7e95d479e24d08b7d0eb972330bc9d806be461d58baa66
```

### `dpkg` source package: `gmp=2:6.2.1+dfsg1-1.1ubuntu1`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg1-1.1ubuntu1`

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
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg1-1.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1ubuntu1.dsc' gmp_6.2.1+dfsg1-1.1ubuntu1.dsc 2345 SHA512:24359c1bbfc542ed29b17994362a473a716a90c43f9edb631473fae5d8fd6260726872b70c216dcd2185436f8273a044968d381df1dfa3fa2d4f8bffcc44fadb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1.orig.tar.xz' gmp_6.2.1+dfsg1.orig.tar.xz 1787428 SHA512:705b8de10ed61e00d3124a6ba4de7075dde1addc32282cc410513de136f0b5c3c769adc37bfd629c1f7208ab6ba0332f2dbe236208e2cf06b2528ea64ddc31af
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1.1ubuntu1.debian.tar.xz' gmp_6.2.1+dfsg1-1.1ubuntu1.debian.tar.xz 39516 SHA512:67d948ba1f1da4c1d220ea948088633ab329ee6aab2a8c7e02af24f5eec1f3fd5377a7a486e09e9f53f45bb8639e7f11ae23479a36cf61c91799ea00cda26706
```

### `dpkg` source package: `gnupg2=2.2.40-1ubuntu1`

Binary Packages:

- `dirmngr=2.2.40-1ubuntu1`
- `gnupg=2.2.40-1ubuntu1`
- `gnupg-l10n=2.2.40-1ubuntu1`
- `gnupg-utils=2.2.40-1ubuntu1`
- `gpg=2.2.40-1ubuntu1`
- `gpg-agent=2.2.40-1ubuntu1`
- `gpg-wks-client=2.2.40-1ubuntu1`
- `gpg-wks-server=2.2.40-1ubuntu1`
- `gpgconf=2.2.40-1ubuntu1`
- `gpgsm=2.2.40-1ubuntu1`
- `gpgv=2.2.40-1ubuntu1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gnutls28=3.7.7-2ubuntu2`

Binary Packages:

- `libgnutls30:amd64=3.7.7-2ubuntu2`

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
$ apt-get source -qq --print-uris gnutls28=3.7.7-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.7-2ubuntu2.dsc' gnutls28_3.7.7-2ubuntu2.dsc 3375 SHA512:a01f78a91b6580841ccb7c7cd3dfc1fbcdf866708c184b3005593d31b6527825d63beb7f53fb41c2489390acdc7675bcf5a7c50ab45969777c7c607d82df9e66
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.7.orig.tar.xz' gnutls28_3.7.7.orig.tar.xz 6351664 SHA512:ba00b20126379ec7e96c6bfa606cfb7bb0d9a5853318b29b5278a42a85ae40d39d8442778938e1f165debcdb1adaf9c63bcec59a4eb3387dd1ac99b08bcc5c08
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.7.orig.tar.xz.asc' gnutls28_3.7.7.orig.tar.xz.asc 996 SHA512:641da6364b46a20c36f685a618b9108bf65fd4e8901da7594edfdaf369e8a97698ab349de416b919d3e15c452db6d15e94e6dfdfe9fa2b91ce2e9b787829a366
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.7-2ubuntu2.debian.tar.xz' gnutls28_3.7.7-2ubuntu2.debian.tar.xz 70488 SHA512:c50607ecbfdd59249f538ef289d83fa92b7f478438aeb286ed914a2c3e1d5afdd0c32ba433acca723c9a4d85b5767d0ed1e41285374c1b388fed9532988a7d07
```

### `dpkg` source package: `grep=3.8-3`

Binary Packages:

- `grep=3.8-3`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.8-3
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.8-3.dsc' grep_3.8-3.dsc 1608 SHA512:e136d2e8338d8947ed0ac095c2458b0201894ba18c6ba6310951f7d48cee4a6e3682ea1cc26a7147a5c4a76927b51672ff30cbe06ccae4e8e2bb646842d47863
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.8.orig.tar.xz' grep_3.8.orig.tar.xz 1709536 SHA512:2014519a80c6dcd799837e1bd7d9d5ebe8729ec54b0dc76981dac4755a9a8a9f200470cdcc911e2825bed8162e61da39e3dd60289f7393b48bf67314077d0c79
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.8.orig.tar.xz.asc' grep_3.8.orig.tar.xz.asc 833 SHA512:8266b58485f225c2189814e3898c72e59d251b729e0c302d31f57abdb7ac2e6e28dde2c5c8095673b6f007b2a3ebc26db1dca910a7771aba80dad4b3c6761ee4
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.8-3.debian.tar.xz' grep_3.8-3.debian.tar.xz 20332 SHA512:0f37e9e0ca1059dcc72218bc56e6bf93f38d16c5908f1ade49ce331e485d439650b65df04c128956d435f14bcd6f2be3c8768d5da3bdd62312fc143fe59274d7
```

### `dpkg` source package: `gzip=1.12-1ubuntu1`

Binary Packages:

- `gzip=1.12-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.12-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12-1ubuntu1.dsc' gzip_1.12-1ubuntu1.dsc 2303 SHA512:8b6f5ada04f3dbcb891f9af31a28cf1a161392f98f78724088752981a3453474b32ad2f7312c683bd65fba6b6fe14b26bbacbe462a3204acfe614f7c0f217ff5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12.orig.tar.xz' gzip_1.12.orig.tar.xz 825548 SHA512:116326fe991828227de150336a0c016f4fe932dfbb728a16b4a84965256d9929574a4f5cfaf3cf6bb4154972ef0d110f26ab472c93e62ec9a5fd7a5d65abea24
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12.orig.tar.xz.asc' gzip_1.12.orig.tar.xz.asc 833 SHA512:1f4702797f7c5f1873c2f9c2f6210ba23824455d17ee82f50f0bf24240ed5bdf0090cf85338ccf76ba82422f8b4ad3a329d8bbf1350cb094d7bd61aa45550397
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.12-1ubuntu1.debian.tar.xz' gzip_1.12-1ubuntu1.debian.tar.xz 19796 SHA512:247ee91f2d67935a809248c8134789a57e13db3534e7d7c5e0ab543a4b1024cc39c29b3fb2fc5805b42f87004187601e642c45fd1f51baa80b21441786e64da7
```

### `dpkg` source package: `hostname=3.23ubuntu2`

Binary Packages:

- `hostname=3.23ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23ubuntu2.dsc' hostname_3.23ubuntu2.dsc 1085 SHA512:5e7f690bb67fcbc7521df55b69ce899ff005d24fb511c017d60ff5e4c9d9fc51271422bb81fc4998d90149cb814d2a209dc61db4d5073f72a37fb22af59827a0
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.23ubuntu2.tar.gz' hostname_3.23ubuntu2.tar.gz 13854 SHA512:28b80ea23cbde63af91912aef2773ce83d7f4d1c2c82beb59a86c0e6b11e276019c610a0a60e69947af2b9bc5f86e4f8f6d13c1cb1a9ce35f1e5cfb03e0dd582
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.65.2.dsc' init-system-helpers_1.65.2.dsc 2195 SHA512:146e1c34d482c36a528ec7f4c3dab6398d4e23af8aeb5a993b565fe88fb76aba38b647a075fae9d6ffa1848392fb995eda76f1971c3ff28436461e6aefafe6fe
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.65.2.tar.xz' init-system-helpers_1.65.2.tar.xz 44400 SHA512:b65d8c4848188a16a3dc52f5c2535566b472898aad5b455fcd2c4600884257e41f081cb5876630536af14f5bd9d92d379493882a7d53a7dee3a2b3007b12f85d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-2.dsc' keyutils_1.6.3-2.dsc 2079 SHA512:25176970cfeccf59c7c798042029ff78150ad2f8a1a6871aabd34c8d8bf9cb7c7ef2b1cfe78cbd7b61207a21512de703bee26d580b2a2bc62acc4722ba6e186c
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA512:f65965b8566037078b8eeffa66c6fdbe121c8c2bea7fa5bce04cf7ba5ccc50d5b48e51f4a67ca91e4d5d9a12469e7e3eb3036c920ab25e3feba6e93b4c149cf9
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-2.debian.tar.xz' keyutils_1.6.3-2.debian.tar.xz 13196 SHA512:cda54c621a40334005373a1dc90f93f3e1f6b5c5e0cbbd6299312526e77cc05e4e2eed4473e7e7f06847b5b47a7f2aee377362540ee48c9f38a5f5cf37931132
```

### `dpkg` source package: `krb5=1.20.1-1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.20.1-1`
- `libk5crypto3:amd64=1.20.1-1`
- `libkrb5-3:amd64=1.20.1-1`
- `libkrb5support0:amd64=1.20.1-1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/krb5/1.20.1-1/


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
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-5.dsc' libassuan_2.5.5-5.dsc 1997 SHA512:a9adc6bb30d71df875e9250ba43fb11cedc25f626d8478887e5c513c15fa85b649d8b19f4bd718852bc407d2e511563439a6bfbfd692499ed94d71a3610ff01a
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2' libassuan_2.5.5.orig.tar.bz2 572263 SHA512:70117f77aa43bbbe0ed28da5ef23834c026780a74076a92ec775e30f851badb423e9a2cb9e8d142c94e4f6f8a794988c1b788fd4bd2271e562071adf0ab16403
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2.asc' libassuan_2.5.5.orig.tar.bz2.asc 228 SHA512:343336ea5dffa113cd934167f548faf4e85d31bf64a46541ee6828b4d0995a8cc9d0668995812d9c4d3ab73347d5b1bbfff0d6ed586fbf4bbc57ac42e828e8d5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-5.debian.tar.xz' libassuan_2.5.5-5.debian.tar.xz 14256 SHA512:e52d0e524f7a8a97f128fd4ea91d6755c842a58044cf541b55bbdff1326c31671f446094e8517826f992b00da41a6a5e3432a8eb1f46b76abae3b2d1894255dc
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.7-1.dsc' libbsd_0.11.7-1.dsc 2308 SHA512:5931e89d07a64dff128b6028d02ef73bc321f1727f1b9cc6b2b2584c541ede2a485f9cd422db67b3c947a96a5661559a86532d3757486f5b16f65f084e3fe9f4
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.7.orig.tar.xz' libbsd_0.11.7.orig.tar.xz 418508 SHA512:51fda4724f41dd8a4628afd58c21236a7588d9045e337e06eeabf83805a9aaaa53705441ca901ad11f1c65f18e881523bdc97721a7d3d6a5cced27f2450d09a2
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.7.orig.tar.xz.asc' libbsd_0.11.7.orig.tar.xz.asc 833 SHA512:bdcce69ee261039900896c5be48659f1b6b809f3a6e8a5220aac30a6687926ac29e478a3ea737727d077d6575ee11b86eed896932568fdd261a9aaeb46d695b6
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.7-1.debian.tar.xz' libbsd_0.11.7-1.debian.tar.xz 18012 SHA512:bcf87d66ddf103d3a27b968e326093327e0f97fddfa97a456770eb136a105c8b9b2ca89741b831bd98e9ee80e9e22e961611bf01c2f6510b163a12f24aa60287
```

### `dpkg` source package: `libcap-ng=0.8.3-1build1`

Binary Packages:

- `libcap-ng0:amd64=0.8.3-1build1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1build1.dsc' libcap-ng_0.8.3-1build1.dsc 2231 SHA512:ae93d75a9a7e520062ddcb31346ce50032b6ba9231006e62e7e2cde8d9b2f5bbfedcc96bb35c53958347ead2d9c1fb201cfdbe3c44d47824c37bc0f8dafeb6db
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3.orig.tar.gz' libcap-ng_0.8.3.orig.tar.gz 455383 SHA512:0ef9bc7bc6b7b59991f43b79aa6cde3e8d2c22c4b9ced2af8deae501e01d51e893033d109cb8aa0fdcba190140110993089245346334d7b114d18f1bb1b55b97
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1build1.debian.tar.xz' libcap-ng_0.8.3-1build1.debian.tar.xz 10556 SHA512:4f9d2b6ce66c181045c00d79811d2047086c2a9127e661942558e8e413f301ee5ca8fef5bdbbb2d9f64fa8a9d750e4e0706ef524761eb4d89c82db24b65a2fca
```

### `dpkg` source package: `libcap2=1:2.44-1build3`

Binary Packages:

- `libcap2:amd64=1:2.44-1build3`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.44-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1build3.dsc' libcap2_2.44-1build3.dsc 2311 SHA512:30fa503d6bffa093ceafc07a26f48b88da855c2957bc0bce99f83461dbf7e656b0460d58752eb60a3699c1c250e6135bb086461af5e3734f1802adbbd5d39be2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44.orig.tar.xz' libcap2_2.44.orig.tar.xz 125568 SHA512:1bb323ca362923bd6bd0e2e4639cf8726975165a620a243b31e797056439eb7efb2bfbc8e5521636783a86c7415b2037b1638c98747b79183ca7d3d42a04ff20
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1build3.debian.tar.xz' libcap2_2.44-1build3.debian.tar.xz 21312 SHA512:b1c5c20092fe0cb13318f84e585ea9095dd552332a23c8d3162ca1013f02f3b16f7c5a94d407ef88aee62aadfa1f50e67959a3f5206653a801af878f8d89ce24
```

### `dpkg` source package: `libcbor=0.8.0-2ubuntu1`

Binary Packages:

- `libcbor0.8:amd64=0.8.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcbor0.8/copyright`)

- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.8.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.8.0-2ubuntu1.dsc' libcbor_0.8.0-2ubuntu1.dsc 2196 SHA512:3dae3506bfaeee3e945c6a500be3f9f7a0de7f10f2924304dc933cc98c7b0f8be5618c14690f92d2c0d64e3c6f29eb5e8ba09185d82452a0d071e2355daff917
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.8.0.orig.tar.gz' libcbor_0.8.0.orig.tar.gz 267044 SHA512:694d2d3a78d80072f96e0afb73590ca1f3572e41d2117330ef4313ed06271743b048d3ba3259c6ffe9a802d5e441379d0e54787d1d42fed08dc81ac4f06c6dbc
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.8.0-2ubuntu1.debian.tar.xz' libcbor_0.8.0-2ubuntu1.debian.tar.xz 5472 SHA512:6c60981075bf118fd7a5df52cbc0d53be00abcc0257b97c3527409d37d400019787ed285d488938061ece9ac0423a936dc190c389ad7ae41a78bc573e6ceab4d
```

### `dpkg` source package: `libedit=3.1-20221030-2`

Binary Packages:

- `libedit2:amd64=3.1-20221030-2`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20221030-2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20221030-2.dsc' libedit_3.1-20221030-2.dsc 2281 SHA512:e3db9cccd742891543df891407449d207b14b392c1c1cc821c63fe3da51c9ecffe5954687e6ad088e6141f0b198be6716456c7370c7b5a49b7223654cf8669ae
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20221030.orig.tar.gz' libedit_3.1-20221030.orig.tar.gz 533261 SHA512:41eb46feaffa909e8790b9a9e304d5246e82ab366721196126a923d68b4d4964d0a433fe238f9d5e0a00aefb5c8cb66132150792929a793785ad091d91016f97
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20221030-2.debian.tar.xz' libedit_3.1-20221030-2.debian.tar.xz 16488 SHA512:ee07a5eda1c62e469a3d3680028c4d21892a7fc76c5259378a9218ae043120faa78df537d61cf1ee35dbbda3f94b093dae1d8143d8f5249ff9d5948faf82fb22
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

### `dpkg` source package: `libffi=3.4.4-1`

Binary Packages:

- `libffi8:amd64=3.4.4-1`

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
$ apt-get source -qq --print-uris libffi=3.4.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.4-1.dsc' libffi_3.4.4-1.dsc 1951 SHA512:cfcf127389ffec7a5a32061cc39c39af23c1d78b113e72598c2e1a76d4f0e5b9d621eda2f59c20beac243f87eb11d459a158bb9e7d3ec37e17b70dc8a298db42
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.4.orig.tar.gz' libffi_3.4.4.orig.tar.gz 1362394 SHA512:88680aeb0fa0dc0319e5cd2ba45b4b5a340bc9b4bcf20b1e0613b39cd898f177a3863aa94034d8e23a7f6f44d858a53dcd36d1bb8dee13b751ef814224061889
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.4-1.debian.tar.xz' libffi_3.4.4-1.debian.tar.xz 10380 SHA512:6fdf678230a0ce9a6e70eefe20429705a497cb8e710a89a33695381274110bc6c022c80250668d2786e0264b743ae0b6db88550f45aec0485c606c56ce80dad9
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.12.0-2.dsc' libfido2_1.12.0-2.dsc 2588 SHA512:11584b3ff7cdb899cb35791af50f5dbae87fb3932f5a24d00d9b05550415071edb75f3de820bbc5b2802f58e3d35eb1312fada97ff2ebef49d4c7f5b76117651
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.12.0.orig.tar.gz' libfido2_1.12.0.orig.tar.gz 652326 SHA512:ae8c716fe9b2fa52f191c4b3fe61442ba0b7a364a23c6c3a29afdba4f47c5eff89cb1d6c9fcacaefd7d4ebce641d35600527ee33934786c2096ac97f78e9418f
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.12.0.orig.tar.gz.asc' libfido2_1.12.0.orig.tar.gz.asc 228 SHA512:1d603d26fd78534ae0a5cb624ebb8c714bc3d358822f41efdbf3e7ef5056480cc04d649d7a8d821f1109511b1ac5873d5b3307a2c4e666912ca5a8a16df5a011
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.12.0-2.debian.tar.xz' libfido2_1.12.0-2.debian.tar.xz 52808 SHA512:74a1594e9f3a9d3ad05389de3d66f1bcaf0e04ec9164b5807f77cc5caaee74f046941b1c65122fb534133d0b4ca3ea1ab71d0c94df55f0963256b98801874067
```

### `dpkg` source package: `libgcrypt20=1.10.1-2ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.10.1-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.10.1-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-2ubuntu1.dsc' libgcrypt20_1.10.1-2ubuntu1.dsc 2918 SHA512:b46e2708b07161785fd419625e8de467f60eddd686e06530f4db2d7dc263702eb2ebbbc53d04e9c147e080981ece86de9a6ff697e334b8a433d6eab8c2af838a
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2' libgcrypt20_1.10.1.orig.tar.bz2 3778457 SHA512:e5ca7966624fff16c3013795836a2c4377f0193dbb4ac5ad2b79654b1fa8992e17d83816569a402212dc8367a7980d4141f5d6ac282bae6b9f02186365b61f13
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1.orig.tar.bz2.asc' libgcrypt20_1.10.1.orig.tar.bz2.asc 228 SHA512:dc74b1029ce1909466eeb9cbdbf77b3e3fd2093ef40ea81bd1b9860eb11d1994087a9b575b6c94ed22f64d0f7e8d2999e30c7ea60fd90a2ecf99ddb60cd156c6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.10.1-2ubuntu1.debian.tar.xz' libgcrypt20_1.10.1-2ubuntu1.debian.tar.xz 38144 SHA512:46e9f51cbfdca1a23eb88e290465db57e01b443e3ee13b1b5c2d5ea4afb6fda91419a8ae911db8aef344083ca8bd01ceb0853c082f697c787158a5493e862bcd
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.46-1.dsc' libgpg-error_1.46-1.dsc 2273 SHA512:84eccc5384bcf780ab23867740b9f18993b0c64d8881230dbaeb7837ff33dcde7bba7510068e3ec1e8080a0e159ed60b4f8e52d23177d0a27dc0ccae6a1e43fe
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.46.orig.tar.bz2' libgpg-error_1.46.orig.tar.bz2 1014291 SHA512:b06223bb2b0f67d3db5d0d9ab116361a0eda175d4667352b5c0941408d37f2b0ba8e507297e480ccebb88cbba9d0a133820b896914b07d264fb3edaac7b8c99d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.46.orig.tar.bz2.asc' libgpg-error_1.46.orig.tar.bz2.asc 228 SHA512:89f5561f8539cd1c39c6e5d5e51cfc27d1d8525dbafb27efed5ffc9c8e19533b2aa5b83df1357e9f85b182ead46dbd3e4d1bee707554fcab7238f36f2ae1a1f9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.46-1.debian.tar.xz' libgpg-error_1.46-1.debian.tar.xz 18532 SHA512:20865fad9fb3781df9719874a67ee66a341eb1fa3bc1cd90630ba9103a38d33a9ce2b12d395bbc42e59840b0e800491ab60e8564418b8dcbd955236d8a8bb1e0
```

### `dpkg` source package: `libidn2=2.3.3-1build1`

Binary Packages:

- `libidn2-0:amd64=2.3.3-1build1`

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
$ apt-get source -qq --print-uris libidn2=2.3.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3-1build1.dsc' libidn2_2.3.3-1build1.dsc 2663 SHA512:cd07a7bf26d7fcbd6fc559154cdd0ee4eceb1b16a9b4fb0ff67f28f2df477ccfa63c43f639c3838cd4da1c86b2b1fb5bc6b68ed06f93c9d5eb9b6f17f79bb648
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz' libidn2_2.3.3.orig.tar.gz 2116946 SHA512:2dd0201b5224b3eb6a5667e53c9a2beb6e6aefefab23060a70f143bb5d447029e8f4200e4e0460a4fab51767f0bdfc9583a0cc757652bee58f5593106dd18274
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz.asc' libidn2_2.3.3.orig.tar.gz.asc 228 SHA512:bad901350e21ff39f0385685c13b3f366cd77dad59c736547773f9555531bc56022982c3fb6fffd5b82624bdd3ea8bd1806e531f80a06c77e4e46b08f18f08a9
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3-1build1.debian.tar.xz' libidn2_2.3.3-1build1.debian.tar.xz 16092 SHA512:a7e7c19d48b676b7b083c6f55a3cc9880dec316e4f28166255839d0824e2b67ff753509c627eb89a84e514d3661bd4d23800bb6cea0c902d7bbb958e3e9083ba
```

### `dpkg` source package: `libksba=1.6.0-3ubuntu1`

Binary Packages:

- `libksba8:amd64=1.6.0-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-2.dsc' libmd_1.0.4-2.dsc 2264 SHA512:d06f3e257f79d1a49af24ab198487ebbbc695ef593eb40c951888f1fdaec80e50df2d4ae590442b742506f314f29677c54b3f2c28ea439e8e5ac3a77de4d10b3
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz' libmd_1.0.4.orig.tar.xz 264472 SHA512:731553ecc5e0e1eb228cced8fccd531fe31fb5c7627ca30013d287e1aeb8222959cf7498fbb7414bbabb967b25d4e8b0edd54fc47f6ccf55fc91087db0725ce3
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz.asc' libmd_1.0.4.orig.tar.xz.asc 833 SHA512:ec4b60a721da1f315fad73daa8ee620f44a53f17a30506c4d63b154b3abde19bb248b2ce6b83b989589e2a9184ebbe1b870e83181e18a4147d75617579d10504
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-2.debian.tar.xz' libmd_1.0.4-2.debian.tar.xz 10204 SHA512:b1fb9128c407f1ae6f154508f8c45e28aa1d8886740dcb7a5c4fda0135cc6e534b93f864dd5746c7be3a03bd7109eac0faf7c388937da8d15c0fad76604e441c
```

### `dpkg` source package: `libnsl=1.3.0-2build2`

Binary Packages:

- `libnsl2:amd64=1.3.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libnsl2/copyright`)

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
$ apt-get source -qq --print-uris libnsl=1.3.0-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0-2build2.dsc' libnsl_1.3.0-2build2.dsc 2087 SHA512:f13d28f34b0e71b04b5a0313b1cc79cdbe7d5e7f910d649af63b42824654e3cf01c02caa0e68309cb03350a17506e034800af1b1e3ab9af99fb64121c119215c
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0.orig.tar.xz' libnsl_1.3.0.orig.tar.xz 321488 SHA512:a5a6c3ccb2d1e724c8c1f65e55dcd09383eb1ae019c55f4c09441eadf23ffbc2196cfad259805b0ac40ddf3a10af0da453e4d739d67d46829c64d0995dab4e55
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnsl/libnsl_1.3.0-2build2.debian.tar.xz' libnsl_1.3.0-2build2.debian.tar.xz 4868 SHA512:367904106ba925eaa667cc273b37afd052ba795b7ed004cdb501c13dd26b469df971ac10acec2bf57d91fa4839f356c7dcbcd4969914891152588365844ced9a
```

### `dpkg` source package: `libpsl=0.21.0-1.2build2`

Binary Packages:

- `libpsl5:amd64=0.21.0-1.2build2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.0-1.2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0-1.2build2.dsc' libpsl_0.21.0-1.2build2.dsc 2348 SHA512:28ff7399af2290fd447f781b1f799ba5cb8c0cb794833c40d8f16cc81b0abd4f77bd9dc990c7925e8be8832555f07cc6ede80f971b68ac5fc6e644d601e582b6
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0.orig.tar.gz' libpsl_0.21.0.orig.tar.gz 8598583 SHA512:b7466edb9763f94a65330dbb3c19586f9c7b01e20ddedb38ca2fd4c9ee5764a4f9b3291dc4b76659b45425d954f15973345f917b2cd2de72ea731e8c41f2a265
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.0-1.2build2.debian.tar.xz' libpsl_0.21.0-1.2build2.debian.tar.xz 12896 SHA512:9d8c7130bee8c521e4f1ab1e13edfe2ed2fec538bda9133662d4120e8f5303595e6f27f466f30b07e61b94e138dd2787e17af91b8cc29275b5b4d2e098133eee
```

### `dpkg` source package: `libseccomp=2.5.4-1ubuntu2`

Binary Packages:

- `libseccomp2:amd64=2.5.4-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.4-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4-1ubuntu2.dsc' libseccomp_2.5.4-1ubuntu2.dsc 2799 SHA512:4fca61fc6e892446a4926f920a9f428aa34536346ccb4f2a7866b321893eeff5b8c009937e6270675329e1fde515630346ff4fa60ed8a10d2a1f0d3bf918636f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz' libseccomp_2.5.4.orig.tar.gz 637228 SHA512:92650bd7d1d48b383f402a536b97a017fd0f6ad1234daf4b938d01c92e8d134a01d2f2dd45fd9e2d025d7556bd1386ec360402145a87f20580c85949d62cea0e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz.asc' libseccomp_2.5.4.orig.tar.gz.asc 833 SHA512:10ce632da2762e3b5acb468194b2424d80bab786cc5923a8ee0b0684290282ef2f0a17192680afb36626c82e73a3ba64e73f248ed63cd3e55c3cf8cee4e1e447
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4-1ubuntu2.debian.tar.xz' libseccomp_2.5.4-1ubuntu2.debian.tar.xz 23632 SHA512:81a06032af40f3638dc603941f586bab9c66d866f6632478c49f7e82ac07702db76981439bceea81f1129a9ba324db05e30845ba74ebe1fcb08de179aa702b22
```

### `dpkg` source package: `libselinux=3.4-1build1`

Binary Packages:

- `libselinux1:amd64=3.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4-1build1.dsc' libselinux_3.4-1build1.dsc 2879 SHA512:1f22ae11faa04a8e57e6769fe0b024173d15f9e6c67bd8d09fdb78fd9682868484f2e081f7f8611cd0a7aec1f3f252e11817eac3b71847faa994ffc351a0075d
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz' libselinux_3.4.orig.tar.gz 210061 SHA512:7ffa6d2159d2333d836bde3f75dfc78a278283b66ae1e441c178371adb6f463aa6f2d62439079e2068d1135c39dd2b367b001d917c0bdc6871a73630919ef81e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz.asc' libselinux_3.4.orig.tar.gz.asc 833 SHA512:de1e0431cbf8526c4de77e1ebe9fa40111ea4a0e71d6b0e9ec6c975b61f4090ec5df4386af362bbd5cc8faffb24c21febc13356fe081df642bbfa52010a00ba0
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4-1build1.debian.tar.xz' libselinux_3.4-1build1.debian.tar.xz 29496 SHA512:27482eeab29906e37015c7d8d61d4cf3cf7980549b1ad9243dd7c87191fd6dcf17595cc37b21202e6504bc9006076a09757259be5fb2ebd56b39245695aede27
```

### `dpkg` source package: `libsemanage=3.4-1build1`

Binary Packages:

- `libsemanage-common=3.4-1build1`
- `libsemanage2:amd64=3.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4-1build1.dsc' libsemanage_3.4-1build1.dsc 2915 SHA512:af41ea533c3c02ad21628f7ddfcef9567d3c15ba9313241d2a618016f9831b7b383d17c38625681fc6b067748afe50f1da01dbb96da47035d4d0cf2375639ced
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz' libsemanage_3.4.orig.tar.gz 185177 SHA512:831dc789545bb9a0b009bdb4f7fe52f6197ad8325946640f886a960d08e40b8a69eccd5a70cce51466bb5cb7f742feb78d19a9ec63383fbd03aa451508677e73
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz.asc' libsemanage_3.4.orig.tar.gz.asc 833 SHA512:42da56fe008c7b18ea8834f6ae0535e78fb5f94a826a2beef6c8fbde480fd5d0f87a7969e98ded3281f7b76b594e71c466c7630a85536d07a6550d163390fc49
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4-1build1.debian.tar.xz' libsemanage_3.4-1build1.debian.tar.xz 23324 SHA512:615ac263a4b143f71ec2a4cf48fbfe2907cf79aee5b8c17d26c50dcdbe75ac700cacc67227bfe082e3211826e2ea834c9fd7960f642bdbdb69765932ea8d128d
```

### `dpkg` source package: `libsepol=3.4-2`

Binary Packages:

- `libsepol2:amd64=3.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.4-2.dsc' libsepol_3.4-2.dsc 2005 SHA512:dfac0d64c2e2a2f68643a65091aeabc6175387e935a9fcf33834d29e52e0d5a6cb747462f656c82eb368915c71c7f6f38010eb3868ba9e2214de0f4eb3c867f8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.4.orig.tar.gz' libsepol_3.4.orig.tar.gz 490628 SHA512:5e47e6ac626f2bfc10a9f2f24c2e66c4d7f291ca778ebd81c7d565326e036e821d3eb92e5d7540517b1c715466232a7d7da895ab48811d037ad92d423ed934b6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.4.orig.tar.gz.asc' libsepol_3.4.orig.tar.gz.asc 833 SHA512:df3631f5f5b27e5893cfb14080089bd5a662d909257045c4b0cfe95e2abbb86d108f954248acd73121a65d9ab5fce771836e1aba4d3003c327ae9eecffefe791
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.4-2.debian.tar.xz' libsepol_3.4-2.debian.tar.xz 21516 SHA512:571122e4656dce9a761db4f05777d51e7da95bb344fe74e62871bed744d4b30c7b80920106728b1039a47694f567181f6f3bba5e4782f97ce119e0975f7ed62f
```

### `dpkg` source package: `libssh=0.10.4-2`

Binary Packages:

- `libssh-4:amd64=0.10.4-2`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.10.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.4-2.dsc' libssh_0.10.4-2.dsc 2742 SHA512:33ec87fd8a2465a283b640bb05b4ba17a9ac0d8ab8c873de1b6f7f32e9efd07aedaf5af3a3be304bac3881ecb9a88621b90b27b594dcf33ad7f76b5f08745164
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.4.orig.tar.xz' libssh_0.10.4.orig.tar.xz 554920 SHA512:01ee52d480201d9886c15e81137c185334b404d1c8e8b743ddf58e95fe8619c8c013616a49807bd1111fde72fa177cd35f3c22b66cbf5d720b5abfacdf7601ed
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.4.orig.tar.xz.asc' libssh_0.10.4.orig.tar.xz.asc 833 SHA512:8200215d6471851dac8cd8efd07400b9bc4403cf5406a9fdb28a68ef8fe85c227f92a26071fb32d9396b91661568333b5ceb9b23665d22e761b981dd880bbbc8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.10.4-2.debian.tar.xz' libssh_0.10.4-2.debian.tar.xz 27800 SHA512:1f74b898e821200d621f700ecd71445bf4356f6ad61cd07c75089c308eba4849f91519543deb7087c17e19b4b0645a35ca9e43634a7ef0694df6960b4c64d199
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-2.dsc' libtasn1-6_4.19.0-2.dsc 2662 SHA512:86405d615a659eba8e60b01f293b442564b2438c00c81241c5683bd52165e10398d9d1016051abcfdef4e4fb7f7cebb703b82d950bf68e9906ae9893dfdb2624
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz' libtasn1-6_4.19.0.orig.tar.gz 1786576 SHA512:287f5eddfb5e21762d9f14d11997e56b953b980b2b03a97ed4cd6d37909bda1ed7d2cdff9da5d270a21d863ab7e54be6b85c05f1075ac5d8f0198997cf335ef4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0.orig.tar.gz.asc' libtasn1-6_4.19.0.orig.tar.gz.asc 228 SHA512:e0417625f8df22c6421914bf2d4f19d7f27260c24c04f50e59669681f326debe06ddef9dc5a2e20fda50feb30bbbf3f41597e64961257304ec2c407aa76d107e
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.19.0-2.debian.tar.xz' libtasn1-6_4.19.0-2.debian.tar.xz 22012 SHA512:970b94efd8f52de08852d6c16b43c180ce498c2e929188f5b908bf6fb3cd6078dede768551d9329e33d6af201e6d3c2036128affa9c78ecc0045c13db886fa88
```

### `dpkg` source package: `libtirpc=1.3.3+ds-1`

Binary Packages:

- `libtirpc-common=1.3.3+ds-1`
- `libtirpc3:amd64=1.3.3+ds-1`

Licenses: (parsed from: `/usr/share/doc/libtirpc-common/copyright`, `/usr/share/doc/libtirpc3/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds-1.dsc' libtirpc_1.3.3+ds-1.dsc 2129 SHA512:08672fa78293f89a5bc5ffcc5d191fe885b84e4bd0eae5829bd391621a2188f3a36e4e6bb5aa9c4b6a4bfb443687471eec82352d627ac32c448354fd168988ad
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds.orig.tar.gz' libtirpc_1.3.3+ds.orig.tar.gz 699030 SHA512:b32bef18da9763c04cb0d372472fea91ee88ec850d6cb3d8b398c67e47d93862a2f873f2e0a38dc5379d7d3887ac127dc4b43bddfc55403375a4cc839142a562
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.3%2bds-1.debian.tar.xz' libtirpc_1.3.3+ds-1.debian.tar.xz 11232 SHA512:fa7f5fd84993342230283de1dcd01db8f4aa61c1b100291b0ca09269c9d036d9f3c823986f8f6f0f492a2b24cc4522397e83c0f4e610b844845886e88c74e24e
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-2.dsc' libunistring_1.0-2.dsc 2181 SHA512:40ad936d753f207f93223dab8e99b14d733e7b4f8234b7aa111789b4fb974116aa1339ede4accf3751ad44e379f1ecadf903e1c006b31e4a72bba65173f01c21
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz' libunistring_1.0.orig.tar.xz 2367800 SHA512:70d5ad82722844dbeacdfcb4d7593358e4a00a9222a98537add4b7f0bf4a2bb503dfb3cd627e52e2a5ca1d3da9e5daf38a6bd521197f92002e11e715fb1662d1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz.asc' libunistring_1.0.orig.tar.xz.asc 833 SHA512:7e32f69fac79fc418ea0aac5eca8c09fd5acbbe781d00504cd24145e2da45ba5696f20c00d16647cee8a65de2397f71bd86522e619566e7413faae4e5d739cac
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-2.debian.tar.xz' libunistring_1.0-2.debian.tar.xz 14520 SHA512:cae7a131985dd7d47248acd7fdd4d3332b804bb9d06c2e05c94507c4549a5c0d56a88c4657e09410cf98beedde104796b7a3e51d62290cc6465717cb0b20753d
```

### `dpkg` source package: `libxcrypt=1:4.4.33-1`

Binary Packages:

- `libcrypt1:amd64=1:4.4.33-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libxcrypt/1:4.4.33-1/


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
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg-1.dsc' libzstd_1.5.2+dfsg-1.dsc 2173 SHA512:7651f212659f76627d419741d31070ce15c996a54ded712260b3806c1973a0a46afbd2386c8a8d8b8565481d3659702a8a05a5b1e09a0e28dd9779fbd75f650c
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg.orig.tar.xz' libzstd_1.5.2+dfsg.orig.tar.xz 1404564 SHA512:8e26e9f65d4c649a2a0b75968e491bcad152dd27bca9c9db62a8a11343c6eb361ebe82dec8375efb9a38ecce2417afe628199aeeca1d78c754d4cd1e6fc20542
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.2%2bdfsg-1.debian.tar.xz' libzstd_1.5.2+dfsg-1.debian.tar.xz 11820 SHA512:052c0f849654f47d3503a966f23c8c89db29e7f99dea3f400c082e4c2c9dad83ad4986ecad6f4400d90127ed120c006569221cd5ee5438152fb0d3bfca92fa50
```

### `dpkg` source package: `lsb=11.2ubuntu1`

Binary Packages:

- `lsb-base=11.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.2ubuntu1.dsc' lsb_11.2ubuntu1.dsc 2219 SHA512:236d800c18316cee00a45644118d3e598407906501db6eb8090abaef614927e7455e76f60bf1caff4dd5db1d14bffee0a3bcad2643fde8768125319b58c7ee62
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.2ubuntu1.tar.xz' lsb_11.2ubuntu1.tar.xz 46600 SHA512:4e956df2bfc733f48718f770513708aeb9f68e234ad2536a88ca222039143ca20b99b54d857486a824d27e5f3579c9bdb3ab1e6dd3114c7a2112f36c9c660c78
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4-1.dsc' lz4_1.9.4-1.dsc 1951 SHA512:556aac9a8300772dc4016c09c5783ad38da73c2abe06a2074ed31ae2429972f81e49e883e11c1d9f25c63a8c8ea95cf7f738a1e9ebc2280a015615eb2c84ee10
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4.orig.tar.gz' lz4_1.9.4.orig.tar.gz 354063 SHA512:043a9acb2417624019d73db140d83b80f1d7c43a6fd5be839193d68df8fd0b3f610d7ed4d628c2a9184f7cde9a0fd1ba9d075d8251298e3eb4b3a77f52736684
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.4-1.debian.tar.xz' lz4_1.9.4-1.debian.tar.xz 8128 SHA512:e89e2577dea9d76f6cac8c154c3fc6f77f501b5896ba949561e8a6a1e4982ad8de83d2deab8ca53dccab9856294dc2397d359cb0f4279b4f70b152c482043d88
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.1.dsc' mawk_1.3.4.20200120-3.1.dsc 1776 SHA512:1eb52b1393f45a35e63cbd065c2c125ae42cf4e58fc18b44350fc4311198d4d976b38a3d5ccba0e87ca5c5a69c2085970d3ebd9762543baaed3f994aee533fc2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA512:14d9a6642ce931bf6457d248fc2d6da4f0ea7541976ca282ea708b26df048f86fdf92c27f72d497501ccd43a244d1d1a606f1a2f266a7558306fea35dcc3041b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.1.debian.tar.xz' mawk_1.3.4.20200120-3.1.debian.tar.xz 14080 SHA512:e4c067f337c7d5302c275198d04f0211023626db4e72ab6f8e5642fe0936f97cb583f5c6d8911c424e9a79b438fb57b6320b8aa68cf384db2bf44a7e512a0388
```

### `dpkg` source package: `media-types=8.0.0`

Binary Packages:

- `media-types=8.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=8.0.0
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_8.0.0.dsc' media-types_8.0.0.dsc 1620 SHA512:f1f15bb477c452c714689b0f0d4a6ef739c82212ee6b3a4ac6546311cd2305c12b9f38508bc226884029f251ec5a7a0317d0851af8cdeb4375a9575930db76ee
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_8.0.0.tar.xz' media-types_8.0.0.tar.xz 56364 SHA512:fe1b42c1bccf790ae1815e6e6459e8357ed26df9deaa5c57afb85299939d76287da7d8e0b6b51707f82831c6c33322d363ac2a5117e79b42c3f813331bcee506
```

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
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.3.1-2.dsc' mercurial_6.3.1-2.dsc 2848 SHA512:c2b005947a47ef8a4ac09acfe0599561e21e2fcbea519203e7969943decfee3e5bc7d60dc9d429c4a05a1d695a12864f4af52f190745dfe0520dea2756039d4a
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.3.1.orig.tar.gz' mercurial_6.3.1.orig.tar.gz 8089720 SHA512:99cd77c25e6c7f064ea9b631a8632b6020cb012c2f5a8c1da371ed413a4f984d04f8c293f551f890bbf084f840d7406aa25956f016ff2596173cd2f1f834873b
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.3.1.orig.tar.gz.asc' mercurial_6.3.1.orig.tar.gz.asc 659 SHA512:6d3858ac75e23812b889f148270eac19168da675424350405de4a5cd120aab16c04032e9f0e114519692d5aeaa5e9ecc903058a610b6b3ebec19e1ef92bbc925
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.3.1-2.debian.tar.xz' mercurial_6.3.1-2.debian.tar.xz 70616 SHA512:b99170cb61489c0000737420c37df0d5fd957443b568e972273122eb131a84a852ff22276ef4f8c0fbf0ee055f28b3613abe4913dda12982560a0dd99df2a26e
```

### `dpkg` source package: `mpdecimal=2.5.1-2build2`

Binary Packages:

- `libmpdec3:amd64=2.5.1-2build2`

Licenses: (parsed from: `/usr/share/doc/libmpdec3/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.5.1-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.5.1-2build2.dsc' mpdecimal_2.5.1-2build2.dsc 2026 SHA512:2f930154a94b9b4090f18e848ea94d115304827e351abc9141ef8646b9937a0f93eb2517790b661b0569e22bb498497c03972233e1ace6bdd85c9fc6922e7e70
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.5.1.orig.tar.gz' mpdecimal_2.5.1.orig.tar.gz 2584021 SHA512:710cb5cb71dbcf3e170ca15869c148df0547b848400c6b6dd70c67d9961dbe1190af8fb4d1623bfb0ca2afe44f369a42e311ab5225ed89d4031cb49a3bd70f30
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.5.1-2build2.debian.tar.xz' mpdecimal_2.5.1-2build2.debian.tar.xz 6860 SHA512:261ab28a609fbcff2b9561f1b1e484500c5652e48bd0abc4f8c5df73b7e00333b80f1fe416c84800690d13d52d2af72d97503dcd0afa61073ee5610d62a52a02
```

### `dpkg` source package: `ncurses=6.3+20220423-2`

Binary Packages:

- `libncurses6:amd64=6.3+20220423-2`
- `libncursesw6:amd64=6.3+20220423-2`
- `libtinfo6:amd64=6.3+20220423-2`
- `ncurses-base=6.3+20220423-2`
- `ncurses-bin=6.3+20220423-2`

Licenses: (parsed from: `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/ncurses/6.3+20220423-2/


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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.8.1-2.dsc' nettle_3.8.1-2.dsc 2274 SHA512:441e46fd50c9626864ea1cb848230ea032cd06a5242ff496e9e5cd22ab44ad28016412d12ccd113baf114672e026334ef11a472116ef41bb9509917df091f080
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.8.1.orig.tar.gz' nettle_3.8.1.orig.tar.gz 2406251 SHA512:a405da3438d185d96917b03b00abb9ab43e04f58f770f657f716c25d64bb258ee170a71328e74736caa7121f50c0c89d3cc840c1201d2a92cfaf1357d24bdc6a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.8.1.orig.tar.gz.asc' nettle_3.8.1.orig.tar.gz.asc 573 SHA512:5856cfe4f0e907734af2ad699f0c26ad46e1a80828fd587ac1122b6493ad8527f832c2042ad936e139128a79a2f2478f5888d3a6ad92185984472f788f5e865a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.8.1-2.debian.tar.xz' nettle_3.8.1-2.debian.tar.xz 23396 SHA512:54d32e6ccb8da1ea1ea66bbbeef4e3c6a878e8e067ffe29156c8727c256f2fa3134115d818961460c87f6ad226e6c70a4de7d67e54a14b965ff67abe0c604036
```

### `dpkg` source package: `nghttp2=1.50.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.50.0-1`

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


### `dpkg` source package: `npth=1.6-3build2`

Binary Packages:

- `libnpth0:amd64=1.6-3build2`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-3build2.dsc' npth_1.6-3build2.dsc 2063 SHA512:19ea7bd0ffc2b0aff06c52298c9a25c2f30619239bea09b571feb4a3d162f461a4529136e351da42b16ab3eaef5add24234f644e822e859ccb32de5bfd658ec0
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA512:2ed1012e14a9d10665420b9a23628be7e206fd9348111ec751349b93557ee69f1176bcf7e6b195b35b1c44a5e0e81ee33b713f03d79a33d1ecd9037035afeda2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-3build2.debian.tar.xz' npth_1.6-3build2.debian.tar.xz 10904 SHA512:426ab3ab9e27b3701d67cde0a4c4040aa9ccac22a0266321824487fe80a118ccd6860b6fa0fb5ca3c46dfa3c20053889fbb51a2e74618065b3aff059a0216c4c
```

### `dpkg` source package: `openldap=2.5.13+dfsg-1ubuntu1`

Binary Packages:

- `libldap-2.5-0:amd64=2.5.13+dfsg-1ubuntu1`

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


### `dpkg` source package: `openssh=1:9.0p1-1ubuntu8`

Binary Packages:

- `openssh-client=1:9.0p1-1ubuntu8`

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
$ apt-get source -qq --print-uris openssh=1:9.0p1-1ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1-1ubuntu8.dsc' openssh_9.0p1-1ubuntu8.dsc 3339 SHA512:4db820e83db5064aee6cf9b302bcbd7900c12b7322adfd96b1f681030b62d97084a71ed3cc5b27d10056dead569af6a9fa9200b9db8732b61d1154a973723d58
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1.orig.tar.gz' openssh_9.0p1.orig.tar.gz 1822183 SHA512:613ae95317e734868c6a60d9cc5af47a889baa3124bbdd2b31bb51dd6b57b136f4cfcb5604cca78a03bd500baab9b9b45eaf77e038b1ed776c86dce0437449a9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1.orig.tar.gz.asc' openssh_9.0p1.orig.tar.gz.asc 833 SHA512:7b1445764058435d2fa8a9c7553643983650d4232036c088e46e44beeb538d32cba88f775b1be9da5f21a01d6caea59b3dc4714507781e9cb946546fa54f169f
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1-1ubuntu8.debian.tar.xz' openssh_9.0p1-1ubuntu8.debian.tar.xz 179792 SHA512:5ca349436a7850ed93b98b1740794dd8ce5bd41066e89d78f76b4901860608bbc5fcdec7f0f6101c98b784add2044b3d39fbd2683570a77f259aa966b698c026
```

### `dpkg` source package: `openssl=3.0.5-2ubuntu2`

Binary Packages:

- `libssl3:amd64=3.0.5-2ubuntu2`
- `openssl=3.0.5-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libssl3/copyright`, `/usr/share/doc/openssl/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `p11-kit=0.24.1-1ubuntu2`

Binary Packages:

- `libp11-kit0:amd64=0.24.1-1ubuntu2`

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
$ apt-get source -qq --print-uris p11-kit=0.24.1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.1-1ubuntu2.dsc' p11-kit_0.24.1-1ubuntu2.dsc 2434 SHA512:b6474f7954c6045619e579c1902d345db0f6013e339d60ac852d734f9cc15fd7a13da67e5b18ad3ba90712e8717d441e2eda214fb092d66676add8ac811a1f74
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.1.orig.tar.xz' p11-kit_0.24.1.orig.tar.xz 838304 SHA512:8cf170c714bb9e0cf3df93e8ec55b8e3c55cabf2c6a27f177ac6de8b8028985df2ca0216d3215d6828dc2ae3095c4e1a4febe8cb26b88ec321defc66bb011e81
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.1.orig.tar.xz.asc' p11-kit_0.24.1.orig.tar.xz.asc 833 SHA512:c9cb909a9443cc554c32d7816add59a1b1225186517a0bc8dc267a638a93de070a6ce57c0bafaf1a2b0a03acbdb0a3c1fdd88a615f402ade13e41d20463a7803
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.1-1ubuntu2.debian.tar.xz' p11-kit_0.24.1-1ubuntu2.debian.tar.xz 31176 SHA512:f3b3fc21a270f22dd0679aaf1c87907fdd3914de261ad61406bb2392deb25688229af775e7b170201d85489cd7420c5e9bda23c8f95bc7e9d955f4eb508454d3
```

### `dpkg` source package: `pam=1.5.2-5ubuntu1`

Binary Packages:

- `libpam-modules:amd64=1.5.2-5ubuntu1`
- `libpam-modules-bin=1.5.2-5ubuntu1`
- `libpam-runtime=1.5.2-5ubuntu1`
- `libpam0g:amd64=1.5.2-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.5.2-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2-5ubuntu1.dsc' pam_1.5.2-5ubuntu1.dsc 2664 SHA512:cf95c7594647f4ba30ab4b761b620a6ad2550fed36a127bf7ac4a922f0d5c9b403d3465d56e727ddef67ce4ee7fd5e1fb1508ab2f601920b50b06e5e705e23f2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2.orig.tar.xz' pam_1.5.2.orig.tar.xz 988784 SHA512:fa16350c132d3e5fb82b60d991768fb596582639841b8ece645c684705467305ccf1302a0147ec222ab78c01b2c9114c5496dc1ca565d2b56bf315f29a815144
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2-5ubuntu1.debian.tar.xz' pam_1.5.2-5ubuntu1.debian.tar.xz 166668 SHA512:d1cde467271414b1eee7bc030838cd508482de7643a37729989cdb1b551353b2fa912c8536ddb51790e1f5de4bfa359a5af004b533128024f621ede07939628d
```

### `dpkg` source package: `pcre2=10.40-1ubuntu1`

Binary Packages:

- `libpcre2-8-0:amd64=10.40-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.40-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.40-1ubuntu1.dsc' pcre2_10.40-1ubuntu1.dsc 2079 SHA512:10fef01beb55a772d73452188c7807f4988e455306489e5cc40e8d2f018374e8181900a14650909fd381394a4cb1cb0dbe1fcf119147ff39c438644aca154ad6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.40.orig.tar.gz' pcre2_10.40.orig.tar.gz 2359622 SHA512:679c6f540571850adec880934812e4f26f08ad858c776f10d1ed68ed3c0d4f91f6e1b53d781b53340af43a22c521e585cfc908f3659013c630a320e4fb246dc2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.40-1ubuntu1.diff.gz' pcre2_10.40-1ubuntu1.diff.gz 7367 SHA512:f15572cf945c590f0370da988e0be0c11a5803a4aa53fd5bb86289d82077df9392d4a03924ca5cb292de00e75b4c7f0d6700db63b106d1bbe77b2a2f7a86b01f
```

### `dpkg` source package: `pcre3=2:8.39-14`

Binary Packages:

- `libpcre3:amd64=2:8.39-14`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pcre3/2:8.39-14/


### `dpkg` source package: `perl=5.36.0-4ubuntu2`

Binary Packages:

- `libperl5.36:amd64=5.36.0-4ubuntu2`
- `perl=5.36.0-4ubuntu2`
- `perl-base=5.36.0-4ubuntu2`
- `perl-modules-5.36=5.36.0-4ubuntu2`

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


### `dpkg` source package: `pinentry=1.2.1-1ubuntu1`

Binary Packages:

- `pinentry-curses=1.2.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.2.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1-1ubuntu1.dsc' pinentry_1.2.1-1ubuntu1.dsc 2999 SHA512:2e895300429edd2b707fded47ee07d66bf7d439417deae2a78720cf833152bf71f9357cc93632358c1d59963f1513ccaaa2c3904c4de51991d65b60cb19bcf2f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2' pinentry_1.2.1.orig.tar.bz2 547698 SHA512:a665315628f4dcf07e16a22db3f3be15d7e7e93b3deec0546c7275b71b0e3bd65535a08af5e12d6339fd6595132df86529401d9d12bd17c428a3466e8dfafab6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1.orig.tar.bz2.asc' pinentry_1.2.1.orig.tar.bz2.asc 390 SHA512:60b63b7fe2d6793840be55635f9a704cd42eda69ccaea2453d47b5f7a5198d313b8f23555972584f7f087fd5d0fc2a379bfc5f7512f325b018cc5c3e2e54a47e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.1-1ubuntu1.debian.tar.xz' pinentry_1.2.1-1ubuntu1.debian.tar.xz 18828 SHA512:94a82f96b7cf520c8335fea8a7be1beb8baf9e68e5939e3436837eca87ed0346bd295e406f6d546c74f0592332c6913e6c6b709c7dbe014bda769d556ce71238
```

### `dpkg` source package: `procps=2:3.3.17-7ubuntu1`

Binary Packages:

- `libprocps8:amd64=2:3.3.17-7ubuntu1`
- `procps=2:3.3.17-7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libprocps8/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.17-7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-7ubuntu1.dsc' procps_3.3.17-7ubuntu1.dsc 2237 SHA512:756be0329040247eadaf884e61164172eb618dee97bed81242b100a53dd219d8b471067c9a7109ac96214256ed1f5f7832883cfd632e1d209bbb730bf6f4ea0a
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17.orig.tar.xz' procps_3.3.17.orig.tar.xz 1008428 SHA512:59e9a5013430fd9da508c4655d58375dc32e025bb502bb28fb9a92a48e4f2838b3355e92b4648f7384b2050064d17079bf4595d889822ebb5030006bc154a1a7
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-7ubuntu1.debian.tar.xz' procps_3.3.17-7ubuntu1.debian.tar.xz 34528 SHA512:77435e34138738e58394c7eab10716d5ad59b4eb92c045114dd0ef374b3e987ceada7e65272e4ead85e6adeaa9980dc81ee5dd6c937a6be1c241c339d35475c1
```

### `dpkg` source package: `python3-defaults=3.10.6-1ubuntu1`

Binary Packages:

- `libpython3-stdlib:amd64=3.10.6-1ubuntu1`
- `python3=3.10.6-1ubuntu1`
- `python3-minimal=3.10.6-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.10.6-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1ubuntu1.dsc' python3-defaults_3.10.6-1ubuntu1.dsc 3026 SHA512:72c01732183308d6e22c488a68c0a342628ba0f600e6d2f2d5bd9ea266e10e44281c9c023ff57d4881d2cb0a229a578516eca6db9eec44785612077298ad1fa2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1ubuntu1.tar.gz' python3-defaults_3.10.6-1ubuntu1.tar.gz 145775 SHA512:abb48b789594cddcc9c41862c1ee6135738d6f51723d927fb224ac84d909a22fbfafe6c9f9efc572ba5c2bf2f86ae5e2ec6a877452e685a2ee7b2de3895b0f7e
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.9-1.dsc' python3.10_3.10.9-1.dsc 3662 SHA512:9e17232ff1de5fb45965b70dbebea2c887124adf0ef511f82b833cef3fcdc5eb21d69511cfe92bc7a8fe53a5b6cd9a49cbe9fb02beac8bb92e3d5f3dcb6685a7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.9.orig.tar.xz' python3.10_3.10.9.orig.tar.xz 19612112 SHA512:d66ea8adeb6dc4951e612175f8838b3092967ff275b7a3470f2d86f470036aa2221e722c3144d90bcd230b88efd53dde204213f72f703e524e4b833e2ccc68e2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.9-1.debian.tar.xz' python3.10_3.10.9-1.debian.tar.xz 218276 SHA512:27904baf4ebc74e54f975e1c699fff4d0350d37913753b7a774142b1f6283f35bf281b3ed99d81b542ee8918105da0c8e41f6284cf0c9c6986699d9857cda8fb
```

### `dpkg` source package: `readline=8.2-1.2`

Binary Packages:

- `libreadline8:amd64=8.2-1.2`
- `readline-common=8.2-1.2`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/readline/8.2-1.2/


### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2build4`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2build4`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build4.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2build4.dsc 2431 SHA512:7536b21c9c8be02e06171db49bf0b653e4b7738e6c01f74b0b7433c2986c731eafd1743f87836e7250a744d0e34dc700685bbe7128956a274e9a9832d32c891e
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA512:bdfcbab73179d614a295a7b136ea4c9d0ce4620883b493f298362784d245608cd6ad4b0ad30f94ed73a086b4555399521ae9e95b6375fce75e455ae68c055e7b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2build4.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2build4.debian.tar.xz 8376 SHA512:b01ac33a7251e3c0fad21897d31710766136027b656cb29903cf8f695893648631037a96fa18aa40eae7ad363394344aad4f2fae152622618b88f22133c03578
```

### `dpkg` source package: `sed=4.8-1ubuntu2`

Binary Packages:

- `sed=4.8-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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


### `dpkg` source package: `shadow=1:4.13+dfsg1-1ubuntu1`

Binary Packages:

- `login=1:4.13+dfsg1-1ubuntu1`
- `passwd=1:4.13+dfsg1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.13+dfsg1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1-1ubuntu1.dsc' shadow_4.13+dfsg1-1ubuntu1.dsc 2509 SHA512:77dda236b8198dfd3516b2b74d782b859aacc007f097f8f9c5ead574fd23984baa10b36cf1c32d8e0187dee05a970ec8a20b0d8f447d1c0e437c6006520ad8e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1.orig.tar.xz' shadow_4.13+dfsg1.orig.tar.xz 1811752 SHA512:27106ca26d6e4c9e5833cf79811b10f656ade547bbc18b87faf79bbe0581a9e1467cbb6c354320e2d5233d17208d77742ebf197d32b6d2f08439e37e368ded1d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.13%2bdfsg1-1ubuntu1.debian.tar.xz' shadow_4.13+dfsg1-1ubuntu1.debian.tar.xz 91380 SHA512:9c8909ca0d9552d1094598fee5b96dcdf9f3b5a8265920466cadde63151996ade671760b40ccb99fcca43c90a28d35b66ad0d2dbf03782bf5daf7815fd406664
```

### `dpkg` source package: `sqlite3=3.40.0-1`

Binary Packages:

- `libsqlite3-0:amd64=3.40.0-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sqlite3/3.40.0-1/


### `dpkg` source package: `subversion=1.14.2-4`

Binary Packages:

- `libsvn1:amd64=1.14.2-4`
- `subversion=1.14.2-4`

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
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2-4.dsc' subversion_1.14.2-4.dsc 4046 SHA512:056d92339179d99a89eb2cc05fa08d8e201ad87c7266615940cc9388e4c463b23db502a6ae403f6076babc90bfad1abc5dc0b28421cd0882adaeca5aa9a9aa85
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2.orig.tar.gz' subversion_1.14.2.orig.tar.gz 11626792 SHA512:053d9d38f675f5ddd6ad9c6bd061482f5e9ec9f0cb8ea6db76a91e0646af26dfdab2a882d09395df4e073d704be909160c230251957f86a452d32408da6d7468
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2.orig.tar.gz.asc' subversion_1.14.2.orig.tar.gz.asc 3215 SHA512:e0bdc9fff6ec6a645005da9031e96c7ad5cc97b9fbac21b91be6efe91adc72d85bd4ad630b5ca28e9cf619b95ea6f6421033e2d4669473faf9ec0406fd2ed6b6
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2-4.debian.tar.xz' subversion_1.14.2-4.debian.tar.xz 337148 SHA512:adce459d9c19ffc74cf27e41150ca914a2e59c00a07299a5aafcc510d5ac5e812c2b7a44dfb26be771b0e99f1880e4081129785a572b1b87d9f9f9cf855359f4
```

### `dpkg` source package: `systemd=251.4-1ubuntu7`

Binary Packages:

- `libsystemd0:amd64=251.4-1ubuntu7`
- `libudev1:amd64=251.4-1ubuntu7`

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
$ apt-get source -qq --print-uris systemd=251.4-1ubuntu7
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_251.4-1ubuntu7.dsc' systemd_251.4-1ubuntu7.dsc 6464 SHA512:50b74795128a8f9254aeee11faaefc9430b17dceec751a7273bb2cde0dbe4ed9dd2e9fd3038085fac9d6afbe998f4662add36b4e0d4475ea3e39b2b3489eeaec
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_251.4.orig.tar.gz' systemd_251.4.orig.tar.gz 11440203 SHA512:7bbfadd80b88a4c3510a5e4e3572e4eab71dafbf6289da038e552988e09ee8da16da3c9bb8a4fbbde6c6236e0e3c352b0a33f9ee0b84f10241f3499383387738
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_251.4-1ubuntu7.debian.tar.xz' systemd_251.4-1ubuntu7.debian.tar.xz 226056 SHA512:26693b01d93d32c515da77bed5fe4729b5fffc4f0935779bf9a24f84b4f41514753bc7da6dde5e0d213cd00b08470868a0eb155df9aca8a67a4609d1a328300d
```

### `dpkg` source package: `sysvinit=3.04-1ubuntu1`

Binary Packages:

- `sysvinit-utils=3.04-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.04-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.04-1ubuntu1.dsc' sysvinit_3.04-1ubuntu1.dsc 2474 SHA512:a14ede0c89fbc621af2e2b20ea03701981545366c0a105dce549f861c9b71efc398157b090c892631d7a5a8146d7657823ebc77fc9021a01df92a916df67928a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.04.orig.tar.gz' sysvinit_3.04.orig.tar.gz 465162 SHA512:a756f069f105d446ca8c897e8b38dd4d1977c9ac9f0f2dc9d126d9c8f187af5a75d0fd9a31f7616e77be99fd261fba0920cee5f5d2700192f1f22faf0e1986b4
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.04-1ubuntu1.debian.tar.xz' sysvinit_3.04-1ubuntu1.debian.tar.xz 128752 SHA512:5b22f5395d1cd25749a4141ea55b662646a900987958a4cf76ed4467d5835ade628d8d74144e12f54526aa0e00b340ed19fe8311c67f947eb25facc3f33c57f1
```

### `dpkg` source package: `tar=1.34+dfsg-1.1`

Binary Packages:

- `tar=1.34+dfsg-1.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris tar=1.34+dfsg-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1.1.dsc' tar_1.34+dfsg-1.1.dsc 1998 SHA512:ce74c0853397e8d1b047612d5208299ce7e2a635285686245d93f43d3bf2ed980df3c000769ff3c00b946e321273efe57d9a1e8f8ca012e23b1a256a837a1c8d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg.orig.tar.xz' tar_1.34+dfsg.orig.tar.xz 1981736 SHA512:ec5553c53c4a5f523f872a8095f699c17bf41400fbe2f0f8b45291ccbaf9ac51dea8445c81bd95697f8853c95dcad3250071d23dbbcab857a428ee92e647bde9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1.1.debian.tar.xz' tar_1.34+dfsg-1.1.debian.tar.xz 20148 SHA512:9b473bd6e3d84fc066e28006dcc33a9542f96ea2469f87987e60a8d1c7d7d190478c597fb76630f799d925b570645469bfda71067e2918d1108ece804b88fb41
```

### `dpkg` source package: `tzdata=2022g-0ubuntu2`

Binary Packages:

- `tzdata=2022g-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ubuntu-keyring=2021.03.26`

Binary Packages:

- `ubuntu-keyring=2021.03.26`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2021.03.26
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2021.03.26.dsc' ubuntu-keyring_2021.03.26.dsc 1855 SHA512:7502f4f4d9a288fab9fb84b6ae5f8500cb3f14c68ed586b489dee95f12087b232bcecd9369e98258bb710afda50e5672dfbc6422b1436e896fb529dec8832252
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2021.03.26.tar.gz' ubuntu-keyring_2021.03.26.tar.gz 34529 SHA512:04a76e2bfa88fb428face9e01976ff98a3a26fe2b555340c14200fc6099ee3b474a6733486cedfe933933c0a6826ee3550660499d7b26bda8a27a620b1d6a35f
```

### `dpkg` source package: `ucf=3.0043`

Binary Packages:

- `ucf=3.0043`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0043
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0043.dsc' ucf_3.0043.dsc 1423 SHA512:666851d1df82352f8b2be8b8760250cfa1f7635718f0f1598a3d9e9f11a9d687ec4cfb7f6bf950b194d771db039508b6d62c288f53078e2712580bda7b5befa7
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0043.tar.xz' ucf_3.0043.tar.xz 70560 SHA512:693209ea06a63279278ac8f63e70fe151880f7c51d54c91ad5e846449f883d5893658d8c6932553d70da4e56ebae3ef67c0eda8593b0768f5979849c79f89f27
```

### `dpkg` source package: `usrmerge=33ubuntu1`

Binary Packages:

- `usrmerge=33ubuntu1`

Licenses: (parsed from: `/usr/share/doc/usrmerge/copyright`)

- `GPL v2`
- `GPL-2`
- `later (please see /usr/share/common-licenses/GPL-2)`

Source:

```console
$ apt-get source -qq --print-uris usrmerge=33ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_33ubuntu1.dsc' usrmerge_33ubuntu1.dsc 1717 SHA512:7eec869b81491eaaff56afb185402b5a5f5c91eab3c88fff4ca28dcbe33f4878bd638c9118f470cf7e57bbef4612637e84018268ec6227eeb3999c097e50c1bc
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_33ubuntu1.tar.xz' usrmerge_33ubuntu1.tar.xz 14900 SHA512:89d750915d80888614eb536e57edffcf38ac599c3c435ece144e2ae7048d52c32d7f9082b7acb826c0189946f90151a3009460f5faac97a5383051d74db419a5
```

### `dpkg` source package: `utf8proc=2.8.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.8.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.8.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.8.0-1.dsc' utf8proc_2.8.0-1.dsc 2187 SHA512:2d63ce20fa889f6825fcc43a7ea97f4564e1a08299208cf23c630ff55b773174a03e593cbd3ffa81e7ca3fb66e4bab2772588e24f5db024ae7c06eb51621b2c0
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.8.0.orig.tar.gz' utf8proc_2.8.0.orig.tar.gz 190310 SHA512:4b9853fc95db38bee1d7435bef219907e25b249e0c2ec26f7096b8506ab2a139a8d4b71f7133b7550bff59d8f997fe01c2957d362cad18d890ad82bcf158aa06
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.8.0-1.debian.tar.xz' utf8proc_2.8.0-1.debian.tar.xz 5720 SHA512:5cc254a57269479d844d484071fad0b3c4b0a13e5f144656a1c303af667837bee88379d78a8f353c793271d254dc0369c01c557782729753e749d916e8a37669
```

### `dpkg` source package: `util-linux=2.38.1-4ubuntu1`

Binary Packages:

- `bsdutils=1:2.38.1-4ubuntu1`
- `libblkid1:amd64=2.38.1-4ubuntu1`
- `libmount1:amd64=2.38.1-4ubuntu1`
- `libsmartcols1:amd64=2.38.1-4ubuntu1`
- `libuuid1:amd64=2.38.1-4ubuntu1`
- `mount=2.38.1-4ubuntu1`
- `util-linux=2.38.1-4ubuntu1`
- `util-linux-extra=2.38.1-4ubuntu1`

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

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.38.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38.1-4ubuntu1.dsc' util-linux_2.38.1-4ubuntu1.dsc 4632 SHA512:30666c73e0f03eba2dbb3f7d6a2cecda628743ca5066df079ec1ba08480c1462789b1c8f3d577a66dd0f15d2e9648c295bfc2fd99602a82da26d1d7d8f5b6eeb
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38.1.orig.tar.xz' util-linux_2.38.1.orig.tar.xz 7495904 SHA512:07f11147f67dfc6c8bc766dfc83266054e6ede776feada0566b447d13276b6882ee85c6fe53e8d94a17c03332106fc0549deca3cf5f2e92dda554e9bc0551957
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38.1-4ubuntu1.debian.tar.xz' util-linux_2.38.1-4ubuntu1.debian.tar.xz 117468 SHA512:32819d2d07bf2b84ebe3a3e5b32cb36b6b48e742f775ce909c192c4efb0b4208b2bc2559343cc4e0414d667e0268f0838e5010abbdb9c178d98fa284745c56d7
```

### `dpkg` source package: `wget=1.21.3-1ubuntu1`

Binary Packages:

- `wget=1.21.3-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.21.3-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.21.3-1ubuntu1.dsc' wget_1.21.3-1ubuntu1.dsc 2243 SHA512:a93ad7308ba283204d2b28edefd6a65851f1c576274f356504538a49bb414c25020a92ac30ceda00546ec6d2b45508e09bd1aadf3a34925eb2b93bf9610c1ce3
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.21.3.orig.tar.gz' wget_1.21.3.orig.tar.gz 5079864 SHA512:29889ecbf590dff0f39183d9e0621741d731a554d990e5c995a4644725dca62e8e19601d40db0ef7d62ebf54e5457c7409965e4832b6e60e4ccbc9c8caa30718
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.21.3.orig.tar.gz.asc' wget_1.21.3.orig.tar.gz.asc 854 SHA512:b9f41496e0083545bc703c97b0758500f337527647cdc422152d7855d05351e3a62685269238c78300eafdbfaed8afecaeb988901a3d8a6b002e9fb3d70efe4f
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.21.3-1ubuntu1.debian.tar.xz' wget_1.21.3-1ubuntu1.debian.tar.xz 63772 SHA512:da66b025bc1ad2114daa4c47992e575f78d62fc18b1ef95b0669fcb0260e520a8b46e3916538b3ec873351574cf9b136669c1dd026ae04f4d3d60021121eff3c
```

### `dpkg` source package: `xxhash=0.8.1-1`

Binary Packages:

- `libxxhash0:amd64=0.8.1-1`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1-1.dsc' xxhash_0.8.1-1.dsc 1966 SHA512:645799311fdf21568b23134cdf586a54bb32b58639adb8ebc1f5ad26fdfdc485506c87d763133163fde705b2f904d6f01f50e4d13ebec2b476d38e66ded2bf22
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1.orig.tar.gz' xxhash_0.8.1.orig.tar.gz 171552 SHA512:12feedd6a1859ef55e27218dbd6dcceccbb5a4da34cd80240d2f7d44cd246c7afdeb59830c2d5b90189bb5159293532208bf5bb622250102e12d6e1bad14a193
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.1-1.debian.tar.xz' xxhash_0.8.1-1.debian.tar.xz 4572 SHA512:e59d4fc6f736d3af6f7be3ec64fc1ee4382e917a942e4000159652082e2f73f52ae0f72adb98505ac9bd8894a89800e21c0913ba4b511959f07a2bc84c341920
```

### `dpkg` source package: `xz-utils=5.2.9-0.0`

Binary Packages:

- `liblzma5:amd64=5.2.9-0.0`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/xz-utils/5.2.9-0.0/


### `dpkg` source package: `zlib=1:1.2.11.dfsg-4.1ubuntu1`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-4.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-4.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-4.1ubuntu1.dsc' zlib_1.2.11.dfsg-4.1ubuntu1.dsc 2990 SHA512:98a0e6f453675ba75e9af4914187739a96c95536b2d0858ff07209a6a94512a41a93811fc04ecda706ef3881fe6256d2b202bfe7c1e2db8266bf6facf45860ba
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA512:92819807c0b8de655021bb2d5d182f9b6b381d3072d8c8dc1df34bbaa25d36bcba140c85f754a43cc466aac65850b7a7366aa0c93e804180e5b255e61d5748de
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-4.1ubuntu1.debian.tar.xz' zlib_1.2.11.dfsg-4.1ubuntu1.debian.tar.xz 60668 SHA512:7f655cc442677480ae6dfb67704dce66eb037e78fd8b856c657833d31fb181ec3530cc57a296981b54c3b7c8d01a6a9ec1b97a9ae41f3736ade0081142f97988
```
