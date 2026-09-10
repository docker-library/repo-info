# `ubuntu:26.10`

## Docker Metadata

- Image ID: `sha256:0b807b302dffa0e7714bb412a1fa2b76e049ef4d58b192fa9161cf6a06cb44e1`
- Created: `2026-09-01T20:35:24.888109553Z`
- Virtual Size: ~ 109.25 Mb  
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

### `dpkg` source package: `bzip2=1.0.8-6build2`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-6build2`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.debian.tar.bz2' bzip2_1.0.8-6build2.debian.tar.bz2 27136 SHA512:a7efd355101eb9751a90ad9d0d068a105f5ead3d69faa85074c31bb2ca61e7892270d40c476167814942765e7401b137a580d3eea5f2b67e0f6fefd309eb3072
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.dsc' bzip2_1.0.8-6build2.dsc 2205 SHA512:e8422344d455bce7894722f57089c62ca441fec37a69e33c6444b05eb141ad6ed74dc6a86dd8d637d98f31ac2111900a113c29d7062687a4c7db07bb53b9eb7c
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

### `dpkg` source package: `db5.3=5.3.28+dfsg2-11`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-11`

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

### `dpkg` source package: `dpkg=1.23.7ubuntu1`

Binary Packages:

- `dpkg=1.23.7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

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

- `e2fsprogs=1.47.4-1`
- `libcom-err2:amd64=1.47.4-1`
- `libext2fs2t64:amd64=1.47.4-1`
- `libss2:amd64=1.47.4-1`
- `logsave=1.47.4-1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2t64/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

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

### `dpkg` source package: `gcc-16=16.2.0-1ubuntu1`

Binary Packages:

- `gcc-16-base:amd64=16.2.0-1ubuntu1`
- `libgcc-s1:amd64=16.2.0-1ubuntu1`
- `libstdc++6:amd64=16.2.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

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

### `dpkg` source package: `glibc=2.43-2ubuntu2.3`

Binary Packages:

- `libc-bin=2.43-2ubuntu2.3`
- `libc-gconv-modules-extra:amd64=2.43-2ubuntu2.3`
- `libc6:amd64=2.43-2ubuntu2.3`

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

- `libgmp10:amd64=2:6.3.0+dfsg-5ubuntu2`

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
$ apt-get source -qq --print-uris gmp=2:6.3.0+dfsg-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA512:a422b29024464aeb26c69f64be1bc37407d74e0290f44f67fc040fe38b97f3eb7aa6ba8380722ef36cac39816d1c4f24b771159fb86d5979ef0791dcdef708bc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.debian.tar.xz' gmp_6.3.0+dfsg-5ubuntu2.debian.tar.xz 40328 SHA512:3fb43e01cea284935bfd5b7334a5273b5b342561e651665010215e172a989b1840f0185cb1615c4e3bbba19c6ba1544d964de8b2cee32252ed3952644bb2efcb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.dsc' gmp_6.3.0+dfsg-5ubuntu2.dsc 2337 SHA512:746af799ad3fe14fe718ac03bf66ac806307218e89c191b97357772276803ee5c6e4c8a85286e0574e097046f81c0ad2fdc41ef52d28a8c42b1ca6ef2e50ed8d
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

- `libselinux1:amd64=3.11-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11-1.dsc' libsepol_3.11-1.dsc 2233 SHA512:18d980631a14635002d01d6dbf0800c29127159a892c1f2490fbc8784f95d6c28ad62b89e8aebda992d3b1cca32818fb80063f26228920a6352a2579be47b6a3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz' libsepol_3.11.orig.tar.gz 533422 SHA512:38335292be8b8ce8b22bb2a0e481f92e2bbf532d9a2ee5319ada0b3fd294df487e5eba8041bac2a09ef7b048fee13ca0520c34cb3283fea1f95fcc5752f66b81
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11.orig.tar.gz.asc' libsepol_3.11.orig.tar.gz.asc 833 SHA512:80f37aa5447be9ac3e8b08a2e83a1c805128df279c16b31340ab18790185802362323ed39f1ee4a2b489f94919c222605d1bb29c09ee801349e850877c01322a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.11-1.debian.tar.xz' libsepol_3.11-1.debian.tar.xz 21648 SHA512:f80a841a225ddf2d85cfac409a21b81ad8095722414b6e7a9d4486e506f510f085ab0a50d8edf58bf79c23e4d9cc7e550209188e8dc79f465cd8be432d509bdc
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

### `dpkg` source package: `libzstd=1.5.7+dfsg-4`

Binary Packages:

- `libzstd1:amd64=1.5.7+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

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

### `dpkg` source package: `ncurses=6.6+20260608-2`

Binary Packages:

- `libncursesw6:amd64=6.6+20260608-2`
- `libtinfo6:amd64=6.6+20260608-2`
- `ncurses-base=6.6+20260608-2`
- `ncurses-bin=6.6+20260608-2`

Licenses: (parsed from: `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

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

- `libssl4:amd64=4.0.1-1ubuntu4`
- `openssl-provider-legacy=4.0.1-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libssl4/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

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

### `dpkg` source package: `pcre2=10.46-1build1`

Binary Packages:

- `libpcre2-8-0:amd64=10.46-1build1`

Licenses: (parsed from: `/usr/share/doc/libpcre2-8-0/copyright`)

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

- `perl-base=5.40.1-8ubuntu1`

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
$ apt-get source -qq --print-uris perl=5.40.1-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA512:933261779f476b0edda581270949c92e8e7dbe4bcaf1417398e708a321cdb748fe329acb703b2e74446cdfb03c20cefcab1eb972b852418ed3ea9b870db1fa86
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA512:3ff16b3462ce43ff38dab21b3dfc20f81772b8c9eac19ab96ba2d5e6cbb390e2302fa76c4879f915249357cd11c7ec0d548bcbf3ab2c156df1b9fca95da3f545
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-8ubuntu1.debian.tar.xz' perl_5.40.1-8ubuntu1.debian.tar.xz 180004 SHA512:7ae4b22d226e975f94d3de3b319b774c0bec94ed994c4fe348ccf8b80e164729505eb6c0f98da2018d3615aca9aef2be942556bc397c1a395b2d86003cdb9d60
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-8ubuntu1.dsc' perl_5.40.1-8ubuntu1.dsc 3015 SHA512:10419b77b43a520c7041db6fb4955701bf9070658defadcee16b10d746e18c4d078d106de13e27310b352d70dd53a57c0c1142341f94247a7de6820ee6e3dd79
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

### `dpkg` source package: `systemd=261.2-1ubuntu1`

Binary Packages:

- `libsystemd0:amd64=261.2-1ubuntu1`
- `libudev1:amd64=261.2-1ubuntu1`

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

### `dpkg` source package: `ubuntu-keyring=2023.11.28.1build1`

Binary Packages:

- `ubuntu-keyring=2023.11.28.1build1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `util-linux=2.41.3-3ubuntu2`

Binary Packages:

- `bsdutils=1:2.41.3-3ubuntu2`
- `libblkid1:amd64=2.41.3-3ubuntu2`
- `libmount1:amd64=2.41.3-3ubuntu2`
- `libsmartcols1:amd64=2.41.3-3ubuntu2`
- `libuuid1:amd64=2.41.3-3ubuntu2`
- `login=1:4.16.0-2+really2.41.3-3ubuntu2`
- `mount=2.41.3-3ubuntu2`
- `util-linux=2.41.3-3ubuntu2`

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
$ apt-get source -qq --print-uris util-linux=2.41.3-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA512:3d299f0e05a4c982a04dbcbaaeff1222152feedf51c56c5dbdeb75999c68269d652a994f5cdf4c1ee42bb7b28475dd0792192c299fd9bc3b45198c5b153dad00
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.debian.tar.xz 116776 SHA512:0b0099e529b9a07814ff8d835e810c54082ff2101838277043faaaa994a57122e9fdd1591d17bc1f206a906113f66fc07ff8f33d1108c3442e36a0063880b21c
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.dsc' util-linux_2.41.3-3ubuntu2.dsc 5439 SHA512:a7b05b69289a99de9a9f6f015af3392c385ab2e6e0927ed65bfa13faf546438e436c459edbcb0f2525481deb83b27964815416a5a3acc341c63abd046434163f
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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.dsc' xz-utils_5.8.3-1.dsc 2494 SHA512:2c78a287be77ac1c84f6ede8c4d9b8333f78ca8aea9ed7beecdbb232bde98700cce4c06586182c3c16a4b764b163036c83f3b6d913ea34424e8abc7790cfcc9b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3.orig.tar.xz' xz-utils_5.8.3.orig.tar.xz 1548064 SHA512:c288f436b211031ca122e9169d85403d4ab8b0500a6542b2d9ba101587e04a4358ab5509f5d15cc7899f1ab3e0118567866ca0508f880007b4af802dedd7068d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1.debian.tar.xz' xz-utils_5.8.3-1.debian.tar.xz 27344 SHA512:acaf62ccbe85eee2f5d489f3d3c358184bbaf814f9c77239de522ea419e5276c0adcba1efb39479f2a580cf8cd84d3ecf6d4ff99bb5e3052439d207b02573e08
```

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.2-3ubuntu1`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2.orig.tar.gz' zlib_1.3.dfsg+really1.3.2.orig.tar.gz 1295859 SHA512:6e537c18904e5f7e7495666202c0d731b9374e6b6969fd2d5283801e9d90a177caf6bd28aa6d10162fa0bec0ed1bb05d87f8486326706bb62fec3d191151613e
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3ubuntu1.debian.tar.xz' zlib_1.3.dfsg+really1.3.2-3ubuntu1.debian.tar.xz 22392 SHA512:75195fb471f6c2e82f1ce93e51855b18689a67b28beeea797da59c5ecbbcec205b5f4c327a4b20e20a69e605e15e16c8baa57e231801907a72033c1fa7e1a1fe
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.2-3ubuntu1.dsc' zlib_1.3.dfsg+really1.3.2-3ubuntu1.dsc 3375 SHA512:c1145b6e96baf43deb2a56c0e05c4e889ec794f6810ff3269da1cf9ab705ac000d2c0016ab3611a45378a756379f7796ec47b3a0d9941bb6934365f29f06ec70
```
