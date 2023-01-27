# `buildpack-deps:xenial`

## Docker Metadata

- Image ID: `sha256:3a479dc2c011ea4707ab6e48b150b1f6917474987bb4289c17178263b7320b3b`
- Created: `2021-08-31T03:10:32.61107392Z`
- Virtual Size: ~ 659.12 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

### `dpkg` source package: `adduser=3.113+nmu3ubuntu4`

Binary Packages:

- `adduser=3.113+nmu3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113%2bnmu3ubuntu4.dsc' adduser_3.113+nmu3ubuntu4.dsc 1856 SHA256:323f327b25e1fbeba38278eae5813be6238a7c5959e7c10af041999408440247
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113%2bnmu3ubuntu4.tar.gz' adduser_3.113+nmu3ubuntu4.tar.gz 367980 SHA256:6e4d44c8388b9ba85fc175fa4a48ed43bf6500913c2c631fda0e4419ae63c65a
```

### `dpkg` source package: `apparmor=2.10.95-0ubuntu2.11`

Binary Packages:

- `libapparmor1:amd64=2.10.95-0ubuntu2.11`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=2.10.95-0ubuntu2.11
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.11.dsc' apparmor_2.10.95-0ubuntu2.11.dsc 3256 SHA512:29ab3be3ce0698980cc80eeb713a7c471e5aae4802f74aefce020c488d819f4ee81e89fb27f2188619f8206104771d0632b207eb71d09a696e274402235486d7
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95.orig.tar.gz' apparmor_2.10.95.orig.tar.gz 4502268 SHA512:bd8b4223c0de15b76784a42e4ca1ad7da19ae0d12e1f592dc4af14b76c9d549da381cfe50365d75a16fb6bbb42c00d3f1f379a9c785d51cf512e0c8f96013084
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.11.debian.tar.xz' apparmor_2.10.95-0ubuntu2.11.debian.tar.xz 98980 SHA512:6e410dd41e0d7f09d08ee1e1ad3cd6e82496a82afe158a37af7a3992d93095dbff11d22797fb19fac6d3b158e6ba80f840c380d99e703b41c428f182b22e42aa
```

### `dpkg` source package: `apr-util=1.5.4-1build1`

Binary Packages:

- `libaprutil1:amd64=1.5.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.5.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-1build1.dsc' apr-util_1.5.4-1build1.dsc 2642 SHA256:f464c7a9fb9293c117e80d9669450ca61191ad456cf40dd74777caf06e5f18db
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4.orig.tar.bz2' apr-util_1.5.4.orig.tar.bz2 694427 SHA256:a6cf327189ca0df2fb9d5633d7326c460fe2b61684745fd7963e79a6dd0dc82e
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-1build1.debian.tar.xz' apr-util_1.5.4-1build1.debian.tar.xz 16564 SHA256:562bd9b543a16edf8218deda292c606aabe5265a369cf7b2559f13c1cc300e3c
```

### `dpkg` source package: `apr=1.5.2-3`

Binary Packages:

- `libapr1:amd64=1.5.2-3`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-3.dsc' apr_1.5.2-3.dsc 2090 SHA256:2344484f62544881344defbb1076ca6cce51f930f1a5abd359e65eafb0e169cb
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2.orig.tar.bz2' apr_1.5.2.orig.tar.bz2 826885 SHA256:7d03ed29c22a7152be45b8e50431063736df9e1daa1ddf93f6a547ba7a28f67a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-3.debian.tar.xz' apr_1.5.2-3.debian.tar.xz 18572 SHA256:442ffb9a7225cf405fe7a2b4a4624543fcb93e6f14cccf22acd57916cfa8348d
```

### `dpkg` source package: `apt=1.2.35`

Binary Packages:

- `apt=1.2.35`
- `apt-transport-https=1.2.35`
- `libapt-pkg5.0:amd64=1.2.35`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/apt-transport-https/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.2.35
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.35.dsc' apt_1.2.35.dsc 2548 SHA512:e7e220d4b7017c8772021583731296bb9a2c5a84f911b94e9c8195b84e6e36d0d5571b120e298838845c44911ced5fa93ab7eeb1e4c16fdac8754cb515ce9492
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.35.tar.xz' apt_1.2.35.tar.xz 2095904 SHA512:4d34d4f386eadcdc6bb16befbd752d18c0a8e62b69f3e49659ee051eb58579477b2c708df2507f917294e650384b63a37ac6432b82d93205ce0f26f6b772c32f
```

### `dpkg` source package: `atk1.0=2.18.0-1`

Binary Packages:

- `libatk1.0-0:amd64=2.18.0-1`
- `libatk1.0-data=2.18.0-1`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.18.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0-1.dsc' atk1.0_2.18.0-1.dsc 2738 SHA256:3d58e1e9e653705df8a092ed6942e2e518b1e539196e467fc60f20721ccaa84c
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0.orig.tar.xz' atk1.0_2.18.0.orig.tar.xz 687932 SHA256:ce6c48d77bf951083029d5a396dd552d836fff3c1715d3a7022e917e46d0c92b
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0-1.debian.tar.xz' atk1.0_2.18.0-1.debian.tar.xz 10520 SHA256:84ebc674126d71a27994b856274d05c801782ab4cbd3b78351c987525243ed1d
```

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

### `dpkg` source package: `audit=1:2.4.5-1ubuntu2.1`

Binary Packages:

- `libaudit-common=1:2.4.5-1ubuntu2.1`
- `libaudit1:amd64=1:2.4.5-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4.5-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.1.dsc' audit_2.4.5-1ubuntu2.1.dsc 2753 SHA512:dcba64d5208c60d9720ca9dca2646e4766ddb13513f1e970bcf042f4cf825291ffaca269a7c159225de2d3bb9cdc0b0125918f9a222990d6c7267bcd32fb9285
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5.orig.tar.gz' audit_2.4.5.orig.tar.gz 1030113 SHA512:9d4ff4b19c027e34d4b7537fb4113116e8f56e3da8047a8d19ce394954648df8aa3dd8f8b8eb0af0c04bf1b7b6031916db6a168a28f065879ca6744bc2b04f15
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.1.debian.tar.xz' audit_2.4.5-1ubuntu2.1.debian.tar.xz 19292 SHA512:3537dfd29b5ed6c19e3ccf302c07cc46e33c6ff27384f24fa41516b2f0e0dae7eca321daef7be0fff72d83692490f69a1fadd0fdbb55891ce38d94c4977d8e5c
```

### `dpkg` source package: `autoconf=2.69-9`

Binary Packages:

- `autoconf=2.69-9`

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
$ apt-get source -qq --print-uris autoconf=2.69-9
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-9.dsc' autoconf_2.69-9.dsc 1944 SHA256:a279ec1b96760dcd9725a62b47ec80ac7c69add08cf189aa52b1b2268fc275cd
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-9.debian.tar.xz' autoconf_2.69-9.debian.tar.xz 22728 SHA256:9498087074be2dab0cb7b37e9dbeac0bf5cd26019a3c25694fc61039f0bda064
```

### `dpkg` source package: `automake-1.15=1:1.15-4ubuntu1`

Binary Packages:

- `automake=1:1.15-4ubuntu1`

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
$ apt-get source -qq --print-uris automake-1.15=1:1.15-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15-4ubuntu1.dsc' automake-1.15_1.15-4ubuntu1.dsc 2352 SHA256:446e0e71de6b75022defe822df11ef461de3d5090c255130788c77fab1f7e04a
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.orig.tar.xz' automake-1.15_1.15.orig.tar.xz 1496708 SHA256:9908c75aabd49d13661d6dcb1bc382252d22cc77bf733a2d55e87f2aa2db8636
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15-4ubuntu1.debian.tar.xz' automake-1.15_1.15-4ubuntu1.debian.tar.xz 12868 SHA256:1fb41424b5827296281addf047c9619eac99c5342b57e7412014176981443f28
```

### `dpkg` source package: `autotools-dev=20150820.1`

Binary Packages:

- `autotools-dev=20150820.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20150820.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20150820.1.dsc' autotools-dev_20150820.1.dsc 1641 SHA256:7f5e21caa39e5e40fc4d1560b288a3b785810daead1593567a491221716a5136
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20150820.1.tar.xz' autotools-dev_20150820.1.tar.xz 61792 SHA256:fa40ff0ad94a8790357324f22a64bd8673383d5d56687dbebd3df5afe046c81f
```

### `dpkg` source package: `avahi=0.6.32~rc+dfsg-1ubuntu2.3`

Binary Packages:

- `libavahi-client3:amd64=0.6.32~rc+dfsg-1ubuntu2.3`
- `libavahi-common-data:amd64=0.6.32~rc+dfsg-1ubuntu2.3`
- `libavahi-common3:amd64=0.6.32~rc+dfsg-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32~rc+dfsg-1ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg-1ubuntu2.3.dsc' avahi_0.6.32~rc+dfsg-1ubuntu2.3.dsc 4414 SHA512:0d252662c0613c8d8be051c38f4b890843e146e00f0d46dcd98879321c1127fc4476621704f5ffb9722a076eb9270d9ec0a2af9d0556af9a56302a3734e62195
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg.orig.tar.gz' avahi_0.6.32~rc+dfsg.orig.tar.gz 665175 SHA512:37c1fb2f383af68a191660387dd8d9850e5c57e496626612679576b031c8d84c2c1e6071b4cab3c46b70dd249b4f7aceecb93e3314dc5aa8d0173ca7fb2ebbfc
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32%7erc%2bdfsg-1ubuntu2.3.debian.tar.xz' avahi_0.6.32~rc+dfsg-1ubuntu2.3.debian.tar.xz 34628 SHA512:3723abe8a1b4513118b57ed426c56acbebb0492fa0e2f477205670802f38d1cad2d8d5122e0876f587d34c99cf365a9105a6b9b9cea8199c918c5def316c68f5
```

### `dpkg` source package: `base-files=9.4ubuntu4.13`

Binary Packages:

- `base-files=9.4ubuntu4.13`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.4ubuntu4.13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.13.dsc' base-files_9.4ubuntu4.13.dsc 1639 SHA512:53e170545731c3531e1d4550120d68ba03ce35f97b179f3b0927fc93d762d7933a390417f68eb8114a426178362e7f7168ca23c9b5aec07a7b8f4a2e6c73ed2f
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.13.tar.xz' base-files_9.4ubuntu4.13.tar.xz 67184 SHA512:82572c771f79098406f6b52cd686fc70c4dfcdfadf3dfe6823c67a89c497867650868d908f451a23451d3c3d1f33e37bf39b48f331bc9872178152b1d42b8117
```

### `dpkg` source package: `base-passwd=3.5.39`

Binary Packages:

- `base-passwd=3.5.39`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.39
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.dsc' base-passwd_3.5.39.dsc 1720 SHA256:cfb464663fd23f5b64b7fdeb8860a754b28ee77b346bf2a362c36ceccb7a65ea
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.tar.xz' base-passwd_3.5.39.tar.xz 51560 SHA256:d827ce2d7b9b4b572527b2071f0e1354840a14c3a43a5081bcb31de400112803
```

### `dpkg` source package: `bash=4.3-14ubuntu1.4`

Binary Packages:

- `bash=4.3-14ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-14ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.4.dsc' bash_4.3-14ubuntu1.4.dsc 2346 SHA512:6a43b082f254950ec2bf6d1503fe23b0e1dae9f8cdaaae89f5f0ab2ad6c6ee16a292d0a525c0e9d12e9df24e1616c79f426182e7e03874e75fd50c87750e797d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA512:1281b8bfe01c9b533824ff7de21752b9a4663589dc198e994faf09c0aed7f43d1b843929555b31e0c70c4b50eac943cc3df9224faee71cb19fa55dce4046d90e
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.4.debian.tar.xz' bash_4.3-14ubuntu1.4.debian.tar.xz 94248 SHA512:631ae6193f1b892fc33ae27398017fe9885d423ba3b2c01875de8f403f9de359d9db2c2125a2b5064c5761aee143af5347d16a335ffd3e0d91a938d12441a91c
```

### `dpkg` source package: `binutils=2.26.1-1ubuntu1~16.04.8`

Binary Packages:

- `binutils=2.26.1-1ubuntu1~16.04.8`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.26.1-1ubuntu1~16.04.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1%7e16.04.8.dsc' binutils_2.26.1-1ubuntu1~16.04.8.dsc 4078 SHA512:eff1dc6a040835272e69765763161ac031d0aac024e705ec30f6fa62d2bd040b3ec8c9824928cf51029e1992514f14d7da3fb9088a5938eaacbeb422d0d3ffe2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1.orig.tar.gz' binutils_2.26.1.orig.tar.gz 34868933 SHA512:6c964a81b107684f64e371233157c93510214b250e6af6548f2797ad317c10fa3490b21c148d5343d133483979c4da0d70bccd5cc421911bf8066346b4ad9042
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1%7e16.04.8.diff.gz' binutils_2.26.1-1ubuntu1~16.04.8.diff.gz 235088 SHA512:1750dd819809b369dfb419df98486fa8268bee2b5154e9f4cb5d924ac62a0bc91e5ebf5b2de7474e1aa3413dbbd7a6f68fc3ce6d127c7d10398a4efd45b0c6bc
```

### `dpkg` source package: `bzip2=1.0.6-8ubuntu0.2`

Binary Packages:

- `bzip2=1.0.6-8ubuntu0.2`
- `libbz2-1.0:amd64=1.0.6-8ubuntu0.2`
- `libbz2-dev:amd64=1.0.6-8ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8ubuntu0.2.dsc' bzip2_1.0.6-8ubuntu0.2.dsc 2173 SHA512:8d0b0d48bdde4510d239669d4f60fd952f1efeaf3ead4a4130493c9e14d7973fb67885e55c8faa2c87ace5841660989c3615c29788e3db856096913880150bb7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA512:b1108c392a7f45218b86196498657f50333c870db4ab555ce4859a3fe76c17b4a3430b8a075b7f1c86d9ded006bdf17001b73bfcf261e2d2ee7de4998ad604fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8ubuntu0.2.debian.tar.bz2' bzip2_1.0.6-8ubuntu0.2.debian.tar.bz2 61599 SHA512:3c9ee464d8303a7c2c7a6dbaffd4bdd88752a65f1a2f968f8c4ed8084d732fb0c72614e5a88f4b9ee43228befb07ec5c283ab1e5995d38f7cd8239eab9c5101b
```

### `dpkg` source package: `bzr=2.7.0-2ubuntu3.1`

Binary Packages:

- `bzr=2.7.0-2ubuntu3.1`
- `python-bzrlib=2.7.0-2ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0-2ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0-2ubuntu3.1.dsc' bzr_2.7.0-2ubuntu3.1.dsc 2669 SHA512:83df8e0460915ea5b429b59a41ec8e9b84bf27ec1b1232dfc85d8ce5ae23d5c550e9ef0d5a791cca979790d04bce090b291e00afb646b0c7b6ee0ac0b1ede41c
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0.orig.tar.gz' bzr_2.7.0.orig.tar.gz 10944322 SHA512:824f740ec3521d5cbaf69f79a627a167a68a116df818aa4b3a391da459ce2e267851808199e3b250abce772813f1257cf3392efbfc5d2bfb495afcb98144d3bd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0-2ubuntu3.1.debian.tar.xz' bzr_2.7.0-2ubuntu3.1.debian.tar.xz 42660 SHA512:3d6f07cadfac56c0aea0b8a02921d558ad6a16665abf6ce2b88b3277b8ae3fd9fe1d8cbd98571e3e637b361281a78996a69da15b9d469110716b4d5fcd727a7f
```

### `dpkg` source package: `ca-certificates=20210119~16.04.1`

Binary Packages:

- `ca-certificates=20210119~16.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20210119~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20210119%7e16.04.1.dsc' ca-certificates_20210119~16.04.1.dsc 1969 SHA512:06fad3f3dc9b7e540b55b5f1f373809a75bd9ae288bdf191f34f0372e95e512ce1d01672050d70876c562b7f0487ac3a927d7b814b4459ef554d9bd1ae02c791
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20210119%7e16.04.1.tar.xz' ca-certificates_20210119~16.04.1.tar.xz 231888 SHA512:5318b1b1bd43ef031d6430602a16bec731cd09b3da65aff6a5c26e8a2d4cb04d2f23e5fd2d099d698a9535364fd6daf58e24532c44758093a1c46112cd0de837
```

### `dpkg` source package: `cairo=1.14.6-1`

Binary Packages:

- `libcairo-gobject2:amd64=1.14.6-1`
- `libcairo-script-interpreter2:amd64=1.14.6-1`
- `libcairo2:amd64=1.14.6-1`
- `libcairo2-dev=1.14.6-1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.14.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.6-1.dsc' cairo_1.14.6-1.dsc 2865 SHA256:1e3f66a22c364646c05a127bc1fcfecd04476a994e30b2e251c03f9ff09d55ce
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.6.orig.tar.xz' cairo_1.14.6.orig.tar.xz 36040596 SHA256:613cb38447b76a93ff7235e17acd55a78b52ea84a9df128c3f2257f8eaa7b252
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.6-1.debian.tar.xz' cairo_1.14.6-1.debian.tar.xz 27704 SHA256:83dbaa90cf79127db9c87edf3a4d38c193abc2d346555ab70bb619e899da5070
```

### `dpkg` source package: `cdebconf=0.198ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.198ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.198ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.dsc' cdebconf_0.198ubuntu1.dsc 2825 SHA256:d595d3afcad97026a763909a3efe66e296b02e432827d66a49c6f7088023a21e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.tar.xz' cdebconf_0.198ubuntu1.tar.xz 269256 SHA256:2f3490411599195bd31fb1a29770694888c8295f9bf5012bfb4fa22ebd3990f1
```

### `dpkg` source package: `configobj=5.0.6-2`

Binary Packages:

- `python-configobj=5.0.6-2`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.dsc' configobj_5.0.6-2.dsc 2381 SHA256:9bb8577128460ff33326d3d90b8454376c83f4d41b1da61aeabdbfcbfb5e0087
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.debian.tar.xz' configobj_5.0.6-2.debian.tar.xz 7436 SHA256:dc677cd329b4a3aacebe10c5a169d9d092cc27888c3f3f9203930cacd6a0eab8
```

### `dpkg` source package: `coreutils=8.25-2ubuntu3~16.04`

Binary Packages:

- `coreutils=8.25-2ubuntu3~16.04`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.25-2ubuntu3~16.04
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3%7e16.04.dsc' coreutils_8.25-2ubuntu3~16.04.dsc 2095 SHA512:c1b3746ab480ee4385d2d8549f7a756d3ecea36e800664d4fb329c65d7f9ce764cd1dfd71d284505b86c3b6150a23a7ed7c4e07e7c4e99fe7eb68b0faff9c58b
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25.orig.tar.xz' coreutils_8.25.orig.tar.xz 5725008 SHA512:571f95d44987d373081ed4c6ac82155ad3dcd95621d7b1a7163597e80ecbbafef2cd74b2ef594587a443a1a4355083879f898a286bb0230c48112d43d076ccd6
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3%7e16.04.debian.tar.xz' coreutils_8.25-2ubuntu3~16.04.debian.tar.xz 28336 SHA512:b92193304dcc20f01f2bdb49dae686d9c129abb059394523f23c251854714c9e3bda9304a46e13c685935afa215a533efc5969553c398a49d86447e298d9a3ee
```

### `dpkg` source package: `cryptsetup=2:1.6.6-5ubuntu2.1`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.dsc' cryptsetup_1.6.6-5ubuntu2.1.dsc 2650 SHA512:e5836598fec56c67677d462f38d51eb997c708a5c7e5a44789cd62c18ceaf30080be61b98c92932122b7f3d563f80210fbfaed2b6c441490e38317ff61201277
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA512:6ee6b4e8fe4f721bb97d1cf47c5e2d1c96001dd3ac48154d414f64d23620ac3ec3eeea2ad584a1a3111e07a086c8a4fdbfabdf4859cda58ba2bd6765b1f009a8
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz' cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz 91808 SHA512:c17d030969620bdebe5e2822ab37d6996d15ac2d2483f91be86080c6f5793915b4b922e43d7e567abaea762076bee98d01c68e1d0f4cd058c3a2b8fbcfd5cf22
```

### `dpkg` source package: `cups=2.1.3-4ubuntu0.11`

Binary Packages:

- `libcups2:amd64=2.1.3-4ubuntu0.11`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.1.3-4ubuntu0.11
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3-4ubuntu0.11.dsc' cups_2.1.3-4ubuntu0.11.dsc 3755 SHA512:83bfa0f1ab5310d79ac3b00b6ee058ccb88431fe5f3f278bd30e35f73070a741c75856dd0f6fa0a9d76762ec384c7bd87349b8e542a6b768c2be4f04010526bc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3.orig.tar.bz2' cups_2.1.3.orig.tar.bz2 8832400 SHA512:5cc715b8521b4d6af29a97a8abf7a1b0973840c00727ee8e7926e89a4a9da8e67565d14cc4b57ab7cfb40b238d4faaed7608b9ab95947cc3671ed87b710f8f36
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.1.3-4ubuntu0.11.debian.tar.xz' cups_2.1.3-4ubuntu0.11.debian.tar.xz 356476 SHA512:b57ab661a003b62d60c90c0d22bdea4f046b0b052326f821070ed7c08b2a208fb2cfb789613f5a9ebec2c694916602d119862c9880904f45d266fdcff2e4ea9a
```

### `dpkg` source package: `curl=7.47.0-1ubuntu2.19`

Binary Packages:

- `curl=7.47.0-1ubuntu2.19`
- `libcurl3:amd64=7.47.0-1ubuntu2.19`
- `libcurl3-gnutls:amd64=7.47.0-1ubuntu2.19`
- `libcurl4-openssl-dev:amd64=7.47.0-1ubuntu2.19`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.47.0-1ubuntu2.19
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0-1ubuntu2.19.dsc' curl_7.47.0-1ubuntu2.19.dsc 2733 SHA512:d4f9d30a0097076ad83ab8f07766101f2d151dd2dcbcfc6e0560a1e2701f0ff802af20c2a2a4efa9b94fb599903071f6406a7b868b0c7817ce3ff8f8b928d8bd
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0.orig.tar.gz' curl_7.47.0.orig.tar.gz 4563163 SHA512:567d6a17bad1439147a419eff7e3b4a8f81104e903d856a33a1ccfaf77723cc70004fa697505443a5edcee1b644eba2c79484b41c00e35320bec6ef928db43d9
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.47.0-1ubuntu2.19.debian.tar.xz' curl_7.47.0-1ubuntu2.19.debian.tar.xz 73780 SHA512:dc36d566bd0c09734ef0def1840e6afe6cbd6b3fb7ae0f9d7d74da5c9d05b40eaa1c288442f8ea40c157500bf759bbcb3625baeb1dfece3cede17ef1dbbb0087
```

### `dpkg` source package: `cyrus-sasl2=2.1.26.dfsg1-14ubuntu0.2`

Binary Packages:

- `libsasl2-2:amd64=2.1.26.dfsg1-14ubuntu0.2`
- `libsasl2-modules-db:amd64=2.1.26.dfsg1-14ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.26.dfsg1-14ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.dsc' cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.dsc 3416 SHA512:fd0ce2535908f464fa0335848b002c7bf49c16d60eabebc1812e2d75cb0a61fea27586bba3e49102660af7d90319d7b9f32e4a05d2abfac75a7982c80ebd701a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz 1494337 SHA512:244b081cb8c58f2cc59e0a0c18bc91fc3b0659d2419e3aa435d4e39ab86c565141d96bad50295a90046b86dcad7e773b26a88e8271917d89c065988b8c9599ec
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.debian.tar.xz' cyrus-sasl2_2.1.26.dfsg1-14ubuntu0.2.debian.tar.xz 95360 SHA512:f72b8e64cd49541046b9a759873aa61ee27db9ec230e17cbe240d8cc61b7da93be0754d51d692bee6557993829a565f052de5ec7a55230094ee53e256ca53e8d
```

### `dpkg` source package: `dash=0.5.8-2.1ubuntu2`

Binary Packages:

- `dash=0.5.8-2.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.dsc' dash_0.5.8-2.1ubuntu2.dsc 1882 SHA256:16cb7f56041a9daa198728715318a5d88c19da01eb3ffccbc71f67304b077564
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.diff.gz' dash_0.5.8-2.1ubuntu2.diff.gz 73054 SHA256:3c200a0b9c88b2e421bce9c717bf2ace7a9378c271a9b60463913e312424565a
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

### `dpkg` source package: `db5.3=5.3.28-11ubuntu0.2`

Binary Packages:

- `libdb5.3:amd64=5.3.28-11ubuntu0.2`
- `libdb5.3-dev=5.3.28-11ubuntu0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-11ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.2.dsc' db5.3_5.3.28-11ubuntu0.2.dsc 3182 SHA512:6b376d9d7286bf3a09ed1d1c8113a8bfaa99276424691e42d952393fcab04d9f317de621d24bfd7c33b1a2f6ac92c3d781c83f904c0dc8af55c8ea99eaa530da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA512:080483cac3119569e04c3c22c95e97e5e448c88d87a443933d0ef2c71b506f309428584d6a8fb9c236c616dd82beffa1b30361b4c918756745983fcf54a3f8da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.2.debian.tar.xz' db5.3_5.3.28-11ubuntu0.2.debian.tar.xz 29312 SHA512:63be9f279a67cc56ddacccd3a4b419d83e1a081c7b104c0a05d845a4e65c81aab51fc46e676a27c51f52cad038041e10f2ffbca64cbde6d006537cb0a53d2b66
```

### `dpkg` source package: `dbus=1.10.6-1ubuntu3.6`

Binary Packages:

- `libdbus-1-3:amd64=1.10.6-1ubuntu3.6`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.10.6-1ubuntu3.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6-1ubuntu3.6.dsc' dbus_1.10.6-1ubuntu3.6.dsc 3090 SHA512:c0e69e543f96117580c2db0bb037c24ec9b83f63a3562c1f2e101503615c2bdff0d419d8fe5e286966d47e779a3be3529c7a6152e647742a715ba4b3b81cb03c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6.orig.tar.gz' dbus_1.10.6.orig.tar.gz 1952608 SHA512:56108dde5097b063b25ef6e42e573b7e1affd5b5a6ce3c745e2de21b434d86542ac6b7c384572826f867a5c471692cc7468c74c4b0cf4a1f60a1a41b0394fb3c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.6-1ubuntu3.6.debian.tar.xz' dbus_1.10.6-1ubuntu3.6.debian.tar.xz 66784 SHA512:db7a48f3dd0ec0faa1f5270ae4a2863119c7badc0ed68c357cc16361bea2b5bada8e39f6005161443b20322861e063b51258f2d7e5fec9217b026e0a7f016c5d
```

### `dpkg` source package: `debconf=1.5.58ubuntu2`

Binary Packages:

- `debconf=1.5.58ubuntu2`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.58ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu2.dsc' debconf_1.5.58ubuntu2.dsc 2076 SHA512:5703f7ec92cd0247f94ee8384bbb395d37fb0d98ad6ca891cdd597e3dc124e64fa2f2b91687a2e5e10e196feef1dd32ebf9ee7565f8e7a39584e01002b43ea9d
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu2.tar.gz' debconf_1.5.58ubuntu2.tar.gz 1007295 SHA512:1b1f8f779e0cc2fb1580a7381599a47b0c27a0f68da90f07023edb178ea8bffe9a205c3ecf002f6496445225b158c3dc4a827cca24f2f1755384bfc67b3000ef
```

### `dpkg` source package: `debianutils=4.7`

Binary Packages:

- `debianutils=4.7`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.dsc' debianutils_4.7.dsc 1703 SHA256:8dd1d66186f56bfe11bce5151b50c6909787d690bf90cc90212ea6deec186460
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.tar.xz' debianutils_4.7.tar.xz 156276 SHA256:a269cacd40f52f2fa5d5636357714a49e8538459c16d77772efaa23711fe53d9
```

### `dpkg` source package: `diffutils=1:3.3-3`

Binary Packages:

- `diffutils=1:3.3-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.dsc' diffutils_3.3-3.dsc 1438 SHA256:2ac1b096ab1f6f0c628d6952fe65336d0c792a3d4814fb73a81a3f1f518eff91
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.debian.tar.xz' diffutils_3.3-3.debian.tar.xz 18356 SHA256:a0d1946979196f793a8ca55b21ab7891227de08f15bac2578ed84f4911e8b755
```

### `dpkg` source package: `djvulibre=3.5.27.1-5ubuntu0.1`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-5ubuntu0.1`
- `libdjvulibre-text=3.5.27.1-5ubuntu0.1`
- `libdjvulibre21:amd64=3.5.27.1-5ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-5ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-5ubuntu0.1.dsc' djvulibre_3.5.27.1-5ubuntu0.1.dsc 2586 SHA512:5aaa5cd91993f27f51585a83726d1a87f07eec3239abc46e1ca5d595ff0f0dfed213188b6da2f71f350c90dd1cf3c975e4f1449587416ad897eeaeb60fe1762f
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA512:2ed11daa05995db7bf52113e2f75456c3c804988d2c17d0183b24ab379e52a4ef1871189e8bb132fec6cbc9d629b4d67a4d89ef7df7a995044cb25ff3dcc5de8
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-5ubuntu0.1.debian.tar.xz' djvulibre_3.5.27.1-5ubuntu0.1.debian.tar.xz 23060 SHA512:02b5225d79b8ac442fffcefce4096446b9383b72d20f2d68c4fef23f6af57e878fda4adc8f6e0110c697bf3709c559634eb5abe8d83bc3e2f3812cfa3a8b0256
```

### `dpkg` source package: `dpkg=1.18.4ubuntu1.7`

Binary Packages:

- `dpkg=1.18.4ubuntu1.7`
- `dpkg-dev=1.18.4ubuntu1.7`
- `libdpkg-perl=1.18.4ubuntu1.7`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.4ubuntu1.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.7.dsc' dpkg_1.18.4ubuntu1.7.dsc 2196 SHA512:584fcb2ee1876ee6d500f492ba104082e46c5a7d0f89e2fc402114474f89a8166abb90b497b44471ddd7f3d3381fd5fdcc7d9e7e08b286de864710e4334bcd3a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.7.tar.xz' dpkg_1.18.4ubuntu1.7.tar.xz 4298460 SHA512:4a953d961495ff7172ccb2e1f2e48216e52cf7faf127089039e7b122c2c9a6823c1e8e55f8a3cea353798955d5491f946dc46d4e52145c449980ebe6a981e7e0
```

### `dpkg` source package: `e2fsprogs=1.42.13-1ubuntu1.2`

Binary Packages:

- `comerr-dev=2.1-1.42.13-1ubuntu1.2`
- `e2fslibs:amd64=1.42.13-1ubuntu1.2`
- `e2fsprogs=1.42.13-1ubuntu1.2`
- `libcomerr2:amd64=1.42.13-1ubuntu1.2`
- `libss2:amd64=1.42.13-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.13-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.2.dsc' e2fsprogs_1.42.13-1ubuntu1.2.dsc 2606 SHA512:02793a1deac21bdbd72aea42f684673c945f7ab33d659bef5245caa42a30d752d5bdfcfd6c672c87907508822819025bb3ce75603e7be61ea4d61717167ed06d
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13.orig.tar.gz' e2fsprogs_1.42.13.orig.tar.gz 6511931 SHA512:d341790f55c3bff34425369063757280b9ba6ac08f405e14f94f299345ae76c0dc6e90871b746cc98c73467448d888fe5bc029688b5eed5fd22c3c37bf285cd0
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.2.debian.tar.xz' e2fsprogs_1.42.13-1ubuntu1.2.debian.tar.xz 72228 SHA512:db80956f2ed3e90ee888017843a1269f09dbb3e03f6adf2596983309189f8e131f68c06490673d69af7edae336d66446aea6e8fe488b1ad17cf2ba79bbd6ae98
```

### `dpkg` source package: `elfutils=0.165-3ubuntu1.2`

Binary Packages:

- `libelf1:amd64=0.165-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.165-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165-3ubuntu1.2.dsc' elfutils_0.165-3ubuntu1.2.dsc 2393 SHA512:5f37104f950b615598a51c9f2d88996c4ad0db614bd63d8996e7cc7230dee3543d5c36705906a6c8f6dd6066ecbacd328c2fc6455e22302c7cf43b2f0723bf5f
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165.orig.tar.bz2' elfutils_0.165.orig.tar.bz2 6481128 SHA512:89d42a32f1d77d3419473165e1ac15782765ce6ec842d63f03962260806fbfdf16d17b8abec8527d8b125b9195c24a56252070b0c6ae860ffcf0dd74943da32a
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.165-3ubuntu1.2.debian.tar.xz' elfutils_0.165-3ubuntu1.2.debian.tar.xz 52004 SHA512:acd8f208ffd461307216cfad95bb84c16ab77d6dfad17787bf75c0a571f57e33f95024f4245d043fe720dc53ed77f237b50e02d5655736d71e6e4fd100bcacba
```

### `dpkg` source package: `expat=2.1.0-7ubuntu0.16.04.5`

Binary Packages:

- `libexpat1:amd64=2.1.0-7ubuntu0.16.04.5`
- `libexpat1-dev:amd64=2.1.0-7ubuntu0.16.04.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.1.0-7ubuntu0.16.04.5
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.5.dsc' expat_2.1.0-7ubuntu0.16.04.5.dsc 2387 SHA512:8b3d97e198ef1d6024f39c8797c7cba4ceda7b6483fdeb8a4a27d706209c397669aa969e1e7ca4a3b15de6d894766881914fdcf574af8a3191f5a23b5b8ab9b3
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0.orig.tar.gz' expat_2.1.0.orig.tar.gz 562616 SHA512:2a9ad2b44b87b84087979fe4114d661838df3b03dbdcb74d590cb74096bf35ce9d5a86617b0941a2655ea441a94537bcbcd78252da92342238823be36de2d09d
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.5.debian.tar.xz' expat_2.1.0-7ubuntu0.16.04.5.debian.tar.xz 23116 SHA512:fd79b62dde2cde33ca7d14c5b5fd99d0ad14d4d63b0332470e5ed103d64f1ed0d39670ac8a313a39193a3f4cf1c3c67b5f24d4db4eb64200b6f8c2f1f9d9daea
```

### `dpkg` source package: `explorercanvas=0.r3-4`

Binary Packages:

- `libjs-excanvas=0.r3-4`

Licenses: (parsed from: `/usr/share/doc/libjs-excanvas/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris explorercanvas=0.r3-4
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.dsc' explorercanvas_0.r3-4.dsc 2000 SHA256:d168011ed1f110f82b5039a6b070167f1f262d2a35d7fa25a6b5462f73761637
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3.orig.tar.gz' explorercanvas_0.r3.orig.tar.gz 50748 SHA256:687af8084781b8eb3451fc55c88f6dfddc2b84428d197daf2c4c33fd5c55fed8
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.debian.tar.xz' explorercanvas_0.r3-4.debian.tar.xz 2040 SHA256:afcaa3e229d9b423988fc30439aeee1599c9dac8ad94430309404f9cf9f0c11f
```

### `dpkg` source package: `fftw3=3.3.4-2ubuntu1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.4-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.4-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.4-2ubuntu1.dsc' fftw3_3.3.4-2ubuntu1.dsc 2826 SHA256:ec8f6ad388190517b0816228bde513b9cf3f439b4bf2743976e4e2e827b2f037
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.4.orig.tar.gz' fftw3_3.3.4.orig.tar.gz 3940427 SHA256:8f0cde90929bc05587c3368d2f15cd0530a60b8a9912a8e2979a72dbe5af0982
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.4-2ubuntu1.debian.tar.xz' fftw3_3.3.4-2ubuntu1.debian.tar.xz 12664 SHA256:c40d58a6d0f8bf17ecc272222c433972a313c069440bb83caf4d740b592a765c
```

### `dpkg` source package: `file=1:5.25-2ubuntu1.4`

Binary Packages:

- `file=1:5.25-2ubuntu1.4`
- `libmagic1:amd64=1:5.25-2ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.25-2ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25-2ubuntu1.4.dsc' file_5.25-2ubuntu1.4.dsc 2252 SHA512:3f0b3746c6b9e98968008dfe7851c0bbd487d9a18803bec518554269e978db198d63e3e3561038c3dbb3479a3c05ff2a1b1f66c44556096d8b15e8f5f564db21
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25.orig.tar.xz' file_5.25.orig.tar.xz 537916 SHA512:8d5eebb40b1f44b1fbe9bac6390e2e1256f1797175cbf3d488079a7d25d112120bb5a00fbabf92efe94f829166c62373a71d4592cf2d8dc537d2644e5d7c6066
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25-2ubuntu1.4.debian.tar.xz' file_5.25-2ubuntu1.4.debian.tar.xz 35264 SHA512:f7e5536c3c3de634d63198be4f2814bba754dbbf0b9752c0fd44608dafc30a2cd483a1ffa8ca0415b82676a16aa9ecde4198fc89cc7a2f5e5ec529d7b6b1cd10
```

### `dpkg` source package: `findutils=4.6.0+git+20160126-2`

Binary Packages:

- `findutils=4.6.0+git+20160126-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20160126-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126-2.dsc' findutils_4.6.0+git+20160126-2.dsc 2163 SHA256:b4b644696cb66bdf72c59b25efe61800ae20fadfcc8e633cde240e4a956567a7
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126.orig.tar.xz' findutils_4.6.0+git+20160126.orig.tar.xz 1710188 SHA256:3d25cef1e0d5e098e323b06f66aea9f02f993a0cf6f13a437d712a8a722cd67e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20160126-2.debian.tar.xz' findutils_4.6.0+git+20160126-2.debian.tar.xz 25080 SHA256:58bf1e7a07fbac6a68693b099ec6fc9a6166e0b1b60cebe6bac3b90287a8dc3f
```

### `dpkg` source package: `fontconfig=2.11.94-0ubuntu1.1`

Binary Packages:

- `fontconfig=2.11.94-0ubuntu1.1`
- `fontconfig-config=2.11.94-0ubuntu1.1`
- `libfontconfig1:amd64=2.11.94-0ubuntu1.1`
- `libfontconfig1-dev:amd64=2.11.94-0ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.94-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu1.1.dsc' fontconfig_2.11.94-0ubuntu1.1.dsc 2287 SHA512:2bdd80817fff2184ecb2169cfa1236f4498ada9c75723598b9f29603f96d395451366c8da164950b79f203abae72d2f425333bd9b401b08d455e8252223ec49f
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94.orig.tar.bz2' fontconfig_2.11.94.orig.tar.bz2 1567540 SHA512:ab0639afbe37c46197aa31178f928a000e0662edf794bcd421e396bae2298edc23851ff58deeb448cc14ac1206683494817a64a75ab9f7bb9bce6321ccf5c1f2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu1.1.debian.tar.xz' fontconfig_2.11.94-0ubuntu1.1.debian.tar.xz 27932 SHA512:dd1759cff6acc99a2d3a0698cbf161dfa261ae96492651c4f72fd2749972f8012fdc187dc1a1c8542d767bb07684e766a9bfbbf50353781cd80c8b13df57b136
```

### `dpkg` source package: `fonts-dejavu=2.35-1`

Binary Packages:

- `fonts-dejavu-core=2.35-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.35-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35-1.dsc' fonts-dejavu_2.35-1.dsc 2583 SHA256:b02163fb4033175371a6cb6e39e193d438d910ab907eed5d14b47a3a5e57b392
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35.orig.tar.bz2' fonts-dejavu_2.35.orig.tar.bz2 11493699 SHA256:646f5f52fbba7c6c82580a22cedb487f31ecf28aa28c71da5c38e04c2989abf5
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.35-1.debian.tar.xz' fonts-dejavu_2.35-1.debian.tar.xz 10276 SHA256:5922af28fff7db4c5845c17623fe882028742f90db658f4183c21648e0cafd3d
```

### `dpkg` source package: `freetype=2.6.1-0.1ubuntu2.5`

Binary Packages:

- `libfreetype6:amd64=2.6.1-0.1ubuntu2.5`
- `libfreetype6-dev:amd64=2.6.1-0.1ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.6.1-0.1ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1-0.1ubuntu2.5.dsc' freetype_2.6.1-0.1ubuntu2.5.dsc 1944 SHA512:46c852f27b64e27ed6861acd493cb8a73e28c2b0fd1e4e2609aec1762b80005f781731de7feec65bb028344f84cd1f77e852acdc8f922edc7158148cc18e0c9c
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1.orig.tar.gz' freetype_2.6.1.orig.tar.gz 2411537 SHA512:526dfe1aa98631f1e4af7d01d00dc93128df426f4df00e41b4a2132914e9218945fbd92e06a4ad7adcd84812752613d0f5c7938c8d69626a802cf01e1dc527ef
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.6.1-0.1ubuntu2.5.diff.gz' freetype_2.6.1-0.1ubuntu2.5.diff.gz 45669 SHA512:b879ae7c77ebf691e42e3905b45e67d40eb9bbf9711b2e1b1204f1c2fd1738e334c30e04a73f847f4c2c4127100282b78d51af5354da0a1673b62744a75cb4ca
```

### `dpkg` source package: `gcc-5=5.4.0-6ubuntu1~16.04.12`

Binary Packages:

- `cpp-5=5.4.0-6ubuntu1~16.04.12`
- `g++-5=5.4.0-6ubuntu1~16.04.12`
- `gcc-5=5.4.0-6ubuntu1~16.04.12`
- `gcc-5-base:amd64=5.4.0-6ubuntu1~16.04.12`
- `libasan2:amd64=5.4.0-6ubuntu1~16.04.12`
- `libatomic1:amd64=5.4.0-6ubuntu1~16.04.12`
- `libcc1-0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libcilkrts5:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgcc-5-dev:amd64=5.4.0-6ubuntu1~16.04.12`
- `libgomp1:amd64=5.4.0-6ubuntu1~16.04.12`
- `libitm1:amd64=5.4.0-6ubuntu1~16.04.12`
- `liblsan0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libmpx0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libquadmath0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libstdc++-5-dev:amd64=5.4.0-6ubuntu1~16.04.12`
- `libstdc++6:amd64=5.4.0-6ubuntu1~16.04.12`
- `libtsan0:amd64=5.4.0-6ubuntu1~16.04.12`
- `libubsan0:amd64=5.4.0-6ubuntu1~16.04.12`

Licenses: (parsed from: `/usr/share/doc/cpp-5/copyright`, `/usr/share/doc/g++-5/copyright`, `/usr/share/doc/gcc-5/copyright`, `/usr/share/doc/gcc-5-base/copyright`, `/usr/share/doc/libasan2/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-5-dev/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-5-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.4.0-6ubuntu1~16.04.12
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1%7e16.04.12.dsc' gcc-5_5.4.0-6ubuntu1~16.04.12.dsc 28298 SHA512:d1f8116726cfad5d406849be8dd47fa6a0c5e40db65e284eaca6cb71e86b03ad854a9f843199d7f46c430fb72a5047f8eb9be27a0f9f656b8a781d6f9eed3a0b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0.orig.tar.gz' gcc-5_5.4.0.orig.tar.gz 73530162 SHA512:8ce644f7b67b999036d134443518da4fd4ccc3c838f9015dc18bf15dc8ef006e8a53bb4dd7dd1fcc4a8cfd9bd2b6e5e223e57c0474ea7c5c74f7b26d669bbdef
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1%7e16.04.12.diff.gz' gcc-5_5.4.0-6ubuntu1~16.04.12.diff.gz 1486130 SHA512:bb05d04b8f0f0a3f333754d46bbb28365d8d6f4ea67b57c0c0f0d48fda9ba5f884b3eb1324a3fef259b8ae90497a70b44693aed5491639113502466b191473bf
```

### `dpkg` source package: `gcc-defaults=1.150ubuntu1`

Binary Packages:

- `cpp=4:5.3.1-1ubuntu1`
- `g++=4:5.3.1-1ubuntu1`
- `gcc=4:5.3.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.150ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.dsc' gcc-defaults_1.150ubuntu1.dsc 12634 SHA256:5f538e1bb59109b47d820cdd056993d462f24468c67f6a1a005db389dffa8ee2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.tar.gz' gcc-defaults_1.150ubuntu1.tar.gz 73857 SHA256:cadaf435151fb1b901b0351d20a9981fe33d94fbb1ab14bd9960095b673ce6ed
```

### `dpkg` source package: `gccgo-6=6.0.1-0ubuntu1`

Binary Packages:

- `gcc-6-base:amd64=6.0.1-0ubuntu1`
- `libgcc1:amd64=1:6.0.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gccgo-6=6.0.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.dsc' gccgo-6_6.0.1-0ubuntu1.dsc 11285 SHA256:4c02817baac83492323ebe7800d44de609eca147518682307a3bad2bd5134129
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1.orig.tar.gz' gccgo-6_6.0.1.orig.tar.gz 76335555 SHA256:daff7478ce52d00572683547c810bf50652a9057c33e3ce703c9f0baae28f4c3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.diff.gz' gccgo-6_6.0.1-0ubuntu1.diff.gz 633954 SHA256:839eea6c2d23670f09b642864ff61e3097b47391cb508a5997538750ff8678f6
```

### `dpkg` source package: `gdbm=1.8.3-13.1`

Binary Packages:

- `libgdbm-dev=1.8.3-13.1`
- `libgdbm3:amd64=1.8.3-13.1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-13.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.dsc' gdbm_1.8.3-13.1.dsc 1830 SHA256:b1d8bef30edc491315c337930cbe2b61f44f55035adfc26ae945bab5ca57d5c9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.debian.tar.xz' gdbm_1.8.3-13.1.debian.tar.xz 14748 SHA256:251401e1f5210226f384e936b1b7ea1df40119a918d9f3dbf48b2e51d4df8983
```

### `dpkg` source package: `gdk-pixbuf=2.32.2-1ubuntu1.6`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.32.2-1ubuntu1.6`
- `libgdk-pixbuf2.0-0:amd64=2.32.2-1ubuntu1.6`
- `libgdk-pixbuf2.0-common=2.32.2-1ubuntu1.6`
- `libgdk-pixbuf2.0-dev=2.32.2-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.32.2-1ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.32.2-1ubuntu1.6.dsc' gdk-pixbuf_2.32.2-1ubuntu1.6.dsc 2912 SHA512:1b85fb61d682862068166c135c098b1030c82f510f1d22f2afa306ca6959706cc93c7d91d98dafdc6c1867fed9b80a48cc9c4aaa96b1a2fbaae47e07893cb3ac
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.32.2.orig.tar.xz' gdk-pixbuf_2.32.2.orig.tar.xz 2429268 SHA512:146cbddc1b4a68715a827fc53d98f213f5e27f4f4a8b3fe6148b96c866b4ca4ab624613ddf196d4b0a01bbddfc6f8438b96ad436d23dfced02d584ff8c2fdf3d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.32.2-1ubuntu1.6.debian.tar.xz' gdk-pixbuf_2.32.2-1ubuntu1.6.debian.tar.xz 19956 SHA512:11f46e2d5e92606ecf8e1c3978e00f71af0e926cc89339de710d46f0a8ef930306f2027a3f7a37920ed6f5f94ed4edc1c257f551acef19f1a45e1ef649a19437
```

### `dpkg` source package: `git=1:2.7.4-0ubuntu1.10`

Binary Packages:

- `git=1:2.7.4-0ubuntu1.10`
- `git-man=1:2.7.4-0ubuntu1.10`

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

Source:

```console
$ apt-get source -qq --print-uris git=1:2.7.4-0ubuntu1.10
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4-0ubuntu1.10.dsc' git_2.7.4-0ubuntu1.10.dsc 2901 SHA512:43f635371d766113c10145ef9fee9156a4d2024b1ce8aac3cea8ee283b03712439d1a86950e3266884c4a789efff0fae2395cc1c25466684ff79d6deec7b8463
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4.orig.tar.xz' git_2.7.4.orig.tar.xz 3909636 SHA512:82a646140834e909bf1748a017e86f37f0711c759fe0a6ad03529beb57c79742cb7bf77c2dba29ccd84fcf3d5f18ad9c85c00f002d3b257be42e058750423da7
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4-0ubuntu1.10.debian.tar.xz' git_2.7.4-0ubuntu1.10.debian.tar.xz 574868 SHA512:0d4ea9e95e1f4673dfe1d4e1f71737f6481f4a5354f1bfdc497958ec644506d7e8d66ea78b5b1cbea09a8185c86222084eb7c79df9eaa998ff20d0beabc2ee4a
```

### `dpkg` source package: `glib2.0=2.48.2-0ubuntu4.8`

Binary Packages:

- `libglib2.0-0:amd64=2.48.2-0ubuntu4.8`
- `libglib2.0-bin=2.48.2-0ubuntu4.8`
- `libglib2.0-data=2.48.2-0ubuntu4.8`
- `libglib2.0-dev=2.48.2-0ubuntu4.8`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.48.2-0ubuntu4.8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu4.8.dsc' glib2.0_2.48.2-0ubuntu4.8.dsc 3173 SHA512:1e2c8f195f29a7950170981fb08111a1850d0fa37df6725f18ccaf683cfdd4cb02da88a9f6d95b280d5beacccd096a59a197318059074b911e969679c7842c35
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2.orig.tar.xz' glib2.0_2.48.2.orig.tar.xz 6408644 SHA512:2eac104eb2207d0a6488992e48069a34b417f51e141364f281ab7b0953a6de88be177b1c694dd9464a856c9a5d8021e3cf0193a8d9c5aaf6ea11f1f9ff743c43
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu4.8.debian.tar.xz' glib2.0_2.48.2-0ubuntu4.8.debian.tar.xz 95588 SHA512:c74afa24a478ee21c4a2325878b925119f116556991d79705b70a6d266ed87d3aeb908554bc6337433a42d44715da8bece89b3f70eb3384074c031739b4c23c5
```

### `dpkg` source package: `glibc=2.23-0ubuntu11.3`

Binary Packages:

- `libc-bin=2.23-0ubuntu11.3`
- `libc-dev-bin=2.23-0ubuntu11.3`
- `libc6:amd64=2.23-0ubuntu11.3`
- `libc6-dev:amd64=2.23-0ubuntu11.3`
- `multiarch-support=2.23-0ubuntu11.3`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.23-0ubuntu11.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu11.3.dsc' glibc_2.23-0ubuntu11.3.dsc 8547 SHA512:73ec4bcd6e9fd35ec2f7b4a0c646e0974ae302915a525cf3ff5a4aa7a21c04104aa201718d1f18ab792518c64cf803b3d46a560347784e3c96432da140719d49
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23.orig.tar.xz' glibc_2.23.orig.tar.xz 13849968 SHA512:f2c3460d04226cbb5ff54755efb6f337356d9c063d71f736d8e5f631aaa85bfa89c4e2da1cd29f93383310994a18b21327512efd145d4c8dffd6c1412a002191
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu11.3.debian.tar.xz' glibc_2.23-0ubuntu11.3.debian.tar.xz 1253716 SHA512:41c5c9dc2ff20a1c0b781d700a94daeda087f3b58cbccc68f36695d6d3ee83c06eed2083bfaf3220ab7ebbbd35c0cca15f63b087ca981a39ed29a71430ba216c
```

### `dpkg` source package: `gmp=2:6.1.0+dfsg-2`

Binary Packages:

- `libgmp-dev:amd64=2:6.1.0+dfsg-2`
- `libgmp10:amd64=2:6.1.0+dfsg-2`
- `libgmpxx4ldbl:amd64=2:6.1.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg-2.dsc' gmp_6.1.0+dfsg-2.dsc 2161 SHA256:a790b4fea2792f968014a3ef41ea749dcc6687bcb33aa5bea59400ccd101337e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg.orig.tar.xz' gmp_6.1.0+dfsg.orig.tar.xz 1786120 SHA256:78a74cfd933bbdf7e93909a6069e53e8aba8389e9b3880300c926da7a7d55632
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0%2bdfsg-2.debian.tar.xz' gmp_6.1.0+dfsg-2.debian.tar.xz 20576 SHA256:c933e3cb45cd4101cc0604b5bc0fb96d6067b3614e730dbf26588985720ba581
```

### `dpkg` source package: `gnupg=1.4.20-1ubuntu3.3`

Binary Packages:

- `gnupg=1.4.20-1ubuntu3.3`
- `gpgv=1.4.20-1ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.20-1ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.3.dsc' gnupg_1.4.20-1ubuntu3.3.dsc 2166 SHA512:e5e296ded101c8ca30f0a9ddc77ada39a858723af939770c68beb04337df05fb1559b2cc13404b9719e45e3b983121a115414aef196fe1b61f09374a340f43dd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20.orig.tar.gz' gnupg_1.4.20.orig.tar.gz 5156447 SHA512:878a704ca5d69dc56f857b4b7af8927a38c19da78a0096451c8ccb23bc1df83d229a3d12546a4af41270b4d5b237d054e9ccb5e694d7d9f2b30b1c31baeb8cc5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.3.debian.tar.xz' gnupg_1.4.20-1ubuntu3.3.debian.tar.xz 42452 SHA512:22bd977c1e092c97c2e9409f4a10e38d9ee45826c036e2cf6eb8f0955a768e850fb4864525352a524a684668e582058abcf2bae8813bdf8358042a38aafc1e6f
```

### `dpkg` source package: `gnutls28=3.4.10-4ubuntu1.8`

Binary Packages:

- `libgnutls30:amd64=3.4.10-4ubuntu1.8`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The main library is licensed under GNU Lesser`
- `nonstandard, see below`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gobject-introspection=1.46.0-3ubuntu1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.46.0-3ubuntu1`
- `gir1.2-glib-2.0:amd64=1.46.0-3ubuntu1`
- `libgirepository-1.0-1:amd64=1.46.0-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.46.0-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.46.0-3ubuntu1.dsc' gobject-introspection_1.46.0-3ubuntu1.dsc 3004 SHA256:a1e53758fae32e7d6ad2ef323264ac591694d39e661ad1636fb926ddb8f19813
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.46.0.orig.tar.xz' gobject-introspection_1.46.0.orig.tar.xz 1359436 SHA256:6658bd3c2b8813eb3e2511ee153238d09ace9d309e4574af27443d87423e4233
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.46.0-3ubuntu1.debian.tar.xz' gobject-introspection_1.46.0-3ubuntu1.debian.tar.xz 19584 SHA256:9c8c898f33d1629ec267700010a34715a7f4f854af983a9d3f038dbc55b68792
```

### `dpkg` source package: `graphite2=1.3.10-0ubuntu0.16.04.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL`
- `GPL-1+`
- `GPL1+ | Artistic`
- `LGPL | other`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1 | GPL-2 | LGPL-2.1`
- `other`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.10-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-0ubuntu0.16.04.1.dsc' graphite2_1.3.10-0ubuntu0.16.04.1.dsc 2238 SHA512:f7e6ae2e48bab6d1a7121056dae176528a00aeed54ac81f105b4923ff6685548376cad4597e6b3ea5eb33aa47960a454bfb77fb6f3263611c6c157f0ff6e2f39
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA512:d6d578feaa2d9304dc9bcd3926958070b8c23b27437a9fcb801e08e62f33a5549b7a6aa9636c7f8eb80a2a2c6d5cac97d58050fb30fd102b9fd0f8c558f4252b
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-0ubuntu0.16.04.1.debian.tar.xz' graphite2_1.3.10-0ubuntu0.16.04.1.debian.tar.xz 10016 SHA512:a71bb0302388813a3d9a314fcce57fa4d3b4b41920e3c6dc50de610dca10f6c1e2c274170c027921baa051e6bc6afe6b7438582baa2a77ee1f8c37431d862c2b
```

### `dpkg` source package: `graphviz=2.38.0-12ubuntu2.1`

Binary Packages:

- `libcdt5=2.38.0-12ubuntu2.1`
- `libcgraph6=2.38.0-12ubuntu2.1`
- `libgraphviz-dev=2.38.0-12ubuntu2.1`
- `libgvc6=2.38.0-12ubuntu2.1`
- `libgvc6-plugins-gtk=2.38.0-12ubuntu2.1`
- `libgvpr2=2.38.0-12ubuntu2.1`
- `libpathplan4=2.38.0-12ubuntu2.1`
- `libxdot4=2.38.0-12ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvc6-plugins-gtk/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `GPL-2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.38.0-12ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0-12ubuntu2.1.dsc' graphviz_2.38.0-12ubuntu2.1.dsc 3301 SHA512:6e576a4f71e16226e01a6bc2fd37cadd493434160635d976051707bd0a96d2cb7bd3cfa5de5680043da716d2b1d894d18559e60b0ba4aa66727eff4b2b9e942d
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0.orig.tar.gz' graphviz_2.38.0.orig.tar.gz 25848858 SHA512:0e51a97dae595f4e80bc9e4a12ba3c48485fab19941a28d522f5a0624b6a767e0ba720e9e55bff8efe8308dd1cd3793e2c99cb5fdfceb2d5cafb0cbee907e531
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0-12ubuntu2.1.debian.tar.xz' graphviz_2.38.0-12ubuntu2.1.debian.tar.xz 43652 SHA512:bb16b1d3c3d04b2ea1d7b54bb7bc003ef7067b11b48738f7f2382afcb51fdbeb6942b0fd9c381c5239b95fee5f71b2238b4d9c08dc16e132b6af696f2ca1d16b
```

### `dpkg` source package: `grep=2.25-1~16.04.1`

Binary Packages:

- `grep=2.25-1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.25-1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1%7e16.04.1.dsc' grep_2.25-1~16.04.1.dsc 1971 SHA512:86ca38fcab2aba322c91093a29a7dd1f3e8a0fef39236c8fda4a01e8af6c1b817600e4f92cb87ac8f0bb97d35300f8fdce48b10a6b4fba5e4c60aee728da0c70
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25.orig.tar.xz' grep_2.25.orig.tar.xz 1327856 SHA512:7a738f938dde350ae71eb87083586e25768ba392113cba973a4e567b476c788ca66e0736d63f5e0e12a7847fa70379dc0b6568ec92431ea4604acd2cbedd66c1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1%7e16.04.1.debian.tar.bz2' grep_2.25-1~16.04.1.debian.tar.bz2 108236 SHA512:adb04fb20d83908d46da9d8e7e58679103d57a33b69eb2c2352db1c1f71c478408f306f95ed5a1b1da479132019456cdf89eccda68a58dc6f404ab494d80ef83
```

### `dpkg` source package: `gtk+2.0=2.24.30-1ubuntu1.16.04.2`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.30-1ubuntu1.16.04.2`
- `libgtk2.0-common=2.24.30-1ubuntu1.16.04.2`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.30-1ubuntu1.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b2.0/gtk%2b2.0_2.24.30-1ubuntu1.16.04.2.dsc' gtk+2.0_2.24.30-1ubuntu1.16.04.2.dsc 3981 SHA512:50a24d012a0d51ddd046820268bcc7c41eaa147ebfd972dcf0696b85facfbe206d0daf88698421d8460b74c1d4a17598dd2be0435237e0722d10e44a0c7c28a8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b2.0/gtk%2b2.0_2.24.30.orig.tar.xz' gtk+2.0_2.24.30.orig.tar.xz 12800276 SHA512:13373e4809b48acefdbf09f18f0f18b562f05b3ce2e3169c5aa80722a262405b3b4a220ecee54c59ef03ef89be9850dc659f6da9251abaf7c577599b7a4319b1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk%2b2.0/gtk%2b2.0_2.24.30-1ubuntu1.16.04.2.debian.tar.xz' gtk+2.0_2.24.30-1ubuntu1.16.04.2.debian.tar.xz 107272 SHA512:3ba0de124c81078669f0a67c331dedd9d4ad43d08ae638f4bbcd31315841e61024e66c5bbc2ba713b8619a698a688e8afdc39bc21da6ca74bd335c4b1ed170e3
```

### `dpkg` source package: `gzip=1.6-4ubuntu1`

Binary Packages:

- `gzip=1.6-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.dsc' gzip_1.6-4ubuntu1.dsc 1907 SHA256:77c1d15c52947d50656365597802c586249d26a4f56c8075f5d94b4634d11465
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.debian.tar.xz' gzip_1.6-4ubuntu1.debian.tar.xz 14932 SHA256:9a3e558c87a78bf65f9b9c48d718b3ef0bb69e0cf07617f44e37f41ba5f7b006
```

### `dpkg` source package: `harfbuzz=1.0.1-1ubuntu0.1`

Binary Packages:

- `libharfbuzz0b:amd64=1.0.1-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.0.1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1-1ubuntu0.1.dsc' harfbuzz_1.0.1-1ubuntu0.1.dsc 2820 SHA512:6b48ffb72239a8c45812768a5fe4d9abd073b74633033345f382faed284e0ad81d2cda6a0cdb532ac41f6d508a420dbc56487bd0728b09fb4539ee15d63571cc
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1.orig.tar.bz2' harfbuzz_1.0.1.orig.tar.bz2 1211877 SHA512:6de8d38c64772687701789d38001327a20c225e08d77bd4bb919c61613172e9cb57dd6f4dd5cedcaaad6db8228d91546d8a395dcc21033107496d0a37ded0291
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.0.1-1ubuntu0.1.debian.tar.xz' harfbuzz_1.0.1-1ubuntu0.1.debian.tar.xz 8952 SHA512:2fdaf41953d830f7bfc25e15f0f5e2126f54d8e1e9b88176085ab7d366eb8d556c4ac9f68370f1bcf5cb4d8aecababb85f9e13b1683926bd05e1e66405d93c7d
```

### `dpkg` source package: `heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libgssapi3-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhcrypto4-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimbase1-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimntlm0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhx509-5-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libkrb5-26-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libroken18-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libwind0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg-4ubuntu1.16.04.1.dsc' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.dsc 3766 SHA512:25d7c4546f575b9e94f80b79cc4cbe0f24960289ddc704017986557a9cd4675c2871228d54142a3fb0b2db98b728271b9271fe7df37160754252b988a848b72b
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg.orig.tar.gz' heimdal_1.7~git20150920+dfsg.orig.tar.gz 8979556 SHA512:a2d76adf60df36c5758f0090425a2ac421d2ae972adbf25c900490310bf283a9283c5055891167487f9f1a0813c3b033b31d28adcce497119e4e437be8a39837
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7%7egit20150920%2bdfsg-4ubuntu1.16.04.1.debian.tar.xz' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.debian.tar.xz 65512 SHA512:faa8cb96a99eb3f5f9bf20935eea298adb1d2087a0e6eecf6db6efd13f82705b18f2741342e3fc7dad68428798339eb8dbeecaafb2e0766f9f728656775a7d1f
```

### `dpkg` source package: `hicolor-icon-theme=0.15-0ubuntu1.1`

Binary Packages:

- `hicolor-icon-theme=0.15-0ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.15-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-0ubuntu1.1.dsc' hicolor-icon-theme_0.15-0ubuntu1.1.dsc 2084 SHA512:b01397515db9620a33ed7972241d1a9f0e87ca1e5e4de5717de61e759dd00242eb3a6e6af0551ba04a5b0da214b486c13cb263a7867b0f2f05b88d6b675d1576
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15.orig.tar.xz' hicolor-icon-theme_0.15.orig.tar.xz 51056 SHA512:4ae3cb1d2d1dfc219424d41ffd72323a44e5320117e5e88f81c1629964dd42ab2055c999d0c846f9d8834e7b922b5cec36481e8c82fede6a4e73faf3ac09bd20
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-0ubuntu1.1.debian.tar.xz' hicolor-icon-theme_0.15-0ubuntu1.1.debian.tar.xz 3356 SHA512:9c623d7117e33889331a455ebb0b642c1a6ff872d38552f7b21ac3f3dcdc878076f6d27fdb800c46ffd5d8b6ae7f5785e0186b3f14cca10f17db7f0f1c50c1bd
```

### `dpkg` source package: `hostname=3.16ubuntu2`

Binary Packages:

- `hostname=3.16ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.dsc' hostname_3.16ubuntu2.dsc 1573 SHA256:dcffca698d9f428a83b744d638ef2069252395d9b5d1a3098578f01b0cb347a5
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.tar.gz' hostname_3.16ubuntu2.tar.gz 14378 SHA256:e0a38fa03b66abd428e119e5af2cccb78a0462cdb58e2e540e66d964e2719195
```

### `dpkg` source package: `icu=55.1-7ubuntu0.5`

Binary Packages:

- `icu-devtools=55.1-7ubuntu0.5`
- `libicu-dev:amd64=55.1-7ubuntu0.5`
- `libicu55:amd64=55.1-7ubuntu0.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=55.1-7ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.5.dsc' icu_55.1-7ubuntu0.5.dsc 2162 SHA512:1a430be8449c2dab85aa46b3d3469b5d540245c2a7ccd75735a800ad8637cf18625189003494fdc91653eaaf008748863d798d84cd172b543336a012d1ee613e
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1.orig.tar.gz' icu_55.1.orig.tar.gz 25600847 SHA512:21a3eb2c3678cd27b659eed073f8f1bd99c9751291d077820e9a370fd90b7d9b3bf414cc03dec4acb7fa61087e02d04f9f40e91a32c5180c718e2102fbd0cd35
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.5.debian.tar.xz' icu_55.1-7ubuntu0.5.debian.tar.xz 32320 SHA512:dc361dcbc2277e371d446508730ecfdd233469a9019fb01c0e474969815d61bf427f3b14b73fe69a0d764875ee533f6dbabce4cb2551b5d0c9b1f8cdd7487512
```

### `dpkg` source package: `ilmbase=2.2.0-11ubuntu2`

Binary Packages:

- `libilmbase-dev=2.2.0-11ubuntu2`
- `libilmbase12:amd64=2.2.0-11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.dsc' ilmbase_2.2.0-11ubuntu2.dsc 2099 SHA256:894cddbe71ecaa8be9d1a348962270882dbe6c339f65e6b702db2fa07d4c9c2d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.debian.tar.xz' ilmbase_2.2.0-11ubuntu2.debian.tar.xz 13400 SHA256:400b77a32f7a04d78ff0462f32dc1e4073f5e1225ed070c63fa6a0ec619905c5
```

### `dpkg` source package: `imagemagick=8:6.8.9.9-7ubuntu5.16`

Binary Packages:

- `imagemagick=8:6.8.9.9-7ubuntu5.16`
- `imagemagick-6.q16=8:6.8.9.9-7ubuntu5.16`
- `imagemagick-common=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-6-arch-config:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-6-headers=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-6.q16-2:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-6.q16-2-extra:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-6.q16-dev:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickcore-dev=8:6.8.9.9-7ubuntu5.16`
- `libmagickwand-6-headers=8:6.8.9.9-7ubuntu5.16`
- `libmagickwand-6.q16-2:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickwand-6.q16-dev:amd64=8:6.8.9.9-7ubuntu5.16`
- `libmagickwand-dev=8:6.8.9.9-7ubuntu5.16`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/imagemagick-common/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-2/copyright`, `/usr/share/doc/libmagickcore-6.q16-2-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-2/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

- `Artistic`
- `GPL-1`
- `ImageMagick`
- `ImageMagickLicensePartEZXML`
- `ImageMagickLicensePartFIG`
- `ImageMagickLicensePartGsview`
- `ImageMagickLicensePartOpenSSH`
- `ImageMagickPartGraphicsMagick`
- `ImageMagickPartlibjpeg`
- `ImageMagickPartlibsquish`
- `Magick++`
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.8.9.9-7ubuntu5.16
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.8.9.9-7ubuntu5.16.dsc' imagemagick_6.8.9.9-7ubuntu5.16.dsc 4163 SHA512:cb54d91d6fbc364d13a145b2adabdc5e8e4a64a4ce86c003c593a69badcbcf6b9bfea06ba06b6c1121b7a8494725447d503e207a38ab2c681ba7433a597b4ebe
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.8.9.9.orig.tar.xz' imagemagick_6.8.9.9.orig.tar.xz 7891624 SHA512:c30067ae55e2905fdd23c70de83198b52937a5b87396b5b89d3324f19a77ac8f654f6bbeeb07d4dcef1b4d609e9f53e1d1dd70848aa1452b58a548a240f7a3a3
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.8.9.9-7ubuntu5.16.debian.tar.xz' imagemagick_6.8.9.9-7ubuntu5.16.debian.tar.xz 319324 SHA512:30e45e9310d0cea91deb4489ffee24ac7b26395eddf2aecbaaeb552c26f4166f8fa47ceba36b0e0e904fddcb231af4cf798b7f8368b3ec2b4080f088f3d6a709
```

### `dpkg` source package: `init-system-helpers=1.29ubuntu4`

Binary Packages:

- `init=1.29ubuntu4`
- `init-system-helpers=1.29ubuntu4`

Licenses: (parsed from: `/usr/share/doc/init/copyright`, `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.29ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.dsc' init-system-helpers_1.29ubuntu4.dsc 2047 SHA512:cdd02bb1deb55b73ded4d622e73b2f2b7e864d43f6e166d856e403d74d37b0aee3b58807ef18f170cf941991d800eeb179b8a7b47f9ed848cc6eacb1c3f3aea8
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.tar.xz' init-system-helpers_1.29ubuntu4.tar.xz 58648 SHA512:7749796e6a77d58ea3439832663ac06b9d11cc2c51ac7dabf8a5ad3c6038a90febcfc64469ec80a4501394bb122d3ba3656c427cdb7395e3794b42094c900008
```

### `dpkg` source package: `insserv=1.14.0-5ubuntu3`

Binary Packages:

- `insserv=1.14.0-5ubuntu3`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.dsc' insserv_1.14.0-5ubuntu3.dsc 2033 SHA256:30a8e6edc9c105803dfc98d733ba0ed8f0aaf81c4aa4f5ba132241b9a1fcb3a2
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.debian.tar.xz' insserv_1.14.0-5ubuntu3.debian.tar.xz 48124 SHA256:a4d0d0703fa398819ab7b4cad573f334feee80aac5520202457519e737b4648a
```

### `dpkg` source package: `isl=0.16.1-1`

Binary Packages:

- `libisl15:amd64=0.16.1-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.16.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.dsc' isl_0.16.1-1.dsc 1857 SHA256:d6428f2a18db18cdfbff3be72b33dbc4b1838d5efea97ae5715c24115250be91
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1.orig.tar.gz' isl_0.16.1.orig.tar.gz 1889136 SHA256:fb34703bd694622aef92164bad983c15ec04274edbe19e614d9ecda54b85603d
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.debian.tar.xz' isl_0.16.1-1.debian.tar.xz 21152 SHA256:d1ee2fd3a5b7289ba7f66fe443f57f5b6f4297a3a9164d840fafc9c37d3ec632
```

### `dpkg` source package: `jasper=1.900.1-debian1-2.4ubuntu1.3`

Binary Packages:

- `libjasper-dev=1.900.1-debian1-2.4ubuntu1.3`
- `libjasper1:amd64=1.900.1-debian1-2.4ubuntu1.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1`
- `libjbig0:amd64=2.1-3.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

### `dpkg` source package: `jquery=1.11.3+dfsg-4`

Binary Packages:

- `libjs-jquery=1.11.3+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris jquery=1.11.3+dfsg-4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.11.3%2bdfsg-4.dsc' jquery_1.11.3+dfsg-4.dsc 2068 SHA256:480550fa1f1753e1ddfab71b46a16bc2bc75f2b045bbb8d77e52fac0cca43861
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.11.3%2bdfsg.orig.tar.gz' jquery_1.11.3+dfsg.orig.tar.gz 525555 SHA256:7f0f998d792f5d030a9e7e8c3d0648d81852a8098a8758817837f070aec770ab
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.11.3%2bdfsg-4.debian.tar.xz' jquery_1.11.3+dfsg-4.debian.tar.xz 7232 SHA256:c632f57fd361b19ee8d693f955fc1e562111f37622d129bac2570d78514f0473
```

### `dpkg` source package: `keyutils=1.5.9-8ubuntu1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-8ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.dsc' keyutils_1.5.9-8ubuntu1.dsc 1548 SHA256:dd06e9b6a773ed745cd74dbce13d585469aa508f2afbc6fa51a58939b295ce07
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.debian.tar.xz' keyutils_1.5.9-8ubuntu1.debian.tar.xz 16716 SHA256:36f69846dfeb1e7abdd39dace57a43f9637e426cf4c5252dd9990af36488249b
```

### `dpkg` source package: `kmod=22-1ubuntu5.2`

Binary Packages:

- `libkmod2:amd64=22-1ubuntu5.2`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=22-1ubuntu5.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.2.dsc' kmod_22-1ubuntu5.2.dsc 2165 SHA512:b8558b3e1968d95e0d2a084ecfc32d3d7b5988d75a794d5f528d63951bd6194f2bf8386c3d22664ad4422099315d79f1958d612a696a31b65f1f8da2b26252a4
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22.orig.tar.xz' kmod_22.orig.tar.xz 160576 SHA512:f34bcc05325b27c739d898e3c42ff02c3ac754fccab823f1e2d11ef9f9112871f4ace1d65a1c6e02af5097aa91b0fc794c7e916cdb6de169a527309db813ec42
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.2.debian.tar.xz' kmod_22-1ubuntu5.2.debian.tar.xz 14524 SHA512:184d70264a6cf50b8df6e8bf19950c295c8c404633c2a782f75188e1c9fec639e6c673f594995f398e85c82613ffb4565131b62b7b8062dbae3de079c8778565
```

### `dpkg` source package: `krb5=1.13.2+dfsg-5ubuntu2.2`

Binary Packages:

- `krb5-multidev=1.13.2+dfsg-5ubuntu2.2`
- `libgssapi-krb5-2:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libgssrpc4:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libk5crypto3:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkadm5clnt-mit9:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkadm5srv-mit9:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkdb5-8:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkrb5-3:amd64=1.13.2+dfsg-5ubuntu2.2`
- `libkrb5-dev=1.13.2+dfsg-5ubuntu2.2`
- `libkrb5support0:amd64=1.13.2+dfsg-5ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit9/copyright`, `/usr/share/doc/libkadm5srv-mit9/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.13.2+dfsg-5ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg-5ubuntu2.2.dsc' krb5_1.13.2+dfsg-5ubuntu2.2.dsc 3520 SHA512:0ba1ff8222d7d715f400468fafc6b2c1dc63fa45c0f0c0e0e513c94cce42249e5ff9f9cd16303145c084a34db13794bcd0b3f1c50acac41ca6ed8c6cfe17c58b
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg.orig.tar.gz' krb5_1.13.2+dfsg.orig.tar.gz 11884064 SHA512:d9562deaee7144c786c279e6e3415fe248fa1a71db8868ff05d1d7ef651274146d9e2c96f37c045fefd43364662ec41714bdd2d59a5ff16634ad7a510d4b3eab
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2%2bdfsg-5ubuntu2.2.debian.tar.xz' krb5_1.13.2+dfsg-5ubuntu2.2.debian.tar.xz 114232 SHA512:c944b16fdb0d730da220a8a5836cb283d5c3912598f99698bb0a9a493d3d38a76ec626ac1f07df2346eefac30cf2be49bea6c4fcaccdef209866a5287ec1017f
```

### `dpkg` source package: `lcms2=2.6-3ubuntu2.1`

Binary Packages:

- `liblcms2-2:amd64=2.6-3ubuntu2.1`
- `liblcms2-dev:amd64=2.6-3ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.6-3ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6-3ubuntu2.1.dsc' lcms2_2.6-3ubuntu2.1.dsc 2203 SHA512:65270fa47ba3d161b08c46322a58c037795c8e28c46a9dbe48b5538467b448c03d471bab2f0eec85536d4bc144f738dc62755d24a47fa63af3e55e200d270ad8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6.orig.tar.gz' lcms2_2.6.orig.tar.gz 4583389 SHA512:af2dd8829a5d8b280688bc247812829c885368951d385a23a1596cf8d0a7aed627c8faa35740073efc51a86ef5c900fc9bdb9dcdfad885fb8b1eae16953f9041
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.6-3ubuntu2.1.debian.tar.xz' lcms2_2.6-3ubuntu2.1.debian.tar.xz 2417988 SHA512:0db9b3affde90b49ea756e7e2b3616db2303fe8941ecfcc59ac199d88435e4a41a7f0c3650f980da5024a265ced7f61e187351003bd620eb6f3559b765dfa45b
```

### `dpkg` source package: `libbsd=0.8.2-1ubuntu0.1`

Binary Packages:

- `libbsd0:amd64=0.8.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-Peter-Wemm`
- `BSD-3-clause-Regents`
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
$ apt-get source -qq --print-uris libbsd=0.8.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2-1ubuntu0.1.dsc' libbsd_0.8.2-1ubuntu0.1.dsc 2083 SHA512:7d5f09928b1d742ea60f9155829d3488fbd95e06be963f4dac415826142dd1677395da81412edd2f75149239ee534bee741d887c215b6419a1d8fe594fddf6b9
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2.orig.tar.xz' libbsd_0.8.2.orig.tar.xz 344292 SHA512:2230d51a30a0c3a8518c7e325036d2b578c8c2b47525c2d0d5f530d28d82227ad48b50341e44521db21f99208fe7c0df7313254c90e3c92da1c8664a8cbb87c5
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.2-1ubuntu0.1.debian.tar.xz' libbsd_0.8.2-1ubuntu0.1.debian.tar.xz 15652 SHA512:009907249c54bc1158e88c3220ce99a52a99d660d76e4774e85c52e25602943e04094de3acc24fed6ae7f4e95125980608796dd90c4b5af1dbfb47611b37ae59
```

### `dpkg` source package: `libcap2=1:2.24-12`

Binary Packages:

- `libcap2:amd64=1:2.24-12`
- `libcap2-bin=1:2.24-12`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-12
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.dsc' libcap2_2.24-12.dsc 2211 SHA256:4db68746bd1fe7df6d29ae15c3605e4e1d0e44723580c05166144735c773ae14
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.debian.tar.xz' libcap2_2.24-12.debian.tar.xz 18704 SHA256:34be2e791ec96095cc0b405e532874e8c79aeb2125981ebc6896a0ad0b999cf2
```

### `dpkg` source package: `libcroco=0.6.11-1`

Binary Packages:

- `libcroco3:amd64=0.6.11-1`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.11-1.dsc' libcroco_0.6.11-1.dsc 2256 SHA256:5b614275709f3aeb92b4f4049f792b43035c304b300637d97b8205b9d3da39a6
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.11.orig.tar.xz' libcroco_0.6.11.orig.tar.xz 477312 SHA256:132b528a948586b0dfa05d7e9e059901bca5a3be675b6071a90a90b81ae5a056
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.11-1.debian.tar.xz' libcroco_0.6.11-1.debian.tar.xz 6624 SHA256:55bc5a89e557c2615e1d3c46697c9ef564328f356a1f312523bd7aea966911a3
```

### `dpkg` source package: `libdatrie=0.2.10-2`

Binary Packages:

- `libdatrie1:amd64=0.2.10-2`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-2.dsc' libdatrie_0.2.10-2.dsc 2216 SHA256:28028afb148bbe42e31a32c9c28ebc19bd0448694fe136e9180bd162345f95c2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-2.debian.tar.xz' libdatrie_0.2.10-2.debian.tar.xz 7132 SHA256:9f4b854767fa683853c74f5fb7b477694b9d7b3279315dd56fd6c51aa9a43ff0
```

### `dpkg` source package: `libedit=3.1-20150325-1ubuntu2`

Binary Packages:

- `libedit2:amd64=3.1-20150325-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20150325-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325-1ubuntu2.dsc' libedit_3.1-20150325-1ubuntu2.dsc 2342 SHA256:58a27a139b3b1e216a9b9d95fc8f0a0e0bccb244b016b382e6957d0e5a8cdb04
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325.orig.tar.gz' libedit_3.1-20150325.orig.tar.gz 502792 SHA256:c88a5e4af83c5f40dda8455886ac98923a9c33125699742603a88a0253fcc8c5
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20150325-1ubuntu2.debian.tar.bz2' libedit_3.1-20150325-1ubuntu2.debian.tar.bz2 10946 SHA256:97d03ee621a5ec98b2683052b57c151462ec690a8e94e7d52bae76c79975f8b3
```

### `dpkg` source package: `liberror-perl=0.17-1.2`

Binary Packages:

- `liberror-perl=0.17-1.2`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.2.dsc' liberror-perl_0.17-1.2.dsc 1825 SHA256:d024e770bb970061e338798934a1862b5dd51ca99f04f6cdab1c5a58b30b4eba
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17.orig.tar.gz' liberror-perl_0.17.orig.tar.gz 17266 SHA256:2e8157981a77e87d37d26d8b6b3183560dddc541b491b0b32fcda010730b257c
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.2.diff.gz' liberror-perl_0.17-1.2.diff.gz 3645 SHA256:26664db91daa76fdf78be37196df02067b2283deae1b4ac766923d7ef08c3fb8
```

### `dpkg` source package: `libevent=2.0.21-stable-2ubuntu0.16.04.1`

Binary Packages:

- `libevent-2.0-5:amd64=2.0.21-stable-2ubuntu0.16.04.1`
- `libevent-core-2.0-5:amd64=2.0.21-stable-2ubuntu0.16.04.1`
- `libevent-dev=2.0.21-stable-2ubuntu0.16.04.1`
- `libevent-extra-2.0-5:amd64=2.0.21-stable-2ubuntu0.16.04.1`
- `libevent-openssl-2.0-5:amd64=2.0.21-stable-2ubuntu0.16.04.1`
- `libevent-pthreads-2.0-5:amd64=2.0.21-stable-2ubuntu0.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.0.21-stable-2ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable-2ubuntu0.16.04.1.dsc' libevent_2.0.21-stable-2ubuntu0.16.04.1.dsc 2531 SHA512:9a953eb7e4dc44bbc07df07396765b4c5d9f6d0152a5a0ba5933dece9b22e886627aee4ebcfa742b3e5bfe6778e491bb5f501db68784549e46069df8d1a9ba3b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable.orig.tar.gz' libevent_2.0.21-stable.orig.tar.gz 850772 SHA512:fbcdd12af9313ecc0f2988eb46ef03906b1c3aff96871a165eb8eae2cb650b1a3bb420dccf3a6bc3cdc192436d8dfc2ce67a7cc7d9e586f27be1fa52dd62dfa1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable-2ubuntu0.16.04.1.debian.tar.xz' libevent_2.0.21-stable-2ubuntu0.16.04.1.debian.tar.xz 14084 SHA512:60087d30510360006d5f67b344260a25440eb2dc9e6da581d4f9c55a6a17d70b93d8cd1168db5007198baf2a618a50fe3d6dbe63d899a766356b71f431d09465
```

### `dpkg` source package: `libexif=0.6.21-2ubuntu0.6`

Binary Packages:

- `libexif-dev=0.6.21-2ubuntu0.6`
- `libexif12:amd64=0.6.21-2ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-2ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-2ubuntu0.6.dsc' libexif_0.6.21-2ubuntu0.6.dsc 2185 SHA512:0e2a1bb26398c8df5d387b29f004b7c3683c962c70432ea0ec730b8be3ed089b9bdc826ab220876a646aefb39af38fce9a8b06bb751b00536e13f0ba5d2aa0ea
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA512:0a1fac9460d1d91fea8d8390e335946439de44c0ec0e1fd9fa7006532c64bececd12cd622e800c8f1176092bba926a7075838944ad6b62fa07d285af6f73e9fe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-2ubuntu0.6.debian.tar.xz' libexif_0.6.21-2ubuntu0.6.debian.tar.xz 17320 SHA512:cc845900b0018f8366b380579a2e201940454410197aec7608ccc7c349e9949a354db6116cbf5ebe723cd347b4eb216cb0a76c132d1ef892db7a1937dd0c8201
```

### `dpkg` source package: `libffi=3.2.1-4`

Binary Packages:

- `libffi-dev:amd64=3.2.1-4`
- `libffi6:amd64=3.2.1-4`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.dsc' libffi_3.2.1-4.dsc 1914 SHA256:e2bdb4202f1c8be9d3cec5bf459a4a1619f494241938d982d6029e15a8b1da9e
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.debian.tar.xz' libffi_3.2.1-4.debian.tar.xz 8932 SHA256:4d7d5f9172e8a8d3e412ed47e14755e27a0657054a7786b578eb6327b0d08b2d
```

### `dpkg` source package: `libgcrypt20=1.6.5-2ubuntu0.6`

Binary Packages:

- `libgcrypt20:amd64=1.6.5-2ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.5-2ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.6.dsc' libgcrypt20_1.6.5-2ubuntu0.6.dsc 2653 SHA512:6ae3ce26176c486771c3e0c2f675595e49603934bec483b1333e0f8c22dc3c5b0ef013c53e0afc434c2afaa6a45365901aff7fcd247fe3a2475f6755caa74be0
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5.orig.tar.bz2' libgcrypt20_1.6.5.orig.tar.bz2 2549601 SHA512:1b76640a68514369da3b6be51d66e7040b64d03eba68d6b0d1b1ba88336c9da3ef41b21170a9eb641dae5a36a7c53cb167e15c8da964a5a6793aec947afe91f4
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.6.debian.tar.xz' libgcrypt20_1.6.5-2ubuntu0.6.debian.tar.xz 38412 SHA512:de1031f5e21d8f61f4e6a8a1de7bdafeebfebfcc8951dda10d149341d4e69876cd5568d074c2ecda22d40d4a97a521f9718fe1af6f4948eb4a866daac599f21d
```

### `dpkg` source package: `libgd2=2.1.1-4ubuntu0.16.04.12`

Binary Packages:

- `libgd3:amd64=2.1.1-4ubuntu0.16.04.12`

Licenses: (parsed from: `/usr/share/doc/libgd3/copyright`)

- `BSD-3-clause`
- `GAP~Makefile.in`
- `GAP~configure`
- `GD`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `HPND`
- `MIT`
- `WEBP`
- `XFIG`

Source:

```console
$ apt-get source -qq --print-uris libgd2=2.1.1-4ubuntu0.16.04.12
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.1-4ubuntu0.16.04.12.dsc' libgd2_2.1.1-4ubuntu0.16.04.12.dsc 2178 SHA512:86f8370dc579280346ce993dae937d0fbf94328ef483210c23cb7c2d10503b98fd2d2fd1a68157ad9e7f01a1d78b9dc1c2375259edb69ef4a2283c0e3a7779dd
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.1.orig.tar.gz' libgd2_2.1.1.orig.tar.gz 2033791 SHA512:9e0ff9c60fd677651ca7be037e633c20a880b8b205150791d00410f90ac424608182910d4a9026f7b8821ee3321fd5bac0bbecbac1961cf6f7ed3e959984f8bb
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.1-4ubuntu0.16.04.12.debian.tar.xz' libgd2_2.1.1-4ubuntu0.16.04.12.debian.tar.xz 62544 SHA512:25820eb735997b8d4d99effadac4adbf41bcb0427f513876eab7dbe3914be896398924f9f61d82aaff51c82af0fd174f4d7c688dd3ffbb66bd529bf6d9ac22c9
```

### `dpkg` source package: `libgpg-error=1.21-2ubuntu1`

Binary Packages:

- `libgpg-error0:amd64=1.21-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.21-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.dsc' libgpg-error_1.21-2ubuntu1.dsc 2306 SHA256:591fc35e29c7314e9dcbea0ed929afc563dd5e0a6be18d65d2480762353bd71f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21.orig.tar.bz2' libgpg-error_1.21.orig.tar.bz2 763186 SHA256:b7dbdb3cad63a740e9f0c632a1da32d4afdb694ec86c8625c98ea0691713b84d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.debian.tar.xz' libgpg-error_1.21-2ubuntu1.debian.tar.xz 11988 SHA256:b67f4686d39ec678e860b28d05e07567ec6d43025c18b82c1e9a5dda07a00ed9
```

### `dpkg` source package: `libice=2:1.0.9-1`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-1`
- `libice6:amd64=2:1.0.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-1.dsc' libice_1.0.9-1.dsc 2140 SHA256:f90a79944f147b5db208677d92381fd0886c201616172bac0b28ef0e85912ebd
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-1.diff.gz' libice_1.0.9-1.diff.gz 6260 SHA256:85d68a69d5e6b25b352eb98c6c33fa7a324da8dd913d7e84a049852fb87287e7
```

### `dpkg` source package: `libidn=1.32-3ubuntu1.2`

Binary Packages:

- `libidn11:amd64=1.32-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.32-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.dsc' libidn_1.32-3ubuntu1.2.dsc 2303 SHA512:1c2cfc31a222bcdc47d5693bcb8cf3eb3338ca4faa27bf52bf096f225a2e7388124303238c6dca783f81494435687cd7af42f2dd2748e0a30d6ce6aabdd6d701
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32.orig.tar.gz' libidn_1.32.orig.tar.gz 3483155 SHA512:fd48665b65f88210ea504675fc1cd667bd4042b1df3e386847070a465d6753efcec735e6e8572f45f9432235e813c61ef7df09596274935467fdc6f12f80b9bd
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.debian.tar.xz' libidn_1.32-3ubuntu1.2.debian.tar.xz 84724 SHA512:01614e1555d443f94e5380fd76827737e89774c6361ef72e551fec7ec0c82e99b514ec45d8f8b4f02dfa7b7573ea355476b0590ece35235b1ac4a5a03971cd04
```

### `dpkg` source package: `libjpeg-turbo=1.4.2-0ubuntu3.4`

Binary Packages:

- `libjpeg-turbo8:amd64=1.4.2-0ubuntu3.4`
- `libjpeg-turbo8-dev:amd64=1.4.2-0ubuntu3.4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1.4.2-0ubuntu3.4
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2-0ubuntu3.4.dsc' libjpeg-turbo_1.4.2-0ubuntu3.4.dsc 2302 SHA512:b38aea3ad6f874764d9a270f554c8ddf921bf303709dee30f1c7fb34666f313865c7841d8ad59997af3db0b7b18da4e67b3f3372d9a0d75f70a4db94d79a0d24
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2.orig.tar.gz' libjpeg-turbo_1.4.2.orig.tar.gz 1569306 SHA512:9bd27c917c29125c425469eb0fdf99b802f25095f187fb416bd7c05e4af95a32404bbb0d06b77343d35d3461029500decf3481337b2eade9e57b58dea69719ee
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.4.2-0ubuntu3.4.debian.tar.xz' libjpeg-turbo_1.4.2-0ubuntu3.4.debian.tar.xz 30156 SHA512:621e4d1b6326524c5c73811c7bb66df7f50037c8e71a52dec1e45c657864b4b88b6c899ea05abf42373ac1d591983f873d07cc976576bc818a3643757515d529
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

### `dpkg` source package: `liblqr=0.4.2-2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2`
- `liblqr-1-0-dev=0.4.2-2`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.dsc' liblqr_0.4.2-2.dsc 2024 SHA256:7e203605ebe40cde3e467db4298d7ee3f83f3d3082b05f8984868cdef1606245
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.debian.tar.xz' liblqr_0.4.2-2.debian.tar.xz 5860 SHA256:2c886ee88f65eade9e1cd10965bf572a3cc178d6119b9342c8469b6b41d2bb62
```

### `dpkg` source package: `libmaxminddb=1.0.4-2.1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.0.4-2.1`
- `libmaxminddb0:amd64=1.0.4-2.1`

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
$ apt-get source -qq --print-uris libmaxminddb=1.0.4-2.1
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.0.4-2.1.dsc' libmaxminddb_1.0.4-2.1.dsc 1918 SHA256:8deb3af3f4b76c6814a014360ce3e10d230ca95f312e4db70b09d3f0320d9973
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.0.4.orig.tar.gz' libmaxminddb_1.0.4.orig.tar.gz 119936 SHA256:e43949128235065e00047941408d911b2d6a3847b7f2c2598b5d81fdce0a11c2
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.0.4-2.1.debian.tar.xz' libmaxminddb_1.0.4-2.1.debian.tar.xz 4480 SHA256:99efb570462042fbff2719420afdfaf3a521515d0e304052131d815672f310f7
```

### `dpkg` source package: `libpng=1.2.54-1ubuntu1.1`

Binary Packages:

- `libpng12-0:amd64=1.2.54-1ubuntu1.1`
- `libpng12-dev:amd64=1.2.54-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`, `/usr/share/doc/libpng12-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.54-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54-1ubuntu1.1.dsc' libpng_1.2.54-1ubuntu1.1.dsc 2121 SHA512:bbfd410f3c521b11620196f80a6102fa05434a76c16733f4222d48371e5f96e29ebaf26708528352aff7a599fe79dff5cefe3a0b1aff0aff57a7f9a5524a1d90
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54.orig.tar.xz' libpng_1.2.54.orig.tar.xz 571448 SHA512:3fde161bae1c61c0c099344518a59a312ac5bcd6063d7d01be156fd4e048fdaafed8a27e10bf2750d4ef678389e2782137c9e6540b7fd0859b820bb8d9443497
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.54-1ubuntu1.1.debian.tar.xz' libpng_1.2.54-1ubuntu1.1.debian.tar.xz 18820 SHA512:42b4f5f16310adf2e41f12656f7deb6900f85346a5a106d495d5b3f545e0841d4d8b22845df41e04d5b3ceb939d745e5b1c5efdca004f38305ad58608c271a2a
```

### `dpkg` source package: `libpthread-stubs=0.3-4`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.3-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

### `dpkg` source package: `librsvg=2.40.13-3ubuntu0.2`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.13-3ubuntu0.2`
- `librsvg2-2:amd64=2.40.13-3ubuntu0.2`
- `librsvg2-common:amd64=2.40.13-3ubuntu0.2`
- `librsvg2-dev:amd64=2.40.13-3ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.13-3ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.13-3ubuntu0.2.dsc' librsvg_2.40.13-3ubuntu0.2.dsc 2818 SHA512:67925169f7d519cb7cbe73cac5b9566abab0d224be041ca427de2f261d84549c22e2ce4c35b8d8118287e82b1e08fd9ca6d123395eac782caf10939a972d7639
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.13.orig.tar.xz' librsvg_2.40.13.orig.tar.xz 552900 SHA512:7549f78d25c3319b5b74803c46cc0d1bd5c53a425b632a5b306eb238080df0da2b4bcefb159064988bd56cb1d69e0c94ecd0a073315acff14abb187ba6d4c788
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.13-3ubuntu0.2.debian.tar.xz' librsvg_2.40.13-3ubuntu0.2.debian.tar.xz 18176 SHA512:fff1d33f6986aebfadc43ab40a71198901f8eb2d360c3940681f602332ed8271364208555074fe280b988bb5ccfb46009403b867461c542bd69a8be214d575e6
```

### `dpkg` source package: `libseccomp=2.5.1-1ubuntu1~16.04.1`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1ubuntu1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1ubuntu1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e16.04.1.dsc' libseccomp_2.5.1-1ubuntu1~16.04.1.dsc 2303 SHA512:457ac79f79d99ad60f2063b4809e22cb82272df312fee2cef9058160c2596af130bffa4902b37e20dd2c0e924371605627a4bf4d2604ad12be82bfc1ebecc16b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA512:2be80a6323f9282dbeae8791724e5778b32e2382b2a3d1b0f77366371ec4072ea28128204f675cce101c091c0420d12c497e1a9ccbb7dc5bcbf61bfd777160af
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e16.04.1.debian.tar.xz' libseccomp_2.5.1-1ubuntu1~16.04.1.debian.tar.xz 18572 SHA512:2ec59f6be5bdcca16eff07b917d6f6a7dc6ce1a77c0eeccac3ffb048b94f093307e23525dc7c30fede7ce13d8747efaa3bd744b6c6bfc8bcf1b65a853ea4b39e
```

### `dpkg` source package: `libselinux=2.4-3build2`

Binary Packages:

- `libselinux1:amd64=2.4-3build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.dsc' libselinux_2.4-3build2.dsc 2491 SHA256:c14dbd5eff5dfd66c41b9ed3d09e1186975b233c8a2a59720ccb8b318c85883c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4.orig.tar.gz' libselinux_2.4.orig.tar.gz 165931 SHA256:46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.debian.tar.xz' libselinux_2.4-3build2.debian.tar.xz 23216 SHA256:96f1c0526970460e6b5f64ea4d2f7ecabe06e80e23e83e4feccecb955e1ca956
```

### `dpkg` source package: `libsemanage=2.3-1build3`

Binary Packages:

- `libsemanage-common=2.3-1build3`
- `libsemanage1:amd64=2.3-1build3`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.dsc' libsemanage_2.3-1build3.dsc 2497 SHA256:920f1f389316617711778cbe83eb36f62d59a2ebb3b1488f75c41014c0bc684c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.debian.tar.xz' libsemanage_2.3-1build3.debian.tar.xz 15056 SHA256:d4f90c66ba911f72c5195da957cdcacd91a583e64ad06c01bf5b692387ee3d33
```

### `dpkg` source package: `libsepol=2.4-2`

Binary Packages:

- `libsepol1:amd64=2.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.dsc' libsepol_2.4-2.dsc 1768 SHA256:fca86fc62f736baf96ac2061327553b74b1b34f7ace89d982baa5374c24e2841
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4.orig.tar.gz' libsepol_2.4.orig.tar.gz 570822 SHA256:299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.debian.tar.xz' libsepol_2.4-2.debian.tar.xz 13188 SHA256:85e50e42c49dee9b21b5dda5fb754ce6d10482a4641e9f088da103b9178c2c1d
```

### `dpkg` source package: `libsigsegv=2.10-4`

Binary Packages:

- `libsigsegv2:amd64=2.10-4`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.10-4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10-4.dsc' libsigsegv_2.10-4.dsc 2166 SHA256:54837482677ed4d42203c80bb10ba0308431a00cb8ccca3256cce8a3bdfa8d8e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10.orig.tar.gz' libsigsegv_2.10.orig.tar.gz 402279 SHA256:8460a4a3dd4954c3d96d7a4f5dd5bc4d9b76f5754196aa245287553b26d2199a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10-4.debian.tar.xz' libsigsegv_2.10-4.debian.tar.xz 9532 SHA256:abc74f39b89e7dc5ee46cf4e9cf9e6b9dcc00122ffe87e49036647c5e9a10d36
```

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1`
- `libsm6:amd64=2:1.2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
```

### `dpkg` source package: `libtasn1-6=4.7-3ubuntu0.16.04.3`

Binary Packages:

- `libtasn1-6:amd64=4.7-3ubuntu0.16.04.3`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.7-3ubuntu0.16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7-3ubuntu0.16.04.3.dsc' libtasn1-6_4.7-3ubuntu0.16.04.3.dsc 2495 SHA512:0309d18c3829079a188b37a6fbcf613d3e0b3143a44b845a5be4a619105197536c68b0d4febcc8a46fdc5718244df847601ec19e0689f987b9986f0ff1ad6f02
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7.orig.tar.gz' libtasn1-6_4.7.orig.tar.gz 1851611 SHA512:9e93264bfad250d88c528550db4731d07c5c1b2ec319b892e9b536dc3d46b2a4166241ebf3470127c4f662067b7dabaa407ce1f16bdf05ee31495881eefe5572
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.7-3ubuntu0.16.04.3.debian.tar.xz' libtasn1-6_4.7-3ubuntu0.16.04.3.debian.tar.xz 60468 SHA512:9059324cc9e9048a014c86ebc923f068ed837929bd48dff7a670a0e5a45e492f5d8b53510e3a5b07844d3d24276eeb9810c710a4b46c83721726d8194f6fe3a1
```

### `dpkg` source package: `libthai=0.1.24-2`

Binary Packages:

- `libthai-data=0.1.24-2`
- `libthai0:amd64=0.1.24-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.24-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.24-2.dsc' libthai_0.1.24-2.dsc 2341 SHA256:4e760ef914d56d7a83fbbbf2ff25446e7669335e5404d2accf89445b81874c9c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.24.orig.tar.xz' libthai_0.1.24.orig.tar.xz 394672 SHA256:a2dd95f79084a27ac077cc206e66e30ee193b70738676ed39792acc9a1c2af0d
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.24-2.debian.tar.xz' libthai_0.1.24-2.debian.tar.xz 10780 SHA256:94ff719ca7679150ceab23ee45c3eeeb7c13196fbc206310e150bd32574eeebd
```

### `dpkg` source package: `libtool=2.4.6-0.1`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-0.1`
- `libltdl7:amd64=2.4.6-0.1`
- `libtool=2.4.6-0.1`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.dsc' libtool_2.4.6-0.1.dsc 2080 SHA256:c0ec24bc1e892564840061e64cf288e018484d733208d97815f3b12f043088b6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.debian.tar.xz' libtool_2.4.6-0.1.debian.tar.xz 19332 SHA256:1b9d3e0f9d177d259206cdda69d6cec8dd04df14cbb064b71869936ca5f2722f
```

### `dpkg` source package: `libusb=2:0.1.12-28`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-28`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-28
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.dsc' libusb_0.1.12-28.dsc 2012 SHA256:be0a89935a8764dc64d40a28959397e6582261eef2152c4ce90a13490471dc5f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.debian.tar.xz' libusb_0.1.12-28.debian.tar.xz 21524 SHA256:eaf2314902b0bb9de3e1fa8c9abfcecea7b78c9824048016beaca34f7cc4351b
```

### `dpkg` source package: `libvpx=1.5.0-2ubuntu1.1`

Binary Packages:

- `libvpx3:amd64=1.5.0-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libvpx3/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libvpx=1.5.0-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0-2ubuntu1.1.dsc' libvpx_1.5.0-2ubuntu1.1.dsc 2127 SHA512:c1a3dc4f0cf4a53d84fcbce42e1722a913f0e9307dcf5d477f5643205aad2a4255df1966482ad6fd6dc4b736b59b687d07fb04147652e916fd04856740e970ba
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0.orig.tar.bz2' libvpx_1.5.0.orig.tar.bz2 1906571 SHA512:5a952aa53e539a130d316723d424fa02a8f42a450950d74a16d8abc5df569ba5559b3b09a32140b638d7a0cd54be1c7b0f8306ad286825bc1281f513bb665fc5
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.5.0-2ubuntu1.1.debian.tar.xz' libvpx_1.5.0-2ubuntu1.1.debian.tar.xz 17492 SHA512:f5a574cb893f19ede9238474dc8e6dac8b5bdb77ae45f732174e554c136d132a5750f10a9ca0b39974e23635db329a274a856211c0ef03c86228479bd4ca4140
```

### `dpkg` source package: `libwebp=0.4.4-1`

Binary Packages:

- `libwebp-dev:amd64=0.4.4-1`
- `libwebp5:amd64=0.4.4-1`
- `libwebpdemux1:amd64=0.4.4-1`
- `libwebpmux1:amd64=0.4.4-1`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp5/copyright`, `/usr/share/doc/libwebpdemux1/copyright`, `/usr/share/doc/libwebpmux1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.4.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4-1.dsc' libwebp_0.4.4-1.dsc 2077 SHA256:278509d0b7ec8507d8f23ec520b9eabd719727a1454d032c62d41641487a175b
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4.orig.tar.gz' libwebp_0.4.4.orig.tar.gz 992491 SHA256:c65d34edb57338e331ba4d622227a2b3179444cfca17d02c34f1ead63f603e86
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.4-1.debian.tar.xz' libwebp_0.4.4-1.debian.tar.xz 6800 SHA256:edc5175cf73d87dfba9e1b7f35d54fd361a9866ab1682e6ca60229b501f17df5
```

### `dpkg` source package: `libwmf=0.2.8.4-10.5ubuntu1`

Binary Packages:

- `libwmf-dev=0.2.8.4-10.5ubuntu1`
- `libwmf0.2-7:amd64=0.2.8.4-10.5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-10.5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.5ubuntu1.dsc' libwmf_0.2.8.4-10.5ubuntu1.dsc 2232 SHA256:45ea2302830d57b4a0a8c59dc25765572e232cc60d65e9229f1185f2f3c4001d
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.5ubuntu1.debian.tar.xz' libwmf_0.2.8.4-10.5ubuntu1.debian.tar.xz 11696 SHA256:e448f84c36c2921403cf47e19090ad17be71877c3ec62cdf4b4c8a3e8869d5ee
```

### `dpkg` source package: `libx11=2:1.6.3-1ubuntu2.2`

Binary Packages:

- `libx11-6:amd64=2:1.6.3-1ubuntu2.2`
- `libx11-data=2:1.6.3-1ubuntu2.2`
- `libx11-dev:amd64=2:1.6.3-1ubuntu2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.3-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3-1ubuntu2.2.dsc' libx11_1.6.3-1ubuntu2.2.dsc 2619 SHA512:2c99d0db111ee13c5de8cab3955108c6602749f761f122dc3e629792dfc861636b114df4cbbd9f1158ebcbebfcd2bcc16579b41c5a9fc6a7df46642c2d4d77b7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3.orig.tar.gz' libx11_1.6.3.orig.tar.gz 3105928 SHA512:ee3bc82bb2d818dd25cffe1581260c301c24f25264da0a102ecbe897bcd6b2f203532caf8267d776725a6416ae04fc88f23ceecc0174198a66e49fb8447d3016
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.3-1ubuntu2.2.diff.gz' libx11_1.6.3-1ubuntu2.2.diff.gz 49296 SHA512:544f21bbbde2a329c4f75d0cc4c805ca4c3af5fbacb8a2abfac08ebfe98f795af0393e0f43494acf8ecc69b9b961e174ddca1285b8467dd2cec5d79a8fd40c07
```

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1`
- `libxau6:amd64=1:1.0.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

### `dpkg` source package: `libxcb=1.11.1-1ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.11.1-1ubuntu1`
- `libxcb-render0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-shm0:amd64=1.11.1-1ubuntu1`
- `libxcb-shm0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb1:amd64=1.11.1-1ubuntu1`
- `libxcb1-dev:amd64=1.11.1-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.11.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.dsc' libxcb_1.11.1-1ubuntu1.dsc 6434 SHA256:d059cea4a732eb2600d829d023af89956b46d85399d90be122a887a6baf59a26
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1.orig.tar.gz' libxcb_1.11.1.orig.tar.gz 633057 SHA256:660312d5e64d0a5800262488042c1707a0261fa01a759bad265b1b75dd4844dd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.diff.gz' libxcb_1.11.1-1ubuntu1.diff.gz 25030 SHA256:017d57e8d555e9f003b1d1ef394b81eddecf9029b6b7e582400dd51e17d63401
```

### `dpkg` source package: `libxcomposite=1:0.4.4-1`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4-1.dsc' libxcomposite_0.4.4-1.dsc 2170 SHA256:b304040285ca2d6e2667bfec45097814bdd017380c629a5972993407c656469a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4.orig.tar.gz' libxcomposite_0.4.4.orig.tar.gz 354584 SHA256:83c04649819c6f52cda1b0ce8bcdcc48ad8618428ad803fb07f20b802f1bdad1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4-1.diff.gz' libxcomposite_0.4.4-1.diff.gz 15633 SHA256:09fe6dd7d98d935e7307d57f926912d477b929f06c159962840d3a398f376988
```

### `dpkg` source package: `libxcursor=1:1.1.14-1ubuntu0.16.04.2`

Binary Packages:

- `libxcursor1:amd64=1:1.1.14-1ubuntu0.16.04.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.14-1ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14-1ubuntu0.16.04.2.dsc' libxcursor_1.1.14-1ubuntu0.16.04.2.dsc 2429 SHA512:176793e157220d8a6d922407ee154cc11cec2d107479ad818581a3863b7eec1575c9d80ef70dfc654a60025246562c25458e90e1661ae6db9bd25dd1bf7d456f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14.orig.tar.gz' libxcursor_1.1.14.orig.tar.gz 374910 SHA512:dfd4e538118a5c4aef3f089c9b029f4e80a62bff163950b2a0ed6450acf0217d59d15128f9df31211e88d93daa22cedf6ec65ce27fd3e20a426531d24fe58043
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14-1ubuntu0.16.04.2.diff.gz' libxcursor_1.1.14-1ubuntu0.16.04.2.diff.gz 19882 SHA512:fe8f9436ce2904c2390c313477f83bf2cfa024a4064de2c9a7bac88845d8afbc7026840201cb98e9950e84eb3f67641382c8174e751f81d1902efa03cd25056c
```

### `dpkg` source package: `libxdamage=1:1.1.4-2`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-2.dsc' libxdamage_1.1.4-2.dsc 2127 SHA256:43cbefb5c69f51d89a11cf84718fe0c42058fc9b6ec7c0076e7c37b9e829feb5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-2.diff.gz' libxdamage_1.1.4-2.diff.gz 14930 SHA256:d238c1a266c30cd124ede7e6c86635bfaa108fa552c4a82919101cebf22670e9
```

### `dpkg` source package: `libxdmcp=1:1.1.2-1.1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-1.1`
- `libxdmcp6:amd64=1:1.1.2-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.dsc' libxdmcp_1.1.2-1.1.dsc 2098 SHA256:605175ee859f00ace43a4c35dc2d7c60971c0e1f21769b508b5bce2303979436
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.diff.gz' libxdmcp_1.1.2-1.1.diff.gz 17944 SHA256:d764e8d251d06c9e5a50783cee393c621b7288bc3369d158b6a1d2e4372f3c9e
```

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1`
- `libxext6:amd64=2:1.3.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

### `dpkg` source package: `libxfixes=1:5.0.1-2`

Binary Packages:

- `libxfixes3:amd64=1:5.0.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1-2.dsc' libxfixes_5.0.1-2.dsc 2160 SHA256:1569c87546b8d59ee7f60b395b10ea1a6f9d52418aed9d7cf2d633b14a1f1f25
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1.orig.tar.gz' libxfixes_5.0.1.orig.tar.gz 352057 SHA256:81b692856c0e7ab2778a34a32aa6b3f455b9b58cf388f009cba872ed933ae9c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.1-2.diff.gz' libxfixes_5.0.1-2.diff.gz 6564 SHA256:df62260744ac03e8354b004685d439c32588e826c9dc570b6109070447601ce0
```

### `dpkg` source package: `libxi=2:1.7.6-1`

Binary Packages:

- `libxi6:amd64=2:1.7.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6-1.dsc' libxi_1.7.6-1.dsc 2269 SHA256:b0d205346b418dbfbdd36dadc164e6050bcfa5cd691f190c9aa0ac91d2a0e5e8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6.orig.tar.gz' libxi_1.7.6.orig.tar.gz 601628 SHA256:4e88fa7decd287e58140ea72238f8d54e4791de302938c83695fc0c9ac102b7e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.6-1.diff.gz' libxi_1.7.6-1.diff.gz 10149 SHA256:ae61f11cd06263d7a4caf25835fdd8ba4e8ad319781acb1e0cd177eab82ce8a7
```

### `dpkg` source package: `libxinerama=2:1.1.3-1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3-1.dsc' libxinerama_1.1.3-1.dsc 2198 SHA256:4cf9a3558bd7ce1b4f55a581175c05e4b4a172364458a21ff4b657b714688fbb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3.orig.tar.gz' libxinerama_1.1.3.orig.tar.gz 350141 SHA256:0ba243222ae5aba4c6a3d7a394c32c8b69220a6872dbb00b7abae8753aca9a44
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3-1.diff.gz' libxinerama_1.1.3-1.diff.gz 15738 SHA256:2b1487e3511ddabfec666a62f6e5e8ac4f97536b0d53c51f7bf4cbe07508a130
```

### `dpkg` source package: `libxml2=2.9.3+dfsg1-1ubuntu0.7`

Binary Packages:

- `libxml2:amd64=2.9.3+dfsg1-1ubuntu0.7`
- `libxml2-dev:amd64=2.9.3+dfsg1-1ubuntu0.7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.3+dfsg1-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1-1ubuntu0.7.dsc' libxml2_2.9.3+dfsg1-1ubuntu0.7.dsc 2756 SHA512:1a2083bfc7196c9bf9074cbfc1c8d4adf22469c8b3a4983cdaa30e8b9e8a4a2c36015c58bb1eb5a7df39fd07b9ad11ea304cd64337af75ef08850f2ef0c384c8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1.orig.tar.xz' libxml2_2.9.3+dfsg1.orig.tar.xz 2475440 SHA512:e6766405ce0dd462679e9097a83a782440315ca685a95950725f4fe9e51fd1f83928f9d690ab7ce46c2f491b793c9bb7917081d3e2bb8811409c75727af680a7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3%2bdfsg1-1ubuntu0.7.debian.tar.xz' libxml2_2.9.3+dfsg1-1ubuntu0.7.debian.tar.xz 57976 SHA512:4c4ece08dd2d7b8ffcd6964fbeebdda3854c0c2ce46781b4e96c47e9130f829da1b3e7c5036e3f25d61c5f099f76fe2991f1e12e6404ee582ad2ea3069c4c6f6
```

### `dpkg` source package: `libxpm=1:3.5.11-1ubuntu0.16.04.1`

Binary Packages:

- `libxpm4:amd64=1:3.5.11-1ubuntu0.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.11-1ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11-1ubuntu0.16.04.1.dsc' libxpm_3.5.11-1ubuntu0.16.04.1.dsc 2251 SHA512:1ab11de45725f56da753574d658675eef2692c9595787dfce1f207802fe7269aa930553e1344cbcd5a6ed707df587e78c2fa40123a4550f0361a499a899ddc66
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11.orig.tar.gz' libxpm_3.5.11.orig.tar.gz 527020 SHA512:e7e7288ecf0b7bb96b08d95b396ffc76ee9c00df83fb51a1eba9f8bf0fc4fb48f763a0946603c8290e262d0c4f39f6e8f9235bd8308e6bfbe1cbf8615ec310eb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.11-1ubuntu0.16.04.1.diff.gz' libxpm_3.5.11-1ubuntu0.16.04.1.diff.gz 16815 SHA512:830a2653d3bd2e0c057ab6ac2eed29cbd5b7c21df1dbdf0a9129b0b15be0d23df85316efd02fbf6fdc3e55f9a96c609ef76d5458d1fa3934a125b9290f1ae77a
```

### `dpkg` source package: `libxrandr=2:1.5.0-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0-1.dsc' libxrandr_1.5.0-1.dsc 2125 SHA256:e1fe17d69676e15108ff6c6c3eedc2c3c72fef8a9dd9bde1ac9f4f4467efdfd1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0.orig.tar.gz' libxrandr_1.5.0.orig.tar.gz 382147 SHA256:1b594a149e6b124aab7149446f2fd886461e2935eca8dca43fe83a70cf8ec451
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.0-1.diff.gz' libxrandr_1.5.0-1.diff.gz 13507 SHA256:f04e5dccdee7db84d534aa4423b927710fbffe513c0ec632f92129a70323334e
```

### `dpkg` source package: `libxrender=1:0.9.9-0ubuntu1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.9-0ubuntu1`
- `libxrender1:amd64=1:0.9.9-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.9-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9-0ubuntu1.dsc' libxrender_0.9.9-0ubuntu1.dsc 1562 SHA256:3b9304baa99c34df694a673aeffc1e44d7564f1e0efa71ac542435afcfd0f334
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9.orig.tar.gz' libxrender_0.9.9.orig.tar.gz 371568 SHA256:beeac64ff8d225f775019eb7c688782dee9f4cc7b412a65538f8dde7be4e90fe
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.9-0ubuntu1.diff.gz' libxrender_0.9.9-0ubuntu1.diff.gz 18873 SHA256:b02577c21b37a46cd0b554ab25ad4bfd49545e02774b4ab2b80c2deae93abd91
```

### `dpkg` source package: `libxslt=1.1.28-2.1ubuntu0.3`

Binary Packages:

- `libxslt1-dev:amd64=1.1.28-2.1ubuntu0.3`
- `libxslt1.1:amd64=1.1.28-2.1ubuntu0.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.28-2.1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28-2.1ubuntu0.3.dsc' libxslt_1.1.28-2.1ubuntu0.3.dsc 2482 SHA512:2588c5c3f5d1f6b633b7975daa17016d88c40184c6c416dc78a8e9588e13e9735eba17fd1fc6f09c4b6f56c5f22c2745cf4f72a06285bd2bca077b272ee131df
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28.orig.tar.gz' libxslt_1.1.28.orig.tar.gz 3435907 SHA512:20b65bdaceaac5bd11d509bf683ce8e344030bc95164639266ae705d41659bcba47b5be1b059d0d67681e6428b0710db675d1749c06aa531bc2212ed3d0511b1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28-2.1ubuntu0.3.debian.tar.xz' libxslt_1.1.28-2.1ubuntu0.3.debian.tar.xz 42428 SHA512:f529e406d341ed6fee94323c74edb51368f5880adac55db6389414c7bffd1fc7c8ed82be203e649fe6bbcf3dc57f0d6dc323caac33045ce36c61ebc2350673d4
```

### `dpkg` source package: `libxt=1:1.1.5-0ubuntu1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-0ubuntu1`
- `libxt6:amd64=1:1.1.5-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-0ubuntu1.dsc' libxt_1.1.5-0ubuntu1.dsc 1535 SHA256:26ea43fe0b9ed6612a2303b5fb0f84642ba9540a4a1bd18ccd84f17d17ac7e30
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-0ubuntu1.diff.gz' libxt_1.1.5-0ubuntu1.diff.gz 11392 SHA256:e4945799551b88b8a8e62487384adc04a4c9cc7e1af8fa156d55582f6315874a
```

### `dpkg` source package: `libyaml=0.1.6-3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.6-3`
- `libyaml-dev:amd64=0.1.6-3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.dsc' libyaml_0.1.6-3.dsc 1893 SHA256:ed5bc299d3bcc0b038206f8780639d4682e65f521dff571b9336e2f8626d0011
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6.orig.tar.gz' libyaml_0.1.6.orig.tar.gz 503012 SHA256:7da6971b4bd08a986dd2a61353bc422362bd0edcc67d7ebaac68c95f74182749
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.debian.tar.xz' libyaml_0.1.6-3.debian.tar.xz 4268 SHA256:fd567e6918903833e5c4f1f87254c550eca07c2bba1ccbe6031da33243cf4297
```

### `dpkg` source package: `libzstd=1.3.1+dfsg-1~ubuntu0.16.04.1`

Binary Packages:

- `libzstd1=1.3.1+dfsg-1~ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause-with-patent-grant`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.1+dfsg-1~ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg-1%7eubuntu0.16.04.1.dsc' libzstd_1.3.1+dfsg-1~ubuntu0.16.04.1.dsc 2224 SHA512:c0a076cb4d436a100bc9fa2ff49bdd198242c9e1bf886e7b315ad81e345d4aa21b4058001080c4987bc2d5ce1a462f43205bb9b0a6970b52b71e60c36396fc00
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg.orig.tar.xz' libzstd_1.3.1+dfsg.orig.tar.xz 1016592 SHA512:a3e8b9592797aa3e62fb006a0b8d41c7eb1a7dd12027830d9b8664e6d2b1189233a1563d6bc006256e52fb18203afb5e05b861372524c4393e255cd55edfb19b
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.1%2bdfsg-1%7eubuntu0.16.04.1.debian.tar.xz' libzstd_1.3.1+dfsg-1~ubuntu0.16.04.1.debian.tar.xz 10024 SHA512:d22b513ad3be36fca335fd67b302fb3a08bcfc2fd45527a8592ff56060c15f89061f53a208ed8ca4ea4f10c0b7bb742e9411ad07dd3aa0803c959871f1c6fde3
```

### `dpkg` source package: `linux=4.4.0-210.242`

Binary Packages:

- `linux-libc-dev:amd64=4.4.0-210.242`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`
- `redpine-signals`

Source:

```console
$ apt-get source -qq --print-uris linux=4.4.0-210.242
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-210.242.dsc' linux_4.4.0-210.242.dsc 11941 SHA512:f3fff30bea1e367d7ff1f20ef93d7feca3792ab8ab33881758c4ec4a04859e180c84d83fc4cbd068e26fec9ca43afdb086aacb0f5b1972dabcdf0a8dd17eec58
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0.orig.tar.gz' linux_4.4.0.orig.tar.gz 132860730 SHA512:28ef89b62f663f2d90b58274799b7ebeff04699f08d0b83f650b0de179d4ef354450c81ecda07522b493c43d5eb2d530fa0f552a2794d48f84878e05efa39cc3
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-210.242.diff.gz' linux_4.4.0-210.242.diff.gz 17092729 SHA512:715345ae2321a7012d6297b159bc700d02e376baeb7137a69dd07b5db91bc99d49c30925094b1c12f9b2ac702dead8e381614e743a8a0d08866efce7b7c01fde
```

### `dpkg` source package: `lsb=9.20160110ubuntu0.2`

Binary Packages:

- `lsb-base=9.20160110ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20160110ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.dsc' lsb_9.20160110ubuntu0.2.dsc 2160 SHA512:27e7a82161c88850592a04d1d326859723ac1b4b897f006c1e66f7ebe6d325907da5566bc877d6e4edcdeb55328a3960952fc4286a2827100b119c73553e9e89
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.tar.xz' lsb_9.20160110ubuntu0.2.tar.xz 57832 SHA512:b794cdbba25bf9079eb17f2b695490a8b35d10afb90ff5ca6f5c7188c1f9a80fb3d2b59749f87c88188733a05563cf81964e6a66beed4def020d7218aa20a253
```

### `dpkg` source package: `lvm2=2.02.133-1ubuntu10`

Binary Packages:

- `libdevmapper1.02.1:amd64=2:1.02.110-1ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.133-1ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.dsc' lvm2_2.02.133-1ubuntu10.dsc 3151 SHA256:49b49c886da1f5b5d078875a025ee5f37d049e77c3abe49568b3b6fd7babb5de
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133.orig.tar.xz' lvm2_2.02.133.orig.tar.xz 1356636 SHA256:79c6fc85f28b6af1870d7e3b06d8339270746a5028f47a5b412f4394156ed846
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.debian.tar.xz' lvm2_2.02.133-1ubuntu10.debian.tar.xz 42320 SHA256:54f13369a8576c98472dcc9121e3ac4fd69f3af02d2aa4a7aeb0224e87176d1e
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu2.dsc' lz4_0.0~r131-2ubuntu2.dsc 2007 SHA256:123f23834f83a4dca6d74a611cc0294491bd339d2e0be04d65783d6debbccc02
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu2.debian.tar.xz' lz4_0.0~r131-2ubuntu2.debian.tar.xz 5224 SHA256:c0afb4a440b1e7b803e2d9dcf616be539c1d16baebc681cdf837000e4c5077b7
```

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

### `dpkg` source package: `m4=1.4.17-5`

Binary Packages:

- `m4=1.4.17-5`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.17-5
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.17-5.dsc' m4_1.4.17-5.dsc 1411 SHA256:4fb85651ee1e951f17304042e83253d7ca75a2f962be9796b10aad5ac96f5524
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.17.orig.tar.xz' m4_1.4.17.orig.tar.xz 1149088 SHA256:f0543c3beb51fa6b3337d8025331591e0e18d8ec2886ed391f1aade43477d508
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.17-5.debian.tar.xz' m4_1.4.17-5.debian.tar.xz 12544 SHA256:74045004fae4025bc850c2d53e4d95ed7374b9c22c846c3d3596e39986697049
```

### `dpkg` source package: `make-dfsg=4.1-6`

Binary Packages:

- `make=4.1-6`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.dsc' make-dfsg_4.1-6.dsc 1840 SHA256:c28066ebe2002e4791ac3a4e808d8a5f0bed75eff8e0462449a08ab767153361
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.diff.gz' make-dfsg_4.1-6.diff.gz 42552 SHA256:b647e6961a9707ea009de85fb65f8156143deab139be1636a200abdffe5e91c3
```

### `dpkg` source package: `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Binary Packages:

- `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Licenses: (parsed from: `/usr/share/doc/makedev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris makedev=2.3.1-93ubuntu2~ubuntu16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2%7eubuntu16.04.1.dsc' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.dsc 1855 SHA512:af060ae534668d751781e0fe8577a0250d62b6a5a7a6849b617a3b1fbc378899950fca46dbd9937288bc94c7b66c42f1fc7ef4400ad3dc6031d3fb2e36addb00
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1.orig.tar.gz' makedev_2.3.1.orig.tar.gz 9924 SHA512:640df51e214dfa3be1b7425fb9cd6477f1b4da57441a58243913aae12e1b2c0b7ef35906384cb79975fda4f6c747534f9f72dde59b742ac3bc26c87cb69f65f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2%7eubuntu16.04.1.diff.gz' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.diff.gz 50340 SHA512:384886ff3f0792cf67cdf5126af5f8d4dbf31ede75fdb339c1b53fdd15e7f0abc91d53297a3c5bf908e2c3c21be51f0766a37da51b92f5c8f7a5e6d81c916912
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu2`

Binary Packages:

- `mawk=1.3.3-17ubuntu2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.dsc' mawk_1.3.3-17ubuntu2.dsc 1843 SHA256:d9058945d45b0e9ee5dd1c9c2e16d8f28b96d5c2e777f743594096fa2a5e277b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.diff.gz' mawk_1.3.3-17ubuntu2.diff.gz 63882 SHA256:670103046767474be29e80f2143dc67e3d0b958972f5942c3df94883f978eded
```

### `dpkg` source package: `mercurial=3.7.3-1ubuntu1.2`

Binary Packages:

- `mercurial=3.7.3-1ubuntu1.2`
- `mercurial-common=3.7.3-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=3.7.3-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3-1ubuntu1.2.dsc' mercurial_3.7.3-1ubuntu1.2.dsc 2387 SHA512:c9cafa2ee08866a91a02d0a3f4362e643d21f389e8ac59e045ec8c5d4993de2a424ebddfba2c8dd7636be6db86ccc989a1458ee2809e1339a04fc341427303f0
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3.orig.tar.gz' mercurial_3.7.3.orig.tar.gz 4636732 SHA512:7f9f97229e40c7092c16ccf227b19a08a9839d8ce19a9d057341fff75876bff32241ee9aa10eab293f779ea3e8a1d97577597187bd96251fb499cbb1075a82cf
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3-1ubuntu1.2.debian.tar.xz' mercurial_3.7.3-1ubuntu1.2.debian.tar.xz 65164 SHA512:f21eb0f5ee75b090add089e14d2ec8547f11c6e0b9f305636d10a75a0dce9b4d7b5113fb58b94742c73f3df730f171b5ba1487e8db10992e507938195fe5f253
```

### `dpkg` source package: `mime-support=3.59ubuntu1`

Binary Packages:

- `mime-support=3.59ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.59ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.dsc' mime-support_3.59ubuntu1.dsc 1711 SHA256:37703b2273222f23dd8ad048f898a381412df0a76473047e0b7757a8043ff354
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.tar.gz' mime-support_3.59ubuntu1.tar.gz 37508 SHA256:55ee4350da8425fb65e7c9b60518e20de09c5a72d08148e644fcefe7abf9c83d
```

### `dpkg` source package: `mpclib3=1.0.3-1`

Binary Packages:

- `libmpc3:amd64=1.0.3-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.dsc' mpclib3_1.0.3-1.dsc 1940 SHA256:4b424e1c6063d48fd0d045b5afe37004346dae267ced0994fa8e11ff41cada45
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.diff.gz' mpclib3_1.0.3-1.diff.gz 3684 SHA256:5a3fe9a7eddb4428d42e95f5919cce517f17411acdb2a73013a8f1a2bb246565
```

### `dpkg` source package: `mpfr4=3.1.4-1`

Binary Packages:

- `libmpfr4:amd64=3.1.4-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.dsc' mpfr4_3.1.4-1.dsc 1965 SHA256:98c867cd9e2d82fd9f1bae851a3ec8e76aa35d9e54d9e0d75a2fcd97f08992a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4.orig.tar.xz' mpfr4_3.1.4.orig.tar.xz 1122152 SHA256:761413b16d749c53e2bfd2b1dfaa3b027b0e793e404b90b5fbaeef60af6517f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.debian.tar.xz' mpfr4_3.1.4-1.debian.tar.xz 9656 SHA256:e0562521ac0ef9fc2039ef1305962ee1ad529ae2210e197cee0080b1facc4d60
```

### `dpkg` source package: `mysql-5.7=5.7.33-0ubuntu0.16.04.1`

Binary Packages:

- `libmysqlclient-dev=5.7.33-0ubuntu0.16.04.1`
- `libmysqlclient20:amd64=5.7.33-0ubuntu0.16.04.1`
- `mysql-common=5.7.33-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
- `Boost`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `SWsoft`
- `public-domain`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mysql-5.7=5.7.33-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33-0ubuntu0.16.04.1.dsc' mysql-5.7_5.7.33-0ubuntu0.16.04.1.dsc 3380 SHA512:e1ac33c094ef9a5212d85e2bbec9d706555eadb09066d22499447617df2a087d2bc04e62dcf44f18c10110e0add874778324e97933d7ee033040b9f4e8ac1016
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33.orig.tar.gz' mysql-5.7_5.7.33.orig.tar.gz 52912380 SHA512:1d1e1e5934fb17ff731fea45b88d4af6a394c2fbf0177a87803b18cb0eb4fb8d4939f82fc22b6cbc2af64022a44e206cd23e2e88ce11cc119c3ea22129d54e7a
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.33-0ubuntu0.16.04.1.debian.tar.xz' mysql-5.7_5.7.33-0ubuntu0.16.04.1.debian.tar.xz 251296 SHA512:5804e3796d7e9337aa5587fc37ab1e1188b9df889404b73661c0b783a972bd119abd1575bb6334da1d2f7a6e366b4a645723f2aa06b2b214583ef74ef60fb458
```

### `dpkg` source package: `ncurses=6.0+20160213-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160213-1ubuntu1`
- `libncurses5-dev:amd64=6.0+20160213-1ubuntu1`
- `libncursesw5:amd64=6.0+20160213-1ubuntu1`
- `libncursesw5-dev:amd64=6.0+20160213-1ubuntu1`
- `libtinfo-dev:amd64=6.0+20160213-1ubuntu1`
- `libtinfo5:amd64=6.0+20160213-1ubuntu1`
- `ncurses-base=6.0+20160213-1ubuntu1`
- `ncurses-bin=6.0+20160213-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160213-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213-1ubuntu1.dsc' ncurses_6.0+20160213-1ubuntu1.dsc 4379 SHA256:16628fbe5a690f6f8d147a54d0ba6900a0afeaa51d318475781ce3f14df1ca79
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213.orig.tar.gz' ncurses_6.0+20160213.orig.tar.gz 3153008 SHA256:20269c2dd62a311b9a3fb9f25638d35a057a5ece5f8d6caf4e70a3da6f01082c
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0%2b20160213-1ubuntu1.debian.tar.xz' ncurses_6.0+20160213-1ubuntu1.debian.tar.xz 54496 SHA256:9551738e1bdc425d12897cc459ce5ce40b5e12530b144b731c0a7b3e077c07c7
```

### `dpkg` source package: `netbase=5.3`

Binary Packages:

- `netbase=5.3`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.3
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.3.dsc' netbase_5.3.dsc 1308 SHA256:fcb9c97fe55277f775fd5a39933ca0189b9a983c6cf1abc8184fc29b8e1d77cb
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.3.tar.xz' netbase_5.3.tar.xz 31292 SHA256:81f6c69795044d62b8ad959cf9daf049d0545fd466c52860ad3f933b1e97b88b
```

### `dpkg` source package: `nettle=3.2-1ubuntu0.16.04.2`

Binary Packages:

- `libhogweed4:amd64=3.2-1ubuntu0.16.04.2`
- `libnettle6:amd64=3.2-1ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/libhogweed4/copyright`, `/usr/share/doc/libnettle6/copyright`)

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
$ apt-get source -qq --print-uris nettle=3.2-1ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.2.dsc' nettle_3.2-1ubuntu0.16.04.2.dsc 2214 SHA512:13487b8131242f0ea97733d48982c05dd63bc0d90c0f2c88c02d4486a8856537fb6108162850fef02dd8dba8726ca1a7b28d10f042f5e93b3933cabfbf39fc24
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2.orig.tar.gz' nettle_3.2.orig.tar.gz 1879604 SHA512:9f2c802e8b683d1c2fd8d16ab33b2a1efda33a1bf33196be39031a2d0677f2e78d67221a718997780e157aa72973da7d9d549429e706fcfcdff97ee3bbef615a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.2.debian.tar.xz' nettle_3.2-1ubuntu0.16.04.2.debian.tar.xz 25212 SHA512:23292a5d1f078fa6e28e835d53215aeedd982b4ebbf141b1488f4621b21d83e7c8d7dd6f93cca26b1a72c9f1238f307ee9a75905d2e26ae8c3c98e2ce6640572
```

### `dpkg` source package: `openexr=2.2.0-10ubuntu2.6`

Binary Packages:

- `libopenexr-dev=2.2.0-10ubuntu2.6`
- `libopenexr22:amd64=2.2.0-10ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-10ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-10ubuntu2.6.dsc' openexr_2.2.0-10ubuntu2.6.dsc 2395 SHA512:a8ee4d468fd59ef0c48ed910fb7abc562ff58209a1f8f3cdaa2b1ab0e6e000f8f6a40c7cc50aaf7b7a667c6076bd8f408392d0b6e869d7b08f1a2afbf1230248
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA512:017abbeeb6b814508180721bc8e8940094965c4c55b135a198c6bcb109a04bf7f72e4aee81ee72cb2185fe818a41d892b383e8d2d59f40c673198948cb79279a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-10ubuntu2.6.debian.tar.xz' openexr_2.2.0-10ubuntu2.6.debian.tar.xz 51704 SHA512:0855b586b59c420c73c17be3fe140f5c3abd4b8c4250c59d590cbab207f8c175d2f6938502a0ea4d9561151cb8b6630ac6c866b8d5a669cdb86d0b5c5fa945b5
```

### `dpkg` source package: `openldap=2.4.42+dfsg-2ubuntu3.13`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.42+dfsg-2ubuntu3.13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.42+dfsg-2ubuntu3.13
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg-2ubuntu3.13.dsc' openldap_2.4.42+dfsg-2ubuntu3.13.dsc 3058 SHA512:d23e2a477102df56bb931eff1c9c3026871c7c3fb0e8e86796afc5fec571553666aac9e5f569b2e751c1c5d3550adaa515482656754bb3911c4ed7519aa59ed7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg.orig.tar.gz' openldap_2.4.42+dfsg.orig.tar.gz 4813173 SHA512:4ed671baef513927cc340dac15b8979dba766d4fd629cae0bad1e125d09bc4ae61fda6912e06c53f8ef2cee6c2e28379b4e0c419c00c8254dc0cc0c715caf200
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42%2bdfsg-2ubuntu3.13.debian.tar.xz' openldap_2.4.42+dfsg-2ubuntu3.13.debian.tar.xz 186584 SHA512:9f14c8c34082d1ed9689aa610fffcbdad1396dcacbd763f61d3091ad67170de5fa6f72abde7332336e49d3a0925c475e19f8d7763ca7d66dc5be105abb3ce976
```

### `dpkg` source package: `openssh=1:7.2p2-4ubuntu2.10`

Binary Packages:

- `openssh-client=1:7.2p2-4ubuntu2.10`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.2p2-4ubuntu2.10
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.2p2-4ubuntu2.10.dsc' openssh_7.2p2-4ubuntu2.10.dsc 2974 SHA512:7b715e111835716d45a1b75a9533974cb33388d39fcce8533a14594914078a0e67758057ca99e3edf6b64f21478b6dcd75f296a06422c093c56aa492d1607162
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.2p2.orig.tar.gz' openssh_7.2p2.orig.tar.gz 1499808 SHA512:44f62b3a7bc50a0735d496a5aedeefb71550d8c10ad8f22b94e29fcc8084842db96e8c4ca41fced17af69e1aab09ed1182a12ad8650d9a46fd8743a0344df95b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.2p2-4ubuntu2.10.debian.tar.xz' openssh_7.2p2-4ubuntu2.10.debian.tar.xz 178928 SHA512:bf815a840f256cfd33cd2b8c63bac77b345c61f23ed7584fa2f614dc4cfa0925a33a0d423024bdab1a8d528168a1e30dfabc2789c52b04baaacc120c7c07f2d3
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu4.20`

Binary Packages:

- `libssl-dev:amd64=1.0.2g-1ubuntu4.20`
- `libssl1.0.0:amd64=1.0.2g-1ubuntu4.20`
- `openssl=1.0.2g-1ubuntu4.20`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.2g-1ubuntu4.20
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.20.dsc' openssl_1.0.2g-1ubuntu4.20.dsc 2453 SHA512:5a0545c1882a1395fe6a814059ef136cff64b6b8750004a94459c7703674ec5b0338e662edf52fd0e2b0e2e2c47f81ecb32447503e48b6bd8c9d1d0e0155bcf0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g.orig.tar.gz' openssl_1.0.2g.orig.tar.gz 5266102 SHA512:4d96b6c8a232203483d6e8bee81da01ba10977bfbac92f25304a36dec9ea584b7ef917bc45e097cc7dbe681d71a4570d649c22244c178393ae91fab48323f735
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.20.debian.tar.xz' openssl_1.0.2g-1ubuntu4.20.debian.tar.xz 142424 SHA512:523befa8829271e98e236f1d720ff3575273bd3cae192ea879196b674c4bf9ad17e949fde1b046a4ab764faf06bd51faa4140af402831db331755c47262e05f2
```

### `dpkg` source package: `p11-kit=0.23.2-5~ubuntu16.04.2`

Binary Packages:

- `libp11-kit0:amd64=0.23.2-5~ubuntu16.04.2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.2-5~ubuntu16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5%7eubuntu16.04.2.dsc' p11-kit_0.23.2-5~ubuntu16.04.2.dsc 2340 SHA512:e4d824b1373e304eb2e9f590c24ca125ba98b0b1019980679675c84b3c6c6626c09d01c83fa8f6b6b45dad0ed70a1aab386824f983a91bf325db43b0e4d0f38c
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2.orig.tar.gz' p11-kit_0.23.2.orig.tar.gz 1022733 SHA512:b665d89f0d752a41b01ec53e29c801c4fdcaf3f21fce524984b10acef0477ad5dbac085edd35ffb747423d0e1e09660b8d29501c979cf54937d3b9d2561cf18f
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5%7eubuntu16.04.2.debian.tar.xz' p11-kit_0.23.2-5~ubuntu16.04.2.debian.tar.xz 17648 SHA512:0364e155a73d67c8d709769dcea3deb28d9878d802779e2648d284243af12fb861c803d6742c2ce7a898657ec9b2127fa30ba150323964e0a951ea69335a5196
```

### `dpkg` source package: `pam=1.1.8-3.2ubuntu2.3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu2.3`
- `libpam-modules-bin=1.1.8-3.2ubuntu2.3`
- `libpam-runtime=1.1.8-3.2ubuntu2.3`
- `libpam0g:amd64=1.1.8-3.2ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.3.dsc' pam_1.1.8-3.2ubuntu2.3.dsc 2611 SHA512:f33dfe20b608641d5d2f2396700a83511a58164d9ad22fada18f644e9c27dba5b489c178dcb7077c99307cc42d8ce5b6ba6826000307257a729a522c778fb34e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA512:dca21547f951a53cdb6bbcbedde694f345ec02ff5931f2f81da26980471206515f891035cacded3e10d6631f7dc2fb8679fdaf737cd50adaf18768a1c56482a2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.3.diff.gz' pam_1.1.8-3.2ubuntu2.3.diff.gz 197563 SHA512:19d1ea949966ba6f5935094f68006a35028c4787ceb6cbdd367ded22a28e8b76f17c6c2bb3d446f2f8674bc4427938f6cd65b85b6cc5699bfc64265302090074
```

### `dpkg` source package: `pango1.0=1.38.1-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.38.1-1`
- `libpangocairo-1.0-0:amd64=1.38.1-1`
- `libpangoft2-1.0-0:amd64=1.38.1-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.38.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.38.1-1.dsc' pango1.0_1.38.1-1.dsc 3171 SHA256:786e84e8a00ab1b062f05356dbd371b771ef3fe3cf09144ba1de6b0668929e24
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.38.1.orig.tar.xz' pango1.0_1.38.1.orig.tar.xz 1047372 SHA256:1320569f6c6d75d6b66172b2d28e59c56ee864ee9df202b76799c4506a214eb7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.38.1-1.debian.tar.xz' pango1.0_1.38.1-1.debian.tar.xz 29216 SHA256:673a39fb35b469af653a819a65e778563fc4be3fa8265e7321006f9be06df143
```

### `dpkg` source package: `patch=2.7.5-1ubuntu0.16.04.2`

Binary Packages:

- `patch=2.7.5-1ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1ubuntu0.16.04.2.dsc' patch_2.7.5-1ubuntu0.16.04.2.dsc 1950 SHA512:f55ca716b52f58d0a6e6fbf6ed9f60a73ce5f337f47ec312f3c090dc4601d1d91df4de0d808dce0fda1f892388e7e2043bcd037a8a93854a3477d1beca6ff930
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA512:6620ac8101f60c0b456ce339fa5e371f40be0b391e2e9728f34f3625f9907e516de61dac2f91bc76e6fd28a9bd1224efc3ba827cfaa606d857730c1af4195a0f
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1ubuntu0.16.04.2.debian.tar.xz' patch_2.7.5-1ubuntu0.16.04.2.debian.tar.xz 12588 SHA512:473af88a4c06f86236dee935178a4b688d25c8ed99e0a7b5072012d10220f0b382e9e00d79394df3ea674dadda61e515a6aa9851c710d5b9163c16eee360caa8
```

### `dpkg` source package: `pcre3=2:8.38-3.1`

Binary Packages:

- `libpcre16-3:amd64=2:8.38-3.1`
- `libpcre3:amd64=2:8.38-3.1`
- `libpcre3-dev:amd64=2:8.38-3.1`
- `libpcre32-3:amd64=2:8.38-3.1`
- `libpcrecpp0v5:amd64=2:8.38-3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.38-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.dsc' pcre3_8.38-3.1.dsc 2074 SHA256:6a46bc62c33198fe38257f0dddecb4c534825f8f066bf88f2a45ad935b879885
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38.orig.tar.gz' pcre3_8.38.orig.tar.gz 2053336 SHA256:9883e419c336c63b0cb5202b09537c140966d585e4d0da66147dc513da13e629
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.debian.tar.gz' pcre3_8.38-3.1.debian.tar.gz 32289 SHA256:9ee1b838c1de50cb5f6641016d0dd21b06f1038b9b7c3b1098e0a89b9c24b39f
```

### `dpkg` source package: `perl=5.22.1-9ubuntu0.9`

Binary Packages:

- `libperl5.22:amd64=5.22.1-9ubuntu0.9`
- `perl=5.22.1-9ubuntu0.9`
- `perl-base=5.22.1-9ubuntu0.9`
- `perl-modules-5.22=5.22.1-9ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libperl5.22/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.22/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
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
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.22.1-9ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.9.dsc' perl_5.22.1-9ubuntu0.9.dsc 2480 SHA512:78551f83138bae837431f926892f0dc07490b18b9e84c33a7baa1f301818cad74d40460889542f757530334510dc8bf7a60723fa9e3c5ff22c73abc8d8f49d63
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1.orig.tar.xz' perl_5.22.1.orig.tar.xz 11223940 SHA512:f214bf6959e582a04034c9343a270fcc4fdcf959a8fbb393433865446e634024809d194cfd07ab614b2c09a5a73caec0a74945bbbb3d690663a5f6f10eb168b8
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.9.debian.tar.xz' perl_5.22.1-9ubuntu0.9.debian.tar.xz 167048 SHA512:77a9b2cbc73521969c77530819544c4f2a20e21bca2ee17092906b2804b5d575efc66626c1a9698dea4a3e4f2fd78c19f0c83a7824eb085e4bfd5fdcd2e28177
```

### `dpkg` source package: `pixman=0.33.6-1`

Binary Packages:

- `libpixman-1-0:amd64=0.33.6-1`
- `libpixman-1-dev=0.33.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.33.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.33.6-1.dsc' pixman_0.33.6-1.dsc 2085 SHA256:08e94c263c3cde1c841458512705fa6a52a78c8f48e31f0bf3a2ae8a518eb51e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.33.6.orig.tar.gz' pixman_0.33.6.orig.tar.gz 878996 SHA256:4e1e72c0ed31d10944f304976e87e6c87b441c853713eeecf115e22c23d4b17d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.33.6-1.diff.gz' pixman_0.33.6-1.diff.gz 315093 SHA256:f382e753698aa95fae9019128a4b463935695b4c906785397f3eaa04e05a06d5
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu1`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.dsc' pkg-config_0.29.1-0ubuntu1.dsc 1842 SHA256:0ade40d184e9684f9e22e622022f1b798123cc63cd37d669f664f47dddc5e072
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.diff.gz' pkg-config_0.29.1-0ubuntu1.diff.gz 12597 SHA256:1c44aeeec1896a69f21861e9b9e18bb783258d57f4bd678b173b3890f1a209bf
```

### `dpkg` source package: `postgresql-9.5=9.5.25-0ubuntu0.16.04.1`

Binary Packages:

- `libpq-dev=9.5.25-0ubuntu0.16.04.1`
- `libpq5:amd64=9.5.25-0ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Custom-Unicode`
- `Custom-pg_dump`
- `Custom-regex`
- `PostgreSQL`
- `Tcl`
- `almost exclusively BSD`

Source:

```console
$ apt-get source -qq --print-uris postgresql-9.5=9.5.25-0ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25-0ubuntu0.16.04.1.dsc' postgresql-9.5_9.5.25-0ubuntu0.16.04.1.dsc 3777 SHA512:4750e429b8f4974d4f481d8e7d36d0658c7b75002d610eac7cae209a13e219ef758e5d24c64a09e4fbaa4c495186867d624c3136ba17f5ed14fc5fa55199c75f
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25.orig.tar.bz2' postgresql-9.5_9.5.25.orig.tar.bz2 17923796 SHA512:621b36d767d2c7eb2e942cb7b26ca7491450fcfd9606114849f7336b4d8a0bc0196badb44da4918e748145d21b6f72ccf1255a1309dff2427da8b39b63fca427
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-9.5/postgresql-9.5_9.5.25-0ubuntu0.16.04.1.debian.tar.xz' postgresql-9.5_9.5.25-0ubuntu0.16.04.1.debian.tar.xz 28708 SHA512:1aaaffa3464169b00f66c922b61c035c11df8a633b241479c9c4182fb0f73d8d135f559a4b1ecfbcb80f76800f1e194e50afdb1f656a267ab46c8fe445d8e8ad
```

### `dpkg` source package: `procps=2:3.3.10-4ubuntu2.5`

Binary Packages:

- `libprocps4:amd64=2:3.3.10-4ubuntu2.5`
- `procps=2:3.3.10-4ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libprocps4/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.10-4ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.5.dsc' procps_3.3.10-4ubuntu2.5.dsc 2227 SHA512:a247fdd9aa5c23eaa2aa5110e102db86de1f8162f738d2278af9bce2e8c0a1aa2a59903cd338344a2453f64121a5946d43211638a045850b97a9813616c0cb2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10.orig.tar.xz' procps_3.3.10.orig.tar.xz 814816 SHA512:ab7627e46301d479a56a073cd7e6ff02dc85e7cba73cf0b9a0ca9288cd1aef2f6dac9413cefd8ee75ca84a3d1c5f38e5afc5c4969e31c96b276ce21c79ac5c34
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.5.debian.tar.xz' procps_3.3.10-4ubuntu2.5.debian.tar.xz 44704 SHA512:4ded69c9fb63c4ae7410b7304271454060f4ec51f54dc49ebd60393ce54aa45d5ec6a4a7f763900572a3e92cb704143e5410b1fb3ab519d54d2c588b0afea401
```

### `dpkg` source package: `python-defaults=2.7.12-1~16.04`

Binary Packages:

- `libpython-stdlib:amd64=2.7.12-1~16.04`
- `python=2.7.12-1~16.04`
- `python-minimal=2.7.12-1~16.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.12-1~16.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.12-1%7e16.04.dsc' python-defaults_2.7.12-1~16.04.dsc 2659 SHA512:408cd2d8aca9ea0573c68b4a14a3ceb98d7199e427350b3fa530b680a78641af1a5e16f3614c79723aaf0c0f44779844ab86874d2e6bb90d996bd3f6bd5e7b74
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.12-1%7e16.04.tar.gz' python-defaults_2.7.12-1~16.04.tar.gz 280070 SHA512:92fa75b66b29205348f1a13542b82ede82ce8233f0f4df56e4482774bf991dc295152137500cdd4d2a8ce3bccff028302a5b5323648ec8038b84cca6aca92adb
```

### `dpkg` source package: `python2.7=2.7.12-1ubuntu0~16.04.18`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.12-1ubuntu0~16.04.18`
- `libpython2.7-stdlib:amd64=2.7.12-1ubuntu0~16.04.18`
- `python2.7=2.7.12-1ubuntu0~16.04.18`
- `python2.7-minimal=2.7.12-1ubuntu0~16.04.18`

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
$ apt-get source -qq --print-uris python2.7=2.7.12-1ubuntu0~16.04.18
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0%7e16.04.18.dsc' python2.7_2.7.12-1ubuntu0~16.04.18.dsc 3391 SHA512:999034052244dcc17392ee6d0e6c3ffaeba1d9632a30fa7a1e3d8a6c3b4f3ae65efe885b101118f90b727d28d5a58730e3a127b12b0991eba2fdf033731013da
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12.orig.tar.gz' python2.7_2.7.12.orig.tar.gz 16935960 SHA512:e3c04b1c66ff659c08e09a5adc34fd856ca0c786e5820c05471747416fef38555f1711978ac5e81ff4fdf7c16311796212f638e5e2d43e2404b2a42fc139edb0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0%7e16.04.18.diff.gz' python2.7_2.7.12-1ubuntu0~16.04.18.diff.gz 393532 SHA512:3d8164199a7d8868385de89184226c45af9ede5c371cf376f61121baf677bbdeaf4df0763b9cd2e497aec3e1fbec96043e2f6115da0f84bdbed583dd4ee5c3a7
```

### `dpkg` source package: `readline6=6.3-8ubuntu2`

Binary Packages:

- `libreadline-dev:amd64=6.3-8ubuntu2`
- `libreadline6:amd64=6.3-8ubuntu2`
- `libreadline6-dev:amd64=6.3-8ubuntu2`
- `readline-common=6.3-8ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/libreadline6-dev/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.dsc' readline6_6.3-8ubuntu2.dsc 2566 SHA256:3c7e3168dd1510f040325c1ab1e28c7fbde34d1a899005a98a894a9f27bd98f6
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.debian.tar.xz' readline6_6.3-8ubuntu2.debian.tar.xz 31232 SHA256:32d4f30dc92d79d722b04c2b678883245d2eccff2ed4f8591faebca7e6d81948
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d-1ubuntu0.1.dsc' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.dsc 2408 SHA512:51585f82a47b5c050148ff861fca899d13d0e77ce5095f782a5986e40df05afb45f23fd7bff9fcafadc5996eb3b8d369e9a6f0bca2a56f7576bcb205be6cd18b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.orig.tar.gz 149016 SHA512:dbafe796c99f61c75f12eb7f4b424b72c4538da09a732eeb1ed0a259139b6dc683d036b504593a4a5a1d6656ca72bf40b00117b6f6c4040e9061e5d07f889530
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz 9000 SHA512:d8bc31759d07b4b65b2f941126c0a6978bb5d33b1457aa541e2f7e20c5ebb99b4893f5eb73c482fd796ae8dc4ec5899421281b60a43b9c9f1da054b3c877699a
```

### `dpkg` source package: `sed=4.2.2-7`

Binary Packages:

- `sed=4.2.2-7`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.dsc' sed_4.2.2-7.dsc 1974 SHA256:42f5764a279ac3f9b31d9e922024b519b950b35e82830e552839cd41fbb8e0b0
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.debian.tar.xz' sed_4.2.2-7.debian.tar.xz 85048 SHA256:416b70f601b40246c1daf7261f117ea9ff01564f574bd34871573fc5c9f74db7
```

### `dpkg` source package: `sensible-utils=0.0.9ubuntu0.16.04.1`

Binary Packages:

- `sensible-utils=0.0.9ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9ubuntu0.16.04.1.dsc' sensible-utils_0.0.9ubuntu0.16.04.1.dsc 1514 SHA512:b888a311da2a29f7c79483c20148eaa0ca6d359f108c507bdca2fa6251b3fa24082513433e403c3f4176df91f21e0abe2665b3813007a84c370b18b3053de796
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9ubuntu0.16.04.1.tar.xz' sensible-utils_0.0.9ubuntu0.16.04.1.tar.xz 54048 SHA512:2a928fdae2355e494b2c6c62d147c0e00286ed2d956262bc92c941692ce86499fd1f3b98d5b2bc89f113686fbcd882f5a7e5d65235159a521a84882c40cdb971
```

### `dpkg` source package: `serf=1.3.8-1`

Binary Packages:

- `libserf-1-1:amd64=1.3.8-1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.8-1/


### `dpkg` source package: `shadow=1:4.2-3.1ubuntu5.4`

Binary Packages:

- `login=1:4.2-3.1ubuntu5.4`
- `passwd=1:4.2-3.1ubuntu5.4`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.1ubuntu5.4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.4.dsc' shadow_4.2-3.1ubuntu5.4.dsc 2513 SHA512:b7de769873bc0941f55d5c64251fedbd434a72824d921ecd6d19f806a0412a878c64a61a6ed7632e67c1b3be48163d0f50834001641ca2876185f63b270b1b9a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA512:8c9b482c6006198766efe44df68c863116f7e4c8ee7056e7f9cd8f66af166944aab119f567da6f96cd34fb5dcf19fba9f5e3d7c226f0bc48e3aef4906497ae16
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.4.debian.tar.xz' shadow_4.2-3.1ubuntu5.4.debian.tar.xz 506364 SHA512:3502e415aa519109e421b383356d55d69e82f276a225cafad89a36af28a95be7a0695abec9ea2fc0fdbc02d20c68e385dc7a4bbc6c725b043daf65a66dc1b01f
```

### `dpkg` source package: `shared-mime-info=1.5-2ubuntu0.2`

Binary Packages:

- `shared-mime-info=1.5-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.5-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5-2ubuntu0.2.dsc' shared-mime-info_1.5-2ubuntu0.2.dsc 2289 SHA512:5ea1898f91b3d8b182e57444206ee2ab3c98ce0337d33926dba657de37193e065697201a09d7330b541e7fcd82faa954e9c549e379ae147c3f3bcf7fd1fe1b7a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5.orig.tar.xz' shared-mime-info_1.5.orig.tar.xz 559040 SHA512:8a97c8fa5a60eede056a42c36d9f8d015bf2788feca4630397ef71ba2cfe29ad469fb1669c368674edd4661af6b2f6823377cc27525f44c61788533c0c28e22a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5-2ubuntu0.2.debian.tar.xz' shared-mime-info_1.5-2ubuntu0.2.debian.tar.xz 10548 SHA512:972127d29b38c599f27ae63a92b7965c59391babf5961acc9064b90b82358e311ca4913e001cfe53c2dcd3aee04aece7c3aeab1dcad6fd7003dfd21b86af6e5b
```

### `dpkg` source package: `six=1.10.0-3`

Binary Packages:

- `python-six=1.10.0-3`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.dsc' six_1.10.0-3.dsc 2158 SHA256:71f2d5ff8b999c471cc2e92712befe482351a5ae226321e0e795bc683c8729cb
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.debian.tar.xz' six_1.10.0-3.debian.tar.xz 3668 SHA256:860cc57244ea4e69eb4ee3ad1b823472c20d868c1cc25745b236ba6c9e1f3563
```

### `dpkg` source package: `sqlite3=3.11.0-1ubuntu1.5`

Binary Packages:

- `libsqlite3-0:amd64=3.11.0-1ubuntu1.5`
- `libsqlite3-dev:amd64=3.11.0-1ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.11.0-1ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.5.dsc' sqlite3_3.11.0-1ubuntu1.5.dsc 2625 SHA512:45dea33802cee1cd37c14550c817283d43d41c11b58398c754e5c23ebc2eaeada2478217c9739a4e80534bcc3b9667adb904d59a6e8b6efe42293c8faaaa76a9
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig-www.tar.xz' sqlite3_3.11.0.orig-www.tar.xz 3135012 SHA512:132ea8354b5c541b88e21af14ac3db5c741f904271c1027c06a10f19772aea839e0b88398791670fd68ccd9e01473431f5d5f67784f955dcab781c28ef551e03
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig.tar.xz' sqlite3_3.11.0.orig.tar.xz 5122440 SHA512:6d918b52f0dc10e49a43ed5c10f177424bdc1373d48367b57580937c64aaed4836c23c06b4643549ca4bca1913233056fb23314be2023a22ba51ee19eb32b949
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.5.debian.tar.xz' sqlite3_3.11.0-1ubuntu1.5.debian.tar.xz 45984 SHA512:54535155d3aa3626d1642224d339aff1a492c27589fbb55450de0e074bccb19162c01a2e23cd815a0dc7fdcd574f4cac283eaf7315cf94764b755eca5834040f
```

### `dpkg` source package: `subversion=1.9.3-2ubuntu1.3`

Binary Packages:

- `libsvn1:amd64=1.9.3-2ubuntu1.3`
- `subversion=1.9.3-2ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.3-2ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3-2ubuntu1.3.dsc' subversion_1.9.3-2ubuntu1.3.dsc 3287 SHA512:7fa279007cd2cbac724c284842f09ae7629f1228c30ec23e52ec9151bcdadeaab6d8005b0124e3a114a2e76de86f83e7db14ea9cda3d31afaaf0ec34e8809e6c
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3.orig.tar.gz' subversion_1.9.3.orig.tar.gz 10600934 SHA512:999698ca9ec67fc450b511c1a936d3565dfbe4db1d05d110a4e11fdec3e0aefafa6669593f06502df42de8cc87610375844cf9aad691514e9bf1a71757b16552
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3-2ubuntu1.3.diff.gz' subversion_1.9.3-2ubuntu1.3.diff.gz 2434888 SHA512:8edc6185f5093ffc84c68a0593c01a1d9d7d8bf0705ce5a7a176b05ef36816050843d843630fdc9c91511de51474d119014660e107feb6e79d702108cd63a400
```

### `dpkg` source package: `systemd=229-4ubuntu21.31`

Binary Packages:

- `libsystemd0:amd64=229-4ubuntu21.31`
- `libudev1:amd64=229-4ubuntu21.31`
- `systemd=229-4ubuntu21.31`
- `systemd-sysv=229-4ubuntu21.31`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=229-4ubuntu21.31
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229-4ubuntu21.31.dsc' systemd_229-4ubuntu21.31.dsc 4643 SHA512:943ec0083ff45b277b559098f8c8b14f08000969be130445a7e10aa8c6939448bbf6cce372ccdddf7e2ad9de26895be825e07e3cd6434efeaff4e1072ed2d7ce
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229.orig.tar.gz' systemd_229.orig.tar.gz 4319173 SHA512:d692c0c9fc82f2fce64a5ec1caa4a0f8cf9edaeb1bdaaa1c462669db8f78b3dd6b33c87ef926ff21823582d0460f7b63aa3755792f9ae2cd6fb813ba08a35c39
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_229-4ubuntu21.31.debian.tar.xz' systemd_229-4ubuntu21.31.debian.tar.xz 315956 SHA512:8c82953d97cd9e0f76242f5b3102001d8e601020d432e1db580e028ce63967d33ffa1c52717d1ff0c241fab559e4c1433e734086af3d8706ea50256c78619bc1
```

### `dpkg` source package: `sysvinit=2.88dsf-59.3ubuntu2`

Binary Packages:

- `initscripts=2.88dsf-59.3ubuntu2`
- `sysv-rc=2.88dsf-59.3ubuntu2`
- `sysvinit-utils=2.88dsf-59.3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.dsc' sysvinit_2.88dsf-59.3ubuntu2.dsc 2284 SHA256:a64f0c2c11c14c8bf57fee7c583ae38ea710ec3288c3d840daeeec5a2eab1676
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz' sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz 134864 SHA256:d4cf7aa3d6c1f8727cbd699395053d541844a9ff02ea5e6a1119eb90604586b8
```

### `dpkg` source package: `tar=1.28-2.1ubuntu0.2`

Binary Packages:

- `tar=1.28-2.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.28-2.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.2.dsc' tar_1.28-2.1ubuntu0.2.dsc 1865 SHA512:c54bd26c1f337b9996d21b6a487dbba955b42059b8fb32cb5d812cb7cbb4f288681f976a567425ce81234ee5f919991d04bdce5f19f5c8ee9fbf0381df409535
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28.orig.tar.xz' tar_1.28.orig.tar.xz 1756440 SHA512:dc91045b84bf5df513ae936be14977b029644a77ac03f58d21d34e61e50d8069f95526b9e706f2da7d41d3d0ed7de88bf13c2c066e63a80e5651a24077e604c2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.2.debian.tar.xz' tar_1.28-2.1ubuntu0.2.debian.tar.xz 39348 SHA512:a646e5331c9f5b3c193b564798a2c02e85b861afda3a49c7f91bcc1a1c46bf9a2e824e6a34cd1ef0e470412a768258323594bb1490c0ae41643fb5018105442e
```

### `dpkg` source package: `tiff=4.0.6-1ubuntu0.8`

Binary Packages:

- `libtiff5:amd64=4.0.6-1ubuntu0.8`
- `libtiff5-dev:amd64=4.0.6-1ubuntu0.8`
- `libtiffxx5:amd64=4.0.6-1ubuntu0.8`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.6-1ubuntu0.8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6-1ubuntu0.8.dsc' tiff_4.0.6-1ubuntu0.8.dsc 2399 SHA512:283556ddf55d97a5e93388c3dc6f233e77a9d041f399820a30ad449500c921479d2e3803d5865bbf40f2b7772aea5bc6c4fe6799a167bccc85781b6b0d88bbce
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6.orig.tar.gz' tiff_4.0.6.orig.tar.gz 2192991 SHA512:2c8dbaaaab9f82a7722bfe8cb6fcfcf67472beb692f1b7dafaf322759e7016dad1bc58457c0f03db50aa5bd088fef2b37358fcbc1524e20e9e14a9620373fdf8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.6-1ubuntu0.8.debian.tar.xz' tiff_4.0.6-1ubuntu0.8.debian.tar.xz 64356 SHA512:a36b70c147c9a7523a050c3c2d863253cdbe4c13ebb8dc55342b44a66c64fd991255b016618d08c90ec6f5ec4f3ad775823c9914c14451245d6bb33d241b3cee
```

### `dpkg` source package: `tzdata=2021a-0ubuntu0.16.04`

Binary Packages:

- `tzdata=2021a-0ubuntu0.16.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2021a-0ubuntu0.16.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2021a-0ubuntu0.16.04.dsc' tzdata_2021a-0ubuntu0.16.04.dsc 2136 SHA512:5b004d4f9e9dcb7a0240ab39ccf4e372886535372fbece88e02efaf671a9f1e97ac96c0d1f40a61aa985302cfcf48bbbad9de00d04306f012eeaef4ea0bdf8b0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2021a.orig.tar.gz' tzdata_2021a.orig.tar.gz 411892 SHA512:7cdd762ec90ce12a30fa36b1d66d1ea82d9fa21e514e2b9c7fcbe2541514ee0fadf30843ff352c65512fb270857b51d1517b45e1232b89c6f954ba9ff1833bb3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2021a-0ubuntu0.16.04.debian.tar.xz' tzdata_2021a-0ubuntu0.16.04.debian.tar.xz 101912 SHA512:f0dea129f545c609aa2c2e51d765d75dd344e31fcae96b8e881856df6d04faf8899df2be8ef3b234b13fa23976d14a56d77995770a58a7dde5c294e1a9dce426
```

### `dpkg` source package: `ubuntu-keyring=2012.05.19.1`

Binary Packages:

- `ubuntu-keyring=2012.05.19.1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2012.05.19.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.1.dsc' ubuntu-keyring_2012.05.19.1.dsc 1505 SHA512:42d1e29ed8de0f37c17ccf2284e11a465dd42f9bcda222991696f0b41ab0cf57e0b6d09b2ccf377c6f578c0527bdc4fbd3c1caf1ddb8f9ad3da9406d27fe5f92
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.1.tar.gz' ubuntu-keyring_2012.05.19.1.tar.gz 21072 SHA512:62a9e816ef2a5f882f0974e940b15240aecdcf556d5a84c250fbe7c82dadd2154e22a0c3799bac832aa53f9782062d8433f1a8f3d1e407471d7292a315a59351
```

### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

### `dpkg` source package: `unzip=6.0-20ubuntu1.1`

Binary Packages:

- `unzip=6.0-20ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-20ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-20ubuntu1.1.dsc' unzip_6.0-20ubuntu1.1.dsc 1630 SHA512:3c16ad1c49c5df79eaa9d5d6f7ce48e2f11f50e8f90f190a887ec78e9fdc8362bf1d9657df2198d88db25bf8c84c7de35e19ad3d91558988238c9b0b3c4b1a90
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA512:0694e403ebc57b37218e00ec1a406cae5cc9c5b52b6798e0d4590840b6cdbf9ddc0d9471f67af783e960f8fa2e620394d51384257dca23d06bcd90224a80ce5d
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-20ubuntu1.1.debian.tar.xz' unzip_6.0-20ubuntu1.1.debian.tar.xz 25832 SHA512:0eace4b03ea5c3760e5b5654aa8e51940f848ecdafdc445327d3ee837f33e039a6aa53b35c1d737e11800e41203488f3229b78292c712d488734cce4414b6543
```

### `dpkg` source package: `ustr=1.0.4-5`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-5`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-5
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.dsc' ustr_1.0.4-5.dsc 2016 SHA256:3c06f54e4c05e76bf7c4d7192bbf3a7b259372c7448a4245e8317115808cf7c9
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.debian.tar.xz' ustr_1.0.4-5.debian.tar.xz 24948 SHA256:a21e78acf82dcccef2893932ef7b85852419bfd9b18382e63c34e7710c1d7762
```

### `dpkg` source package: `util-linux=2.27.1-6ubuntu3.10`

Binary Packages:

- `bsdutils=1:2.27.1-6ubuntu3.10`
- `libblkid1:amd64=2.27.1-6ubuntu3.10`
- `libfdisk1:amd64=2.27.1-6ubuntu3.10`
- `libmount1:amd64=2.27.1-6ubuntu3.10`
- `libsmartcols1:amd64=2.27.1-6ubuntu3.10`
- `libuuid1:amd64=2.27.1-6ubuntu3.10`
- `mount=2.27.1-6ubuntu3.10`
- `util-linux=2.27.1-6ubuntu3.10`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.27.1-6ubuntu3.10
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.10.dsc' util-linux_2.27.1-6ubuntu3.10.dsc 3960 SHA512:e715cf0d8eb23bc832a860c2f25541082fc97e026518bc7ae7924003801173d6547a53c04fcff64efaa73ac8ea64ca4c76dc15c8c35f299d87f6b3016e84bc7a
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1.orig.tar.xz' util-linux_2.27.1.orig.tar.xz 3964512 SHA512:a450a0c2d26a6deaf5e53b8f6bddf59409aefb1f0aaf07393f68a418408fbc62c5da353c8ba53c7cac8ea6e3dddfad59161753d888c31f5ccea445e81accbad8
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.10.debian.tar.xz' util-linux_2.27.1-6ubuntu3.10.debian.tar.xz 89428 SHA512:649416382fee72ba67cbf251b3234918f12d6ec530aabbfe8c9c4ab040c70428dcacf89dfdc4d2a0eee463a66e4ae73a3f8706307e23b7edb77968408cd632fb
```

### `dpkg` source package: `wget=1.17.1-1ubuntu1.5`

Binary Packages:

- `wget=1.17.1-1ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.17.1-1ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1-1ubuntu1.5.dsc' wget_1.17.1-1ubuntu1.5.dsc 1935 SHA512:2e045b4df9a4801dd87600b42bbcdd76d6b34fd1e69b75f4602db6e5270892829330d005fa8f5497d3ee0f3b9c7cfb8e931558fab3e3af017dd49de563096224
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1.orig.tar.gz' wget_1.17.1.orig.tar.gz 3801442 SHA512:1e99f898669bdb6a330a53b40fac1fc563ad1ce9f6c7f2f25fe3f1cdd3a1a1f094e59c45a8f6497ab0c05d47cbc453ffb5fb6a5507e9a2c9ccf6cddda2aaeaf0
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1-1ubuntu1.5.debian.tar.xz' wget_1.17.1-1ubuntu1.5.debian.tar.xz 29484 SHA512:96374f4169644b85eaed940a76a39454e0e3187e5b1e34024073bb06d6d1577a9434f1b150310452ba68fb483dc29b7c7a59ee019a11d0e866153fc7ffa65f17
```

### `dpkg` source package: `x11proto-core=7.0.31-1~ubuntu16.04.2`

Binary Packages:

- `x11proto-core-dev=7.0.31-1~ubuntu16.04.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1~ubuntu16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1%7eubuntu16.04.2.dsc' x11proto-core_7.0.31-1~ubuntu16.04.2.dsc 2097 SHA512:88bf0075de0a3dd082933b403bad62dcb1f3b53b89653730eb8feb60d98a0ad178c098309204a20f88fc80c3eb88b40379564c555d91242e4c1b8ffdb65b5beb
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA512:efc583809c8fec8cee36873310658fb15edd54edf0117b7012b224ff3d38934731bed15cec3eddf0bf896035559b1a3eb4939f7d6a4e5ad8dfe2a3f1b2299230
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1%7eubuntu16.04.2.diff.gz' x11proto-core_7.0.31-1~ubuntu16.04.2.diff.gz 30062 SHA512:edfcf4a01f33fc9ad89b7777aca7a7b588891bf80cd1b42f5800591f7de6014901617eb34369b03f362faef045e55b277a83678e703a97e5f23989a4291a4a48
```

### `dpkg` source package: `x11proto-input=2.3.1-1`

Binary Packages:

- `x11proto-input-dev=2.3.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1-1.dsc' x11proto-input_2.3.1-1.dsc 1937 SHA256:c43dcce256561df0c239d24a5d9653cf651bfc949dc1a98bb450b1f23dda0b21
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1.orig.tar.gz' x11proto-input_2.3.1.orig.tar.gz 236302 SHA256:23f65ac55c36ea8c378e30b4a4fd85317c95923134e3fe46569741b94c8ed4ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.1-1.diff.gz' x11proto-input_2.3.1-1.diff.gz 5603 SHA256:c92b1b97ce557f3564bd5252f921c1bc510df00ef1a81323078181754b4a31ab
```

### `dpkg` source package: `x11proto-kb=1.0.7-0ubuntu1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-0ubuntu1.dsc' x11proto-kb_1.0.7-0ubuntu1.dsc 1343 SHA256:8923c65eb2193e49be47f32311eb03ad818545a55059672da26ed1f8127b4ba2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-0ubuntu1.diff.gz' x11proto-kb_1.0.7-0ubuntu1.diff.gz 14128 SHA256:2782403bed56d6e19aee719fa1aee1136abe152b008a0bab93732b313fed490a
```

### `dpkg` source package: `x11proto-render=2:0.11.1-2`

Binary Packages:

- `x11proto-render-dev=2:0.11.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-render=2:0.11.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.dsc' x11proto-render_0.11.1-2.dsc 1979 SHA256:5cebbcce7928bd468b0eb447d9da403e5228af1691549a529a9012d2f7d18948
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1.orig.tar.gz' x11proto-render_0.11.1.orig.tar.gz 124436 SHA256:a0a4be3cad9381ae28279ba5582e679491fc2bec9aab8a65993108bf8dbce5fe
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.diff.gz' x11proto-render_0.11.1-2.diff.gz 14527 SHA256:614b7adf6f08bdf25bc7fb565f048e2f94e290c3bd056fa2485e093eb887c54f
```

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
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

### `dpkg` source package: `xorg=1:7.7+13ubuntu3.1`

Binary Packages:

- `x11-common=1:7.7+13ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+13ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b13ubuntu3.1.dsc' xorg_7.7+13ubuntu3.1.dsc 2112 SHA512:f44f01592aa31bd39e8ba2bf895b4a2aba8d6e459bd366efcd42832265432dc9e4971a65b33a00018ff18398eb12a464b1fd24bbce12ad288afa07774a6a8220
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b13ubuntu3.1.tar.gz' xorg_7.7+13ubuntu3.1.tar.gz 289897 SHA512:23b97e0aef38e353c595ff2dc8277bafa79d7faf41613743989170d8d6d10aa06f365ff804f459b903428ec047f4c0ac9e2e879ba8cd4567f0baf70e7bccc823
```

### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2ubuntu2`

Binary Packages:

- `liblzma-dev:amd64=5.1.1alpha+20120614-2ubuntu2`
- `liblzma5:amd64=5.1.1alpha+20120614-2ubuntu2`
- `xz-utils=5.1.1alpha+20120614-2ubuntu2`

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
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614-2ubuntu2.dsc' xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc 2409 SHA256:0a8cb3d928d1327f70b998b713c10afd9cd064056f5973d48075cd3d0f7872ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha%2b20120614-2ubuntu2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz 156001 SHA256:e7743d4a96276ccffc4e171812e402a1f503f87df3b668ef0e58db6629146a18
```

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2ubuntu4.3`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2ubuntu4.3`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-2ubuntu4.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.3.dsc' zlib_1.2.8.dfsg-2ubuntu4.3.dsc 2535 SHA512:c4c661746b4883b35d3e8c54d1f0203a4487e76c15839f558c930b600d8716b0e8357e3452988b90c0eb99fbc0a6451dad3521cca8777dfbdb5df3fc78ad2951
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA512:a6abfd2d2d65ed711f82dccd75f366f491f7c53a0f5f8fb76d77e629f86a8de28fd19028b8d76ee7d8ab2eb2d5789698402104d42b8ef000dfe362af2d7c3fab
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.3.debian.tar.xz' zlib_1.2.8.dfsg-2ubuntu4.3.debian.tar.xz 19128 SHA512:c0472b7614851e7e4c8905847da63bd13a9f8ec46a9746ded69cee62994061d2ae028d2b6413b70dd993cb99fc5c9db519411aa1539048de17e1c8a482b6d062
```
