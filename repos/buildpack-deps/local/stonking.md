# `buildpack-deps:stonking`

## Docker Metadata

- Image ID: `sha256:06c7e4440b9af37069ee3980d1022a06a9372b00fde86130a31b1f7895a95ee2`
- Created: `2026-09-09T04:19:14.74500128Z`
- Virtual Size: ~ 825.19 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
- Labels:
  - `org.opencontainers.image.created=2026-09-01T20:37:14.403481+00:00`
  - `org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.
`
  - `org.opencontainers.image.title=ubuntu`
  - `org.opencontainers.image.version=26.10`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.3.2-2`

Binary Packages:

- `libacl1:amd64=2.3.2-2`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.dsc' acl_2.3.2-2.dsc 2604 SHA512:8376928f8a96880edce6e6f1073623ed03bf3da4489807d531c0ecd4c5ff09d19754007e3533922389134aa55a4b64d6f71caa7186133d5a5f559eecf7e33427
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz' acl_2.3.2.orig.tar.xz 371680 SHA512:c2d061dbfd28c00cecbc1ae614d67f3138202bf4d39b383f2df4c6a8b10b830f33acec620fb211f268478737dde4037d338a5823af445253cb088c48a135099b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz.asc' acl_2.3.2.orig.tar.xz.asc 833 SHA512:a425b385e3ce30e7146cf8b143ca269e3edd78af82a21dea76d10ea68215f9abcfb1ed8be24ce3b6dce24e6640df8d5d5f365a47399e37006a66c6a62a41fe41
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.debian.tar.xz' acl_2.3.2-2.debian.tar.xz 24296 SHA512:58f4f202baa58a6912f85682b967dca282981c1b8d57ffcda1cd67784b5e3f1865ccd1c452d06a50978649d3cb5198d2d5d23004e103b5bd89352a7c1904444f
```

### `dpkg` source package: `aom=3.14.1-1`

Binary Packages:

- `libaom3:amd64=3.14.1-1`

Licenses: (parsed from: `/usr/share/doc/libaom3/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `public-domain-md5`

Source:

```console
$ apt-get source -qq --print-uris aom=3.14.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.14.1-1.dsc' aom_3.14.1-1.dsc 2552 SHA512:e5ebb58470c5422d0bb9c1fedd3bdc61a1b4bef2101ba4a1ff93f801528020c121abad6a3aab194a1a160a9f985e0a047920684f4c8034b608163a70c65ce71d
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.14.1.orig.tar.xz' aom_3.14.1.orig.tar.xz 4468480 SHA512:b64fcc59161f382d4c668bfd486fd33df2b7f3d8055625901b2202f115486f7cb78e95d4d2c085a0a6d82fabce68883cf171755bbede6af901a72ff3e195f8e2
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.14.1-1.debian.tar.xz' aom_3.14.1-1.debian.tar.xz 20980 SHA512:c074f2249c43dce873deba4fc4f9dc56e4299cdda885e64c278bf181730c5dc9d8c297b65d7d085278f15ea1780b4fd84a8bd2c80e9ef47cd6dc5c8317d10939
```

### `dpkg` source package: `apr-util=1.6.4-2ubuntu1`

Binary Packages:

- `libaprutil1t64:amd64=1.6.4-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.4-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.4.orig.tar.bz2' apr-util_1.6.4.orig.tar.bz2 441511 SHA512:e3adaaa13c48a7394ed56f29b5543f247241487bb47fe4863bd097ba51a10bce650878b3554ceff7cd0af6ad1b09484b5c12c99bec1bb7679398a23179dd11ff
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.4.orig.tar.bz2.asc' apr-util_1.6.4.orig.tar.bz2.asc 898 SHA512:3317c2e9279652cadce5e90b1fd1683115a45b93a057f434d37e7a2003ccaf561a97a030e962c4a6e2c183ee77106fb608477fe73ebadb274fc9d01c186a8786
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.4-2ubuntu1.debian.tar.xz' apr-util_1.6.4-2ubuntu1.debian.tar.xz 41524 SHA512:d77578673c6e2e51392eeb059f4311911e97a51075b53c96e9d2437092302b47b22f4f171858a3a06181a96d8ce268b322cd4f5d52af5b72441c0c78c27f1cae
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.4-2ubuntu1.dsc' apr-util_1.6.4-2ubuntu1.dsc 2900 SHA512:5fccb508c99d19d06a587397c8a6f05cee97e39b4468bdc1555a55144299bb9d98b74303b18bca4a2b1e7adc037b335420739ebf883e37af3113373dfb9dafb9
```

### `dpkg` source package: `apr=1.7.6-3`

Binary Packages:

- `libapr1t64:amd64=1.7.6-3`

Licenses: (parsed from: `/usr/share/doc/libapr1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6-3.dsc' apr_1.7.6-3.dsc 2402 SHA512:4f8e25a2f05c2c0530e832f12b339ec0e44131f04e0d95008f345eba2bac88201e179a85fde6c2f1f86988fd16b2ded3d92bef4a471ef702ebabe8fa66b28cee
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6.orig.tar.bz2' apr_1.7.6.orig.tar.bz2 899670 SHA512:629b60680d1244641828019db903a1b199e8a19c8f27a5132b93faacb381ce561f88463345ab019258f1f1e8cfdf8aa986ac815153a8e7e04a22b3932f9fedd2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6.orig.tar.bz2.asc' apr_1.7.6.orig.tar.bz2.asc 898 SHA512:e20000b14e94f164a37c90c122f6e7469f2b26f62792ced4573a0aebc80d0a53d864f14ecf62c6f30531e5ab42b987ce7faffec1d9207acddfaa21378550e282
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6-3.debian.tar.xz' apr_1.7.6-3.debian.tar.xz 42384 SHA512:64ea438a1601a4e0c91c9da54f91e4bf4237d5b7b426c2bddf9a925f8590fe431c3b63c8f7fe4c7724d2c4b65bd54c50c35670467fe5985d8ef971e1b25853d5
```

### `dpkg` source package: `apt=3.3.3`

Binary Packages:

- `apt=3.3.3`
- `libapt-pkg7.0:amd64=3.3.3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg7.0/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris apt=3.3.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.3.3.dsc' apt_3.3.3.dsc 3132 SHA512:219f229fe64bcb077cb14fbb16d476f7643ce5eb42109dfed32181d50b8e51251f5ec9c1683b174730f15f69aceb2dbeb91c89970cb1009f8ca62e6cee9de469
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.3.3.tar.xz' apt_3.3.3.tar.xz 2530836 SHA512:f5d39c9cab190f642ad1a15b56ce31fd9faf5bd274149bcba6a067ad33adc56115c54216d653f0d61333e8feed56af7a8b9efcf8b63e4ef796a389b3c4e5f189
```

### `dpkg` source package: `architecture-properties=0.2.6build1`

Binary Packages:

- `native-architecture=0.2.6build1`

Licenses: (parsed from: `/usr/share/doc/native-architecture/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris architecture-properties=0.2.6build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/architecture-properties/architecture-properties_0.2.6build1.tar.xz' architecture-properties_0.2.6build1.tar.xz 5480 SHA512:f62b93a3167457a8c34346a77b4bda40722134f6986a1b7b62e4876261127afc8d4f52f0b9442153ed985f2926eeb5ba2248aa2db9890e96c58e1652a3a6a84e
'http://archive.ubuntu.com/ubuntu/pool/main/a/architecture-properties/architecture-properties_0.2.6build1.dsc' architecture-properties_0.2.6build1.dsc 2021 SHA512:0432d55556993abf40b2e8101737b5c34ba505014509ea25eafd20e6959808562bc8cd4bc04d83e230c6905bbeb0c7f9446f2061f2d77518091ffa3b3a9f7099
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.6.0-1.dsc' attr_2.6.0-1.dsc 2616 SHA512:2e9daa62daf5820d1a77f21c7265c3e3bba3fd1591d96c6e91b394b7f450994fdb0b53b468786e836eed037feb82ffe14b331a9f0fb33d89790554b4f3f82f31
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.6.0.orig.tar.xz' attr_2.6.0.orig.tar.xz 343608 SHA512:870d0c34fbaa7520aad058ecd6509fe8eddd17430781a16d1e80484d4947307a7c641f0449183cbac1da611a85f82c9bee2d2d7bff76170fc2195b123100d22e
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.6.0.orig.tar.xz.asc' attr_2.6.0.orig.tar.xz.asc 862 SHA512:4db494f751a1c99d100593b7405e419275e5763cb9af335f3a26a098c7fd87710e36df9055148525c4072be77971f41552d7d9a8de09f01807270ea10d40b513
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.6.0-1.debian.tar.xz' attr_2.6.0-1.debian.tar.xz 56048 SHA512:6f57085940555aa8a51f86e78369cebd1ac9262019dbe463425e5661c740141d4be66057cdf7af3f885d905b0234382e21790356ed1ea17151cf42d74f85f2da
```

### `dpkg` source package: `audit=1:4.1.2-1ubuntu1`

Binary Packages:

- `libaudit-common=1:4.1.2-1ubuntu1`
- `libaudit1:amd64=1:4.1.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2.orig.tar.gz' audit_4.1.2.orig.tar.gz 656095 SHA512:a47fec1041e11a76ad57b57bcf6e9b454188d95ec26cabf15e92e114d46c7c8f09ddb251d5aebef8bc7faacc6ccffe44c73543d8234af237548b4ad89a408fc3
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1ubuntu1.debian.tar.xz' audit_4.1.2-1ubuntu1.debian.tar.xz 20484 SHA512:8606d2e52178e985e6dba8bfade8d553b38597b011986abf0d066a5251d78add867af1b4f3586045091e120c7bfc0e670e5891c13c1dff388bcff54d50490f57
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1ubuntu1.dsc' audit_4.1.2-1ubuntu1.dsc 3024 SHA512:a10dc8ea6576bf755b2ba863070c0aaec4ff15f72e683b817147a49ed6976b98444b358e6879f9375e907fe76c4cdeb3482adfbf1e1e36f2c523308240cbcfb1
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.73-2.dsc' autoconf_2.73-2.dsc 2122 SHA512:e4a6ce4309b0a452020cc75e874cf546c32a1d7c59a59a5bdee2c75bd1aa9c9caebe1dd467516f8a9e00d349bd5ef075711cfa67933c25096a164eb6d51fe66a
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.73.orig.tar.xz' autoconf_2.73.orig.tar.xz 1417428 SHA512:be051d542f9bd93752eccbdc9b1f3cf1fa4069a153ef34edd5303bfdf162e24d56e33e70df1b978cebb8d1139a82417bb8299cfe6c38cff8613040a829cc624f
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.73-2.debian.tar.xz' autoconf_2.73-2.debian.tar.xz 21036 SHA512:f3d90c1d7cc9ba97099cfdf213e7f30c109d3df97bb46aff20f3b8d83c9fcbad80ce92e589009e8b146b747df2f89c2067ad7d97cb8d58621fd267525c698b01
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-4.dsc' automake_1.18.1-4.dsc 2483 SHA512:07127289935e9c054b444b075f9cda6f96da5f53d52e22e9adde56db221dacf85dc83cd1e817df5ea0b4fc0182fa03554d1f383b91a9186a0cf628fcc0e561e7
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz' automake_1.18.1.orig.tar.xz 1652392 SHA512:8baa16831416a953a743f4e3c0f55cea5ebefe0f5a7a0e390581981d4461d02dc9038415124e974b2ec390c40daaa241802cd7d42c6fafb793f87cf355db2a61
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz.asc' automake_1.18.1.orig.tar.xz.asc 488 SHA512:5a1f0e89a8f3826c766aa98617765f4a576dc278abb7a0a4c0fa04d27d15bf670b79853642914db58731eb4dc737f0b9ad65ba9a07b7bb227e763e90e2e54349
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-4.debian.tar.xz' automake_1.18.1-4.debian.tar.xz 22816 SHA512:8f2b36af1638a914fcfac3b3b47d39415f1d150f871ebe9c121078ab3d7ce0417c8d803e7d8d6abaa73f66bc8c0e06dfb924b543770b4574ebbc0716e7df12cb
```

### `dpkg` source package: `autotools-dev=20240727.1+nmu1`

Binary Packages:

- `autotools-dev=20240727.1+nmu1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20240727.1+nmu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1%2bnmu1.dsc' autotools-dev_20240727.1+nmu1.dsc 1706 SHA512:8cbe45df0c08044eca2c0622de4f9e31b2724de43d7373ad84f30250e9bfcf379a7b96a55f53842bade7f1fa6fedbc1247e95e1ae31b7482341b32e3270d5fd0
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1%2bnmu1.tar.xz' autotools-dev_20240727.1+nmu1.tar.xz 99752 SHA512:3f2eb7e5dd95943aee02eb91d4e3323ce775aa4be05a4eabb33b09e5f92caefb46de46a788309565d3b817f75198270c3909df5226e07b9ce6ce03ca0412962e
```

### `dpkg` source package: `base-files=14.2ubuntu1`

Binary Packages:

- `base-files=14.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL-2`
- `GPL-2+`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris base-files=14.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_14.2ubuntu1.tar.xz' base-files_14.2ubuntu1.tar.xz 112384 SHA512:90529cb7bc2d6d030f15521e779bbc7f493f35ac3c0160fec301cf9054303c2d42fce736a738dc76ca022ee58c2eb9602ff7faf3c6abf54effb5584d7750cef5
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_14.2ubuntu1.dsc' base-files_14.2ubuntu1.dsc 1738 SHA512:fa1f8d69011c45e844d5405205439a27cbd9b0039464c21d41f02171cf6b74b89af56e7812c66a6a49b84d45cdc6f95314006c8838e548868c32e1214ead6d0c
```

### `dpkg` source package: `base-passwd=3.6.8`

Binary Packages:

- `base-passwd=3.6.8`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.dsc' base-passwd_3.6.8.dsc 2044 SHA512:cacd3929c178191cacd4b08f810e28a76987938db2efd2c3a9a990ad8400f75f69760c21fc9c6b370bd7f181a678ae52a01817776972475f75b6d855dc72afbc
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.tar.xz' base-passwd_3.6.8.tar.xz 61840 SHA512:f8d58fa5fa7c4242793121f43220012b328d55796af69b2def61630de2a180bff3bc72e816a24d4ab96cc3dd98bb677b68f6d00f9ee54568189822959f8a475e
```

### `dpkg` source package: `bash=5.3-3ubuntu1`

Binary Packages:

- `bash=5.3-3ubuntu1`

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
$ apt-get source -qq --print-uris bash=5.3-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3.orig.tar.xz' bash_5.3.orig.tar.xz 5571836 SHA512:79a1800b6b579a1cc4247c67fc2aceed9a7197f2ea91a3528365297eee1b20a860af27d6d8cadc3c4a3c91a9f8ac9e04c34d7a5e80b605e1252adffedd26e932
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-3ubuntu1.debian.tar.xz' bash_5.3-3ubuntu1.debian.tar.xz 99008 SHA512:3cc40029e6d351005ca1819a09de71a3ffc3b31045f5e03faaf389dc6200f323a8e67e5802f272c40fb3d8e1bf9debb62ef4874782e9136820366fbae5d9cc93
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-3ubuntu1.dsc' bash_5.3-3ubuntu1.dsc 2246 SHA512:71f5f6d08cf747c2a0fd91c3e3b7c7df4af9d7b8b377a378e486af0df2b0cec1d0b1be42972a5dfa63b13e3e1102572871835e11aa21bb7cf47f33a0d0270e1c
```

### `dpkg` source package: `binutils=2.47-2ubuntu1`

Binary Packages:

- `binutils=2.47-2ubuntu1`
- `binutils-common:amd64=2.47-2ubuntu1`
- `binutils-x86-64-linux-gnu=2.47-2ubuntu1`
- `libbinutils:amd64=2.47-2ubuntu1`
- `libctf-nobfd0:amd64=2.47-2ubuntu1`
- `libctf0:amd64=2.47-2ubuntu1`
- `libgprofng0:amd64=2.47-2ubuntu1`
- `libsframe3:amd64=2.47-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe3/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.47-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.47.orig.tar.xz' binutils_2.47.orig.tar.xz 29034716 SHA512:3126a1064374d8da40d4d70630c204ed1e75d542c447d53fca9778c7ceff095c28e9b445e15a313fef9729082d7966471ee6b5b715d479aa6d568528743e1d98
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.47-2ubuntu1.debian.tar.xz' binutils_2.47-2ubuntu1.debian.tar.xz 136408 SHA512:ccfeead8ad8da2771afd0e2f61b54b33567f0051a096d525212f6746460d35a30fdbdd741869c96e668cec663093e2a127cf4dd8ed4dd98a92a3457182c6e8e3
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.47-2ubuntu1.dsc' binutils_2.47-2ubuntu1.dsc 9021 SHA512:002db8e6d970cc2b42a850441f317bdbecd430c69e832f9ca510c7b62d27efb765afe79453ff23c5355c3fe8b448a69f3eee8552502dc92b6e9e8422b2b526f2
```

### `dpkg` source package: `brotli=1.2.0-4`

Binary Packages:

- `libbrotli-dev:amd64=1.2.0-4`
- `libbrotli1:amd64=1.2.0-4`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-4.dsc' brotli_1.2.0-4.dsc 2263 SHA512:a81f16a996b89898575b138053fb41161ca5afbcc621296c7616bbf43db0a3ad707e17ba5a49c31b34b9ff00ce4973371c34903bebdc9e17fef0f0faf230efb3
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA512:ceb2a1a5661296885a2f67bd2d6b02ad467cdc5fb39a82ec8e5fde26633ef4df354ebf7491c8442b090cdd38dc607857c4f9bee8aebb8ff63d44ae7322faceae
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-4.debian.tar.xz' brotli_1.2.0-4.debian.tar.xz 6440 SHA512:9f71c9731d86f185e1f699faa7668b678acaaf5fece29faedf307f61a4e93a3335d84d8b64d1bf7c7edea3d1f5672a0be0aa31f8c17658911d335ec57ad73f01
```

### `dpkg` source package: `bzip2=1.0.8-6build2`

Binary Packages:

- `bzip2=1.0.8-6build2`
- `libbz2-1.0:amd64=1.0.8-6build2`
- `libbz2-dev:amd64=1.0.8-6build2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.debian.tar.bz2' bzip2_1.0.8-6build2.debian.tar.bz2 27136 SHA512:a7efd355101eb9751a90ad9d0d068a105f5ead3d69faa85074c31bb2ca61e7892270d40c476167814942765e7401b137a580d3eea5f2b67e0f6fefd309eb3072
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.dsc' bzip2_1.0.8-6build2.dsc 2205 SHA512:e8422344d455bce7894722f57089c62ca441fec37a69e33c6444b05eb141ad6ed74dc6a86dd8d637d98f31ac2111900a113c29d7062687a4c7db07bb53b9eb7c
```

### `dpkg` source package: `ca-certificates=20260601`

Binary Packages:

- `ca-certificates=20260601`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/ca-certificates/20260601/


### `dpkg` source package: `cairo=1.18.4-3`

Binary Packages:

- `libcairo2:amd64=1.18.4-3`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.18.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.dsc' cairo_1.18.4-3.dsc 2784 SHA512:e7812a44247ec018fd06a35ae4743c0f6bf5264823e977d6310546e3b23ba949528b559a5ed0a8fe21432ad7c29251929a2ee63f58a3ff8c1df6cc0b316a7218
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4.orig.tar.xz' cairo_1.18.4.orig.tar.xz 32578804 SHA512:863679f817ed67dc2c916c035d740916e27e7e69c04fca63936e37d274e7f4c79848d16c8f7c481798864602e8847c489f698df89b785cbc576c925dbd513316
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.debian.tar.xz' cairo_1.18.4-3.debian.tar.xz 29988 SHA512:be2227bc8df8de7081e6b2162595d11210629510b6916d405af47a2a90a21882991bfd4e06d061935ef05de213a2c0eaeac2be5ba1560435f05db641d013c441
```

### `dpkg` source package: `cdebconf=0.280ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.280ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdebconfclient0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.280ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.tar.xz' cdebconf_0.280ubuntu1.tar.xz 287352 SHA512:24bb2f3083730194bf76ecf9039d92429550e5e3f52aa417ae628b9805433b42227e56941671d7c549f86c0302c43c22e3b62b3d01d609b6f79869e3e2ef53d7
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.dsc' cdebconf_0.280ubuntu1.dsc 2873 SHA512:bd0f7dd6a9e3b19040f726c966775955569f29c4f63c1a6680549a42f8bd591a93574346f0dba3fd5f46f60b2cbe75d77422fa09e85e908c1ea6a83b390ef1a9
```

### `dpkg` source package: `coreutils-from=0.0.0~ubuntu29`

Binary Packages:

- `coreutils=9.5-1ubuntu2+0.0.0~ubuntu29`
- `coreutils-from-uutils=0.0.0~ubuntu29`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`, `/usr/share/doc/coreutils-from-uutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils-from=0.0.0~ubuntu29
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu29.tar.xz' coreutils-from_0.0.0~ubuntu29.tar.xz 7804 SHA512:f155fcff30302d25cdecfbfee686f1b36702a30625836ea7ed0f5a10186a28aa1f5eec5852688742d1a2544045b4e023d29998d8732499b6df4550dfd2615a7a
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu29.dsc' coreutils-from_0.0.0~ubuntu29.dsc 1958 SHA512:3fd35a24f1b45b55c4786e976f709a6b03b0c0b66e89bc068ae20adb0bcff65bab8f3fcca43b8e7721471d5aa4345bfefe994c6434e74503dda9d7b3820a9a57
```

### `dpkg` source package: `coreutils=9.10-1ubuntu2`

Binary Packages:

- `gnu-coreutils=9.10-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/gnu-coreutils/copyright`)

- `BSD-4-clause-UC`
- `FSFULLR`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-3`
- `GPL-3+`
- `ISC`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `curl=8.20.0-2ubuntu1`

Binary Packages:

- `curl=8.20.0-2ubuntu1`
- `libcurl3t64-gnutls:amd64=8.20.0-2ubuntu1`
- `libcurl4-openssl-dev:amd64=8.20.0-2ubuntu1`
- `libcurl4t64:amd64=8.20.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

- `BSD-4-Clause-UC`
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

Source:

```console
$ apt-get source -qq --print-uris curl=8.20.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.20.0.orig.tar.gz' curl_8.20.0.orig.tar.gz 4220899 SHA512:0d8798d854a32d86ec260fdfabbcf983521a56589d8e5963543a88119e57d231c4a5f3e64737cff61845d837684c73ef58eff92f9c921ef03d87c1d37531e6bf
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.20.0-2ubuntu1.debian.tar.xz' curl_8.20.0-2ubuntu1.debian.tar.xz 56828 SHA512:8c6af76d9bb534c3904a8a4f21b7187ecc9370c3121c7f1f05c2dd404f2811a7d457fde290c5bc7727fe3c1cea869620aaab844181f9c62c24712499d2b82485
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.20.0-2ubuntu1.dsc' curl_8.20.0-2ubuntu1.dsc 3014 SHA512:649cd6b2db93fa9d92567a14463fd6d83c545dcde75bd4d59deb88904ea5d76342ed7d93b30db17b178fce7e3dad76cba3860acd4959c0fd62d439596183771a
```

### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-11ubuntu2`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-11ubuntu2`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-11ubuntu2`

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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA512:e94075d09b38a50138b782323de286deb7b15008064f07df4fa682e94367e829d9bfafef48d5478f730fef8fde536bcc6d54cab0452b76473a3c620b3dc18fa2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-11ubuntu2.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-11ubuntu2.debian.tar.xz 103980 SHA512:f8edbf1411fe955e01c4872714ff633c9e48f39e398276cbf7e5405f94fcb45ea7d4b8a732350e88558a40e8ef951e4ef3e49957dcbe6ec3c25924ec8cf4cf17
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-11ubuntu2.dsc' cyrus-sasl2_2.1.28+dfsg1-11ubuntu2.dsc 3584 SHA512:e42423f6dd837bd94f1c0eebfcb94aff7d5dae2eaf46e6efbbe47afedd7efb004257fc39e7a4849642daacd03eb833b6e72d6205d701e6857e6db3eff55403ee
```

### `dpkg` source package: `dash=0.5.12-12ubuntu3`

Binary Packages:

- `dash=0.5.12-12ubuntu3`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `BSD-3-Clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.12-12ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12.orig.tar.gz' dash_0.5.12.orig.tar.gz 246054 SHA512:13bd262be0089260cbd13530a9cf34690c0abeb2f1920eb5e61be7951b716f9f335b86279d425dbfae56cbd49231a8fdffdff70601a5177da3d543be6fc5eb17
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.debian.tar.xz' dash_0.5.12-12ubuntu3.debian.tar.xz 48112 SHA512:6a115502740d976493edeaa38cb8b2c64ba38c71d44494f5a70502de7493e61402826f452a39bd405005e6feaa3b58a7f1f86d20a0034a81d9c00a943e398e3e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.dsc' dash_0.5.12-12ubuntu3.dsc 2060 SHA512:ebf6df8d5cf0b0a64bb1661f63608968fb80a0e422d1b7cd923a37c781da3b7f07c6c2ddf18b84980210604e74dd39915e9d3affb1697c7501c0ee5c85b40088
```

### `dpkg` source package: `db-defaults=1:5.3.21ubuntu4`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu4.tar.xz' db-defaults_5.3.21ubuntu4.tar.xz 2896 SHA512:6314f039a0cd290dc030fc62dbcda70154bf44e60b28e60a3843708aa6806037466c30da165b1c02ac3e371d0e8e1dc6470c1021457ab1e10ffd58014ebff800
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu4.dsc' db-defaults_5.3.21ubuntu4.dsc 1619 SHA512:5bfc537d793b41008adef1d964f22d3517c66820d3b007984ad541e8a69235f3250c6f597922127b42ecef450579314f6c8055dbd04ccb509aeb662eb2158a21
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-11`

Binary Packages:

- `libdb5.3-dev=5.3.28+dfsg2-11`
- `libdb5.3t64:amd64=5.3.28+dfsg2-11`

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
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-11.dsc' db5.3_5.3.28+dfsg2-11.dsc 2032 SHA256:0550eb464a02703e35d86fbc4a7ac0736ab30b2a0ebe0818c490f7106d1d4230
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-11.debian.tar.xz' db5.3_5.3.28+dfsg2-11.debian.tar.xz 36580 SHA256:701601b7398c1ff8714594287db6c042b2cbc2e15bc98e85afd77c4324d3e3aa
```

### `dpkg` source package: `debconf=1.5.92`

Binary Packages:

- `debconf=1.5.92`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.92
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.dsc' debconf_1.5.92.dsc 2202 SHA512:d476203835f48e83eab16254520708e4283388869743fdc90d3aafe3a20e5db0b6a2575f512ae5e99144ada6b0527638c7a118ed99843d16a8a610ffeac90377
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.tar.xz' debconf_1.5.92.tar.xz 610068 SHA512:7813912769918b5fe52902a09dce6747f9a81cd3f3c6388323e29d33381f48902ec2cccdab6d6f8bc92b06996ba760141155e2ddb948ac06b757bb25a70d2e42
```

### `dpkg` source package: `debianutils=5.23.2build1`

Binary Packages:

- `debianutils=5.23.2build1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.dsc' diffutils_3.12-1.dsc 1875 SHA512:1560e462c0645f104cb7e37e1c6d82d0de0f7cd0a31ea5676d3604dbcdbb4ecd325123057ce96b6da3b7d2218a49fc9392528893321920b81c37f325ed710735
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz' diffutils_3.12.orig.tar.xz 1938800 SHA512:10b17cf1dcdfa9ca0e5db91d62c4a079ebe9fd7eafa3aaebd4eb7e6206e4d753f348496622aa281e1bd7f7fcde65ce4a886dcc4acbb59332ef980f224197b4e4
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz.asc' diffutils_3.12.orig.tar.xz.asc 833 SHA512:8eb59b40156741fbfcac947f29f76aa0eefb9c8f819206cab9474da0ffe0154c6aa8b38435eccdd82ceb8c3565a6c548e8d2a0f771f1e8e1af15635854ec9c62
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.debian.tar.xz' diffutils_3.12-1.debian.tar.xz 14752 SHA512:e2054eac9f98935f28d8335e2d06ac7ee55bf9d1f0ea0d4ff0eed2efe2e2cb2e717d732f04a6197027a8146e78931cc13bbb96dc3223cbdecb4e259549125515
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.30-1.dsc' djvulibre_3.5.30-1.dsc 2652 SHA512:6e7a6b84258f93fb6570baae4ae9095c08c024a6db4356063524ffc7d1731b53ab8e37a69b5ac5b330d4a10d4488ca803aa34900568ed9dbbe23dd604d20881e
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.30.orig.tar.xz' djvulibre_3.5.30.orig.tar.xz 2959648 SHA512:2f7c797af5de31b984f5b6a8b8b51355f222a408f5c69eb99f55a6045ff9658cb04525be45c7873e3bf282147d96795c6350d0a666c69fc604b266993d17d4a3
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.30-1.debian.tar.xz' djvulibre_3.5.30-1.debian.tar.xz 16344 SHA512:0f9a527917a8f8341005a61838db8dbc30c704e2593afc1f0becb43515c7e85c6ac75ea3addb1382c4b126120a471a3e5afe583b11bfdf441a2e7fb8e908c32f
```

### `dpkg` source package: `dpkg=1.23.7ubuntu1`

Binary Packages:

- `dpkg=1.23.7ubuntu1`
- `dpkg-dev=1.23.7ubuntu1`
- `libdpkg-perl=1.23.7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.23.7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.23.7ubuntu1.tar.xz' dpkg_1.23.7ubuntu1.tar.xz 5773036 SHA512:94489c924b7d8588ea156fc9593fb576c1fce1b6e159d5095aacbea33c257459af523f77a5c471bbf54f3fb7787c554e90705e40d048db28c00d2e756525c6df
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.23.7ubuntu1.dsc' dpkg_1.23.7ubuntu1.dsc 3482 SHA512:b8af1554884f9057bfca85a0dc20a7c18f6ef1773b4ab423148360b069b99bed9624c8fdbbf9c0cc0626df9ea993b3f833ba7c2112c12157fd4d7696b3e8dc3a
```

### `dpkg` source package: `e2fsprogs=1.47.4-1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.47.4-1`
- `e2fsprogs=1.47.4-1`
- `libcom-err2:amd64=1.47.4-1`
- `libext2fs2t64:amd64=1.47.4-1`
- `libss2:amd64=1.47.4-1`
- `logsave=1.47.4-1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2t64/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.4-1.dsc' e2fsprogs_1.47.4-1.dsc 3138 SHA256:3101f69bfafa37124a9e2238107324e899ac7c88760b542fe416962ae4569c0c
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.4.orig.tar.gz' e2fsprogs_1.47.4.orig.tar.gz 10106395 SHA256:2cec05f39c20ee621f14926195664e66e6017190ac8e4bbdb16d86082e43c5da
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.4.orig.tar.gz.asc' e2fsprogs_1.47.4.orig.tar.gz.asc 488 SHA256:c5a4b6cbf8e57dd83d239b23f5e847ed32bedab005d90e3334889b0662383ac7
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.4-1.debian.tar.xz' e2fsprogs_1.47.4-1.debian.tar.xz 94496 SHA256:a288244fa6d7e1bbe11526417772e0c41b494e78372bbe275bd86aa8fdd6776c
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.195-1.dsc' elfutils_0.195-1.dsc 3416 SHA512:b11cf44c5915309cf2084df4bcde6ec256e323f45f75f78b37bc38477c0c94c748d2cb28945df18862c0a41f57f65db90f1f7163c472f1c6a9a10d0bb4d06107
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.195.orig.tar.bz2' elfutils_0.195.orig.tar.bz2 12032640 SHA512:e1e1fdf4f7f72bf520deb0103bb8fd208dc247bab14af100c6fb56d38c0ef6c6d54ff5bd15b84e4f70e2b2ea481e5999fea2842360f8932a861122df79b5fc8f
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.195-1.debian.tar.xz' elfutils_0.195-1.debian.tar.xz 44136 SHA512:3a775d24e3a94d632cd7f9cfec38065ea47034de0360071c1c7abd88c05b04d81288093b376d9bac586040dfb564a7fd457662cc7696dbfb028702c8914b16cc
```

### `dpkg` source package: `expat=2.8.3-1`

Binary Packages:

- `libexpat1:amd64=2.8.3-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.8.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.8.3-1.dsc' expat_2.8.3-1.dsc 1970 SHA512:4a5388f6246cd407fca724c1ac0f654df86d40e53a9bdf2431dd1b7c5d020896137a648638977b01eb0cdfdb997f686c61353fadca52120e2245ea0c41c0bb36
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.8.3.orig.tar.gz' expat_2.8.3.orig.tar.gz 8464226 SHA512:547fe1a3183f75edd23e925ab4151ef7a3afa5f65329784456374d733d54f04e744257239868d4a6c1a21e17edcc3c1eced7b1ed9885cec42006444323fd47e5
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.8.3-1.debian.tar.xz' expat_2.8.3-1.debian.tar.xz 14044 SHA512:958dcf45edb2ad077a700c4b6b243eeedf95735c45bd21373d906b4c4387d1dcfddf0746e112506aecd052fb0f2881c26f4dab701b3ba9163596e50b454f1737
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.11-1.dsc' fftw3_3.3.11-1.dsc 2409 SHA512:edaf1301347889d6ce6592aa5367f6b743a2fc89c666470a43fc6f8d2cd8bbaff8a023ebe443fe932062e1076777296f092da612cfab7ece19cffc35c4e5bd40
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.11.orig.tar.gz' fftw3_3.3.11.orig.tar.gz 4310712 SHA512:ca1bf80490dc6955a0ab49b1af05d6658c2ecc0968b3bde5b4af22271e47d30cd38f6f8347e8e6124091b6a17717447942bee95f94ca29574ba71c4d167af351
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.11-1.debian.tar.xz' fftw3_3.3.11-1.debian.tar.xz 14660 SHA512:c0a6246e5e99f77eae7f2ce6f02af9ab74f83eaed8c308e1243e33454b5fd1fd6773f15b851722f57c4548de5f3cc0c857c7d00c416b7cc9eb9efe833350fe81
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.47-4.dsc' file_5.47-4.dsc 2268 SHA512:dd4636844ba1892fa1bea86392d8989eba8df834dd57b11d285ced16989a72daf9f9cde93f8557a28c247122454cc30a27ea460f1b4ed278cb7361ff86a5d986
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.47.orig.tar.gz' file_5.47.orig.tar.gz 2676776 SHA512:a19c1f2b584bcfa70d4a02545667a90ff9e069523a5fc7b84d79b2b32cb7e59b73c555943784a13d56fa6d4618e18a254fd6102187def1a4a7d936b41ae7ce31
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.47.orig.tar.gz.asc' file_5.47.orig.tar.gz.asc 169 SHA512:e5e704b0f8fbbe945f7c7be2f5cc493bf51407acd5c4c0b5a4ec9335f2bbcc2be7ef04f1f143b9ee109ad425ed77a71cf8a97c7394737983013715b4f654a835
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.47-4.debian.tar.xz' file_5.47-4.debian.tar.xz 40072 SHA512:705946c0aca5dcc941f13d4cc4e0bd43deda71ceff648ac65ba28e404bfe55dd3846b7ac8d2c742608de24c51843eee6a4dffbe609538e9ad6947a40135764f5
```

### `dpkg` source package: `findutils=4.11.0-2`

Binary Packages:

- `findutils=4.11.0-2`

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

Source:

```console
$ apt-get source -qq --print-uris findutils=4.11.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.11.0-2.dsc' findutils_4.11.0-2.dsc 2288 SHA512:6537e53ec828f5177c024b26d4a8571288a03d3ee077a115c84dbee3bf079578e050633c7e5ede99417a4bebaca469531cf0329949191a8629c61f953b30a5c4
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.11.0.orig.tar.xz' findutils_4.11.0.orig.tar.xz 2451424 SHA512:1b667c5363b599135ceabab6b4b5388dbee6de4e7fa301f5dfefc854473e442fbfe7dda93a28a70505c026987acd375d13169f76d18da49d29c1fb2e09c83fef
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.11.0.orig.tar.xz.asc' findutils_4.11.0.orig.tar.xz.asc 833 SHA512:00847206d4656ce6aed297b675493d9cc7c052656aaca27feaccea432dc8274de1a39bb306b031209427c59e62497e7201f464df8fe32191f4cb711c929e46f4
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.11.0-2.debian.tar.xz' findutils_4.11.0-2.debian.tar.xz 34072 SHA512:ad023ef320d7fcb2df4603d0463dea58f4670f5eff970b30834b2616453afc9c6fa11ff83b46e871bfb38db9327ddded351e4a1f22c1e938b16e741fc75f20b4
```

### `dpkg` source package: `fontconfig=2.17.1-5ubuntu1`

Binary Packages:

- `fontconfig=2.17.1-5ubuntu1`
- `fontconfig-config=2.17.1-5ubuntu1`
- `libfontconfig1:amd64=2.17.1-5ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.17.1-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1.orig.tar.gz' fontconfig_2.17.1.orig.tar.gz 622045 SHA512:2a2df9b28cbb4952db7b2dab28ac969435afa7d162b6f888169a3908a41b4134bb9710fc08984fb8a30c39314fb813e1598f002e1efa207b5d5b19d37bed9d3c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-5ubuntu1.debian.tar.xz' fontconfig_2.17.1-5ubuntu1.debian.tar.xz 33512 SHA512:457004b577b1e1892341ab55fd0f32447f21dd87e58d10820ce3f82e10188e7a564d70def3619872bc91f88abc918b7175a9dc31a585542b16d92a6e2d0f56eb
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-5ubuntu1.dsc' fontconfig_2.17.1-5ubuntu1.dsc 2787 SHA512:612090a100cc99d3d6f0d02c567faeab16e8c9aeab9e0c35828297a458ac27241e724f97763c5684b02aa018f97e4332534228e154aa609419f599e8e64ee288
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-9.dsc' fonts-dejavu_2.37-9.dsc 2531 SHA512:b7610502725487338a3c8912b41e2f6094586fbee420b4c328fe0012ba5a5472b3bb3fd7a52c77180fd93ca5778dd14d8948e39b2b547b922ddd746756c89b25
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA512:e61fc8c675ef76edb49dd9a8caee62087280929bb8144b52aca2f8def30025c56246589ad8a6a806b9574e6876eedd16d57c70a6ce9c86817a2dfe39d8a2bb2b
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-9.debian.tar.xz' fonts-dejavu_2.37-9.debian.tar.xz 13340 SHA512:7eb8b369d821fa0bec91af6da298fe186a416b238dfcf007c1bb2074cc40c6d2e121c335b595fcb137ec011fad1c9d768aedff303beacd5685722ad19043f25a
```

### `dpkg` source package: `freetype=2.14.3+dfsg-2`

Binary Packages:

- `libfreetype-dev:amd64=2.14.3+dfsg-2`
- `libfreetype6:amd64=2.14.3+dfsg-2`

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
$ apt-get source -qq --print-uris freetype=2.14.3+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg-2.dsc' freetype_2.14.3+dfsg-2.dsc 4011 SHA512:c3e6a847bec59e8eba53208df5446916b086bbb4bacd4efad8967afafbed62904dcea992962066daa6a6bd9e7de3579b4492570c0206096bdcac94b0eb05feae
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2demos.tar.xz' freetype_2.14.3+dfsg.orig-ft2demos.tar.xz 347960 SHA512:e59c1266010330a8cbfd25dec096a72ce7539b64f9c057de062a281261b3ad658240f58e75b53d7a880d7ad5e020206316a6e9e82b03dec2e4d999f3f56cb39a
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.14.3+dfsg.orig-ft2demos.tar.xz.asc 833 SHA512:c6bf87617bedec1430dd75e9d48e00b9994f9caf13d8721eb7059597e617ec7b51aac260aa644f82e4c54f12494cdd57ba21cec657f548b29b57e16576bc7865
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2docs.tar.xz' freetype_2.14.3+dfsg.orig-ft2docs.tar.xz 2176200 SHA512:f5d9bdd5119d353533a17366bfbe6d847d079f908137b1353cb9b6ce2e9ae5998dcaf7c888eeceec22b162cdb14256c6e7fefd75057250321fbcd9fcafc068f4
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.14.3+dfsg.orig-ft2docs.tar.xz.asc 833 SHA512:df8bcb57839dcab5734f21eebc3b3db4b3656415695e87d86e44996e03d79e6507933a433633005fc004605432bd96d43d69efb140ab84b9c1136ca9c069fdba
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg.orig.tar.xz' freetype_2.14.3+dfsg.orig.tar.xz 2247556 SHA512:86c66805f8b578e3ffb27f7d2b5eb60b26d37bcfea90a9d1718ef93c6d0a75982246724dde3d3507dbf5f6d4e67b615001121e5ba3f1ff08b7fe613a54088c4b
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.3%2bdfsg-2.debian.tar.xz' freetype_2.14.3+dfsg-2.debian.tar.xz 44844 SHA512:6f588c6d4a549b48c1ab9c1c53a0f5779ba8b5c78d3e21babbed65fadc8a79e5a5d0ba155a7a34b3c161bbdc6bc0109e56e893d918f6c8831790d43898ff7dd0
```

### `dpkg` source package: `fribidi=1.0.16-5`

Binary Packages:

- `libfribidi0:amd64=1.0.16-5`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.16-5
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.dsc' fribidi_1.0.16-5.dsc 2014 SHA512:1a2442a7a3a9366e50de61af99e22a9e083537ac769e874d2feb41c955dd4b1a3203d2415353c0f2b55aa1d816f1fd58a18a9c1cc216a982617ece221a66a50b
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16.orig.tar.xz' fribidi_1.0.16.orig.tar.xz 1098260 SHA512:e3a56f36155f6813e3609473639fc533de742309f561c463012dc90b412a1ac7694b765d92669b2cbfaee973ca0e92fa5e926e68a1a078921f26ef17d82ab651
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.debian.tar.xz' fribidi_1.0.16-5.debian.tar.xz 9052 SHA512:de65575306f5f72a052e1276a06ed1dda56b192b3a8e141abc8730e3bc59a140b68134f09911ea665d838bb04d7a58d4a492472ba7cf4c967df9aa9748a1e3c6
```

### `dpkg` source package: `gcc-15=15.3.0-2ubuntu1`

Binary Packages:

- `cpp-15=15.3.0-2ubuntu1`
- `cpp-15-x86-64-linux-gnu=15.3.0-2ubuntu1`
- `g++-15=15.3.0-2ubuntu1`
- `g++-15-x86-64-linux-gnu=15.3.0-2ubuntu1`
- `gcc-15=15.3.0-2ubuntu1`
- `gcc-15-base:amd64=15.3.0-2ubuntu1`
- `gcc-15-x86-64-linux-gnu=15.3.0-2ubuntu1`
- `libgcc-15-dev:amd64=15.3.0-2ubuntu1`
- `libstdc++-15-dev:amd64=15.3.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp-15/copyright`, `/usr/share/doc/cpp-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-15/copyright`, `/usr/share/doc/g++-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-15/copyright`, `/usr/share/doc/gcc-15-base/copyright`, `/usr/share/doc/gcc-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/libgcc-15-dev/copyright`, `/usr/share/doc/libstdc++-15-dev/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-15=15.3.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.3.0.orig.tar.gz' gcc-15_15.3.0.orig.tar.gz 106236282 SHA512:eedf6b98c295572c9228baa2344960bf4afb9a05ee24adab72e08dbf8f3a9c90f6d62f0eb0728280cf5e45df4bbbc551b8502cd4953a1c776762de6e40fb1791
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.3.0-2ubuntu1.debian.tar.xz' gcc-15_15.3.0-2ubuntu1.debian.tar.xz 1098828 SHA512:7b15886742f969d5e380adc5731b64dcea1baa45e7b3046fdc4dd3deb6cb79aface3bea84476fbd0c11d0160dec057b306a2af8644c5aba7943db25c6d5ab3bc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.3.0-2ubuntu1.dsc' gcc-15_15.3.0-2ubuntu1.dsc 47485 SHA512:6a7b4f526e0d1b8b82c26646a9ce0ce4547aec1c8f260a013bd6981be13a113b1972e4bfd5d5f1cb0f7165f0ac5f7859ddbfec16c0322df4772f109fddaaed16
```

### `dpkg` source package: `gcc-16=16.2.0-1ubuntu1`

Binary Packages:

- `gcc-16-base:amd64=16.2.0-1ubuntu1`
- `libasan8:amd64=16.2.0-1ubuntu1`
- `libatomic1:amd64=16.2.0-1ubuntu1`
- `libcc1-0:amd64=16.2.0-1ubuntu1`
- `libgcc-s1:amd64=16.2.0-1ubuntu1`
- `libgomp1:amd64=16.2.0-1ubuntu1`
- `libhwasan0:amd64=16.2.0-1ubuntu1`
- `libitm1:amd64=16.2.0-1ubuntu1`
- `liblsan0:amd64=16.2.0-1ubuntu1`
- `libquadmath0:amd64=16.2.0-1ubuntu1`
- `libstdc++6:amd64=16.2.0-1ubuntu1`
- `libtsan2:amd64=16.2.0-1ubuntu1`
- `libubsan1:amd64=16.2.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-16=16.2.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16.2.0.orig.tar.gz' gcc-16_16.2.0.orig.tar.gz 112184330 SHA512:6eb6fb95b7d08335b4036f20c8794b1c009d5f8e0f227c2f3503813b48e8512a13044c639d7c409072d8c49a294a0d21d420349ec69c168a85adcede9604c8e2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16.2.0-1ubuntu1.debian.tar.xz' gcc-16_16.2.0-1ubuntu1.debian.tar.xz 643976 SHA512:d533b439e528248d124415b4c0b7da8b1b4ce589cb859179bcda9dfbf1669b39b609c1774fd6fe6671410926b776575cb07c7b0d33283352966c335adeb92136
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16.2.0-1ubuntu1.dsc' gcc-16_16.2.0-1ubuntu1.dsc 52995 SHA512:6995de1483386a3c07ee7d4fbb30b1b571c05145485b20ff32e3e01d65153fb535b2e82e737a21ea0ba937c7175870aeb168cdeb4cab65bb932a6761ce79f653
```

### `dpkg` source package: `gcc-defaults=1.230ubuntu1`

Binary Packages:

- `cpp=4:15.2.0-5ubuntu1`
- `cpp-x86-64-linux-gnu=4:15.2.0-5ubuntu1`
- `g++=4:15.2.0-5ubuntu1`
- `g++-x86-64-linux-gnu=4:15.2.0-5ubuntu1`
- `gcc=4:15.2.0-5ubuntu1`
- `gcc-x86-64-linux-gnu=4:15.2.0-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/cpp-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/g++-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gcc-x86-64-linux-gnu/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.230ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.tar.xz' gcc-defaults_1.230ubuntu1.tar.xz 58212 SHA512:0e5b7e8dff26799cd388a5f7e608f54053891dfc970de570fed556a059606a87f5a26447ba967990f4e4650f3a68303b65ec15c5c88a8fffb36c560d96209d32
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.dsc' gcc-defaults_1.230ubuntu1.dsc 38421 SHA512:71a160af405b437ecae8498677116f48f0457d0f4fc9ad53d825e9de41d7f2a99b0b3488650d9ec90f48149eb8db34bd7b79d0db827c36132de110a8715866f9
```

### `dpkg` source package: `gdbm=1.26-1build1`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.26-1build1`
- `libgdbm-dev:amd64=1.26-1build1`
- `libgdbm6t64:amd64=1.26-1build1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.26-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26.orig.tar.gz' gdbm_1.26.orig.tar.gz 1226591 SHA512:44aafe254f0950a8f5215d8f1337674f07b19f2a375f6eb19a7e39690028c80c3774b705c2b76b470ae74042b21f2ca77d02f6f57aa2ee50296db801220a3352
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.debian.tar.xz' gdbm_1.26-1build1.debian.tar.xz 16896 SHA512:81c243f1e1d6fcf4c8abdcc6f1c294863021a9c6ce8ff360c45ecc18357a1e21b6b3d89e530f7ba8c0e40aa9d85eb05d819941593ab3baffb3087c06a574bdee
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.dsc' gdbm_1.26-1build1.dsc 2258 SHA512:09891ef94fd16d1bd253657afd2a78811524a7b42a54ca50befa0500444c4c9c643aaa29ec9f6152265c35fc0cb8671fb2fd375b83291b50e78fc0509ea235a2
```

### `dpkg` source package: `git=1:2.55.0-1ubuntu1`

Binary Packages:

- `git=1:2.55.0-1ubuntu1`
- `git-man=1:2.55.0-1ubuntu1`

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
- `mingw-runtime`

Source:

```console
$ apt-get source -qq --print-uris git=1:2.55.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.55.0.orig.tar.xz' git_2.55.0.orig.tar.xz 8177180 SHA512:73a53e5e79e9c357884512ad9fe5788ce48c33fd7ebb49f7c68f63c872beb5c5766f4fd1a9d9a2d8c89c192dc801ac7339422e9eec644ada56215fe9803af741
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.55.0-1ubuntu1.debian.tar.xz' git_2.55.0-1ubuntu1.debian.tar.xz 851628 SHA512:7ae83b0fe4a69721c13f1ffacc4061eed878cb25adbe88848c1786ac88b942a77f042fe5d9decd535a355a8754b416321ba39802f922a3047f74e352785d9697
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.55.0-1ubuntu1.dsc' git_2.55.0-1ubuntu1.dsc 2656 SHA512:a2355e299f8aff006da0de4cf798be6b4f68c0a02dbf50dcbc21665f54908678896b076893e0447ff7f6825f62a097669e167f47930ad107bcbad6a7160af455
```

### `dpkg` source package: `glib2.0=2.89.3-4`

Binary Packages:

- `girepository-tools:amd64=2.89.3-4`
- `libgio-2.0-dev:amd64=2.89.3-4`
- `libgio-2.0-dev-bin=2.89.3-4`
- `libgirepository-2.0-0:amd64=2.89.3-4`
- `libglib2.0-0t64:amd64=2.89.3-4`
- `libglib2.0-bin=2.89.3-4`
- `libglib2.0-data=2.89.3-4`
- `libglib2.0-dev:amd64=2.89.3-4`
- `libglib2.0-dev-bin=2.89.3-4`

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
$ apt-get source -qq --print-uris glib2.0=2.89.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.89.3-4.dsc' glib2.0_2.89.3-4.dsc 5075 SHA512:0481d22b2561825a73132c155025a964c26facf3deb4e74381a6d455667bc20c92d31775bc05cd8cbcf2a893a3356055dbf3f906749f275ddc31e3450a48e45a
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.89.3.orig-unicode-data.tar.xz' glib2.0_2.89.3.orig-unicode-data.tar.xz 666552 SHA512:32c5e2303868cd80b85f83e94e3f1418ea050fde2f892db0463a41040db2ff0e6db7b29b0af5d0a7bd355976765d1f23ad947230d8c46696a6fd249fc465de6c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.89.3.orig.tar.xz' glib2.0_2.89.3.orig.tar.xz 5812420 SHA512:af6ba2f0832916e92338b809b7f4b34e0b02d58d68f216c2dfe9cb0e7b8944d70116a81e1e58fc0f18abceff168d2367817fd4d2ee3e0674dcbb83edc430ed6e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.89.3-4.debian.tar.xz' glib2.0_2.89.3-4.debian.tar.xz 145252 SHA512:eceab3640c952d9cd3c77f88474510930cd34a072cd4a1b051f50a9d94acc09d6b5276df063fcc7a9183c79ee95e3b887bef14334d462b2d9d1c46022fa065df
```

### `dpkg` source package: `glibc=2.43-2ubuntu2.3`

Binary Packages:

- `libc-bin=2.43-2ubuntu2.3`
- `libc-dev-bin=2.43-2ubuntu2.3`
- `libc-gconv-modules-extra:amd64=2.43-2ubuntu2.3`
- `libc6:amd64=2.43-2ubuntu2.3`
- `libc6-dev:amd64=2.43-2ubuntu2.3`

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
- `GFDL-1.3`
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
$ apt-get source -qq --print-uris glibc=2.43-2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz' glibc_2.43.orig.tar.xz 20297012 SHA512:25765f86bf54a22fc69dd13023ec9be59bd7e1f9d6ea1630cf21851898df2043bb8a01538c4b5fdd06495d0163289362b0768b391b0617f709b89a777168291c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz.asc' glibc_2.43.orig.tar.xz.asc 1018 SHA512:6e26f0edee146710bcb73c3890c455e8b479009f99d284c43ea695b73bfe45e4ba47d1460300ce8c7496689b0c21a1c77e6359e005957973648b86755160c8f5
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.3.debian.tar.xz' glibc_2.43-2ubuntu2.3.debian.tar.xz 522068 SHA512:ce62820ab900c8811da5c8789e5c22f731e6a3c5bcd1be4969cc6202d545c836d748264e50fa55e4d22f37715d27d70685257181c70313814389df52bc462b83
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.3.dsc' glibc_2.43-2ubuntu2.3.dsc 9078 SHA512:7df3df3b84f9434bd895a3f89de60bf4c65bbcaf068797160cd9e0604550c0f05e5ec22eff7e5d2175bdf45282e8f8d7f796d7b6de1fdc204f24ddb94ca97cb5
```

### `dpkg` source package: `gmp=2:6.3.0+dfsg-5ubuntu2`

Binary Packages:

- `libgmp-dev:amd64=2:6.3.0+dfsg-5ubuntu2`
- `libgmp10:amd64=2:6.3.0+dfsg-5ubuntu2`
- `libgmpxx4ldbl:amd64=2:6.3.0+dfsg-5ubuntu2`

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
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA512:a422b29024464aeb26c69f64be1bc37407d74e0290f44f67fc040fe38b97f3eb7aa6ba8380722ef36cac39816d1c4f24b771159fb86d5979ef0791dcdef708bc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.debian.tar.xz' gmp_6.3.0+dfsg-5ubuntu2.debian.tar.xz 40328 SHA512:3fb43e01cea284935bfd5b7334a5273b5b342561e651665010215e172a989b1840f0185cb1615c4e3bbba19c6ba1544d964de8b2cee32252ed3952644bb2efcb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.dsc' gmp_6.3.0+dfsg-5ubuntu2.dsc 2337 SHA512:746af799ad3fe14fe718ac03bf66ac806307218e89c191b97357772276803ee5c6e4c8a85286e0574e097046f81c0ad2fdc41ef52d28a8c42b1ca6ef2e50ed8d
```

### `dpkg` source package: `gnupg2=2.4.9-4ubuntu2`

Binary Packages:

- `dirmngr=2.4.9-4ubuntu2`
- `gnupg=2.4.9-4ubuntu2`
- `gpg=2.4.9-4ubuntu2`
- `gpg-agent=2.4.9-4ubuntu2`
- `gpgconf=2.4.9-4ubuntu2`
- `gpgsm=2.4.9-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.4.9-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.9.orig.tar.bz2' gnupg2_2.4.9.orig.tar.bz2 8086407 SHA512:4638016b390a0024fa0cbe14181c43a81991e4275043855397ef099b927985d175d32452fc15b06485623b9292662dd6da464b2e5def8b77b2e4e48a072ab521
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.9-4ubuntu2.debian.tar.xz' gnupg2_2.4.9-4ubuntu2.debian.tar.xz 109096 SHA512:1ddb8260d9b3425cdbb391c0da8da72eb35f7a980a33fcb6e1a15cbceb4cb76242c486aa064f27c652bce4ad71de62bb71295e8aa9e851efe480f11414b36b40
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.9-4ubuntu2.dsc' gnupg2_2.4.9-4ubuntu2.dsc 4873 SHA512:529de19f6901c67f12fbb3a3c0bc0c354ff17b395f3b5797794cac2e41e313ceb997c93a76cc78498cf7618c463a07e4ecd06ff6edeabb429a325109b4f4d07d
```

### `dpkg` source package: `gnutls28=3.8.13-1ubuntu1`

Binary Packages:

- `libgnutls-dane0t64:amd64=3.8.13-1ubuntu1`
- `libgnutls28-dev:amd64=3.8.13-1ubuntu1`
- `libgnutls30t64:amd64=3.8.13-1ubuntu1`

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
$ apt-get source -qq --print-uris gnutls28=3.8.13-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.13.orig.tar.xz' gnutls28_3.8.13.orig.tar.xz 7275324 SHA512:71bf189a836fd18d58b9e995d4bfcecdb0aae6129dfd44247b98422b2f127dd868f9905d28fad2ca05afd919a0e6b3c8eebb6b95804067d3a8dab31ebdc72453
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.13-1ubuntu1.debian.tar.xz' gnutls28_3.8.13-1ubuntu1.debian.tar.xz 178632 SHA512:d1747a97688e2fb22d74910296569f0ce20cf9cc62ee04113d21150b426bf7e13beaa2e3291846755694342205c3347d9be7e6e7cac38fd9415d3fa12ccbc69e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.13-1ubuntu1.dsc' gnutls28_3.8.13-1ubuntu1.dsc 3022 SHA512:844512437e4796ab1967a60aca01b1c7697b89a4369071471ef173d46da908038fb2aeb72d25e05da6d218b083e0698872d7317a94aba52de06d81abd275fbbe
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.15-2.dsc' graphite2_1.3.15-2.dsc 2535 SHA512:170410962fb3eeb91b73005728dcdf85e514ec1cf8ecf64328f80cd8d2866b057ea95d35404696ff18d6eb5c26a753e0237ae6a36a4e325d544fc36562765714
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.15.orig.tar.gz' graphite2_1.3.15.orig.tar.gz 13698237 SHA512:eb1f1772bfc4457d9aa68e99236b8cd6a01c7d93e97ac97f4d93d26db363bc785d71bb780dfdbced28e6e10d3e24eb281e0ff2b678bf57eca722a61f08020dfb
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.15-2.debian.tar.xz' graphite2_1.3.15-2.debian.tar.xz 15328 SHA512:00df7dc0db691fb8823392120440d83d952037ab48965282e3c3729a1c3eda860dc4d84af2d036ced4949c63e9f8b14c106c5aae28885ca38375d6b724e17e45
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.dsc' grep_3.12-1.dsc 1647 SHA512:267043711608634df53a28221afeacb510ebeb85c10bb69257f3860552704651852097f2c447c14728f1c0c4212bfdc42f9ad69cfd11faf4232d702da717fae6
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz' grep_3.12.orig.tar.xz 1918448 SHA512:c54b4db5a8b9afe098c088decd94977746305284d716666a60bac82b4edc0fae4acf828970b5b6fc7d58ecd549f638e17e6958f33a71fedcc7d7415b9228b161
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz.asc' grep_3.12.orig.tar.xz.asc 833 SHA512:333755fd9e5879436789a19e9593667d6fb96c2d1b876a1c391eb9cd75d10bb7fbc10215db9838280e6006790c818ef4583b1ae22318a833a5b69264ca15dbf1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.debian.tar.xz' grep_3.12-1.debian.tar.xz 24160 SHA512:b7e3aed1874a943a8fcef27e55040f64304c3ecd505b20e6dbec4ce9b5ec658de1b5434c21afe4f4cde31115cab5532ed728311b19c4ee99537697cd7ddb6ba0
```

### `dpkg` source package: `gzip=1.14-1~exp2ubuntu3`

Binary Packages:

- `gzip=1.14-1~exp2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3`
- `GFDL-1.3+-no-invariant`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.14-1~exp2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14.orig.tar.xz' gzip_1.14.orig.tar.xz 885748 SHA512:82aef53188b3e69b51b7ddab5b8c44a11a5b73c0039b22a315a0c7d244694feab0146748add4265901eb1b4c0cee8a9eb69594995f098830d964091af97079c5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu3.debian.tar.xz' gzip_1.14-1~exp2ubuntu3.debian.tar.xz 23876 SHA512:b49413b2fda234a58f7a1fc615c3c2c962db5052271ef69dca6cbc8a06c2b1b55757d4c038b636a813b25645c0638559039a89ae54202b46f3b98e2ccff1ba18
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu3.dsc' gzip_1.14-1~exp2ubuntu3.dsc 1953 SHA512:1d4b4dfa2133c2af4d4a8d3ad5f29883dc209bd708c8ae2636c350f7ef3bf1a7697c588e83d07a952208262eb7592c26a4085755189c1019248986b7e59b0dde
```

### `dpkg` source package: `harfbuzz=12.3.2-2`

Binary Packages:

- `libharfbuzz0b:amd64=12.3.2-2`

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
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.dsc' harfbuzz_12.3.2-2.dsc 2573 SHA512:6b71f1ada98e889e9af23ce1dd1208cdf0d1410d5989e9449e5e6cc0cb98d621ae1b1f209d34806f8a25c283352ed40cdeb7c20941d8c1701bb25268bbfac4a7
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2.orig.tar.xz' harfbuzz_12.3.2.orig.tar.xz 19282952 SHA512:2bb907d206edb93a9fb0856dc2e767d491f79f20cd8e8eeeb65f284f10b67ca9ae16b6a8e72ebbfedfeaa0199af7c12dbe675eb08b7c1fb61d2f5ca1fa406782
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.debian.tar.xz' harfbuzz_12.3.2-2.debian.tar.xz 19848 SHA512:3ffa4dcc11a31be67b2bd95a0b93b0a0dd337db61db9c84ece55734de26f1fbce4412493fffba6d246f19a2dcd005101167a10b02011ddc972b97eebbcb2bbe3
```

### `dpkg` source package: `hicolor-icon-theme=0.18-2build1`

Binary Packages:

- `hicolor-icon-theme=0.18-2build1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.18-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz' hicolor-icon-theme_0.18.orig.tar.xz 29624 SHA512:07db44fb6bec797445740832fa2b3ba56f5f335834161a26a4e5f767a8c45c0885ef1189e887b56752bd20c4b1aac101c5d4a395df4177cd3817ee5105db0d37
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz.asc' hicolor-icon-theme_0.18.orig.tar.xz.asc 833 SHA512:e00447c8918250978622a9465ac16181206deed977743d71faa068341f3aab4a1e98e70aed9f03e62806f2b3d8e1df20ff3b09332d0feda70d4532496154f0c2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.debian.tar.xz' hicolor-icon-theme_0.18-2build1.debian.tar.xz 9232 SHA512:640788eb0f80d3e67c707b4d2136e92c5a753af4920c03da4998bf442d99b5fa84897dd15bb88f4e99e8554ee81ada4820965265390c032823cc3ae85fdf1da9
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.dsc' hicolor-icon-theme_0.18-2build1.dsc 2349 SHA512:2be146bc8fbf91d145f24532d63d3d91d48e9929269435390906a72a66d3b7ddfa225d93bcf05db51b6e90ca17296dae9b41874712ca7d4fe89dbba22dd29d01
```

### `dpkg` source package: `hostname=3.25build1`

Binary Packages:

- `hostname=3.25build1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.25build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.tar.xz' hostname_3.25build1.tar.xz 12896 SHA512:b99c6e870198c1be17e5a4e68cecfe40e1f28b1e43595ab960c79afdd94877f0e34903dbb33d845060fa76e9ed64298c250bd27a03446ba6e0b61d135ed97e11
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.dsc' hostname_3.25build1.dsc 1543 SHA512:f9f180a2b477d4e3d5e08714d8978c961558f289086a0f221d0483d223fc9201512ba554c5e356102c438216ffaadcda6d21e9db9e644dce41652388878c454e
```

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
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1-1.dsc' imagemagick_7.1.2.27+dfsg1-1.dsc 5227 SHA512:1eb257d99e84acebafc1959e7042e82b926f3b9dded3dd14d510f4c9f51c3bcc0a09d992f0dda4731198497f9b678a972e1133a34407e553b507a288971d6473
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1.orig.tar.xz' imagemagick_7.1.2.27+dfsg1.orig.tar.xz 10512240 SHA512:3cc27c763b2748624b178e11d5cc21bcdb0edf9bbe489289c0a19e7701fa450b4d266ddf2efcd6a8025158f13c8f9dbadfa0cdc6588902ef005e89db78d08933
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.27%2bdfsg1-1.debian.tar.xz' imagemagick_7.1.2.27+dfsg1-1.debian.tar.xz 266576 SHA512:a8b57f875592f220734c291144355f001144e8f8e0823d4959aaa8019e0e91440363e1a8de6e2fdf40b7271dbcc6b63389bbce71b897a4b269892e832e977739
```

### `dpkg` source package: `imath=3.1.12-1ubuntu5`

Binary Packages:

- `libimath-3-1-29t64:amd64=3.1.12-1ubuntu5`
- `libimath-dev:amd64=3.1.12-1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libimath-3-1-29t64/copyright`, `/usr/share/doc/libimath-dev/copyright`)

- `imath`

Source:

```console
$ apt-get source -qq --print-uris imath=3.1.12-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz' imath_3.1.12.orig.tar.gz 604232 SHA512:32628dfcacb610310b81ffe017a66215cf5fb84c2e0a6ac8c94a68c048be3d2b97eb57965dd253770184d5824cce1e5440b8eefb2834666b273b3193ff108343
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz.asc' imath_3.1.12.orig.tar.gz.asc 287 SHA512:9b3978e44b531429aba42b9cc4969a470898d9d74652e3809edb0273ba9b127c471aec6570b5d352be738f59810091c0df2c70d39c16d2c32833d173b270f72c
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.debian.tar.xz' imath_3.1.12-1ubuntu5.debian.tar.xz 10260 SHA512:fef9caa05b4f9fda1888f20b1db00cac67b84de9cf9861bf9f43616c2f1f1fff89242898f90115d95fed9320296c600bae37feb009600d4b108d661ab1c2ea79
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.dsc' imath_3.1.12-1ubuntu5.dsc 2728 SHA512:fd692cc21a80dc915e837aa29b77c17b9c6757c88c8f82ca0f2288df477311791f93ed1aa322ed407bf953a3111dab007b19095042368191f1d52deea2a686a3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.dsc' init-system-helpers_1.69.dsc 2234 SHA512:f8055fa3cf3eaefff9178c737845464de128a3f4682c421c5a65b6e2a45d615e166bfbdb4326dedc98ea2426f243b1b24b51f59d0bf78b968b1558b44b90ccd5
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.tar.xz' init-system-helpers_1.69.tar.xz 45648 SHA512:3b08b93194523af989177616a5e8cfa1ffa9ba31650a09325a98e704f7e4e8291febcaeea8e66e32784ce45e286d136091d3d83a8416859368ae59b8897f3d9d
```

### `dpkg` source package: `isl=0.28-1`

Binary Packages:

- `libisl23:amd64=0.28-1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.28-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.28-1.dsc' isl_0.28-1.dsc 1950 SHA512:e652b387a3a70981c1a47d1124b041b8b36dd6e2131d35add701cac1c82a619093771e18aae4893d53b848be42c9ba04f51ac35256c9541dc71df33b8a93f3bb
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.28.orig.tar.gz' isl_0.28.orig.tar.gz 2995959 SHA512:deadcfa1b04172e11f6191bc88b0753a5d0c3b7354b4429143010274eb0cb7b5c3a10e2bf00056b6b2187e32a4dc6f6de6dad2633bc41be0bd761f2aeb96b2b1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.28-1.debian.tar.xz' isl_0.28-1.debian.tar.xz 24880 SHA512:e1328f37ef20c797f48b0d5d6e3520405553f5cfe8b8e40d13974d88bed25febe3c0e3c5ab22e1ebc7a09e68eff55c2ed4b572cc2918e8b9cebe4a2641535993
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.15.1-1.dsc' jansson_2.15.1-1.dsc 2070 SHA512:149d0e67a69b475bbcbd546b011082001407ed2b29f3bbb85da356c1064ddf3ec1258811aa72c67957dc367ed4b6cff71cbf6ae6fae4bd397ec57f9733fc1b92
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.15.1.orig.tar.gz' jansson_2.15.1.orig.tar.gz 197522 SHA512:4836c80f4bee23af3d15d4808199837cafdc1186b43902148cbc1252cbedfeb290fd7dc5841a3de25a7ced8605b5afcbe853ab1f422e07d194b54cd5fab30168
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.15.1-1.debian.tar.xz' jansson_2.15.1-1.debian.tar.xz 6712 SHA512:6c4f0005d599a66b8e5c9cdf4a80496c677935dd1ca7f95fb3eece5861bbe55b8124d0effe1c8cde2bda22514d514da5274cb91d7732e347cbac3268e1894a2f
```

### `dpkg` source package: `jbigkit=2.1-6.1ubuntu3`

Binary Packages:

- `libjbig-dev:amd64=2.1-6.1ubuntu3`
- `libjbig0:amd64=2.1-6.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-6.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.debian.tar.xz' jbigkit_2.1-6.1ubuntu3.debian.tar.xz 11240 SHA512:b7f74359529b23e83c075769e953f5348ecfc310d1a56af9b483303ef7f23c2e0ce6faffd1ec97674836ea110b742958d2108ed5b816952cdfab9e0d1e97ed74
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.dsc' jbigkit_2.1-6.1ubuntu3.dsc 2170 SHA512:7d718da05ee327cb9b2aa866be99129b82f63249bc6125e206ab689763672951ceead170decb268565a320b8a8fa86abe5a27b916cbbbb9793c06582ad7c2c71
```

### `dpkg` source package: `keyutils=1.6.3-6ubuntu3`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-6ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-6ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA512:f65965b8566037078b8eeffa66c6fdbe121c8c2bea7fa5bce04cf7ba5ccc50d5b48e51f4a67ca91e4d5d9a12469e7e3eb3036c920ab25e3feba6e93b4c149cf9
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.debian.tar.xz' keyutils_1.6.3-6ubuntu3.debian.tar.xz 17552 SHA512:8a6752c41e5646e5cc6754d9c9a068710eab9a5197f81094b5534dec56f39e0422ee7127310180ddb812921492e9fe3a3d47a66ec4c6540bd3ca6e2f4204976e
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.dsc' keyutils_1.6.3-6ubuntu3.dsc 2186 SHA512:8fa833d4b7cb7f9c2fa66b8f5d8367c7dc2c0f006bdc8d142deee558cc72e2bc927b2d866273f4098799812baa7eb06bad6ad09214849acc8ca8346d18003dbb
```

### `dpkg` source package: `krb5=1.22.1-3ubuntu2`

Binary Packages:

- `krb5-multidev:amd64=1.22.1-3ubuntu2`
- `libgssapi-krb5-2:amd64=1.22.1-3ubuntu2`
- `libgssrpc4t64:amd64=1.22.1-3ubuntu2`
- `libk5crypto3:amd64=1.22.1-3ubuntu2`
- `libkadm5clnt-mit12:amd64=1.22.1-3ubuntu2`
- `libkadm5srv-mit12:amd64=1.22.1-3ubuntu2`
- `libkdb5-10t64:amd64=1.22.1-3ubuntu2`
- `libkrb5-3:amd64=1.22.1-3ubuntu2`
- `libkrb5-dev:amd64=1.22.1-3ubuntu2`
- `libkrb5support0:amd64=1.22.1-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4t64/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10t64/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.22.1-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz' krb5_1.22.1.orig.tar.gz 8747101 SHA512:c33bfada5e0c035133436031d9818ad97b0ff08578691c832b743c55751a2cf9460501d3cc658ab79655ed7a0f9f4795ba94b363d6b616795d9bdca668825c52
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-3ubuntu2.debian.tar.xz' krb5_1.22.1-3ubuntu2.debian.tar.xz 114884 SHA512:7c44737442bd21f64516f2212d7a20ec6a8008fc3631f0d30c2b4afe964f2b77b445cd86f383b3c31a5bd003c845faed9df605f7dd763af490d8bd7a4bbcb328
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-3ubuntu2.dsc' krb5_1.22.1-3ubuntu2.dsc 3852 SHA512:b7b99290796f0aac007fab6f684079c764fb39b574ed99324eca6fbcd4be9134b3b03f2b7a3742e935a868a238d9cf45e9972588280ae78a6fa8600b4250f32d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.19.1-1.dsc' lcms2_2.19.1-1.dsc 2054 SHA512:ef3caf9d79f65657ec6777af135b337db0a39f8f9c0369238793c40c54109a1c8c1044717cd788a60039ff7c208df01d761fb747b9b6976f7442d9c288de676e
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.19.1.orig.tar.gz' lcms2_2.19.1.orig.tar.gz 5728743 SHA512:0c476a0c2ed7a4eabd149767c6e6fb372090dfd582b93ae738c9bd3dda94a2fc1c0b7da4b400422a3bc3650c9b98c9956ba9181b29f9b7c57f08763e20b7c8ac
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.19.1-1.debian.tar.xz' lcms2_2.19.1-1.debian.tar.xz 11996 SHA512:b257f465369c4acf014f815c569a2aaa88ea58d10154b5385e981234200eca829f4fa61026cb9ef6b3b2e544313fb0e30844aab462707ccacd90d62d333ef3e2
```

### `dpkg` source package: `lerc=4.2.0+ds-1`

Binary Packages:

- `liblerc-dev:amd64=4.2.0+ds-1`
- `liblerc4:amd64=4.2.0+ds-1`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.2.0+ds-1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.2.0%2bds-1.dsc' lerc_4.2.0+ds-1.dsc 2718 SHA512:0708a2f8f017269565b429698bd2ba42ef901ad17a124d6c2b7864fa5c53a6a94c864e085f4f33f8f5f16e6711126eba1aaa7986957205025eae96ff3da16a8f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.2.0%2bds.orig.tar.xz' lerc_4.2.0+ds.orig.tar.xz 351184 SHA512:c24a4581aa239b90f671c935ef898dc536b442d78e352d2c15624317be0f2e9cebbb7dd15bb0a76af19d3d43c9b39c4b081cdc7402865058a3c121593a370cf2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.2.0%2bds-1.debian.tar.xz' lerc_4.2.0+ds-1.debian.tar.xz 7232 SHA512:872188e6d23a7221f74d5482e933be8998c28510554b89b9a1cfc803a7a444d4cf171f5ab2d7445f2d9ffac077035de0628a3ae084952d1c6a0ad89d4a1bc25f
```

### `dpkg` source package: `libassuan=3.0.2-2build1`

Binary Packages:

- `libassuan9:amd64=3.0.2-2build1`

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
$ apt-get source -qq --print-uris libassuan=3.0.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2' libassuan_3.0.2.orig.tar.bz2 593917 SHA512:a591eda350ecbf4fe8568b5087f69830df31f36ec67e2a50672aacea9bee16020f374a0bface459aeac1897c048072415ab5962a97034ce6fa413100b2a427fb
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2.asc' libassuan_3.0.2.orig.tar.bz2.asc 228 SHA512:56e0a8288e498bbba504fdaa84060ef6dd30c72efd691d6d0e39069113a394f2da407d83adfd14f7ae25b8e8531f8e9dee859b52471261653dc2ed5f44ef22dc
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.debian.tar.xz' libassuan_3.0.2-2build1.debian.tar.xz 17596 SHA512:b4fc08de67862598c8440001b427ef8ce30e9bfcd15d91788ba8dc962a87711b36cd25006feda8a32121a43da385d3df5a4b19b0c4bc96799446403aeb2b0dcb
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.dsc' libassuan_3.0.2-2build1.dsc 2705 SHA512:7efac2cb818028a1f44fa6239fcae17774bf52a772518cdb936e780491e1c63e99a8c684051a71673d7f4e040fe24ea945903f7621d9a5a40e543b57de9560b8
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-3.dsc' libbsd_0.12.2-3.dsc 2611 SHA512:99d82bddb68ba5fc52c9b139028cb42317c24d4ee9e20940521fbe4c86886c6216beb55158c9753f046479f7b75a4125653426006fc934fa21e5f479551f7a3a
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz' libbsd_0.12.2.orig.tar.xz 446032 SHA512:ce43e4f0486d5f00d4a8119ee863eaaa2f968cae4aa3d622976bb31ad601dfc565afacef7ebade5eba33fff1c329b5296c6387c008d1e1805d878431038f8b21
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz.asc' libbsd_0.12.2.orig.tar.xz.asc 833 SHA512:c2e56aa572ce50d6342c0e45622958eba40319e09d45dc3cff6296cb10eebc0c4154d6f758dd2470a1794251fc0273d05ac2d735698eae83183769df5f7d44c3
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-3.debian.tar.xz' libbsd_0.12.2-3.debian.tar.xz 18892 SHA512:6682b13906f0e87005321a42e5647bdca38bc88b84c6e10071aed3432d42aac16fd513137832a6ac9cb5266c01dfd9e62ca72a2ce1796401a316484b7f883651
```

### `dpkg` source package: `libcap-ng=0.9.3-1`

Binary Packages:

- `libcap-ng0:amd64=0.9.3-1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.9.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.9.3-1.dsc' libcap-ng_0.9.3-1.dsc 1743 SHA512:4153d9492d3ba06b6ae79309add1d54733affa10f7ccff832690bcc0af60a4d5c48d88701c9c7ddf409e17ce8ca32425962bb6403c01ec439b8d684bbd6aa53f
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.9.3.orig.tar.gz' libcap-ng_0.9.3.orig.tar.gz 126269 SHA512:75cf4bc023033b8e15a69cae933b875e1c92d70ee81af027c4ce753588b55cc9f707b98aa75cceab3c8362d6e74c8483c98e5ce078639768a8e038f9b3c90734
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.9.3-1.debian.tar.xz' libcap-ng_0.9.3-1.debian.tar.xz 7584 SHA512:548030c92d507b8c0be2f4a6f55a45ea21c693609cc55674d01bf6d52b429ae352bef17fa306b3f982d94f5dad11a5972a3694282f03fad7dd6322c97d567af5
```

### `dpkg` source package: `libcbor=0.10.2-2.1ubuntu1`

Binary Packages:

- `libcbor0.10:amd64=0.10.2-2.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcbor0.10/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.10.2-2.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2.orig.tar.gz' libcbor_0.10.2.orig.tar.gz 289450 SHA512:23c6177443778d4b4833ec7ed0d0e639a0d4863372e3a38d772fdce2673eae6d5cb2a31a2a021d1a699082ea53494977c907fd0e94149b97cb23a4b6d039228a
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2.1ubuntu1.debian.tar.xz' libcbor_0.10.2-2.1ubuntu1.debian.tar.xz 7884 SHA512:21aa29c206d5cfb8970ee2f4f98bf365d458004a40b98f1881053d94447a0e2a894291c5d719ec190cf2b4e81630498d6c5f1c1dae5b25a7ae408865bd65e21b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2.1ubuntu1.dsc' libcbor_0.10.2-2.1ubuntu1.dsc 2246 SHA512:065e49c6b48abd7bad3dbd78810d1ded377ada019ab768300660117b589af08b140936bef001d3e27c63f2d21f287bad8514cc1fb7a9930f0c56ca0aa9241c1d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-2.dsc' libdatrie_0.2.14-2.dsc 2218 SHA512:e531afcc28aff67d76f9937762a5751cefde0b16eb359928dc66d3f3d4f7a5ca8a35350471d41f6982e7d9aba951429e65527e25120d2600421ae12cc40f55f1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14.orig.tar.xz' libdatrie_0.2.14.orig.tar.xz 325696 SHA512:c5df387a1c9b5fae65eff69102651f4f054d873194d97faa8e329282353156fa4fb41a1ea771b24ade3f0ad2a548d85d7950a4aa6ed4e5c356bc504720e792d1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-2.debian.tar.xz' libdatrie_0.2.14-2.debian.tar.xz 9884 SHA512:20e49b8f8c756add18947b835ef6a7b38b6f7403f3dba340d168a92cbba495ba844a94903758234b62870efa1866fdac8796e9e9cbb09209a1f5b82bf6c1116a
```

### `dpkg` source package: `libdeflate=1.25-1ubuntu1`

Binary Packages:

- `libdeflate-dev:amd64=1.25-1ubuntu1`
- `libdeflate0:amd64=1.25-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.25-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.25.orig.tar.xz' libdeflate_1.25.orig.tar.xz 153076 SHA512:80eb22d7036a0cae6d29fcb638da06d2a3568a7917e701ecab22d3b46e521686109bd17c12ce6696b4caf6eb1560f7bcb475135aa569a5720c849a5b040b0429
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.25-1ubuntu1.debian.tar.xz' libdeflate_1.25-1ubuntu1.debian.tar.xz 6256 SHA512:7f79899d97f3ddf4bf92157610e4b68183f5fbfb90eda6ad12445432314a53bad8b5826975a3f7fe6e15ba63cfe6e17c96eb7cd1bb147547667386e4182c9cd8
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.25-1ubuntu1.dsc' libdeflate_1.25-1ubuntu1.dsc 2340 SHA512:8f42ed701261e73b08efe034eec5ab66daf3ca73e860febb1ce000e4a946061556fbe93aa7d844942ca30fde8fe790217d46c99a433ee36d3a940a95b8e14c2c
```

### `dpkg` source package: `libedit=3.1-20260512-1`

Binary Packages:

- `libedit2:amd64=3.1-20260512-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20260512-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20260512-1.dsc' libedit_3.1-20260512-1.dsc 2262 SHA512:811c72122cbbcc78e558def16795ce7e4c8722db354334829f111f16bcc47c10a201c38e6e863fa56300e2419cb4e1cf8944a6f0982d83b3a509c5de200275bd
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20260512.orig.tar.gz' libedit_3.1-20260512.orig.tar.gz 550471 SHA512:8d6d04f4d50e7f30bf426b009454400d3ad9a840ddf075cc5eabd9a551f325f923c02d56d7b4535820a613ff01c5f77074b6df9e8e83a1f6bb4124dd87133623
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20260512-1.debian.tar.xz' libedit_3.1-20260512-1.debian.tar.xz 16728 SHA512:84040ce8d02623d5af67990d16dae88dc9eb82a41bc204e9848b3b0cc8510f2e3fd6aa0fda3383557431d7e57ae68bda683e0ec2dd0184ce98c010bc28915845
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.dsc' liberror-perl_0.17030-1.dsc 2337 SHA512:1c039478eb6721fb61ac62f0daedf0e32e935f40625564a1dbc6f240776bb9bfaa05a2f0176296f08fcf939e7d967fd31274aca9d7522b05809bd32c97e511ec
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030.orig.tar.gz' liberror-perl_0.17030.orig.tar.gz 33488 SHA512:842e33fbc2f2bd6eaf03459263070311fde9ae06105438baf8920826ca26d3f46c18d0d49bfe85a3eb25dfe94e671db0e7d1f30a143b8d82bea47410bfbf7f01
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.debian.tar.xz' liberror-perl_0.17030-1.debian.tar.xz 4660 SHA512:7a7d03e838840c466c34bcea97b43a1cc12f4baa87ed260164a04c01ca2aeec50286104b98ac074e5af44e8e68fac36823ba0ad04729fb2d8046487b42a2553b
```

### `dpkg` source package: `libevent=2.1.13-stable-1build1`

Binary Packages:

- `libevent-2.1-7t64:amd64=2.1.13-stable-1build1`
- `libevent-core-2.1-7t64:amd64=2.1.13-stable-1build1`
- `libevent-dev=2.1.13-stable-1build1`
- `libevent-extra-2.1-7t64:amd64=2.1.13-stable-1build1`
- `libevent-openssl-2.1-7t64:amd64=2.1.13-stable-1build1`
- `libevent-pthreads-2.1-7t64:amd64=2.1.13-stable-1build1`

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
$ apt-get source -qq --print-uris libevent=2.1.13-stable-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.13-stable.orig.tar.gz' libevent_2.1.13-stable.orig.tar.gz 1126525 SHA512:5c7a1b9f48087258f49653ecb4ce24d7015a9ef4015ad6ffa910a101d5bd37c657c26fc948eaae30c4abeb54d1cda33290878161bd73bb50e4e85f7dc667c36d
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.13-stable.orig.tar.gz.asc' libevent_2.1.13-stable.orig.tar.gz.asc 833 SHA512:c0ee29c3877f368e08c49b7bcee0fd7578249b8c4169a9342cb62e8e452339ccceb3c0b29934ab25dc76d03de27d4739f26348832c8ae9b29133c347c7c512e4
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.13-stable-1build1.debian.tar.xz' libevent_2.1.13-stable-1build1.debian.tar.xz 18056 SHA512:1da0946c9fd9a4a6e7c2cf43c498f9b631c7e17049cbf062e05f172a489477ccbf7a6e49ddbae520f03b12c66ef952bf51ea5ec6f304febdd915eb5768efabc4
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.13-stable-1build1.dsc' libevent_2.1.13-stable-1build1.dsc 2697 SHA512:8c301c841f4fee075b06c7eb72dd307ba93846003b443ef37b3c195a361067f6d6f101157df21642dd2df3c2d444d6257406af278108ce8da10f44c6147674ac
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.26-1.dsc' libexif_0.6.26-1.dsc 2338 SHA512:583a2c0dea0afcb6cec9ba5c1b747fb193aa3920d318d27cfa88d9cbfc6e07bd53c5ab9a623db07d832ddf0c866edc1d49797aa47a81c115ad2a3fd91036fb95
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.26.orig.tar.gz' libexif_0.6.26.orig.tar.gz 1314752 SHA512:5f91c7c8c6b398af1176d0cf73976cb69fadbe3f7ec3749d025324af6ceee9668068c912553e390046ff1bfe302d7d380bb6c9dac44d0bcece10083e7881f64d
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.26-1.debian.tar.xz' libexif_0.6.26-1.debian.tar.xz 12528 SHA512:3416dbc6d00fccab1280753c3b6c5f93c6b31695db232b381e39c35ddaaef4db78d53f99f657b68ff2d06172dce3c77aa85fc0c1621d460c773b2e99af64a03a
```

### `dpkg` source package: `libffi=3.8.0-2`

Binary Packages:

- `libffi-dev:amd64=3.8.0-2`
- `libffi8:amd64=3.8.0-2`

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
$ apt-get source -qq --print-uris libffi=3.8.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.8.0-2.dsc' libffi_3.8.0-2.dsc 2093 SHA512:566e7e30571eb58453ecf64a9e75466446953be88f9788de95e0d876843aea18c8d9719a96e7bd62c40532fe70832c77a18f60e2fe7efa5f1b04ae66c5403e48
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.8.0.orig.tar.gz' libffi_3.8.0.orig.tar.gz 662493 SHA512:798302568c6b40742d0b08f3e4c56a6acb33175d222e0dc18fb4ef806d8e7517e8d98f9e18617e6256587eb6fea3f3fd4074bda6359193ba953d0ca92a1dae02
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.8.0-2.debian.tar.xz' libffi_3.8.0-2.debian.tar.xz 11124 SHA512:1e9a0577de0329073ebb11a4a4bf3a278fb001465278180fb03a75d2d93f50f1b0fc3e9448d780a09b72162b3ff938f20b3e45586c2fbb0c80f57651690a9598
```

### `dpkg` source package: `libfido2=1.17.0-2build1`

Binary Packages:

- `libfido2-1:amd64=1.17.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.17.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.17.0.orig.tar.gz' libfido2_1.17.0.orig.tar.gz 714675 SHA512:42da7eac4baa6e0c193a2fc2b42d86cbab45c4c7a79220b523c0b4ddc547bbd12b86b3fbbadd7a961e930417ca3026873fb7f0e72903976ca5dc70b445910b79
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.17.0.orig.tar.gz.asc' libfido2_1.17.0.orig.tar.gz.asc 228 SHA512:c01cfb04cc731f52680da615e1b2fc2b8a4e68c1d57453f527ea46655ec8a89b2792c5a11eeb47c29d967a11f9604d38cd9711f6b02ada2b2da72b3845adf30a
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.17.0-2build1.debian.tar.xz' libfido2_1.17.0-2build1.debian.tar.xz 68936 SHA512:20246ac03ba474d30d43a6ff5c51ad42334affda49eb7c7d57ce9d2f63c22fad5b889956feb52cfc521a1e593231a91df4cbef4ea97940f5380f5874ba9a87f3
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.17.0-2build1.dsc' libfido2_1.17.0-2build1.dsc 2466 SHA512:3e9b8452e4b88fa3d5133f7cbce5b0479bb681a6a7c1b59727b10ce697d735b41fa7987e72a61573a4ce96fbe873653a60e8ad28a5d98408f11f71afb00d0b05
```

### `dpkg` source package: `libgcrypt20=1.12.2-1ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.12.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.12.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2.orig.tar.bz2' libgcrypt20_1.12.2.orig.tar.bz2 4441855 SHA512:dc1a4a6c00a0d84d90c8d71f4bd121b968c80df74137d6e8867f1f4cc014a539efb5238c1a1429d7cb95e493a40718fc19252edc592ffe0f43057b372896591c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2.orig.tar.bz2.asc' libgcrypt20_1.12.2.orig.tar.bz2.asc 265 SHA512:717f8ecb74f1260212af87f64e0c2ecf854ac4747569959b034ba729e6978be09c4bcc063ae39775e3b1f31c666fb9c7e98117a7f1a8fbfb12a6fcdf38afae92
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2-1ubuntu1.debian.tar.xz' libgcrypt20_1.12.2-1ubuntu1.debian.tar.xz 41944 SHA512:911a8eebd28537966cb9e40b7d2de0368b6871a46cd4df49e4b3d2b050952eebb23a49bae5df95e4bbf407a87164ecc845b26ef8eb1c90b263821cfe207de494
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.2-1ubuntu1.dsc' libgcrypt20_1.12.2-1ubuntu1.dsc 3106 SHA512:afc09b21d7614ad14490b5972ee987a96872defdff7a10eb1a5e292dd5c210a37d48d917e17f5ea1568d5c35ec38db517c185df481d565d8d7182a83bd85035d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.61-3.dsc' libgpg-error_1.61-3.dsc 2969 SHA512:25377828480372fb65fd560f044132f375e760b734db6becf0f670ca3a0d18f39b6e164aaf1a560428703994ace4850b381f291cdf37a52a48c91739e554826a
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.61.orig.tar.bz2' libgpg-error_1.61.orig.tar.bz2 1124751 SHA512:3e59eb52d061709fd8dfe56a4b36d2d5b49dd5e0c90c283899669d6a355286cb3a3f851631f8456c78c48b652bb31a4c1f8b081ccdf87e5db64b313d141a7670
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.61.orig.tar.bz2.asc' libgpg-error_1.61.orig.tar.bz2.asc 464 SHA512:db0c6f8a2758f374924b31d9117151c699411f16da372ab31024da3e6379c622903a5ee1b8894e24a5cb851fe23efebff99276477d38f2228bfdbdcae6e1466f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.61-3.debian.tar.xz' libgpg-error_1.61-3.debian.tar.xz 22004 SHA512:cde87c290747bbdb79090369749bd55c6f0a28284c9d565a51a79ec669276b09a7a87364a055545a81402b5ea64e5938c03aa38c836d2172fe2b4b3b461d041f
```

### `dpkg` source package: `libheif=1.23.1-1`

Binary Packages:

- `libheif-plugin-aomdec:amd64=1.23.1-1`
- `libheif1:amd64=1.23.1-1`

Licenses: (parsed from: `/usr/share/doc/libheif-plugin-aomdec/copyright`, `/usr/share/doc/libheif1/copyright`)

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
$ apt-get source -qq --print-uris libheif=1.23.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libh/libheif/libheif_1.23.1-1.dsc' libheif_1.23.1-1.dsc 3844 SHA512:f8d07feaf02e3e44ead56be249521f507ae45cb912f92806c9d4fbff443861dde42c7e93558dcada4f42ecd4035ebc800f6dd349f8698f4e36bcab46e9c3b595
'http://archive.ubuntu.com/ubuntu/pool/main/libh/libheif/libheif_1.23.1.orig.tar.gz' libheif_1.23.1.orig.tar.gz 2071186 SHA512:6257d9c8cf75c9880f0f60e9f62722730bd189cd132dc55701985e5fd14f096ca9958a6c987df7a1633f9897087f7c755f6e78c6a388cddb04f6227b06a35873
'http://archive.ubuntu.com/ubuntu/pool/main/libh/libheif/libheif_1.23.1-1.debian.tar.xz' libheif_1.23.1-1.debian.tar.xz 14164 SHA512:ea1cab6c488362d2981dba37f342ffb23df18c788030c2da8ac39707e0119ebc2730a5daece53cdf948c0bdfd6505ada16476cfd49c2821ae51b6f73e0a97ce5
```

### `dpkg` source package: `libice=2:1.1.1-1build1`

Binary Packages:

- `libice-dev:amd64=2:1.1.1-1build1`
- `libice6:amd64=2:1.1.1-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.1.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1.orig.tar.gz' libice_1.1.1.orig.tar.gz 489944 SHA512:e39fc7f76c19c4edc3e520b7cef16f9f65c4723f4d3603f7e664c54a5fe8fdd756f9a8bb2dc3b0ccf6646a8d1d202cba1cfa220e160b32e233a37c2cc7d13f1d
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.diff.gz' libice_1.1.1-1build1.diff.gz 7407 SHA512:d23aff3f69b2f8435bdf6f960777c0cae9e006ffe561683011ead538eb5b2a1f6fe42ec9d7f91fe06ea822ac4b609f817d1006bed045688d2c30636057060347
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.dsc' libice_1.1.1-1build1.dsc 2016 SHA512:1ef7154cfc349ddc73424d9c552e8d9fa879ace62ba21049e102c973bfa8a041162ac4490783c9ca242da7b3b19ca24c7e48cff86ce97fe26f41e777e6527492
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-5.dsc' libidn2_2.3.8-5.dsc 2814 SHA512:ee11124020133e31fcaadb82cdc184a7b1073aef933080ecef44f261926c60fa590db4724d0ce070e5e1c430f43b5f7ec3b2dff8710252717ce57ea66ba80247
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA512:e3f4ec5113f531d2b1827a11d7292318fdc49032c013b0076911b075b0e879428db9b45fe137aa37bf9c60e672b6883c035f9f45b2b42625031534965d518bc1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA512:f5c7f1676018b1cd362e250dd8ad59150c34b11ede9a21dbaf6f2e88fa943c881db6e59bf3e9180567379173cb21c4c893d835db99f4ed9e94bd80f84fb8ee2c
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-5.debian.tar.xz' libidn2_2.3.8-5.debian.tar.xz 18168 SHA512:7ebe11d184bb0c74bdb9666edd4f5bcd34b916ce55373ee677be29820f71f946ddfebb6bb6fcd782e66638a47f9550c396b3b7c4895f204d915958136de76513
```

### `dpkg` source package: `libjpeg-turbo=1:3.1.3-4ubuntu2`

Binary Packages:

- `libjpeg-dev:amd64=1:3.1.3-4ubuntu2`
- `libjpeg-turbo-dev:amd64=1:3.1.3-4ubuntu2`
- `libjpeg8:amd64=1:3.1.3-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg-turbo-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`)

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
$ apt-get source -qq --print-uris libjpeg-turbo=1:3.1.3-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3.orig.tar.gz' libjpeg-turbo_3.1.3.orig.tar.gz 2516606 SHA512:d95bf0689fb2862ad5ea9e902b73724098d911d9c312aa69157bec9de77f32e4d5ac7dfa105d844110cc66dbdb0336056ba7f96781fcbc848b72fd0661604d50
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3-4ubuntu2.debian.tar.xz' libjpeg-turbo_3.1.3-4ubuntu2.debian.tar.xz 111436 SHA512:023ef2de9f33425959f5ab2e66b3b38cb36b8c29f5fe86e51e71ab96f2f84d91db2db38ad0f3363dfae217661a79f040f3be0a5a5a9c0567f297869f3d29e350
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_3.1.3-4ubuntu2.dsc' libjpeg-turbo_3.1.3-4ubuntu2.dsc 2589 SHA512:fc96eece669d6d981a6691e6020c34e6a57bbfd58fe93bc4fafb0189e1810a9b79e976423eaf0a8573bf0f35d4590afdab4714215270001d53907971a9150245
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.8.0-3.dsc' libksba_1.8.0-3.dsc 2548 SHA512:72425ffd8ca5a38c0294b648e1d4a1a5df31bc62f8b4696f006805168f5f9dd5668e4085da41e85d09ba55282a63d0ee74692eda1dbf4abc87ac88a85acdfd4f
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.8.0.orig.tar.bz2' libksba_1.8.0.orig.tar.bz2 721895 SHA512:d0cfb14131c12e3dbce4b9e5e6026a44570c8f5412099f95180b77a944d4705a2f897cda94764e04ffd9c0aad3772b5e40c81b8e032ff58fbc82e5ad6e2978e9
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.8.0.orig.tar.bz2.asc' libksba_1.8.0.orig.tar.bz2.asc 265 SHA512:90403c48a2a0e479d3843d8c45cd5863d99336021c8a8a0ef77e5ecd670ee75a0d491504507ed45bcfde863aa2b4423de9a9cbd0e21b09186990163c87a78f95
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.8.0-3.debian.tar.xz' libksba_1.8.0-3.debian.tar.xz 15460 SHA512:aa96edefa2acebfe83c7819f141cbece413669073e268873822cea1ef9da72b9a7201296a9335a265cff434c947488a571da78592c4d951c1ecd6de6b0d21da1
```

### `dpkg` source package: `liblqr=0.4.2-2.2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.2`
- `liblqr-1-0-dev:amd64=0.4.2-2.2`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.2
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.2.dsc' liblqr_0.4.2-2.2.dsc 1953 SHA512:30fa17af4256ed8c49bd2a89750500c8c8ffcf52b15573b598dc880e94f7145ce3f501b96485d540d6f1971065c53b2d76fca22180176414c719b6651934661d
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA512:acfa5868c41ea145092711e84d6c9eb62cb725b3d7531917b0d91b7d4af2a9912b18a96edc2594a826f09dabe0a0a82936ceea7d1f31301a23d558b1450d2547
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.2.debian.tar.xz' liblqr_0.4.2-2.2.debian.tar.xz 5788 SHA512:d3388db0d00e34b5d638772f9925571a954e5648ba5000355cde35e37dfd058a665f2944960b2b155c2083c0e417e4bd3baeaf293a6941160c506a9137e23985
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3-1.dsc' libmaxminddb_1.13.3-1.dsc 2264 SHA512:eb4cb60c4b8a09cc0acb0b72162cf4a908710b904ef4fc817f7be92ef8766da5ca509f8e677cdea68dc4476d10fd7ee477e6601739b3dd9ed5458eeeaf746019
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3.orig.tar.gz' libmaxminddb_1.13.3.orig.tar.gz 404341 SHA512:0bc8515120e9d3996f2cb3bee46bc26e11d8af25c151f88f35584c490f554449469d52ec7d8af93e2ee5be6f38c12440b9ea157c4cef036434ffa6976f474611
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.13.3-1.debian.tar.xz' libmaxminddb_1.13.3-1.debian.tar.xz 6928 SHA512:f46a5f3f6e96b3d94cfb42f577fb2571feb79bb3c66721f75c60c75de32a03a74ff82ab652cb64874f7c411dd29aab725c995eb2984aba0cf5070a9afd3ceb41
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.2.0-2.dsc' libmd_1.2.0-2.dsc 2588 SHA512:495cc59674c16de25a8d5d3d87102e75870f4ef3428612bb5ae448642c37c3f39847bcd9d154f36f041d48bdfd0d12685c38d34a7628c2bec0f1a9c8b100d38e
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.2.0.orig.tar.xz' libmd_1.2.0.orig.tar.xz 287992 SHA512:03684ab0c7724bb5cd22026ed39430abc47707e44f6756c372ad317e94b977b1b9d83c0ade614b39be1ca2208a0873e940968659476fe62a32c7195530d022a5
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.2.0.orig.tar.xz.asc' libmd_1.2.0.orig.tar.xz.asc 931 SHA512:a8065fc4d9c8a9268b32a307fb17c2feafcce594000a94f3acd596f2b9e4c64c0ee0e6799d46c1b1fa6a66b3a69b4a0b1afbd2e29bf1442244bfaec20bd943c9
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.2.0-2.debian.tar.xz' libmd_1.2.0-2.debian.tar.xz 8760 SHA512:af8559387c1da5172a897696445c5aa297a7910a39074d1cc82e34c02238c9314463d05248eccb6ebcbbd53f3d741a1874c9529f594533c9dbf3ed9dc483bb7e
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.58-1.dsc' libpng1.6_1.6.58-1.dsc 2310 SHA512:be0bd3c811881fb5e9f404896c193d25ed63c2e348b698334e31032304c96ae1715defb8dddb4b4f9415bce67421016da307afae2f1ec14a44550d37e20b9b88
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.58.orig.tar.gz' libpng1.6_1.6.58.orig.tar.gz 1592190 SHA512:65f54d805e1f7c46a5fc335b984e4cbd4f934e0f02fbf6673c13800b49a4c11fbeb4098eebfb33079527a56c3d933e97631f91ab68dbb31442982784f9241ace
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.58-1.debian.tar.xz' libpng1.6_1.6.58-1.debian.tar.xz 33432 SHA512:8c5e3fb824e681ae7fc90305ce3ad251a106af3a5fdc8f16526fbf14b6a85a01560f01131a59dba0a62bdc1c3ac619c9eb00ed529d578306f9fb41b807629c3a
```

### `dpkg` source package: `libpsl=0.23.3-1`

Binary Packages:

- `libpsl-dev:amd64=0.23.3-1`
- `libpsl5t64:amd64=0.23.3-1`

Licenses: (parsed from: `/usr/share/doc/libpsl-dev/copyright`, `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.23.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.23.3-1.dsc' libpsl_0.23.3-1.dsc 2293 SHA512:3eccfa0831f597f184fff01fafe03226fe1daff7234ddf7ff853f6035930bd2a3ed687b0aaae14cde98da706fe09358baa26f62542d47aabb0fe690eaed492ea
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.23.3.orig.tar.xz' libpsl_0.23.3.orig.tar.xz 2238444 SHA512:dfde12f6c9538ad8b58c0d0f365c8a015f214d3c3c9a93721b36ba359ba9b197d366530e812b3e6434222ee35e292a12e64c81832432fcf9104ca3dcb031c243
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.23.3-1.debian.tar.xz' libpsl_0.23.3-1.debian.tar.xz 11440 SHA512:d6765078fa570aedcdfd3014c2660f29ae43b55c11d92748951a13706dc4f30a818192f43ebf04be48278eaed684ffd70eb1665ff20ea87b3a1a2d1d2504904b
```

### `dpkg` source package: `libraw=0.21.5b-1ubuntu1`

Binary Packages:

- `libraw23t64:amd64=0.21.5b-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libraw23t64/copyright`)

- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libseccomp=2.6.1-1ubuntu1`

Binary Packages:

- `libseccomp2:amd64=2.6.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.6.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.1.orig.tar.gz' libseccomp_2.6.1.orig.tar.gz 656231 SHA512:468404874ee013177f048611a4fefef87f4ee01b83d991f8bf9026c8fdb8506badd613e0355ad8222c5a7f51162b6829de6d72fc53222a56e0e123d5e85f73c4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.1.orig.tar.gz.asc' libseccomp_2.6.1.orig.tar.gz.asc 833 SHA512:2ca5e1d4dac4d1394bd8518504ee9fa4febb269e3105270b7fe4091d4ae16b4a0003c8a64ef9b373d85728c2335ed826415cca1f55821a394fe6a7a7863ea60d
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.1-1ubuntu1.debian.tar.xz' libseccomp_2.6.1-1ubuntu1.debian.tar.xz 25672 SHA512:2f75accf151430ac85ad5bbfaaac8b486be2cf9f44e26b113ae836b3db5a1e727ceb661c929e283086437d28b0119962a192226d1c7ff6b6e452a3f268de02ca
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.1-1ubuntu1.dsc' libseccomp_2.6.1-1ubuntu1.dsc 2766 SHA512:15ed9f0d8b1c51e170d6a1cf75e27d09ffb93ee0dac13fd98aa101ed4eb3a4b5229339d778662d84cc5806eba35a469808902680da5241625bef40ca067502c7
```

### `dpkg` source package: `libselinux=3.11-2`

Binary Packages:

- `libselinux-dev:amd64=3.11-2`
- `libselinux1:amd64=3.11-2`

Licenses: (parsed from: `/usr/share/doc/libselinux-dev/copyright`, `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.11-2.dsc' libselinux_3.11-2.dsc 3130 SHA512:660e73e55fc4f7f250083ffc17173a0f8ac2d37a80c570281d1d2f26e775e865c32e0ca116dddae0ce11acc8675dcba0e5a39acb958fbb0c7ffc46c0604db1da
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.11.orig.tar.gz' libselinux_3.11.orig.tar.gz 208732 SHA512:49eb0b180b77b4b61505117ecd98ab9fdd79a36801b6d2216813ea370a02ba4f58a0f87a18e92a2d4eeffc11d9df67e4692d2d8f5d3ee77a2abd3f606196aaad
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.11.orig.tar.gz.asc' libselinux_3.11.orig.tar.gz.asc 833 SHA512:fa950a332a353dfbb7959b785956076d0547b6cf5387ecbaeeb11f8171a4fc3679772707364dee4bf8db76232eb2ea6a8f0280674a8351dcf98074892c3100de
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.11-2.debian.tar.xz' libselinux_3.11-2.debian.tar.xz 52512 SHA512:e0b639eb9e0308581b8bce5d4a04087d8665648651a7d1713a9da160fc0b0233d12a7f8ed8793b86d7d69597cb80e3ff9a9326f60255505daa55ac1e664fde71
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.11-1.dsc' libsemanage_3.11-1.dsc 2731 SHA512:3320c9c5eccb5de0b07287ea2a99048c7d70604d126941f4598ced4c0b181e67bc14675a81c34e5cd4efdc456dabaccb81fa76ae7bf4ec503fd453f00b4e739e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.11.orig.tar.gz' libsemanage_3.11.orig.tar.gz 185656 SHA512:cafcdac9ba9a65f7940929f3e36e7e35ece6ef5cb97723e459ba7fdaaf937708873cb1c273733830f7fc54679c4cf6ae0189322231748d318a6db2851db1d11a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.11-1.debian.tar.xz' libsemanage_3.11-1.debian.tar.xz 38380 SHA512:4f7caace44387185a97ea071ee188a8ba58009e6aeedc3133fc977e5d34b6821ee70c3bbc1b6d7e65186405856480e0ac93473c4d0e10326a24c039283fc6e62
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11-1.dsc' libsepol_3.11-1.dsc 2233 SHA512:18d980631a14635002d01d6dbf0800c29127159a892c1f2490fbc8784f95d6c28ad62b89e8aebda992d3b1cca32818fb80063f26228920a6352a2579be47b6a3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz' libsepol_3.11.orig.tar.gz 533422 SHA512:38335292be8b8ce8b22bb2a0e481f92e2bbf532d9a2ee5319ada0b3fd294df487e5eba8041bac2a09ef7b048fee13ca0520c34cb3283fea1f95fcc5752f66b81
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz.asc' libsepol_3.11.orig.tar.gz.asc 833 SHA512:80f37aa5447be9ac3e8b08a2e83a1c805128df279c16b31340ab18790185802362323ed39f1ee4a2b489f94919c222605d1bb29c09ee801349e850877c01322a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11-1.debian.tar.xz' libsepol_3.11-1.debian.tar.xz 21648 SHA512:f80a841a225ddf2d85cfac409a21b81ad8095722414b6e7a9d4486e506f510f085ab0a50d8edf58bf79c23e4d9cc7e550209188e8dc79f465cd8be432d509bdc
```

### `dpkg` source package: `libsm=2:1.2.6-1build1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.6-1build1`
- `libsm6:amd64=2:1.2.6-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz' libsm_1.2.6.orig.tar.gz 467497 SHA512:316df49f1573ace0bccbfcdf2b1d22c91ec7a1ceb5b320d142fd33cca81e0e0582a0256764aef594f9b31ac5f63d8823dc04c8a6113019ec54ee26eb9323ded4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz.asc' libsm_1.2.6.orig.tar.gz.asc 833 SHA512:b7a617bc09cdc9e4298576f014932165f6b3cc2dd3f96d35db92f46b7f93260705b37f501fbdefb5810eb8f64f64d9260c39cc5ad7660d226b292804798711ee
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.diff.gz' libsm_1.2.6-1build1.diff.gz 13398 SHA512:91da35c944e1bac99cf78fa935fbf6618ce2d5738e9181a4423a279ea5ce26f8b9b98b81985f21ee6e803d424b49887ef3dd265396f2f9d2661531019f7833db
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.dsc' libsm_1.2.6-1build1.dsc 2326 SHA512:6f74042e720c5f5266682b71e586652599e0c14080732e37dd58c7bcb686723cbc1ce9230ace07f64b366a1e747cc34575843c5fa79f509fd569e8986234a597
```

### `dpkg` source package: `libssh2=1.11.1-4ubuntu2`

Binary Packages:

- `libssh2-1-dev:amd64=1.11.1-4ubuntu2`
- `libssh2-1t64:amd64=1.11.1-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libssh2-1-dev/copyright`, `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libtasn1-6=4.21.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.21.0-2`
- `libtasn1-6-dev:amd64=4.21.0-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`, `/usr/share/doc/libtasn1-6-dev/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.21.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.dsc' libtasn1-6_4.21.0-2.dsc 2665 SHA512:d83f16d2fbc66bb6bfa26f17efa2f910a9e5e4db86c6fde245782806c6a3819c1b7210d3375a6adc9615549d0f0ddee3e0935fabd39df14bd8a70e2608412ad2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz' libtasn1-6_4.21.0.orig.tar.gz 1816537 SHA512:6a581c4c072b168bf29a0dec7e59a9329a798e392b7d1033791d0e3166a5d1164e2a7065373a84018d500a01563657900c318b1fd437c227c3174b754f9998d3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz.asc' libtasn1-6_4.21.0.orig.tar.gz.asc 1223 SHA512:2347e04e9214b295fd20490a237ae394f02cb26950a07456364311437c23324728fa9547f83ceba2ba829a5473c004e129cf72a891e50a2f4f96f16ee37a0bb9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.debian.tar.xz' libtasn1-6_4.21.0-2.debian.tar.xz 19408 SHA512:4350fffbed87dae2a7919bf02857f2094a03a5f64555c04c0ff78819ac3899139f0fc8028ee2ffc9750d8488f37f8db68e5eb8a0e9d4bd36369da681fa942a44
```

### `dpkg` source package: `libtext-charwidth-perl=0.04-12`

Binary Packages:

- `libtext-charwidth-perl:amd64=0.04-12`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-12
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-12.dsc' libtext-charwidth-perl_0.04-12.dsc 2445 SHA512:1d91d54422a45f5ed1bf44a2aaf8d00f28e4f9b02ef258edc235f6fb22c5b7bc51c0d22af292a62ccb3eb600591dba55303fcc628a50d250a53ac8998804c541
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA512:37e47e23557a14fac3d1471017a2a9b637fa2c8a0b11d3feedfa40a2f2fdf48dbb7f1d9d855f5e56733e3da09436fd7e73360b105aa24194f31aabd8e87dddb4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-12.debian.tar.xz' libtext-charwidth-perl_0.04-12.debian.tar.xz 3092 SHA512:ce58b7ba8506a4abca0d08c3c36a127c2219994642a3bf807fec0933c48fbd3bdbec380645f5bd0b689954451b8540d15fd53ef3173261130c246662db2ab7e0
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-11.dsc' libtext-wrapi18n-perl_0.06-11.dsc 2456 SHA512:5f313488f0aae6c097b617e3030f681c483ccd27c0cfb0708a71faec33afd28d4f268350ef42b0732db58c254cac50ae4ea72490f4f3cf7f014106169f46277a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA512:08b26bae38eea906ced417f88b494862e5485fe8d8ddf8bc69582b57d3d427393ba6bec9320e79541ccd7d63b20c6c7e5194ccd649cf79ef7caf9892c757ad96
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-11.debian.tar.xz' libtext-wrapi18n-perl_0.06-11.debian.tar.xz 3556 SHA512:4b9bfdf5aba74f5ae7b9044cc8d9923bfac3ede94272a174e9f4dc91e5002570fe54d9539b3c2079ca9170e84dc7984e62fced272b6886030be18e4c118ec2ca
```

### `dpkg` source package: `libthai=0.1.30-3`

Binary Packages:

- `libthai-data=0.1.30-3`
- `libthai0:amd64=0.1.30-3`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.30-3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-3.dsc' libthai_0.1.30-3.dsc 2302 SHA512:4dc95059c48df47ff57a6f01d09db79689a7fdc607a01e70ccaa75c2555b1a1e4985a057be3232fd872d0f9fa4bc9bd7f0b8cab3d805a6d38c675600c8cada58
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30.orig.tar.xz' libthai_0.1.30.orig.tar.xz 436044 SHA512:c84d575b6855d54b1ea1d9878a94153ba7807cc736f7bf01327d17a6444c6fd4b18deae2ab5a2612847892c9d94ed4ceb54fbf25244aa6eb88a3605260ad328e
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-3.debian.tar.xz' libthai_0.1.30-3.debian.tar.xz 12788 SHA512:6c24d5897a044cf9252753ddd52f9f3ee84dbcaff02513e59df68406c9677ca6ccf85c45049004a53295ce676abd42a2a218af7bdb138fa515beb728a547c6cb
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-11.dsc' libtool_2.5.4-11.dsc 2285 SHA512:999b4342ed0e50e671aeb6a683f435b1df16bfdefcc791662f86a4defe011462abfaaae589f3a0fa123a577e66e9c42a051dcb13eb02a5b8acb6e9dad61ea8a0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4.orig.tar.xz' libtool_2.5.4.orig.tar.xz 1069572 SHA512:c8ff1fc71373313185ecfff8d282bf3547b8a2d2e102aa4475d7db4945d4f4bfd45cd0d79a8e00a1c1394246908e586f8ccfd9f1cf86ff837b5c6ad7cc57a750
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-11.debian.tar.xz' libtool_2.5.4-11.debian.tar.xz 40924 SHA512:ba0cc86ea7ddff3c86b4c2fc75a00039af196a43b258cbe2207acf5558a1bfae3cc7824d6b90eabeb4b56f1b60fed087a2752ed80bae24fb94102e2ed3f58519
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.4.2-1.dsc' libunistring_1.4.2-1.dsc 2598 SHA512:dd752119aaf023de6f7dc015959be27019ab0a4c21e3773def9baa17c708f8d6fdd8918511a96908d074d6749580dd2d18d7b0a0bbb78ee48cbb5f93175e47fe
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.4.2.orig.tar.xz' libunistring_1.4.2.orig.tar.xz 2786084 SHA512:0215f7f40f426227eca5174140654a3fa43ac1520eeb212c2ba08043470f905687b2703afdda12e9635359a6187643900136b6bb11b422bd7567d17ca71b555f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.4.2.orig.tar.xz.asc' libunistring_1.4.2.orig.tar.xz.asc 228 SHA512:cc74f2e6388c589955646a101dfd6773c4c3fba846595dbbc6c48ae3578921345a17545961f3c46487dc30e631888b5be39f775cb2ab4c2691bfb7f5d5379044
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.4.2-1.debian.tar.xz' libunistring_1.4.2-1.debian.tar.xz 26820 SHA512:5b17e5a9370cefb51df3eb7a5d7fd98334abb4874b0914b942f2fc47ba2f70d1c6f23161d6d915dfa478cb4e80eea36dcc0ebfd8d5b3cdc59f52d9f8ecd19f15
```

### `dpkg` source package: `libwebp=1.5.0-0.1build1`

Binary Packages:

- `libsharpyuv-dev:amd64=1.5.0-0.1build1`
- `libsharpyuv0:amd64=1.5.0-0.1build1`
- `libwebp-dev:amd64=1.5.0-0.1build1`
- `libwebp7:amd64=1.5.0-0.1build1`
- `libwebpdecoder3:amd64=1.5.0-0.1build1`
- `libwebpdemux2:amd64=1.5.0-0.1build1`
- `libwebpmux3:amd64=1.5.0-0.1build1`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv-dev/copyright`, `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp7/copyright`, `/usr/share/doc/libwebpdecoder3/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.5.0-0.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz' libwebp_1.5.0.orig.tar.gz 4267494 SHA512:7a39594cf5585428f82d555b05e78aa63758a56841a313c0b74dfb4996afe37dddf92498d6123ff2a949a7209fb9097927f10ee75b5a38b481f110c892e5302b
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz.asc' libwebp_1.5.0.orig.tar.gz.asc 833 SHA512:892e6240b767d7b47fc4faa337aa78f1426359e155c94305377510b0a0c8a24830597b261ebb458f6310338afde487616bd6cca3347b624d8f46500487a3c067
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.debian.tar.xz' libwebp_1.5.0-0.1build1.debian.tar.xz 11356 SHA512:c27b0795a00e022d91a881f438a6166fe7ea080bf6e758db487a6f033e81615a3061790a505a95f2baa9f7bc7fc07f80f3ce5f4435ef9e7f121039b95699cf02
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.dsc' libwebp_1.5.0-0.1build1.dsc 2889 SHA512:085f6790e762ec35b9e9821085fd38d7788f5c7ab8d503f56d3b5d374f678b3cdcce147969a91ddd0e54bf8eaeafe9ffe331cf7b6ac3ed1cdc9fd5b0a5fb2a53
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14-1.dsc' libwmf_0.2.14-1.dsc 2368 SHA512:fb5b8cb06d63f217b9f0d2287d3ec650c120e56ec340b848f80e373f78fca346af6e670d9582e78e850d52ae86a4470467846f649e4d500fd3603848d7bbdb2e
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14.orig.tar.gz' libwmf_0.2.14.orig.tar.gz 2628359 SHA512:ab8b1540a4e97e8dc3e28c44749ec75279fd5ce770b081d3f436418f46891a3a5636470ea4e9ac545d25ccdba69b1f98d4c91b415ab13458aafe4a56779b0d6c
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14-1.debian.tar.xz' libwmf_0.2.14-1.debian.tar.xz 25496 SHA512:c100f71897df9d2a9da976ee9236b603bcc2a35698e84b49460f4e028dbe5f22b385f3d5e1eeb11edafacf913bb836f2085251c6b94d5f7cbf5637e1309526f2
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.dsc' libx11_1.8.13-1.dsc 2490 SHA512:7406dd42a4d48c81f7d197014d76e572aa0a5aac9bb39921fe544c1b40068789616969a73dd4cf9f343bc3de82de078da17edc52f9753bde101975693213119b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA512:3dbcb261bbf56e8613b61e84af5d6924bf804a5fb90fe84f3bde46e4bec3b0c8c496d9e2a9b6717511fd37544fe84350092a744aa98640612f653640693d791e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA512:172a116ff7070e1b9729f1f76b2d8dda460885c307f9a410233f49c12abbc59ad374a0b34e2c56b34a62ecb38143c1369e5ac39acd5ed3c8218840522356e4f7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.diff.gz' libx11_1.8.13-1.diff.gz 76915 SHA512:e7a8fd3953bccf97b764022740c03f70088364f15cf578436a3d5c412b9b51f4aed88d753d6ddea9cd2e6123917b5fbf60e20505edbb47574293f70c51e1573b
```

### `dpkg` source package: `libxau=1:1.0.11-1build2`

Binary Packages:

- `libxau-dev:amd64=1:1.0.11-1build2`
- `libxau6:amd64=1:1.0.11-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.11-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz' libxau_1.0.11.orig.tar.gz 404973 SHA512:315625ae6657e817c09c83da53029488bd5140bc1048eef1072b12958457fdec6c41f79b190cf10885559d2e4c7d47110cd08369b438ca47749790c51edd8492
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz.asc' libxau_1.0.11.orig.tar.gz.asc 358 SHA512:97e4425f90e720800cf91f45cf3dcb92b88017cba0db6fa4e39978ad8871b7312a048f4b51622176488edfb5b620ba0d6f0ffd087f0b177f9abfe3d8854fab30
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.diff.gz' libxau_1.0.11-1build2.diff.gz 22840 SHA512:2084201315eabcc07672ee0d46ca89034f76e157aad0763b0bb01b10ee5fb2b52e6ed1c9f57d4dd7d037d6c45f9249ce93b8117a763617e83ee187965b8c84f7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.dsc' libxau_1.0.11-1build2.dsc 2208 SHA512:29aadc79e789fb71f89c5335bd19b99311b1c9f63354ec8a67b4ed8155b01f34412a57cc3599b0d56eb5b436f6779af5c2186a28ab44a97fc0aa8b06e186b507
```

### `dpkg` source package: `libxcb=1.17.0-2ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.17.0-2ubuntu1`
- `libxcb-shm0:amd64=1.17.0-2ubuntu1`
- `libxcb1:amd64=1.17.0-2ubuntu1`
- `libxcb1-dev:amd64=1.17.0-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.17.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0.orig.tar.gz' libxcb_1.17.0.orig.tar.gz 661593 SHA512:58624a33d39371a7ff58368ed5a09c1c31bea3abd040173db1d41018de4208bc52d2fb8cfd7382ff34d01b98d01a3e314a71a808533880564cd51cd96624a7bb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.diff.gz' libxcb_1.17.0-2ubuntu1.diff.gz 28420 SHA512:fbb3b8d42de598e210c083e6655a7c7ae827ec16be508e2f45a6662f2fd7c23455b485501199b168ebb874a97211748fb3dffcd5193747ab5e0efe37f1803ce6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.dsc' libxcb_1.17.0-2ubuntu1.dsc 5425 SHA512:827e6431f4bd4301b15d5a080abc5a2f83d603586b3305dafcad17f29b45d0d5ee22e145be20d8e38840b4e6a0501d2504d348abe8872d7be5d2035a4cc3804a
```

### `dpkg` source package: `libxcrypt=1:4.5.2+20251210-1`

Binary Packages:

- `libcrypt1:amd64=1:4.5.2+20251210-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.5.2+20251210-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.2%2b20251210-1.dsc' libxcrypt_4.5.2+20251210-1.dsc 2503 SHA512:f3e4899812164df0387dc9734e280082e2d736f283e2d4188e7f53460e9393ccbe09d1164bd9827e7718b96dd214777447216692432a408d37501b5d113ea35b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.2%2b20251210.orig.tar.xz' libxcrypt_4.5.2+20251210.orig.tar.xz 433520 SHA512:ca004d214406cef4f17b49c338dc01341db0028be19dfa9329f837aa0c6728e298d29685d33991ed79c311d92846711b28530d8088ff4e0ab5661c52bedc7bac
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.2%2b20251210-1.debian.tar.xz' libxcrypt_4.5.2+20251210-1.debian.tar.xz 8732 SHA512:c6e9388ef7b138d6b73bb9468afd3add95ccf2c8716529c942bafe09b42ebe968502a46cc782dea8ceb53a5f331f88bbce441d265f4dac74c1e3258ad6825090
```

### `dpkg` source package: `libxdmcp=1:1.1.5-2`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.5-2`
- `libxdmcp6:amd64=1:1.1.5-2`

Licenses: (parsed from: `/usr/share/doc/libxdmcp-dev/copyright`, `/usr/share/doc/libxdmcp6/copyright`)

- `OpenGroup-MIT`

Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.dsc' libxdmcp_1.1.5-2.dsc 2269 SHA512:6e7ee900e8636a82589087d372ae48d11ca608307fd42a97d4354d11cdf73eced939b0bc4f11922b08996b005f12c68f7e63836920e61848bfce3eae74163d64
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz' libxdmcp_1.1.5.orig.tar.gz 442597 SHA512:400add8f47c28fe9cb80d6159a7268e7f5029d13a6219f3e07087455d99f807aa5b372242be9c14fbb7164b3c8180b8dc5edfeb620412bcbee246162f53c61d3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz.asc' libxdmcp_1.1.5.orig.tar.gz.asc 833 SHA512:e44c62904e5680ede9c3188c2fcf8e453c09d5f89e2958be34196e6f1130177f2e7bbd324337b5ee1902817c09357be0144dd91c2b6fd4e943edebe532c5193c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.diff.gz' libxdmcp_1.1.5-2.diff.gz 10201 SHA512:ee0b681b8333842665b248757caa26e765ca8dc687bff6bc4b52bc0e4374cfed0fd2596b6d4ec821c59137aa17196cd25b34a5c84a8a9fa187efba2362d6078b
```

### `dpkg` source package: `libxext=2:1.3.4-1build3`

Binary Packages:

- `libxext-dev:amd64=2:1.3.4-1build3`
- `libxext6:amd64=2:1.3.4-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA512:4eebd639fd57cb9b84a1e17e368f82fbf3d9f021eef5ad3fe31dd128500db57862a82c1e0d214d447cb7641b2be3fd7e949ee1196f2a482793c6628fb1e5cd70
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.diff.gz' libxext_1.3.4-1build3.diff.gz 12746 SHA512:4919396ef6da409a3941abd772f3bb6839897c96cde3c55b488d09332a2f08a9044d9fcaa1b34087f25acb4e4826d0a6b578d6aad67cdeb9f6347927a64c0fc7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.dsc' libxext_1.3.4-1build3.dsc 2221 SHA512:43d31f2d3bf3e9935014f332d801e6940ae1e439a7d7a951112716688cb1a9602e2dab3a818b57ada0bd476ce4d4d00e7384665444799cddd9a41c068b8375ed
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg-1.dsc' libxml2_2.15.3+dfsg-1.dsc 2738 SHA512:da08c51fd31e5a85ebffe537c3b929d4a549a259c70c6472451d632d2d586fe77f8b8ed5295033c4f4c0f53255ba14cc2809ebbff373a69278b46807e93e4cf9
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg.orig.tar.xz' libxml2_2.15.3+dfsg.orig.tar.xz 2349324 SHA512:dfeb80737b64db88b2029652dd300fa7fc688f77253ade2ec63a9c965b67283f829e0a5e9e96007aafb1fa2513260300129b5435f9df088443b1b12711c4885e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.3%2bdfsg-1.debian.tar.xz' libxml2_2.15.3+dfsg-1.debian.tar.xz 36176 SHA512:503f792ba41204007d8cd09366b4aae4c09de758fc149d4c715293201dbedab2abcb5250ca43d05179f074c68a10595e7a927915253eab4c5274c39a77540ac5
```

### `dpkg` source package: `libxrender=1:0.9.12-1build1`

Binary Packages:

- `libxrender1:amd64=1:0.9.12-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.12-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz' libxrender_0.9.12.orig.tar.gz 450034 SHA512:b7cbe8ead3a4eeb7c42acede8569361cf11818d98d05ede75a5f0c48c3fb6b1c0b3b62bb2ba6aea19b4804938512e63ebed127928b1a553b518e3ab974bd089d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz.asc' libxrender_0.9.12.orig.tar.gz.asc 833 SHA512:299b2654f2bd2b51033072a225a42f75b5e16aff65f6ff171defe9f692f95f69fbcda0b121caf7f4706ee0dd5f9ecef9b2d2ff50a729d40b280fbdeb80ff17cf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.diff.gz' libxrender_0.9.12-1build1.diff.gz 21468 SHA512:ede29895285be98ca7841741d375fe32d170cac2464b2f6909e09c7cfc04c04a870f1ca8024956dc918052b2751bdaba4145ee4f0dda9c7e21f4feea6a9610a3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.dsc' libxrender_0.9.12-1build1.dsc 2282 SHA512:57c55abb028d6903795e7b6b5cdd3f4b00e104d658fd9837bf64f365b37568cb90672d90713fc7bf51fa5008c46426985ed154143e329f08248c9449619b0c0d
```

### `dpkg` source package: `libxslt=1.1.45-0.1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.45-0.1`
- `libxslt1.1:amd64=1.1.45-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.45-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.dsc' libxslt_1.1.45-0.1.dsc 2181 SHA512:bac9f532d885ef4101aaaf15ee0ce0cd166e5e6283ac5cb52173354e220b807e845b55927205ceeaec5ea68849a84fe0d2405b4e391738185a3ba4f950f9afdb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45.orig.tar.xz' libxslt_1.1.45.orig.tar.xz 1519992 SHA512:8f0608aad7250ccfe62808169d464a1641535b41a73b4fbbc1eeec9c9e785bbd8f4860d571eb567ee1e7abbd89ac3d707a5f3e3a9e836ecaf38155793ce47d78
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.debian.tar.xz' libxslt_1.1.45-0.1.debian.tar.xz 26428 SHA512:8390e67c46f90db424ef252cbe058bdc7bbadb5fdd7bece316f308f5c3130638e24fa63c5efd2d9a9849072bf784580efb14dce74eaa3c28d7552abceee8a53f
```

### `dpkg` source package: `libxt=1:1.2.1-1.3build1`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1.3build1`
- `libxt6t64:amd64=1:1.2.1-1.3build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA512:73c2fd8a6590ab5ee93cf646e4f41fb71d424961ecbf9bc13c68abdf539c63ab0c59a4d3b22195ba21859523f4cf0e937648424532794a1350a5891061096503
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA512:135e01b8a79beac9530087dee1a5458c359b4f1ae8346e2502f72f4fc24be400477fda90944315c585e3416e80cb74d1a140d5dfec81e854a4996199a8b221dc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.diff.gz' libxt_1.2.1-1.3build1.diff.gz 46528 SHA512:655250528961eed8992a9da2bc1e1f1476e876a68859680df1418bb9b758e5c7959b7be7b955aa3ee940a413ac723f2cd7cfaa5d633392e917e7931bf9b36eee
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.dsc' libxt_1.2.1-1.3build1.dsc 2383 SHA512:2622d3f65cce40bbd92c31ffdf36961be4a36c66428e35a6a4c66bdaa0713c1cbd210ed8fce5ba60fc4fb3cbe1d66f3e24379f749db75b591c30b080db4c1e56
```

### `dpkg` source package: `libyaml=0.2.5-2build3`

Binary Packages:

- `libyaml-0-2:amd64=0.2.5-2build3`
- `libyaml-dev:amd64=0.2.5-2build3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.5-2build3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA512:a0f01e3fc616b65b18a4aa17692ee8ea1a84dc6387d1cf02ac7ef7ab7f46b9744c2aac0a047ff69d6c2da1d2a2d7b355c877da0db57e34d95cd4f37213ab6e7e
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.debian.tar.xz' libyaml_0.2.5-2build3.debian.tar.xz 5860 SHA512:d771e1430913635319897c47ecce02202f97d0882ffbb73f2908660b4ce7f358fbb09fae5f0a092d77bacb2da5fa3aa259f2e2fa656bdafd347e5e651c873c83
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.dsc' libyaml_0.2.5-2build3.dsc 2064 SHA512:0b5b3bbb06f6c0ea26229a7d42da83f9ad36975829b2fa19ab563534ffc7af1439fb31b61517768cb49bdd007029874ae705fb4a38af7afcf158d0a2c1bd713d
```

### `dpkg` source package: `libzstd=1.5.7+dfsg-4`

Binary Packages:

- `libzstd-dev:amd64=1.5.7+dfsg-4`
- `libzstd1:amd64=1.5.7+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.7+dfsg-4
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-4.dsc' libzstd_1.5.7+dfsg-4.dsc 2507 SHA512:b017f2d585378650db539582a69f742b9496667c803bb88b60003ecc2c5ba416ec063ff66e06c5531cc20d97887f224b111d53f6e4bc5bdc2f04adf4cd3d3182
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg.orig.tar.xz' libzstd_1.5.7+dfsg.orig.tar.xz 1834780 SHA512:74604a877f899df6a47e88b895334c0fe35af9d096d472f535e772b156bf61e5529833173ea766dbf5e58fc20ce40a2e47ff1cbed8ff7f2bbd506c6634ae5145
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-4.debian.tar.xz' libzstd_1.5.7+dfsg-4.debian.tar.xz 22852 SHA512:8e28eee95924b8e9d080dfa29d7c93dddbc5ffa0a7351d8248de72995df3c617ff8a197239c86c066e1c1ba19076acc1af203e61e7252ae35d0bea78d040abcd
```

### `dpkg` source package: `linux=7.0.0-14.14`

Binary Packages:

- `linux-libc-dev:amd64=7.0.0-14.14`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lto-disabled-list=81`

Binary Packages:

- `lto-disabled-list=81`

Licenses: (parsed from: `/usr/share/doc/lto-disabled-list/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-10.dsc' lz4_1.10.0-10.dsc 2069 SHA512:6d517603c989e5fa59021424b696d5b40568d992ca954f937353b04e9060c8afd06d0ab1c5930df003570ada8fe3752bcfce9a1b8597b7bc50b216afaabdc30d
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0.orig.tar.gz' lz4_1.10.0.orig.tar.gz 387114 SHA512:8c4ceb217e6dc8e7e0beba99adc736aca8963867bcf9f970d621978ba11ce92855912f8b66138037a1d2ae171e8e17beb7be99281fea840106aa60373c455b28
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-10.debian.tar.xz' lz4_1.10.0-10.debian.tar.xz 12760 SHA512:2cb99819b123f8dcf620a3e25aff63fdc5a261a5487afc6d583a581444a10b2d3be232f8432c2b7b945b8225a958e57e2c31186c53ec715d0f38c68effbed152
```

### `dpkg` source package: `m4=1.4.21-1`

Binary Packages:

- `m4=1.4.21-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.21-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.dsc' m4_1.4.21-1.dsc 1783 SHA512:100cd6a459d97844e59b35ddc216fc320374bd838984e5e7e98783570953984186ceeb5a545534be76f5c515d8edc848a13b57cc68aa89552bf76819d2e178bf
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz' m4_1.4.21.orig.tar.xz 2080016 SHA512:efe5ec212f6431129a79667f098b2efe2e824122112f73a675deccb9c0d8c9b0bc9e3bf50c9cd5c0b894dc0af1b3f02253e5e67893fb9548a6a9d3bed7c829f7
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz.asc' m4_1.4.21.orig.tar.xz.asc 488 SHA512:033c1481a1629bcc6ae1cb3437630b00a6b04a4f1aecc26db33b475aff088d50aa7dd15f053cad5a7014ce1b197e8533b8fc5f8f555a952ddb334a9d6e1af059
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.debian.tar.xz' m4_1.4.21-1.debian.tar.xz 17296 SHA512:c8bc8ad5377917aa65f8d5c6debd33a505612d9cef9199302d8b1c65b6b45e6952ff284dcc0122ca84437ea731be744c13fe5dc06950dacba1e3ad5a78ac01c7
```

### `dpkg` source package: `make-dfsg=4.4.1-3`

Binary Packages:

- `make=4.4.1-3`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.4.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.dsc' make-dfsg_4.4.1-3.dsc 1976 SHA512:38bdcdebb057ef98a07a7de65a76f2f5780f70fad4dc99835fb0a6ab001c68c30e54d831f64247802885aaa06db3fd2ae3b58fe950bc0804510d5413511f90fd
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1.orig.tar.xz' make-dfsg_4.4.1.orig.tar.xz 1125180 SHA512:7efa533e7c85e0f394d2a9c422c1cf854f304871f0c692ff74eac18597fa53d1a79b41ba1c56b88d8c79f2e6dfb8c3c3ba8640af15756f455167d62e7ed7b04c
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.debian.tar.xz' make-dfsg_4.4.1-3.debian.tar.xz 44236 SHA512:7236506f2d13ad33ca2eb3a078243eba2b707cc1a75f5a42252f0e1219e5dad708e37bcf0dcd3b1f5c3620e7c2e678b717a87533a7d715d6da9a12df15b758e2
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260302-1.dsc' mawk_1.3.4.20260302-1.dsc 2969 SHA256:26e1f5c5864ea340a8f16049025a31be2aa16c7bb59ad531616e7066032953e4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260302.orig.tar.gz' mawk_1.3.4.20260302.orig.tar.gz 438318 SHA256:e2c08a77d0a84a01f9be454d1ca3872d4f103f9ada683d075198b0c6e965633d
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260302.orig.tar.gz.asc' mawk_1.3.4.20260302.orig.tar.gz.asc 729 SHA256:19d493061dff7df253d698f866be24856028155f51abb037fdb4ad2872d611f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260302-1.debian.tar.xz' mawk_1.3.4.20260302-1.debian.tar.xz 16128 SHA256:0e9a3e00800cb10dab402196b0511ed19a9f626e351b6cc1b807026f3594de62
```

### `dpkg` source package: `media-types=14.0.0build1`

Binary Packages:

- `media-types=14.0.0build1`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=14.0.0build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.tar.xz' media-types_14.0.0build1.tar.xz 65280 SHA512:a4362a1aa1c07f9d3f514a8d5138de4d82cc4172fcad13ecb691a1ba38dbeaec9389838207f3ef80ded8346e4fccae31e0034e0613e6f81e9bbe1a5ae7faee04
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.dsc' media-types_14.0.0build1.dsc 1671 SHA512:fda7b5f6767b4628e94319e891b6e8110572ac12b8d10f30a7aabaad1abddba4e468dc8830365b0058c9a44fb5917f5c8fc80eca4df9c13f445ec5ffbb999e29
```

### `dpkg` source package: `mercurial=7.2-3build1`

Binary Packages:

- `mercurial=7.2-3build1`
- `mercurial-common=7.2-3build1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=7.2-3build1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2.orig.tar.gz' mercurial_7.2.orig.tar.gz 9244423 SHA512:716203e038959e6641fdd8ed4bbcff8774f0d525f1709a20f51fe4faf0545bdbef1c567b382378b7bc07a3f08c620ea6a600ada2bb5a99d8da69be0155be1f7e
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2.orig.tar.gz.asc' mercurial_7.2.orig.tar.gz.asc 659 SHA512:03aae2720cc4b9e130e8e2d9ab0a3551192e466416811dbd2f6f239f1de51161ad0421f9ee37c40e434f15a1b5c3969558b8d185c0cf1412a12823106b122a36
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2-3build1.debian.tar.xz' mercurial_7.2-3build1.debian.tar.xz 54944 SHA512:34ea2cfb365fba8ecf12a5e745904f17baff2c0e5eeb981506127f5a998909d9cb7a1199420e74008866e3b2db90e1c5b7a860b323811b6991a2dcb9fc627771
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2-3build1.dsc' mercurial_7.2-3build1.dsc 2856 SHA512:f6f0f4b12f88c1dd3dedf03a58f058fafaf1524946b2c27ac14308744ce7c602b1f2a668d963769fd4f63099a665a14851868eeef17fbec1a6e07a8f499de445
```

### `dpkg` source package: `mpclib3=1.3.1-3`

Binary Packages:

- `libmpc3:amd64=1.3.1-3`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.3.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-3.dsc' mpclib3_1.3.1-3.dsc 2003 SHA512:561ed194930220d9a92b5d371a87d540582e3f7de26ee0227cb2edf9b9ae1f022d0f59d5cbaf4769dbd841dcba838951a57269cde7d81f762746425a15e4bdca
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1.orig.tar.gz' mpclib3_1.3.1.orig.tar.gz 773573 SHA512:4bab4ef6076f8c5dfdc99d810b51108ced61ea2942ba0c1c932d624360a5473df20d32b300fc76f2ba4aa2a97e1f275c9fd494a1ba9f07c4cb2ad7ceaeb1ae97
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.3.1-3.debian.tar.xz' mpclib3_1.3.1-3.debian.tar.xz 4672 SHA512:4d14400df48308b3258d2f5df6879dffae0f969cc55ec9f8d4efd126b561dde431357c2f6b54e0fadbff02f917ad7038c15120dde13e4ec90b879d26605736d0
```

### `dpkg` source package: `mpfr4=4.2.2-3`

Binary Packages:

- `libmpfr6:amd64=4.2.2-3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.2.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2-3.dsc' mpfr4_4.2.2-3.dsc 2081 SHA512:c32081b29dfafe99ec2b9eec27e953772d456f1d913c900c6e604ddde553fbcec0908cb4349b66e79dcdc2f61dc9aa0b50f557809bdf061aaf1637d07f245271
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2.orig.tar.xz' mpfr4_4.2.2.orig.tar.xz 1505596 SHA512:eb9e7f51b5385fb349cc4fba3a45ffdf0dd53be6dfc74932dc01258158a10514667960c530c47dd9dfc5aa18be2bd94859d80499844c5713710581e6ac6259a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.2.2-3.debian.tar.xz' mpfr4_4.2.2-3.debian.tar.xz 12652 SHA512:946f51555d13014ea9b80a57f2e9c7945e0877acbd1df599a8ec06a2852b4062b26660c5d5b6bb7ca7bb675343c9db3f5455c1a9ee5410903406f0b4addc17bd
```

### `dpkg` source package: `mysql-8.4=8.4.8-0ubuntu1`

Binary Packages:

- `libmysqlclient-dev=8.4.8-0ubuntu1`
- `libmysqlclient24:amd64=8.4.8-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient24/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
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
$ apt-get source -qq --print-uris mysql-8.4=8.4.8-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.8.orig.tar.gz' mysql-8.4_8.4.8.orig.tar.gz 479002191 SHA512:4e95db1a1c2bf99240d846e690784616b15fb3137b4512072ad71a40911c5bb72c0b0354cc588aab7cd5d396e1d1c709a63d9cd09ae664d8fe6ed0f7683e4cf6
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.8.orig.tar.gz.asc' mysql-8.4_8.4.8.orig.tar.gz.asc 833 SHA512:62fcf0be950f5f9bcec0670bba921d556218a33776f524395ab0d0710c54060192e40e52e1307ed10516cb0553f994ba00dc10342cc9620f5ff20e5705eaf28b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.8-0ubuntu1.debian.tar.xz' mysql-8.4_8.4.8-0ubuntu1.debian.tar.xz 135760 SHA512:60b0bd9e793611fb1b0bf085586693c47b950aabb2bd2575f180b3114a3c37648eb6634c23cd7db6535ada227ca5b4aeeda367622cddd837c73af985dcccaac6
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.8-0ubuntu1.dsc' mysql-8.4_8.4.8-0ubuntu1.dsc 3801 SHA512:2ed154f71c914fe62768d1327a7deba85e11da1499f01a2dc871d6004e750b6fadd1897bebdc98a9f8fd99f3f50e86d3c69804aae038dc5b9aa79f7ccd99d2d4
```

### `dpkg` source package: `mysql-defaults=1.1.1ubuntu2`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.1.1ubuntu2`
- `mysql-common=5.8+1.1.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.1.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.tar.xz' mysql-defaults_1.1.1ubuntu2.tar.xz 7628 SHA512:288f877f8e15fb60be9d2748cfadb5153ef65b42072ea5a61456649e626f57da97f93e4d789003fabb27866af0a8559a99732fb9b48aee85a8b6a621b4373d4a
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.dsc' mysql-defaults_1.1.1ubuntu2.dsc 2309 SHA512:527d0eacb21cc020ba22d589cb98c0599de44fe9db40ebbda73e02a081f0ff29dce6b07ca9524467469edad15f45923a4b78b6657f2aeb2975f650ca203e1a00
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20260608-2.dsc' ncurses_6.6+20260608-2.dsc 4163 SHA512:8025574188595a3187e2062a970b9a37e3ab17ca313d9ac7028536f3dedf4dd955455f471ff299355b2b4133e65ecaa05414d5b930f2c9ccfda8563057f3d870
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20260608.orig.tar.gz' ncurses_6.6+20260608.orig.tar.gz 3806095 SHA512:0731329aff788b050a1ad0803d82fab97564a5f663c368d2d9fa993329d61a3834bf05b9e833ce57293baf7eca4b0299dbd7293431503f0644861cb322ace248
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20260608.orig.tar.gz.asc' ncurses_6.6+20260608.orig.tar.gz.asc 729 SHA512:f3c00596d152b6232d6608da23070c56c25bdf34166eb56d6b05cf5a0e07897db5bc2dad8bfab3f182a43e9b29a1bf2063e320f659996a85ee2122fb6aef3944
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20260608-2.debian.tar.xz' ncurses_6.6+20260608-2.debian.tar.xz 50996 SHA512:12cb9d146014977e673adc86ba5adf365ccdbd31df585403a7d0d1ba4645d4b6be4300a6a3255992b11d64be3d21bbf21fa5606a853c50173def844b5e34b2a0
```

### `dpkg` source package: `netbase=6.5build1`

Binary Packages:

- `netbase=6.5build1`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.5build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.tar.xz' netbase_6.5build1.tar.xz 32620 SHA512:03132bb9c84ec4d5536dc2b7072e020584244d1adf5e9d1fffb50269a6b6d973233453e869eb672e7ed671c2e46660f510f67ec04d079fdaeab64f5019272443
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.dsc' netbase_6.5build1.dsc 1527 SHA512:cbb9d44680c56f483aaefaff5cf76c6384115fa0883ae8cdeba87c41c3f9cdd54727075eeb230f63686cff07ee419a9cf455f6d1687bc52bb46f2ba847cfe9cd
```

### `dpkg` source package: `nettle=3.10.2-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.2-1`
- `libnettle8t64:amd64=3.10.2-1`
- `nettle-dev:amd64=3.10.2-1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.dsc' nettle_3.10.2-1.dsc 2297 SHA512:2429234b8b6d02c98245acb4ff246213e77682d2618c45436fd44ffd2e7dd1052e07a0d92bf3143c2cd36bf8f846d3ef65c10f834f1914f93da66149d5c6ce4b
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz' nettle_3.10.2.orig.tar.gz 2644644 SHA512:bf37ddd7dca8e78488da2a5286dcf16761d527d620572b42f2ad27bb8ee8c12999d92b0272e06f53766e7155a3f4a1ab7ad9c4b1c3caec47c031878b6b1772fb
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz.asc' nettle_3.10.2.orig.tar.gz.asc 573 SHA512:a998bb2e565ef4e36d8783cb78d5cb74dc3cd499d7706f381a75210194bff93e9ccd9102f6f6eca5a061e1172aaf9970c9ea109670027fbda23f299e78ba6c55
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.debian.tar.xz' nettle_3.10.2-1.debian.tar.xz 25052 SHA512:45739e3af9c2ec00a1f7b9c0998e87bcf0a0803dd1aa52c6eae1a536e637435800aafee5aed570c7b8e9515d2838a445f74c0e648a944417de9298561c90bdd6
```

### `dpkg` source package: `nghttp2=1.69.0-1ubuntu2`

Binary Packages:

- `libnghttp2-14:amd64=1.69.0-1ubuntu2`
- `libnghttp2-dev:amd64=1.69.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`, `/usr/share/doc/libnghttp2-dev/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.69.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.69.0.orig.tar.gz' nghttp2_1.69.0.orig.tar.gz 2667714 SHA512:58c9c1165514040e9944ace8d0b5852578a1f2460d20929712f25dcba035c104d66865e53a97294a44b35bd7680f6525edcee7c547498829b27b1f14833608c8
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.69.0.orig.tar.gz.asc' nghttp2_1.69.0.orig.tar.gz.asc 833 SHA512:794935dbad1663e10cc7b0c68fceca124bc10ed136448a5512697b2fd893bf157288057eca1dd286c10c9a5b8d51a1ae0ee10eb06b5361b5c6528e3abc2eb415
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.69.0-1ubuntu2.debian.tar.xz' nghttp2_1.69.0-1ubuntu2.debian.tar.xz 17840 SHA512:25cc335a929fb0ed333abce2353c98312bcebcc1c227043abbf3c2c9306c35ee6e921fa33acfcd2fa6b09772b544dad7f91d1ec7253a36411f991e08bf0f1812
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.69.0-1ubuntu2.dsc' nghttp2_1.69.0-1ubuntu2.dsc 2853 SHA512:e91fc519cb3db5823aee31fa2e833c9aed94c8a279895d01e7ffaef3dfe8675190e463742f1ee5af1f064324ed900fadf9e39edccb35326126299729c0b6fbbd
```

### `dpkg` source package: `npth=1.8-3build1`

Binary Packages:

- `libnpth0t64:amd64=1.8-3build1`

Licenses: (parsed from: `/usr/share/doc/libnpth0t64/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.8-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2' npth_1.8.orig.tar.bz2 317739 SHA512:34fdeea3d8a7a594d8fdbcc6d5d389b5c8e282e8e84c1491b1e51960c0fa007df6a1d62543f0107f0772f3215557d4b25c2a9c7067cb0ae2f8de7b4d63d09fb4
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2.asc' npth_1.8.orig.tar.bz2.asc 390 SHA512:2d2d26d2bde77997187792f724b89b6c1ba7ad845c0087d78d7bd2eef688136df8fa8ea02c5199c0a3ad602bf228af0fadf82ecd3ff4b9ed35c71d009bb2e1a5
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.debian.tar.xz' npth_1.8-3build1.debian.tar.xz 8752 SHA512:b834fb1ce6f2d4d267fd2263a66e210ac07fb66be29a7fd396997437e33f0e3b1f89b9a093cf400a112a40ae7e62b4ec5ea3dda63861e52a4832d63bbda812cd
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.dsc' npth_1.8-3build1.dsc 2212 SHA512:3f8e58740736464a74a97012dee0f7141ae9ffbcf315d3f388aa5fc52031ef4c0e3abad39fad258b6732e21df31878b6d20598ea88e7e719d9a001a99d86e845
```

### `dpkg` source package: `openexr=3.4.6+ds-4ubuntu3`

Binary Packages:

- `libopenexr-3-4-33:amd64=3.4.6+ds-4ubuntu3`
- `libopenexr-dev=3.4.6+ds-4ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-4-33/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.4.6+ds-4ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.4.6%2bds.orig.tar.xz' openexr_3.4.6+ds.orig.tar.xz 20545840 SHA512:481e95f2d0ec5043371dd53bd16743b412b46d0a0e420c2ff41ffe4db0e9b3870316a0fc48c07e238495b19f45d5c6d7bdb3ff7e6ab1ec244258c096b24b3e38
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.4.6%2bds-4ubuntu3.debian.tar.xz' openexr_3.4.6+ds-4ubuntu3.debian.tar.xz 18744 SHA512:1b54338bb6ad16d8619090abd12151540a5889b4181826cf018fe85551377575447ba62a9a9e1e1d211ae9dd25ca20b1db6e723ce66c999d1ea18e4803f130ac
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.4.6%2bds-4ubuntu3.dsc' openexr_3.4.6+ds-4ubuntu3.dsc 2374 SHA512:e159e20a9e03170cec1a5105236868ff2d5e2c07357d38966547f9558aab4921bd5cc0c250eabe2670e9d23a515ba49823ee7d5acfea026265dbde002b96f102
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1.1.dsc' openjpeg2_2.5.4-1.1.dsc 2606 SHA512:3e68e4a899d0a1c5fbb233be51a2c319091246c9dacc4ee3c4f57129c13800aa9822d6684fc16028a24c915be8b40095fe581420287c9896049011192a4a21a5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4.orig.tar.xz' openjpeg2_2.5.4.orig.tar.xz 1395184 SHA512:343594a672429833389e2826456dd9800bb0118618ec9e84ea10f3846736bb32b46baa95a702e69b84c93cff70ddc7fa1baec78ae6a801c01b9cc723f072233b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1.1.debian.tar.xz' openjpeg2_2.5.4-1.1.debian.tar.xz 16116 SHA512:f524971892061ba23a62d80865b9d18048b85389565910e18f1788f3a07113c22622803a60445075e592a0aeb6a28a99c6a90b34eefbad0edcf169d2d03705fd
```

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
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjph/openjph_0.28.1-1.dsc' openjph_0.28.1-1.dsc 2172 SHA512:259749ce097d95b9b71a85c757b2edd08670728a022e07d83f0d5a3b8e66dbdfcf5ce210b4787c132ab640cbd10f0736f2e7fde484da7b2b5e30fcececa42493
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjph/openjph_0.28.1.orig.tar.gz' openjph_0.28.1.orig.tar.gz 497176 SHA512:3b88a7cb3a1375ee5555c6b0df4bf0546842ff708a344b86cb76baa7bce24a1551189c7eaf4acfdcf309dc8dbd48b587ebf0a40c72cce563a20aa6274846e440
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjph/openjph_0.28.1-1.debian.tar.xz' openjph_0.28.1-1.debian.tar.xz 5568 SHA512:3f8123acd5fc895b066c4e4e905050fc92ea023b8195f0790015f569b2a7a12e5abb040a8c25a18f12838fb2847b35209aa95b328d6043a82b949d01b22f4fcb
```

### `dpkg` source package: `openldap=2.6.13+dfsg-1ubuntu2`

Binary Packages:

- `libldap-common=2.6.13+dfsg-1ubuntu2`
- `libldap-dev:amd64=2.6.13+dfsg-1ubuntu2`
- `libldap2:amd64=2.6.13+dfsg-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libldap-common/copyright`, `/usr/share/doc/libldap-dev/copyright`, `/usr/share/doc/libldap2/copyright`)

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
$ apt-get source -qq --print-uris openldap=2.6.13+dfsg-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.13%2bdfsg.orig.tar.xz' openldap_2.6.13+dfsg.orig.tar.xz 3801012 SHA512:738fdac5c2b3f5a61afc33725af3d6e4acd1381bfa948aa284641c2b344183531bc25de971fbdde849d011547a0430556071a7fda8ad76c2477018ed8efc10c3
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.13%2bdfsg-1ubuntu2.debian.tar.xz' openldap_2.6.13+dfsg-1ubuntu2.debian.tar.xz 194612 SHA512:65e4bb61a1f1616aebbf8bb8aeabb9a0854b8db392f752c96b022c74aed5acd4605efa92ef689d4ea0db94164add24462cea93e1a4ada5746cb5ff04aa9f9fbe
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.13%2bdfsg-1ubuntu2.dsc' openldap_2.6.13+dfsg-1ubuntu2.dsc 3393 SHA512:fc23fee0b61c92d29accb0fc16059a0c44ded82fe4d5b88dc07416fd5d1974dc248319fa0a35dffb8bcc57ef406138ebca38777125a9f8c7593008715b9dc3c5
```

### `dpkg` source package: `openssh=1:10.3p1-4ubuntu2`

Binary Packages:

- `openssh-client=1:10.3p1-4ubuntu2`

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
$ apt-get source -qq --print-uris openssh=1:10.3p1-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.3p1.orig.tar.gz' openssh_10.3p1.orig.tar.gz 2007369 SHA512:cb2bd67086491c25e305879b924c3dfa8236502a60c7f250b2fd17d2d9a79ebfc2e40b2f43e42dcf598cc510996e00cc03df9b8e38f34bc2dc71a3d4ff3788fa
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.3p1-4ubuntu2.debian.tar.xz' openssh_10.3p1-4ubuntu2.debian.tar.xz 217356 SHA512:dfc284f345916f90b83ef8d071703c346ff6e5fdbc90538857b9876a61429b81006133ff89bf4d839477d07af28630be452cb45ff20fd4424f61a46058a98e8b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.3p1-4ubuntu2.dsc' openssh_10.3p1-4ubuntu2.dsc 3280 SHA512:d123338badff06c40e18c81a8478ebf64b2ac96bb54f3790226cfa1a2ca841b3e4c09929d238232a8ad0b46eec33e88e29f619330507fcb0b845583df8c509cd
```

### `dpkg` source package: `openssl=3.5.5-1ubuntu4`

Binary Packages:

- `libssl3t64:amd64=3.5.5-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `openssl=4.0.1-1ubuntu4`

Binary Packages:

- `libssl-dev:amd64=4.0.1-1ubuntu4`
- `libssl4:amd64=4.0.1-1ubuntu4`
- `openssl=4.0.1-1ubuntu4`
- `openssl-provider-legacy=4.0.1-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl4/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=4.0.1-1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_4.0.1.orig.tar.gz' openssl_4.0.1.orig.tar.gz 55079428 SHA512:84104cbd928a3fbcb9a90c567fa37f927b974d4744b8cd774641e0d07db065d1564fa4c3df4c26818f3c6e726ca71b3aae72109d10482bba3396949886fc8892
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_4.0.1-1ubuntu4.debian.tar.xz' openssl_4.0.1-1ubuntu4.debian.tar.xz 67368 SHA512:c15f4862fc7b56d07a78ceaf66aaf0356f76ef496c94f20d368be4bcb66121de6b10abcc4f9ca5c859e7f80060c0202ef338698fc3e87a2b354c6054acffd189
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_4.0.1-1ubuntu4.dsc' openssl_4.0.1-1ubuntu4.dsc 2050 SHA512:e0d0baca65bfb4a61d38093c03a08ba16ba29800227d1e1dc01c76bb605c2168ed9d49a7241caf5b31106ddd8cc97a82c76e45aafaec6a2f706ba063487541eb
```

### `dpkg` source package: `p11-kit=0.26.5-1`

Binary Packages:

- `libp11-kit-dev:amd64=0.26.5-1`
- `libp11-kit0:amd64=0.26.5-1`

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

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.26.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.5-1.dsc' p11-kit_0.26.5-1.dsc 2541 SHA512:e10c9b273b1977765655acb0368b6d7fe4131e4e35d424b46a8be432c6e64a0bfa3a23f0a1f6a5926ee0833ccb46729d754490faf1470cab0910421a10706a42
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.5.orig.tar.xz' p11-kit_0.26.5.orig.tar.xz 1082584 SHA512:180d8bfd07332aeb31b3008c6bf68492a754a81cd59c761ed76673210312b9c6ac7fbcf57df8328e897044a09f3531fd1701e462731feec4427b7430bb4c789e
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.5.orig.tar.xz.asc' p11-kit_0.26.5.orig.tar.xz.asc 228 SHA512:576f27af152d315e07ec5bf3b5be3a2bf91cde202ef780466385dce9ad19936cd270a10a89c59130b03c0e65a0fabaefb1ab54b291c21cb40fd964fd9b96fd03
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.5-1.debian.tar.xz' p11-kit_0.26.5-1.debian.tar.xz 24628 SHA512:c14d75f30941253dcef21040539c4d775c3a6af5457e550cf1dd8793aa383975acddc32b39ed3991367bc65f5cc52b216474e77ad09a28e23061b264a034150e
```

### `dpkg` source package: `pam=1.7.0-5ubuntu4`

Binary Packages:

- `libpam-modules:amd64=1.7.0-5ubuntu4`
- `libpam-modules-bin=1.7.0-5ubuntu4`
- `libpam-runtime=1.7.0-5ubuntu4`
- `libpam0g:amd64=1.7.0-5ubuntu4`

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
$ apt-get source -qq --print-uris pam=1.7.0-5ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA512:ab5cadb0eb5e95e36146fdbbc77eef4e5e0f38aeee4e819b080a1316f69969c3c33e4a2daf3246ded4c2e58ce517d7f1acb0d8de02a4898ff753f4c3aeec51cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA512:573bef1d63c0ce4efb5d1efd71a582f6ff679f2e278c326f66e142175cf67e42404453d41b92c5ce201b7d41db7b0617695f0d0972a812f0ab19553dec37192e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu4.debian.tar.xz' pam_1.7.0-5ubuntu4.debian.tar.xz 195588 SHA512:4204bb65ed7db116060053f6106411a6c33dc218e066f0166a56d990d862b31ef37fd9882adbb9609ca6d1c48c51d24be5eb67919050a399d4ff14cbad9a3956
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu4.dsc' pam_1.7.0-5ubuntu4.dsc 2926 SHA512:685f01af20976ec2b1db05ee57d0fa81c0a8e3e08aa2a99af15440106dab3c7c7cfb4becbfe8f57560bb3356176f2cd842540d1ab0ba283569b6ef8aa0b000e3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.58.0-1.dsc' pango1.0_1.58.0-1.dsc 3667 SHA512:56169d7716fcf5a4106536d7c6f4199c7fc42c8b0d55f0c773db32962c6cd6905529a1dedf728a0b438c139694fd1579c72b5dfae87ff9cc101d05a69969bf6d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.58.0.orig.tar.xz' pango1.0_1.58.0.orig.tar.xz 2590672 SHA512:5edf537653eee47aba5de53faac8d3906894069902fc4b301fc99daff5da3f35037ca14d75e21769ef0abcafb12a031e3ea8c02cafe967b678c11977f612485f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.58.0-1.debian.tar.xz' pango1.0_1.58.0-1.debian.tar.xz 44304 SHA512:c108687c9efb289a0452f26b2749ace5884fd84399b72b66333a0d889527f52f7e51c3e059eae84a8d11d4c405c120a6a6ba808552847314b64fee59bec8629b
```

### `dpkg` source package: `patch=2.8-2build1`

Binary Packages:

- `patch=2.8-2build1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris patch=2.8-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8.orig.tar.xz' patch_2.8.orig.tar.xz 907208 SHA512:d689d696660a662753e8660792733c3be0a94c76abfe7a28b0f9f70300c3a42d6437d081553a59bfde6e1b0d5ee13ed89be48d0b00b6da2cadbfc14a15ada603
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.debian.tar.xz' patch_2.8-2build1.debian.tar.xz 9512 SHA512:e19f158ba106992bd9bbf23ceec57f58b85f4817a839d829ef00ddc6752394002f123a1575b2cab94649117eb1b96463fb3dd45c59c731d571621b23fb2fc484
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.dsc' patch_2.8-2build1.dsc 1713 SHA512:bf3355a5e92a37ee77ead1b6741c6d5dbb9739b201c4a9e3ca3e50ebe79d5272909297a48eda29ed91236ce72528ac37541108269bb2d8591f1ee8be146aa5b8
```

### `dpkg` source package: `pcre2=10.46-1build1`

Binary Packages:

- `libpcre2-16-0:amd64=10.46-1build1`
- `libpcre2-32-0:amd64=10.46-1build1`
- `libpcre2-8-0:amd64=10.46-1build1`
- `libpcre2-dev:amd64=10.46-1build1`
- `libpcre2-posix3:amd64=10.46-1build1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-16-0/copyright`, `/usr/share/doc/libpcre2-32-0/copyright`, `/usr/share/doc/libpcre2-8-0/copyright`, `/usr/share/doc/libpcre2-dev/copyright`, `/usr/share/doc/libpcre2-posix3/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-3-clause-Cambridge with BINARY LIBRARY-LIKE PACKAGES exception`
- `X11`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris pcre2=10.46-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46.orig.tar.gz' pcre2_10.46.orig.tar.gz 2718545 SHA512:8bc85f1e47633f4cab07e00b65e9f94a38bb8db56d7ea0a3068774a5ccfe5b777e6645c0a345dd265a06aa6672448ad51c9e56636c48ec87dae9f884a998e00b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.diff.gz' pcre2_10.46-1build1.diff.gz 8804 SHA512:b430153c7e3b41f0ddfa526ed816d66111b27415c8d0863d8c516c27f84e0370d517911048db6ec1ad0ce45e08c4c5afec369b7d64b68b200e2cc5c20251049a
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.dsc' pcre2_10.46-1build1.dsc 2221 SHA512:5454744ec42c17a8153fc479577f6cfb2be961e5588e02828908b4f1d618878d9f5c783f4bdccf6f1f62303b8e4b52a31f62e2dbe37dff1cad08907726a418e1
```

### `dpkg` source package: `perl=5.40.1-8ubuntu1`

Binary Packages:

- `libperl5.40:amd64=5.40.1-8ubuntu1`
- `perl=5.40.1-8ubuntu1`
- `perl-base=5.40.1-8ubuntu1`
- `perl-modules-5.40=5.40.1-8ubuntu1`

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
$ apt-get source -qq --print-uris perl=5.40.1-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA512:933261779f476b0edda581270949c92e8e7dbe4bcaf1417398e708a321cdb748fe329acb703b2e74446cdfb03c20cefcab1eb972b852418ed3ea9b870db1fa86
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA512:3ff16b3462ce43ff38dab21b3dfc20f81772b8c9eac19ab96ba2d5e6cbb390e2302fa76c4879f915249357cd11c7ec0d548bcbf3ab2c156df1b9fca95da3f545
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-8ubuntu1.debian.tar.xz' perl_5.40.1-8ubuntu1.debian.tar.xz 180004 SHA512:7ae4b22d226e975f94d3de3b319b774c0bec94ed994c4fe348ccf8b80e164729505eb6c0f98da2018d3615aca9aef2be942556bc397c1a395b2d86003cdb9d60
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-8ubuntu1.dsc' perl_5.40.1-8ubuntu1.dsc 3015 SHA512:10419b77b43a520c7041db6fb4955701bf9070658defadcee16b10d746e18c4d078d106de13e27310b352d70dd53a57c0c1142341f94247a7de6820ee6e3dd79
```

### `dpkg` source package: `pinentry=1.3.3-2ubuntu1`

Binary Packages:

- `pinentry-curses=1.3.3-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `FSFULL`
- `FSFULLR`
- `FSFULLRWD`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf-data exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-data exception`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `QPL`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.3.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.3.orig.tar.bz2' pinentry_1.3.3.orig.tar.bz2 620687 SHA512:3562d6a83af01ab9c12fb3e4710e3233078296c1275a69c6ac5ebe7461e95404d6504c4fde82f501f861b3ae960b7d13052bcb359a62dfc078ade29e08b86735
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.3.orig.tar.bz2.asc' pinentry_1.3.3.orig.tar.bz2.asc 265 SHA512:3ee6e99492c693c1902fb0793c759e04eedd1ea35b80126f5d93a1db7f98cdd1b368ce3ade77354da22130f84d8b7b1d813f9a37bc3f15f0a4a157bec39ec2cc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.3-2ubuntu1.debian.tar.xz' pinentry_1.3.3-2ubuntu1.debian.tar.xz 23116 SHA512:028c0cbf5a7cf37d5ac765a8c1bd03e5ad673da3b754598768159bb55f632a309861256c8db324ab490d6e9f18e5f736ad9ae3d27b7a7ea7c3904d9efed2c7e4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.3-2ubuntu1.dsc' pinentry_1.3.3-2ubuntu1.dsc 3431 SHA512:0d3f9983ecf475015f1a622ffc8a9768c2d9a84ce9d8210607f43f221e0609cbe765682bab7bc4b8c167d785369b8fdcb89701fd6452a59ae214db1dcb4ec42c
```

### `dpkg` source package: `pixman=0.46.4-1`

Binary Packages:

- `libpixman-1-0:amd64=0.46.4-1`

Licenses: (parsed from: `/usr/share/doc/libpixman-1-0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pixman=0.46.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.dsc' pixman_0.46.4-1.dsc 2019 SHA512:9c059227bf84e62d4f6419406f7ea1c6b5e8a0a2dc9ace4c8ecbbc272b568ea9965c402508a7356747645bd98758fbd51488481fbd2151265e46eb20dd621fd7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4.orig.tar.gz' pixman_0.46.4.orig.tar.gz 827198 SHA512:10ddb88b51f5456c440d77a7b4230600b099e818378a9b55f715bbe5ec3d9f1e9da2124d28a2bd3377f1ab20af87e0ec4fa9dadaa20a2f1f880dd2dc7f27ca6c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.diff.gz' pixman_0.46.4-1.diff.gz 9639 SHA512:df40dca4e3663782f5431f1dfb4087fa659003bdf0ba3daa7fc527acf9bff03dabdb37cc7498e0b920c318714f1c42c2791b6281af8f2b3fac21cfd8602d2eae
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.dsc' pkgconf_2.5.1-4.dsc 1772 SHA512:679cb2e432f999848fd2a582687a72b6731bf8929037a5f7b4d9fcfb23159cd01a476314fba4099fc8f8979e7eab5660b97ec383edebee5783e664bbd26b1336
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1.orig.tar.xz' pkgconf_2.5.1.orig.tar.xz 328064 SHA512:e654c3a460e5f0f801e8ac43ad9086f397d1da0553186ff05f5f0e18ffdac99fb652fd9b6c0379db4bc8307699699d69bc66d13cc85a4a6b0cd36462f5948a1d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.debian.tar.xz' pkgconf_2.5.1-4.debian.tar.xz 11116 SHA512:34fe74306fa44a22a2a3a65220195bbee57c3827376c58123486f2b50ea6aae48aa9a5d93ed0623154d373cb6d2ec1f984a1a1eae2d0b2e9c9a7225671e71c10
```

### `dpkg` source package: `postgresql-18=18.4-1ubuntu2`

Binary Packages:

- `libpq-dev=18.4-1ubuntu2`
- `libpq5:amd64=18.4-1ubuntu2`

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
$ apt-get source -qq --print-uris postgresql-18=18.4-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-18/postgresql-18_18.4.orig.tar.bz2' postgresql-18_18.4.orig.tar.bz2 22567173 SHA512:1a7606b5b2460a4fc817d491e1e03262df17ece6869fa3d2b80647baffcfb790fbcfa019c3b10fab9f9a14218651b6a358864e40a5d8c5ddc796db2d6e5b469c
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-18/postgresql-18_18.4-1ubuntu2.debian.tar.xz' postgresql-18_18.4-1ubuntu2.debian.tar.xz 30276 SHA512:985e13628134040a5c3ad2d0502bc15ed6db4efbc09975ff1f04edb1c22db7b23caafdc231201359058e4a58feaeed8dca267bcd09c670d3ef8920ab3ec64e27
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-18/postgresql-18_18.4-1ubuntu2.dsc' postgresql-18_18.4-1ubuntu2.dsc 4550 SHA512:15da5a65e8038e9a54912abe0c70ba61ffb8a5034de9798ebd3176d7678179f412df01f8214c5be6330eea4dc2e626906ce4504ee90b247fa8ea1d3cd7cd49bc
```

### `dpkg` source package: `procps=2:4.0.4-9ubuntu1`

Binary Packages:

- `libproc2-0:amd64=2:4.0.4-9ubuntu1`
- `procps=2:4.0.4-9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libproc2-0/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.2-2.dsc' python-packaging_26.2-2.dsc 2350 SHA512:8ebf24e20056c3be0113c3cd5df373874884d7e04fac95f3799feb1482d23639cc1c4fcfcd1a324bcee1e47dffa24cb623d7b65731c85a7f697897d09d061f39
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.2.orig.tar.gz' python-packaging_26.2.orig.tar.gz 228134 SHA512:cefa0ac8cfade3e86d73c62e79aff75e7e24337495f6e675c20ddd3fa3f3431eb48764a34e5ab0bcdacc0d2204afdc0088686d1f3f6880e9a8ae055da4867f15
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.2-2.debian.tar.xz' python-packaging_26.2-2.debian.tar.xz 6172 SHA512:3200bc94ad6ffaa554f5fdb979f9b9f59a3281bbad475c8fca84129809d4b35103a10cd0ea41debbc17364024da1d74501164374b6f8cf6e04c70593592c7b16
```

### `dpkg` source package: `python3-defaults=3.14.3-0ubuntu2`

Binary Packages:

- `libpython3-stdlib:amd64=3.14.3-0ubuntu2`
- `python3=3.14.3-0ubuntu2`
- `python3-minimal=3.14.3-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.14.3-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.tar.gz' python3-defaults_3.14.3-0ubuntu2.tar.gz 147194 SHA512:667f2ebae6a4093b576a7abdef076c543f9c627ef236c9a47c1c3157d2b3c1b623ca9870aa33692cb9dc57644a08b9d6ef77c1599c3964f5ed8e29eb96b708cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.dsc' python3-defaults_3.14.3-0ubuntu2.dsc 3081 SHA512:424001750dad66f66841498745589c21ed490e9931311222fd4f7dc1ba83a22d3b2baf20571bedc6f6c1057d9f731910ded496ae2bf7498b3b1b30c58f996204
```

### `dpkg` source package: `python3.14=3.14.6-1`

Binary Packages:

- `libpython3.14-minimal:amd64=3.14.6-1`
- `libpython3.14-stdlib:amd64=3.14.6-1`
- `python3.14=3.14.6-1`
- `python3.14-minimal=3.14.6-1`

Licenses: (parsed from: `/usr/share/doc/libpython3.14-minimal/copyright`, `/usr/share/doc/libpython3.14-stdlib/copyright`, `/usr/share/doc/python3.14/copyright`, `/usr/share/doc/python3.14-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.14=3.14.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.6-1.dsc' python3.14_3.14.6-1.dsc 3480 SHA512:e272b5fa1c2148b542a1d4a88942bc5f4ab69acb6623bbbfc01223cb0f9624629a662610d779534625fed8a817fdd99223b9aa4684b8c654cda1b50e42ceb290
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.6.orig.tar.xz' python3.14_3.14.6.orig.tar.xz 23921184 SHA512:90a82f46c28f0fca613b67358fdc57c145ab05d20fb56bf3bc0c9e4e54947c7d30fbaa6856c41a41909237a9e601d1a7d19579d4b25c7a784ebcfe9012defc41
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.6-1.debian.tar.xz' python3.14_3.14.6-1.debian.tar.xz 223848 SHA512:bc480ba381e573b90ce9903a807911cd1bc1a3a6b1786b0692725addb630c06231f0f4807853604a04129714d730127cb59a9cf21e579b8f4d153f6e938d28db
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.dsc' readline_8.3-4.dsc 2957 SHA512:e219a8f03f3e6997de23c9291441102267ef27703839a6c6d3511afe63004ed4a3fc3d878f5848427a3856075c5b0dfd6b3f06f547b8e8d534ac31588b03e9a4
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3.orig.tar.gz' readline_8.3.orig.tar.gz 3419642 SHA512:513002753dcf5db9213dbbb61d51217245f6a40d33b1dd45238e8062dfa8eef0c890b87a5548e11db959e842724fb572c4d3d7fb433773762a63c30efe808344
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.debian.tar.xz' readline_8.3-4.debian.tar.xz 28644 SHA512:de3d049df477623a50dd423ecb6e7bc4eaa081c502b28aaefe4e5528c1a1997403a81a1f6afeec417b4c5358374c5bbfb08f0d0eda8f29ee2a73649a232fb4f0
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4-1.dsc' rpcsvc-proto_1.4.4-1.dsc 1999 SHA512:0b7e6212cfd36e1f6f628ce73a286c4c2173ed3dc0cdff644d9929efb16b6fe047f3eebfc1da57e3ff65cd3577a539e4d19a5b9f9076af73ff26307670fddd72
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4.orig.tar.xz' rpcsvc-proto_1.4.4.orig.tar.xz 168648 SHA512:0138ac8fb2d8de3cb56f661bd1b6435fa0a35d3bd12c5cb7081c9ae1701e3620f47fe3dd002263db456655b61316749768e9a1a44325a1a6a542beae364a0393
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.4-1.debian.tar.xz' rpcsvc-proto_1.4.4-1.debian.tar.xz 4900 SHA512:e855ccf82b8d787646dda56b7c2a99732253b4288d2a76e36f269ecdac31f286312b956c0577946560e3d3cdecd80f5d8bd72dfeabf3dadbbc98622a1b64dcb5
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.6-1.dsc' rtmpdump_2.6-1.dsc 1633 SHA512:a592c4bf7bbd56a03128d3c4e00554def6c57d88492d15d1fa7bf811e7dc5817efc0a8e8d6510a8249529b1fa6ca45e261b5f2c9e59ed4300bdaba19faa93ae5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.6.orig.tar.xz' rtmpdump_2.6.orig.tar.xz 103936 SHA512:d32016f9442a76c556c0e094004d7e98fd24b056e5368d64234de6c602e84c691c5fc8358e39c8be8897da9e80dbc59cdb7427876c92add2b03a6254e750dec5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.6-1.debian.tar.xz' rtmpdump_2.6-1.debian.tar.xz 7900 SHA512:2e98161a0f826c0b43f906bcd317085b859f80bce0278488e18f7938d20a9755c54d64950e70afb1ba0d1a085457fb95b62098c2abdf5f06d04c8478efe0c290
```

### `dpkg` source package: `rust-coreutils=0.10.0-1ubuntu1`

Binary Packages:

- `rust-coreutils=0.10.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/rust-coreutils/copyright`)

- `Apache-2.0`
- `CC-BY-4.0`
- `MIT`
- `permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rust-sequoia-sq=1.3.1-10ubuntu1`

Binary Packages:

- `sq=1.3.1-10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sq/copyright`)

- `GPL-2`
- `GPL-2.0-or-later`
- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sq=1.3.1-10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1.orig.tar.gz' rust-sequoia-sq_1.3.1.orig.tar.gz 740320 SHA512:3aa4468b7bcb27532907ce759852e6b92b394a2fc91953b9f3723b9deaab3661c84fb298d79ef3332467aa7a5ca1158d6a8bd65dd961d30aafdcfb34a867c880
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-10ubuntu1.debian.tar.xz' rust-sequoia-sq_1.3.1-10ubuntu1.debian.tar.xz 24681944 SHA512:6376c48010a7d241f628b040b58972dfd069a7304bc9aa92b65b93c42ce86d8a1f5a2bfc5aaccaf4a6a79748f8c2e94f4e240145bd324206d947ec93456215a9
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-10ubuntu1.dsc' rust-sequoia-sq_1.3.1-10ubuntu1.dsc 8378 SHA512:2e7759e46f867f92afa32f7518dde808b20c6fcdd56772ca64549a3aa12afe24208a3edc0ba3d0063cf20f1856eb6675e372ac0602078c191ddefbbd74b8cc22
```

### `dpkg` source package: `rust-sequoia-sqv=1.4.0-1ubuntu2`

Binary Packages:

- `sqv=1.4.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/sqv/copyright`)

- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sqv=1.4.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0.orig.tar.gz' rust-sequoia-sqv_1.4.0.orig.tar.gz 164331 SHA512:527e6428182d8ecc9d1fed110c73e1a34a915b119b3fefbdc6b2a1e1c0ec98497fc9b291df6dea2a82a2241bf206db0715bab05df7dddf8a794ffe4dc84ff083
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0-1ubuntu2.debian.tar.xz' rust-sequoia-sqv_1.4.0-1ubuntu2.debian.tar.xz 11380080 SHA512:ca5840989727e5f8174be4ab13b2b9f054e64c56c569c426bb9b8cb329bea4a8b47f7ca863a869e78e6702b6ab9888b9104098dce678630366b26a8cb2fd2608
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-sequoia-sqv/rust-sequoia-sqv_1.4.0-1ubuntu2.dsc' rust-sequoia-sqv_1.4.0-1ubuntu2.dsc 5483 SHA512:4a05bde8e939e72c6989073c89b0b1d92789471814b195e34bc9dd14b54f7ea5165a2219f7ad52c3a3d2bf4d0e343807f8f546661758f909734d358a40d36a3a
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-3.dsc' sed_4.9-3.dsc 1860 SHA512:86d5624464b1208f04b08977a4d279f36041c5efc35658e403984cc81054e7065d780c4593e7faf83dd5cf7e19378293a1f530c3bd49ea9e589a7a7f027ebf6a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA512:36157a4b4a2430cf421b7bd07f1675d680d9f1616be96cf6ad6ee74a9ec0fe695f8d0b1e1f0b008bbb33cc7fcde5e1c456359bbbc63f8aebdd4fedc3982cf6dc
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-3.debian.tar.xz' sed_4.9-3.debian.tar.xz 63196 SHA512:73474eb40ad4dce95378d529c1398ecc283d910e7e293edadec7259bf9668f9e7e8c8612010b0f07cd937c604eeb98d6edce26d16d150edc5b159786bf8e5ef3
```

### `dpkg` source package: `sensible-utils=0.0.26build1`

Binary Packages:

- `sensible-utils=0.0.26build1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.26build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.tar.xz' sensible-utils_0.0.26build1.tar.xz 76808 SHA512:e07fb2499d79d7fb8d50e9fb6b3f8be0cfd71722fc3275159395e4aa6d13fd5f95034454b8a669aa6f59f6997c7ebf3410739afd0700f26796bcd85f8dece713
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.dsc' sensible-utils_0.0.26build1.dsc 1730 SHA512:94ebf17d5aaa6c4ce36c6ebbe2dbce8d53d8724432a42971f6faf485ed1f7a855bbbeafbb0b9343227dbd34cfaaa3e0ed4cbe19d8f77eb3e7e43e7a2ab8893df
```

### `dpkg` source package: `serf=1.3.10-4`

Binary Packages:

- `libserf-1-1:amd64=1.3.10-4`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.10-4/


### `dpkg` source package: `shadow=1:4.19.3-2ubuntu1`

Binary Packages:

- `login.defs=1:4.19.3-2ubuntu1`
- `passwd=1:4.19.3-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/login.defs/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.19.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz' shadow_4.19.3.orig.tar.xz 2347720 SHA512:f2b41f8186681eb98dae0da87ed1a1f03327c5005c9d4bf9500801352e318de6f5954dc5b8f30ab9aece728b1efb74b4ff8fb2720acc4c2aaef701331a4a5a05
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz.asc' shadow_4.19.3.orig.tar.xz.asc 833 SHA512:295a6bffefd333a9ea84fa59b368f5c48d0ac5224199624b768087098110b0f0c19bef37f5c474c45277980758dcb6728e8bb17eb7ab1a57603cad41f1dd00ab
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.19.3-2ubuntu1.debian.tar.xz' shadow_4.19.3-2ubuntu1.debian.tar.xz 188128 SHA512:49afe4fa60fabaa11f72cfdd712d05f5558a2b089682a175c0a40f523f7a40c317dd202e912811b5cda5c0fec908fc7f570b0a1a986d0da4147d3d060ece10b3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.19.3-2ubuntu1.dsc' shadow_4.19.3-2ubuntu1.dsc 3018 SHA512:9208877c6ec19633f1c721ef839515d43e1f9f39e8eca2679067c321f26394c7de983b43263e35f8631ab184e12c0e30c09aaa68dcd4af0c7b740802829a8277
```

### `dpkg` source package: `sqlite3=3.53.4-2`

Binary Packages:

- `libsqlite3-0:amd64=3.53.4-2`
- `libsqlite3-dev:amd64=3.53.4-2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.53.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.53.4-2.dsc' sqlite3_3.53.4-2.dsc 2641 SHA512:0a3047a95c594a133d9de21460c313feaec472ead7ec7dca6f851e4473ceef677cbfb98f08b14ff0d181ab4346ead046c0dfbf69b028ad2e7ba6a0ba7b05f558
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.53.4.orig-www.tar.xz' sqlite3_3.53.4.orig-www.tar.xz 6326460 SHA512:fe28932db7774866ae9a0171f93a861f6c8b776e3a249d87ee8fdcc7d1f955e7c3a2603f43b7d8edeebf2b66f50aedb8e5a5835eabb113257d5ff9dbb5bdc0f6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.53.4.orig.tar.xz' sqlite3_3.53.4.orig.tar.xz 8656972 SHA512:821b3d734d5f64a6242e47d54a7ceee49ecdab648ad770cf5cdf894ca602bceebe1a77ecf52fc9cdc9b73032e839d1f50b91dd1f2e3e09fdec5b2f272b05a008
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.53.4-2.debian.tar.xz' sqlite3_3.53.4-2.debian.tar.xz 31864 SHA512:653ee8c6f07b9f85a8caa33fb168199cccea0131442135d4a7dc6c4478f2b68d16da3fa9798d3a92db7f8073aa3242bbeea88db124e3e54040697085acd2be72
```

### `dpkg` source package: `subversion=1.14.5-6build1`

Binary Packages:

- `libsvn1:amd64=1.14.5-6build1`
- `subversion=1.14.5-6build1`

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
$ apt-get source -qq --print-uris subversion=1.14.5-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5.orig.tar.gz' subversion_1.14.5.orig.tar.gz 11645728 SHA512:a8e9f5bf9f32e4fa9a5873544c9228a392af0b4ec1126389a98cd8830c0644fc9d4b88bcb800c0e2c40bd58517cfaba23d79164c774d2cb3267a897c1d599634
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5.orig.tar.gz.asc' subversion_1.14.5.orig.tar.gz.asc 2382 SHA512:b85c4d6e77194b5edff12e3e57c7d673226253048ddf3b622bb4dee6a8aed9153d3c69477876a7caae9eebe2ff5930e42993e34c8fc33d9fa65f9a57bc005d24
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5-6build1.debian.tar.xz' subversion_1.14.5-6build1.debian.tar.xz 300712 SHA512:a42abad66e34fbdb768c6408d058f331ba8473d52c502175b5e859b055e38287ce1e8cfe65e47c5610d11ad26787c5e7318733c1dcaa3d7abf4f42ac095a1af2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5-6build1.dsc' subversion_1.14.5-6build1.dsc 3720 SHA512:c978f8c1b2b03436cf06b4217dd2432a4f51211704792f78bdc05d76e17c6985903fa21c9aa5d7235e578534c9a802d58baf9ab3d2209bf8ce94be229661e7f2
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0-3.dsc' sysprof_50.0-3.dsc 3757 SHA512:fba1a2603fd33c00f8a835047d95d22609226782335d753a72b1ac84f65ac6fa4df731b829364dfa9e7ea81a373170c00939282478e93be5a9252fcc786c0e04
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0.orig.tar.xz' sysprof_50.0.orig.tar.xz 1289588 SHA512:da07515df722b59550b45c70a2f4c323defa6e561701091e33924499c9ee512ba4584cb3700936ec9a152b64dc0048811671cf37b1093b217c285c22c35d30e5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0-3.debian.tar.xz' sysprof_50.0-3.debian.tar.xz 16988 SHA512:9b79ff51bb77fd8942389c68eda5332f83a303df60ddc7e5a2eb8c50f5325f994d65f09a5be1c940f566a1caf5743865afb4a6cde7d773115de95271186602bc
```

### `dpkg` source package: `systemd=261.2-1ubuntu1`

Binary Packages:

- `libsystemd-shared:amd64=261.2-1ubuntu1`
- `libsystemd0:amd64=261.2-1ubuntu1`
- `libudev1:amd64=261.2-1ubuntu1`
- `systemd=261.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsystemd-shared/copyright`, `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris systemd=261.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_261.2.orig.tar.gz' systemd_261.2.orig.tar.gz 18456346 SHA512:876f043970cb65b39ae15fba39f23bf94c7c3d80569503d6e8ea2c8013c30ee40ce43cb55cbcb1cf14d5c3021aafc09c0f67473bbf742d8964bf9fa30693b971
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_261.2-1ubuntu1.debian.tar.xz' systemd_261.2-1ubuntu1.debian.tar.xz 243140 SHA512:309fc99fe776e6ee0c4f7c526a3b42319e2492ed40e713bcd97795265c2005edddccc398f716e80eecdbd7c2d1d56cf07979a2e749786abfb4a5f248e76b9096
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_261.2-1ubuntu1.dsc' systemd_261.2-1ubuntu1.dsc 9468 SHA512:7f032dabc3d49ece6b4e08fcd37bd36997c4622ad12be50e655b73ff225c2b81fa72ba3b4319ffe5ec9d8f48a972d625c3664156e06baf28a1be885b1a64fa25
```

### `dpkg` source package: `sysvinit=3.18-1ubuntu1`

Binary Packages:

- `sysvinit-utils=3.18-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2.0`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.18-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.18.orig.tar.gz' sysvinit_3.18.orig.tar.gz 512421 SHA512:3e8fa2a178341b019e956ec4d3e6fda53984675ef65db96ea166481fbe663cff49a47e0318849d57e38a30161f16480ae26c4f8b96e6c7076ade4413c3cba39a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.18-1ubuntu1.debian.tar.xz' sysvinit_3.18-1ubuntu1.debian.tar.xz 124500 SHA512:73502ac39c6c58877a427a9ae4b0d61612831d7d8d1f3ba73c2edb6a458fd5e3639889413e45130359d046516c4f62ecf739dba0ebe15022d85c0e84e48be870
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.18-1ubuntu1.dsc' sysvinit_3.18-1ubuntu1.dsc 2486 SHA512:f4d0dc926af4152e179618cecc1bb647bad4ddcef69a7f5bfb0c80c156ac6506ce5c22e9abc187ed5f82b5f7d83d071cff1a79c7b0fa4850ad41b2a308d4b4c5
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4.dsc' tar_1.35+dfsg-4.dsc 2034 SHA512:3035eeb3b2e6d10a8a086f615b8e8cf1a1de75ece40eca7695434c31ffdab6ee175eceb0065ccf8b9b9b3659332f5fff80833dbdd593fd78e1a4f569b6e2be02
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA512:3aea32b5c8de229131308420d8a7aa57f7fd1b376980456dd1aa66f97509572750c3833ab9cc2edc6fdea51f802033598c83a0d6e7f18680b1638996f0acaae7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4.debian.tar.xz' tar_1.35+dfsg-4.debian.tar.xz 21640 SHA512:8f15f5738bde72e4c234d105fbd8c088eda7c01a3b88e60c3d6b71fce80079440b8bb6a4350a7650a13f8c727e6ed9bc99b849299be5e8ec0b9fb379cea729e9
```

### `dpkg` source package: `tiff=4.7.1-2ubuntu1`

Binary Packages:

- `libtiff-dev:amd64=4.7.1-2ubuntu1`
- `libtiff6:amd64=4.7.1-2ubuntu1`
- `libtiffxx6:amd64=4.7.1-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff6/copyright`, `/usr/share/doc/libtiffxx6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.1-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.1.orig.tar.bz2' tiff_4.7.1.orig.tar.bz2 2200037 SHA512:ea91d860e202e46872694088acd1b53a8e178708e4afa3d2e2b06ecf9030cd910fa0fde3400015e2e28492998537e433b1f84ffecad79b8a0cfe509ab7ba95f7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.1-2ubuntu1.debian.tar.xz' tiff_4.7.1-2ubuntu1.debian.tar.xz 23448 SHA512:c54379e5cdda1ff952162067202048989fcf67c7d67f37a28a6fa1da2a184afd0a4191d384d02875ecce6c6d7b571510b4f2dc29629939617f92f9b26e10b29f
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.1-2ubuntu1.dsc' tiff_4.7.1-2ubuntu1.dsc 2368 SHA512:05ac22efa551cebb9b9cf0b76252a3089035da9c6ef6a319f03739418d58d29358143dd616934c617c33fc382fd6aca167b6e35023d073b56d90be771e8606b5
```

### `dpkg` source package: `tzdata=2026c-1ubuntu1`

Binary Packages:

- `tzdata=2026c-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026c-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz' tzdata_2026c.orig.tar.gz 475694 SHA512:e0b4b7044b66fbc27bc21d13d18063abcdf78ab58d5ba5fd64bd1a88d86e9d495f45add4d8e65bb6c40249f9c94ca29b72c8ebba8d0e4c468f2965ac77932ef0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz.asc' tzdata_2026c.orig.tar.gz.asc 833 SHA512:e1d44216608666bfb8a1855caacc9e6d30a1576f302c4db59faf8ec6aa2f7d5ae299c4c9b17b255b9612c30582358ca2a48f5fea82ab9b7d77d030e713c9010d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-1ubuntu1.debian.tar.xz' tzdata_2026c-1ubuntu1.debian.tar.xz 190152 SHA512:e0226b9c842c7d0ebbae0e0742c1c88e784f9e276a01f0c3940ccc713451223f0ec58cfd6da89477ff924f4b19f7d1defa08e1007d0466c8af350a7af154f622
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-1ubuntu1.dsc' tzdata_2026c-1ubuntu1.dsc 2680 SHA512:ecf97772e482a4e7bd3853831cf07fe8e64daa30489bb90fcab3a176c50d0899e7c88be8a59201c15062ef0b2af9681fdaeaa07a543400d148e48ba292f5eb23
```

### `dpkg` source package: `ubuntu-keyring=2023.11.28.1build1`

Binary Packages:

- `ubuntu-keyring=2023.11.28.1build1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ucf=3.0056`

Binary Packages:

- `ucf=3.0056`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0056
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0056.dsc' ucf_3.0056.dsc 1595 SHA512:ac1432b15c314049401c663887d1dcda90c1dd3d2bbb5188a808ed099212d25c861edecaae5ced2084cbf94c5e9f0d8fbf02e10df4271dc8847a467dd3a57a50
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0056.tar.xz' ucf_3.0056.tar.xz 81856 SHA512:7d1c21b329e31beb4df3ea588eb6a32ff4ecda186706e20f96f3857c866b865ae5ddef1f34b74681fff42df571b4572c364038a4832ff0a4feb1533c96183117
```

### `dpkg` source package: `unbound=1.25.1-1ubuntu3`

Binary Packages:

- `libunbound8:amd64=1.25.1-1ubuntu3`

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
$ apt-get source -qq --print-uris unbound=1.25.1-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.25.1.orig.tar.gz' unbound_1.25.1.orig.tar.gz 6832247 SHA512:a536ff1d9b637e4ffa46ab498919ddf089b4498e65c748748c4920a6da52e1f5bacfbba9ac1dc47798d168e2ea64a7ae7ea2a581464d1fcabae241a6e38c8d13
'http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.25.1-1ubuntu3.debian.tar.xz' unbound_1.25.1-1ubuntu3.debian.tar.xz 34244 SHA512:c82f880e6516e9b1abb3bf29292243e209ab474c88b2dfaf468d03a5cf1709e19718281f17edbf781b3e874def4e5056e780612260fab47cfbacda31dec16e68
'http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.25.1-1ubuntu3.dsc' unbound_1.25.1-1ubuntu3.dsc 3089 SHA512:717a1a610e2fccd1882f9c620dcea13dfe2308e59436fded8bc8cfeeb3792787c3fcd71b0e85c779cbb5e8df3d17f762262d046663b6505c750f5d0d64181990
```

### `dpkg` source package: `unzip=6.0-31ubuntu1`

Binary Packages:

- `unzip=6.0-31ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-31ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA512:0694e403ebc57b37218e00ec1a406cae5cc9c5b52b6798e0d4590840b6cdbf9ddc0d9471f67af783e960f8fa2e620394d51384257dca23d06bcd90224a80ce5d
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-31ubuntu1.debian.tar.xz' unzip_6.0-31ubuntu1.debian.tar.xz 49396 SHA512:b6d8531ea3be16339e6999d89f0669d35448800ad1e5f81678e09d6158c578bad2b439adf8554da518c98affc02cb5c3a1e10cc8ec476745776739b9183fd7ea
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-31ubuntu1.dsc' unzip_6.0-31ubuntu1.dsc 1987 SHA512:23e5930b43a4c86e5e8ec5d290eb4c952e6e6f7f217dc2037834ca2198a6a732257adef8115f313172a68d1a4b6631d91c26888bc61f34618b6644576da06b55
```

### `dpkg` source package: `utf8proc=2.11.3-2`

Binary Packages:

- `libutf8proc3:amd64=2.11.3-2`

Licenses: (parsed from: `/usr/share/doc/libutf8proc3/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.11.3-2
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.11.3-2.dsc' utf8proc_2.11.3-2.dsc 2284 SHA512:28259a92a8e7f0192d480c8daa59c9883484afa7a32b9362e2ad06c62d9ebdfaf5b982d20ccf836edb86c21239e8016b758997e55314cb49563ccc357a08b1ec
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.11.3.orig.tar.gz' utf8proc_2.11.3.orig.tar.gz 202535 SHA512:148701fce506d076f03497b6d085f1993eff743debad4a2f6d3cbac91e19a5c22d9938245bdb460c1b22b51842c7416c42124db7416c684ee63d622490baac0e
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.11.3-2.debian.tar.xz' utf8proc_2.11.3-2.debian.tar.xz 6212 SHA512:b4f6608aadd0805ebe306f2591e8ca69366118da5fa34960c847a212c1cc27f2d2a832bcabeb48d4e1ba000a1067f16d8895c65d041645fa65795915931e8cc9
```

### `dpkg` source package: `util-linux=2.41.3-3ubuntu2`

Binary Packages:

- `bsdutils=1:2.41.3-3ubuntu2`
- `libblkid-dev:amd64=2.41.3-3ubuntu2`
- `libblkid1:amd64=2.41.3-3ubuntu2`
- `libmount-dev:amd64=2.41.3-3ubuntu2`
- `libmount1:amd64=2.41.3-3ubuntu2`
- `libsmartcols1:amd64=2.41.3-3ubuntu2`
- `libuuid1:amd64=2.41.3-3ubuntu2`
- `login=1:4.16.0-2+really2.41.3-3ubuntu2`
- `mount=2.41.3-3ubuntu2`
- `util-linux=2.41.3-3ubuntu2`
- `uuid-dev:amd64=2.41.3-3ubuntu2`

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
$ apt-get source -qq --print-uris util-linux=2.41.3-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA512:3d299f0e05a4c982a04dbcbaaeff1222152feedf51c56c5dbdeb75999c68269d652a994f5cdf4c1ee42bb7b28475dd0792192c299fd9bc3b45198c5b153dad00
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.debian.tar.xz 116776 SHA512:0b0099e529b9a07814ff8d835e810c54082ff2101838277043faaaa994a57122e9fdd1591d17bc1f206a906113f66fc07ff8f33d1108c3442e36a0063880b21c
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.dsc' util-linux_2.41.3-3ubuntu2.dsc 5439 SHA512:a7b05b69289a99de9a9f6f015af3392c385ab2e6e0927ed65bfa13faf546438e436c459edbcb0f2525481deb83b27964815416a5a3acc341c63abd046434163f
```

### `dpkg` source package: `wget=1.25.0-2ubuntu6`

Binary Packages:

- `wget=1.25.0-2ubuntu6`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.25.0-2ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0.orig.tar.gz' wget_1.25.0.orig.tar.gz 5263736 SHA512:a7ce33c07a1a206a8574b6e9ea7cc5292315df0914edbcf05a014d35ae9e3d24699a46818b409b884ada57428cf30502f4bbb3767cae2c6934e4e7fb2d0c5036
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0-2ubuntu6.debian.tar.xz' wget_1.25.0-2ubuntu6.debian.tar.xz 34604 SHA512:598cbb76e037d693b89ab606aa4cc107d10b074d5211fe4fb2c3d9b4a5f63c42f78f67bb1e2f4389a046fe1100794d372e4cf0f04afa34f37691ee89bf189cd1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0-2ubuntu6.dsc' wget_1.25.0-2ubuntu6.dsc 2139 SHA512:ed8716e5b3f1964a04cb46938b0eec54afed07beadfbd4251d9538d97b74962b3ad5fd3bd2f4a6069131206ab99f535a66e60198191a5a8673117f75dbe0831e
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.12.1-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.12.1-1`

Licenses: (parsed from: `/usr/share/doc/xorg-sgml-doctools/copyright`)

- `MIT`
- `Redhat`

Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.12.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1-1.dsc' xorg-sgml-doctools_1.12.1-1.dsc 2372 SHA256:a1a10456002e9210ffe53ba6645eeb11a104e9e747016f6cf37274f1f7ac1c38
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1.orig.tar.xz' xorg-sgml-doctools_1.12.1.orig.tar.xz 107832 SHA256:0a5d54c0706b4e89d5acd4d455db3745ab4ad26be627cce015b90ad403b56d6f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1.orig.tar.xz.asc' xorg-sgml-doctools_1.12.1.orig.tar.xz.asc 566 SHA256:7f957d24bd5496bdd6334be7740232aab8073b1de653901ca8439fcdaabf6db7
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.12.1-1.debian.tar.xz' xorg-sgml-doctools_1.12.1-1.debian.tar.xz 7128 SHA256:b83018f1da93cbd00a9d4ae275e9063ce44b07dcc05b19f476ff8b3385eb5b58
```

### `dpkg` source package: `xorg=1:7.7+26ubuntu1`

Binary Packages:

- `x11-common=1:7.7+26ubuntu1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+26ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.tar.xz' xorg_7.7+26ubuntu1.tar.xz 241928 SHA512:ed2ef9d9ead2055f4970d0ed435c6fce784789852d72802208dfd12e54a811e2d957c4f0769f0900ba16100ee876c24806d20e0624a860dafce99b196239cf75
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.dsc' xorg_7.7+26ubuntu1.dsc 2047 SHA512:afeb81755bfb109c9f4bcf35bc40d6d33b167c18db3e0773a058c09ab42598c0ef791838b29cec17de88a2a6a20388aa52bbba9fd0a225ed52991752005842d9
```

### `dpkg` source package: `xorgproto=2025.1-1`

Binary Packages:

- `x11proto-dev=2025.1-1`

Licenses: (parsed from: `/usr/share/doc/x11proto-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2025.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.dsc' xorgproto_2025.1-1.dsc 3336 SHA512:f22d44559d37fbb5b2f0a687550221aa12d9bb7debee0aacc1e6519ae95c221184aa6145b9d656f59b19c742ab4e7fa72eca99b9b52d65db250c567c645b52c5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz' xorgproto_2025.1.orig.tar.gz 1127613 SHA512:053504c8fbaf952825c4c179e8de8c3502d816b961bc483b5d4f968a41a89802c71932d8073e7b3e4ffea61bf42596e98599c6ea5c750bb48ee5514916e7e387
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz.asc' xorgproto_2025.1.orig.tar.gz.asc 195 SHA512:a71137a374c5bf5786ad9a164c75fb9ae7b5910cb5bd059816721f05bac095bf1e9ae4b075e3d8097b1d95b49120e177fa92e4776f10224ff766217ff2fff591
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.diff.gz' xorgproto_2025.1-1.diff.gz 25174 SHA512:1d17a13e4659af704579de2368e952ce8c6bde6bf781335046935bf4d3f6c45de5e37cba4fa576ec02d7e139629b81f25324c0d5ba63c4d4e21e1a9e297c6a78
```

### `dpkg` source package: `xtrans=1.6.0-1build1`

Binary Packages:

- `xtrans-dev=1.6.0-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.6.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0.orig.tar.gz' xtrans_1.6.0.orig.tar.gz 239113 SHA512:1165faf7e62ba3a1eb449867b7e626d21f4191a8980ab411ef4bae3875d60333739bb843559b9a1c7e01f7175e18fc9590cd340608d2939a7588989063cecb5f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.diff.gz' xtrans_1.6.0-1build1.diff.gz 18591 SHA512:0fa8aaa1ef714ea8695e9d1a8e2e5608935d2a8137927422286e395f598d78ef31cfd3eb75e1d38bd8a2f9901d18d0ca1b5d9a599cbcefdb93d2ea6cb4befd1b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.dsc' xtrans_1.6.0-1build1.dsc 1907 SHA512:bd554110effa9c5047fc48e219b4500ddda9aefcd6a9f62742a7af2a68e4bd20bba2e86de81aa846f8ad97c60f56cf6109a15fbfd71954ff1b24f04cd4fa0f02
```

### `dpkg` source package: `xxhash=0.8.3-2build1`

Binary Packages:

- `libxxhash0:amd64=0.8.3-2build1`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.3-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3.orig.tar.gz' xxhash_0.8.3.orig.tar.gz 1147630 SHA512:8b5c8b9aad4e869f28310b12cc314037feda81d92f26c23eaecdb35dc65042ca2e65f2e9606033e62a31bcc737a9a950500ffcbdb8677d6ab20e820ea14f2b79
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.debian.tar.xz' xxhash_0.8.3-2build1.debian.tar.xz 5224 SHA512:ac6d91fa86c5273eaf27200b3f57ee716e8d54d346bfd950f3d2bc76a716e5765ebf1d0d1380b2bddacafa445ca7209a8ee78e2e1351b201bbe6d5c934b98390
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.dsc' xxhash_0.8.3-2build1.dsc 1968 SHA512:c0724343c725447e14dcb6478eeb56db152fa4bb8e86cdd4f2764eaee7acb9682b165c74ce8f177047305ef33249d110436865840118e703f740c58eec0115d6
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.dsc' xz-utils_5.8.3-1.dsc 2494 SHA512:2c78a287be77ac1c84f6ede8c4d9b8333f78ca8aea9ed7beecdbb232bde98700cce4c06586182c3c16a4b764b163036c83f3b6d913ea34424e8abc7790cfcc9b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3.orig.tar.xz' xz-utils_5.8.3.orig.tar.xz 1548064 SHA512:c288f436b211031ca122e9169d85403d4ab8b0500a6542b2d9ba101587e04a4358ab5509f5d15cc7899f1ab3e0118567866ca0508f880007b4af802dedd7068d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.debian.tar.xz' xz-utils_5.8.3-1.debian.tar.xz 27344 SHA512:acaf62ccbe85eee2f5d489f3d3c358184bbaf814f9c77239de522ea419e5276c0adcba1efb39479f2a580cf8cd84d3ecf6d4ff99bb5e3052439d207b02573e08
```

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.2-3ubuntu1`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.2-3ubuntu1`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2.orig.tar.gz' zlib_1.3.dfsg+really1.3.2.orig.tar.gz 1295859 SHA512:6e537c18904e5f7e7495666202c0d731b9374e6b6969fd2d5283801e9d90a177caf6bd28aa6d10162fa0bec0ed1bb05d87f8486326706bb62fec3d191151613e
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3ubuntu1.debian.tar.xz' zlib_1.3.dfsg+really1.3.2-3ubuntu1.debian.tar.xz 22392 SHA512:75195fb471f6c2e82f1ce93e51855b18689a67b28beeea797da59c5ecbbcec205b5f4c327a4b20e20a69e605e15e16c8baa57e231801907a72033c1fa7e1a1fe
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3ubuntu1.dsc' zlib_1.3.dfsg+really1.3.2-3ubuntu1.dsc 3375 SHA512:c1145b6e96baf43deb2a56c0e05c4e889ec794f6810ff3269da1cf9ab705ac000d2c0016ab3611a45378a756379f7796ec47b3a0d9941bb6934365f29f06ec70
```
