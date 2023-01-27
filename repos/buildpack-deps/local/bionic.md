# `buildpack-deps:bionic`

## Docker Metadata

- Image ID: `sha256:78f5c6cc4f99d522ba2deba65e08b635b209b481a6851e99117383aa4abac220`
- Created: `2023-01-02T19:13:22.733679553Z`
- Virtual Size: ~ 622.09 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3build1`

Binary Packages:

- `libacl1:amd64=2.2.52-3build1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.dsc' acl_2.2.52-3build1.dsc 2031 SHA256:864215f3e68d6b169a044bd952e78be9b0b1cf527a2cbf25866cab919e78e64b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.debian.tar.xz' acl_2.2.52-3build1.debian.tar.xz 8788 SHA256:0729d8c850aa26bc9f1b22ce632efb1616a3f97dc5fca1d9edfda45b582b7f37
```

### `dpkg` source package: `adduser=3.116ubuntu1`

Binary Packages:

- `adduser=3.116ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.116ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.dsc' adduser_3.116ubuntu1.dsc 1845 SHA256:fc44097093d74fc2e36fc37dceb54cf6bcb70a434240b14fd91beb64849cf2fd
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.tar.xz' adduser_3.116ubuntu1.tar.xz 216868 SHA256:f34f1d95e96ecae3b068a3dd666848f82f06cbb26152c56a6b72bd71555a8f18
```

### `dpkg` source package: `apr-util=1.6.1-2`

Binary Packages:

- `libaprutil1:amd64=1.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.dsc' apr-util_1.6.1-2.dsc 2851 SHA256:7a3a7d0dccc0d89ad751988163cb57d34b32094893d08c4d0ac79e9bfee6d8f4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.debian.tar.xz' apr-util_1.6.1-2.debian.tar.xz 211832 SHA256:e30e919e7e049a8a7056b7184e77d69b82660d71a4bf9654d1c9bfccf2fcde30
```

### `dpkg` source package: `apr=1.6.3-2`

Binary Packages:

- `libapr1:amd64=1.6.3-2`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.dsc' apr_1.6.3-2.dsc 2305 SHA256:0597703f9ea3bc3b30fcd7e055c67c2113e5c4255df5ff42738ce6a396bf5afc
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.debian.tar.xz' apr_1.6.3-2.debian.tar.xz 213068 SHA256:ac515f888f7157586631e3de9792ee01d239f9cbf1e768be31ee6daac61f2597
```

### `dpkg` source package: `apt=1.6.14`

Binary Packages:

- `apt=1.6.14`
- `libapt-pkg5.0:amd64=1.6.14`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.6.14
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.14.dsc' apt_1.6.14.dsc 2867 SHA512:f8042614d9c52e6512746e967b7a1e4b60a748ed711fd032086e112be597a3f6b10cf57412f971e128f84288cc96a408b3da72b4a3ae5a3ed6078b4bbc9577e9
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.14.tar.xz' apt_1.6.14.tar.xz 2179764 SHA512:6c0f2b6f32d54d6ad5704e47fa96ad2230026a83fb8747a96ddbae72fcf31eeba963a4a5c4218fe5a9ab03294c30cb063de36b33f0b130f6a67b5929428268dc
```

### `dpkg` source package: `attr=1:2.4.47-2build1`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.dsc' attr_2.4.47-2build1.dsc 2033 SHA256:b78dbf07b789010caabc12c1ab0b2a944072058fe47ac6b5d345209c16f4e1f5
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.debian.tar.xz' attr_2.4.47-2build1.debian.tar.xz 8168 SHA256:6732a8874190a1f792c7f9cb95fadc1dc852baf2e164b0d7b4bcea525f5c0882
```

### `dpkg` source package: `audit=1:2.8.2-1ubuntu1.1`

Binary Packages:

- `libaudit-common=1:2.8.2-1ubuntu1.1`
- `libaudit1:amd64=1:2.8.2-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.2-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.1.dsc' audit_2.8.2-1ubuntu1.1.dsc 2907 SHA512:a6975ce1dcc522d033bba69eb9d719d04307c4652753bd44c2c950bc27077d273215a318a768e761770c5dd662e435fcc461a8b8790693523c90c8286703fa1a
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2.orig.tar.gz' audit_2.8.2.orig.tar.gz 1121970 SHA512:888ebf5e8e9d285b82d87377fc8836886d7a8b089c1be4091420a77a0250c9baf09aebb7a6330ff5043fb35f51eb6baf8d4491e26da7ad0811f0087e395b5012
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.1.debian.tar.xz' audit_2.8.2-1ubuntu1.1.debian.tar.xz 21984 SHA512:69f9b8f6a891069b3194d6460a8fe897946b8d28887ca4a41a0b22f8793947a7604da868c4a2372d2610cbe9f3a7da75616e0abf392b7f7c9fb85ebd63f8459a
```

### `dpkg` source package: `autoconf=2.69-11`

Binary Packages:

- `autoconf=2.69-11`

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
$ apt-get source -qq --print-uris autoconf=2.69-11
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.dsc' autoconf_2.69-11.dsc 1948 SHA256:249d25370d4f4d1d0cf7b37bfd178bb6fa87011566dd82230991f64814a39dde
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.debian.tar.xz' autoconf_2.69-11.debian.tar.xz 23540 SHA256:885b3947fdead5b737f6437b80a90a41c5d611791573c5d0cfef50a59c943c1b
```

### `dpkg` source package: `automake-1.15=1:1.15.1-3ubuntu2`

Binary Packages:

- `automake=1:1.15.1-3ubuntu2`

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
$ apt-get source -qq --print-uris automake-1.15=1:1.15.1-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1-3ubuntu2.dsc' automake-1.15_1.15.1-3ubuntu2.dsc 2663 SHA256:406f9f2118936675f458d18fcb7aeb707428ba0fffb074c21e8083834a5e95ff
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1.orig.tar.xz' automake-1.15_1.15.1.orig.tar.xz 1509496 SHA256:af6ba39142220687c500f79b4aa2f181d9b24e4f8d8ec497cea4ba26c64bedaf
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1-3ubuntu2.debian.tar.xz' automake-1.15_1.15.1-3ubuntu2.debian.tar.xz 14580 SHA256:d84981f19bcf179aaeb1a471329c28332aae3fa22062b840bbc700032a556e0b
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

### `dpkg` source package: `base-files=10.1ubuntu2.11`

Binary Packages:

- `base-files=10.1ubuntu2.11`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.1ubuntu2.11
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.11.dsc' base-files_10.1ubuntu2.11.dsc 1343 SHA512:de777d9204569c0f5134d783cb56ada91e9d442e6ccb2077b0b544e7693bf8f05bedc284e089e2e3547d190b8897661c04689df10072383f2ef9158b48c4dd11
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.11.tar.xz' base-files_10.1ubuntu2.11.tar.xz 79756 SHA512:2f40f33e62da5b53c4464973ceb18f276681c593041cb03cb68e9b5810e5eea90e12f7fae526d612658544bbb36a16c0c38b114d4c4db18b2ec0661ba1fd36cf
```

### `dpkg` source package: `base-passwd=3.5.44`

Binary Packages:

- `base-passwd=3.5.44`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.44
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.dsc' base-passwd_3.5.44.dsc 1685 SHA256:22a5db1e9bb71fa8a4d682b3f9c01470a61b8041eb6212471181c6808b268c13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.tar.xz' base-passwd_3.5.44.tar.xz 52644 SHA256:f17a0746024572e86e60e4614cf226a81ffe682ceaf1a1fce9dc1a8002683e90
```

### `dpkg` source package: `bash=4.4.18-2ubuntu1.3`

Binary Packages:

- `bash=4.4.18-2ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4.18-2ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.3.dsc' bash_4.4.18-2ubuntu1.3.dsc 2312 SHA512:2f74c0172d5e55a936bdd650214ffce9f853cde9206ce3d4d7b748e16c1f82928a58d1a22c6e9597b5c83b235dd82e6f35f9032c3055ec75066839542d432412
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18.orig.tar.xz' bash_4.4.18.orig.tar.xz 5036272 SHA512:a0c0b84133f9dc1dd404a130a6a8ac08c4551d28bf4d0a6a9be40acee5d1465270af595191cad9584f17fe098b846a70dd1f7772f771db79ff5f03e47cfd5791
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.3.debian.tar.xz' bash_4.4.18-2ubuntu1.3.debian.tar.xz 66128 SHA512:211d66113303c99c0c048e4e00923743da7e9034e2faa6f19c98074af73b78cbf81479fe2e75f72780fd6f74c799ab6613ea111b10789d67e79eb7f8ae9dd370
```

### `dpkg` source package: `binutils=2.30-21ubuntu1~18.04.8`

Binary Packages:

- `binutils=2.30-21ubuntu1~18.04.8`
- `binutils-common:amd64=2.30-21ubuntu1~18.04.8`
- `binutils-x86-64-linux-gnu=2.30-21ubuntu1~18.04.8`
- `libbinutils:amd64=2.30-21ubuntu1~18.04.8`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.30-21ubuntu1~18.04.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1%7e18.04.8.dsc' binutils_2.30-21ubuntu1~18.04.8.dsc 11670 SHA512:8cd9af448cdcc0392cbf8b6ebcb443b5a3e5f53bfabf41aff66f9c1a0393c84b303e6de96d96ab0663b49d35c3797d5f18ce9f8a50d3b54ca74ecb5e9db17a0b
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30.orig.tar.xz' binutils_2.30.orig.tar.xz 20286700 SHA512:e747ea20d8d79fcd21b9d9f6695059caa7189d60f19256da398e34b789fea9a133c32b192e9693b5828d27683739b0198431bf8b3e39fb3b04884cf89d9aa839
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1%7e18.04.8.debian.tar.xz' binutils_2.30-21ubuntu1~18.04.8.debian.tar.xz 625540 SHA512:8f93aefb0fe22af902aa849c9aa0752612e3c89ec008b0eb03d8d4e8d20dbb640540e414d637e40b71fbf8fa03064d60206281b472e40b3f6bce801f4ffe682f
```

### `dpkg` source package: `bzip2=1.0.6-8.1ubuntu0.2`

Binary Packages:

- `bzip2=1.0.6-8.1ubuntu0.2`
- `libbz2-1.0:amd64=1.0.6-8.1ubuntu0.2`
- `libbz2-dev:amd64=1.0.6-8.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.dsc' bzip2_1.0.6-8.1ubuntu0.2.dsc 2181 SHA512:872defc414a97416d701ce8bb59ddbf44b80ebffe447d67ebba20ed13b3e006c771002c82ad11c0c669004d22ce9368254e44c6be977c21e7d92dab69ec4e33a
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA512:b1108c392a7f45218b86196498657f50333c870db4ab555ce4859a3fe76c17b4a3430b8a075b7f1c86d9ded006bdf17001b73bfcf261e2d2ee7de4998ad604fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2' bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2 61477 SHA512:f895cded216bd210eed7356be97630de75f650bb40d3bb0c7a26b0fadf9991188005ab1c5438e4b8f95614e6ff8c2ad5b2a94f0cc048580bcdc387a219ba7495
```

### `dpkg` source package: `bzr=2.7.0+bzr6622-10`

Binary Packages:

- `bzr=2.7.0+bzr6622-10`
- `python-bzrlib=2.7.0+bzr6622-10`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622-10
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0%2bbzr6622-10.dsc' bzr_2.7.0+bzr6622-10.dsc 2521 SHA256:658f59aaaa101288369e96ab766f5344e31eaa835fa008ad56df2ed65d11903e
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0%2bbzr6622.orig.tar.gz' bzr_2.7.0+bzr6622.orig.tar.gz 10948360 SHA256:08bba3e76cba9beb6b686e71253045beeab9db94753ddbcafa0f8ed1cba377ff
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0%2bbzr6622-10.debian.tar.xz' bzr_2.7.0+bzr6622-10.debian.tar.xz 92572 SHA256:0e35de0eea3cb6910e3dfef330502afd01be60c4cd0b9ca3d5f77e9bb0f406aa
```

### `dpkg` source package: `ca-certificates=20211016ubuntu0.18.04.1`

Binary Packages:

- `ca-certificates=20211016ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.18.04.1.dsc' ca-certificates_20211016ubuntu0.18.04.1.dsc 1937 SHA512:6fb280d77de73d651e65b9c40f08c906516e5210e77bf87a06e81890124eb821f6db5998d0956af2ad07de930ac0c16086db6216062b8d7a8d16061db489f497
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.18.04.1.tar.xz' ca-certificates_20211016ubuntu0.18.04.1.tar.xz 238868 SHA512:35d6b660088d22c90322eb01fd49349b85883f34a43a69faea011c936021d41ab961ac71053ab46ebc17a39026aca1c121c86bfec3b698bf11b0279ab072a24c
```

### `dpkg` source package: `cairo=1.15.10-2ubuntu0.1`

Binary Packages:

- `libcairo-gobject2:amd64=1.15.10-2ubuntu0.1`
- `libcairo-script-interpreter2:amd64=1.15.10-2ubuntu0.1`
- `libcairo2:amd64=1.15.10-2ubuntu0.1`
- `libcairo2-dev:amd64=1.15.10-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.15.10-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.10-2ubuntu0.1.dsc' cairo_1.15.10-2ubuntu0.1.dsc 2290 SHA512:4bcf578ca2f1defc527350003aa380896e9357f7a1abb47c50888ae74359333cfc1755a24df5d833f4de6b43c9c6717fe6b5fbaa60c26cfdc8920b7cdf909b0a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.10.orig.tar.xz' cairo_1.15.10.orig.tar.xz 41881364 SHA512:d56dbf1675c37b70344c1202ac7b50540a99f51a243a98464b05ffb3bb6f17b240af15dea9e3553a1abd36c95c6cf75a2077932205db5461d8a6a9d8aed33686
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.10-2ubuntu0.1.debian.tar.xz' cairo_1.15.10-2ubuntu0.1.debian.tar.xz 31128 SHA512:f4d7333e2f58e2ed50a90a2e5067c79af805d4f10f834ef9b5552636682d67dbe3cab7e8f5860164e3cf2c5d8232a2c7013e30bd6dd8f1dd41c354595607d5f2
```

### `dpkg` source package: `cdebconf=0.213ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.213ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.213ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.dsc' cdebconf_0.213ubuntu1.dsc 2769 SHA256:76cb3f0b1685629220b0e4c3105757b95714f7350df4e7863d5310f1f581fee0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.tar.xz' cdebconf_0.213ubuntu1.tar.xz 272596 SHA256:624feaf9e7e5f407271f99e06e54d5002fcce51345553a626caf7b4a65f0afd1
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

### `dpkg` source package: `coreutils=8.28-1ubuntu1`

Binary Packages:

- `coreutils=8.28-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.28-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.dsc' coreutils_8.28-1ubuntu1.dsc 2302 SHA256:9a7154fd8a458295b686383767f9305095e6ea929a08c8f56cf51640c3fe209f
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz' coreutils_8.28.orig.tar.xz 5252336 SHA256:1117b1a16039ddd84d51a9923948307cfa28c2cea03d1a2438742253df0a0c65
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz.asc' coreutils_8.28.orig.tar.xz.asc 1196 SHA256:505b1a530a55732a9ed659d419ff4973d1b15059078d2060675927058db9607d
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.debian.tar.xz' coreutils_8.28-1ubuntu1.debian.tar.xz 37940 SHA256:71ba2e83edc675a79e1e0556aff326ab2ae812332692e3db29615e8ed1b427f4
```

### `dpkg` source package: `curl=7.58.0-2ubuntu3.21`

Binary Packages:

- `curl=7.58.0-2ubuntu3.21`
- `libcurl3-gnutls:amd64=7.58.0-2ubuntu3.21`
- `libcurl4:amd64=7.58.0-2ubuntu3.21`
- `libcurl4-openssl-dev:amd64=7.58.0-2ubuntu3.21`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg-3ubuntu2.4.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.4.dsc 3313 SHA512:43fb4775db1967b0bc2fb4691dc2b754151eccb4d0344e83ed412dded8e1a6e61ec495579b06a05f6b5e5a35364f12681f7bf63c4649536f8d94ae640bdf7a95
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA512:cd684133dcea5856301f50e378ff105e88f8008af06bd4e02fb9a62a88ece2ee1901ea2776ef3d941d6a3cfc2a77875c08054326293818db89e5f9995c4cd524
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%7e101-g0780600%2bdfsg-3ubuntu2.4.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.4.debian.tar.xz 97932 SHA512:9532cf4f5bf817d84616327a183612bee333f4efff02bc120fed744b60b86851f2ccfb7398b620e99964334bd963f8f45e8f542a87e9752a7ceff23c4de34264
```

### `dpkg` source package: `dash=0.5.8-2.10`

Binary Packages:

- `dash=0.5.8-2.10`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.10
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.dsc' dash_0.5.8-2.10.dsc 1618 SHA256:1e8fdac0880d57d8ed5eb11f9f1750a67c71a7200180cf3ed5aa3e74dab3e4c5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.debian.tar.xz' dash_0.5.8-2.10.debian.tar.xz 43920 SHA256:0d870b0cf9b3ad40e4d4f1e3d4d9097f4d62151693a48f34cb1d49865fd4abdb
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

### `dpkg` source package: `db5.3=5.3.28-13.1ubuntu1.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1ubuntu1.1`
- `libdb5.3-dev=5.3.28-13.1ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.1.dsc' db5.3_5.3.28-13.1ubuntu1.1.dsc 3068 SHA512:20b2e7cddbf97b5de71d782b6df35c6586686da822ae978e5d60acfb3fecd4b00568b24a5ff33bfe05bc8776a0dc4d4d5dc0cc1b127f4fd0bb2d485f6fb108bd
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA512:080483cac3119569e04c3c22c95e97e5e448c88d87a443933d0ef2c71b506f309428584d6a8fb9c236c616dd82beffa1b30361b4c918756745983fcf54a3f8da
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.1.debian.tar.xz' db5.3_5.3.28-13.1ubuntu1.1.debian.tar.xz 29444 SHA512:0e30e4884d67561970fcff40f41641cb7bd663cc5310d396ddc002a26b348d12ca46dd2f265cfd479daffbc42530d047a177b943d65d96dfb483cd1c4e918dc4
```

### `dpkg` source package: `debconf=1.5.66ubuntu1`

Binary Packages:

- `debconf=1.5.66ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.66ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66ubuntu1.dsc' debconf_1.5.66ubuntu1.dsc 2087 SHA512:5320524b5b84afeb7b48a50e25ba80648de989c83f3e8e6c0797e500b4be872cad0e226fe2e7c0bc3e7bed67747006ae855c5f9131e6ffb9a9618800e83d5016
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66ubuntu1.tar.xz' debconf_1.5.66ubuntu1.tar.xz 572556 SHA512:6890b7639c884d4e28d43ac4ca27dd6ab845d9c451521d18369d57a487f2fd14966b30878065d749c60279d0f2f1996035e280e5d060b6c7ff8902bc32fac1f9
```

### `dpkg` source package: `debianutils=4.8.4`

Binary Packages:

- `debianutils=4.8.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.dsc' debianutils_4.8.4.dsc 1764 SHA256:8b12921fe6e4f51d295bfd4213706d588a6c9b8bab659b0ee1fe525f37e9fbcc
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.tar.xz' debianutils_4.8.4.tar.xz 156344 SHA256:c061ab99aea61f892043b7624b021ab5b193e9c6bbfd474da0fbcdd506be1eb2
```

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.dsc' diffutils_3.6-1.dsc 1453 SHA256:26fe7690b45748dc92cee6af224192e78db2ac574e16ae0aeb8ed6a472c883cd
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6.orig.tar.xz' diffutils_3.6.orig.tar.xz 1398296 SHA256:d621e8bdd4b573918c8145f7ae61817d1be9deb4c8d2328a65cea8e11d783bd6
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.debian.tar.xz' diffutils_3.6-1.debian.tar.xz 10808 SHA256:f6ab546a134bde18a87ca8e3c98919680e79d81a65a24801ae06ef69b33f24d8
```

### `dpkg` source package: `djvulibre=3.5.27.1-8ubuntu0.4`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-8ubuntu0.4`
- `libdjvulibre-text=3.5.27.1-8ubuntu0.4`
- `libdjvulibre21:amd64=3.5.27.1-8ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-8ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-8ubuntu0.4.dsc' djvulibre_3.5.27.1-8ubuntu0.4.dsc 2524 SHA512:16daf47b32440be0bbb6906f5663f9eb30dc09f1d8ac4e049706e6e79b7c4be68ef0c75cd8f087d83f20a2e33d5670d93a2a2590e4911667e5087674691ad863
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA512:2ed11daa05995db7bf52113e2f75456c3c804988d2c17d0183b24ab379e52a4ef1871189e8bb132fec6cbc9d629b4d67a4d89ef7df7a995044cb25ff3dcc5de8
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-8ubuntu0.4.debian.tar.xz' djvulibre_3.5.27.1-8ubuntu0.4.debian.tar.xz 61432 SHA512:7bfd11cb72b80e2f9d33162cac5f6ebe1c51dc72871c47c74389281f26bae0f44cec8a2fc5af20abed6a6d07f8751db824b1ea9358ed3c142075038c1752f66d
```

### `dpkg` source package: `dpkg=1.19.0.5ubuntu2.4`

Binary Packages:

- `dpkg=1.19.0.5ubuntu2.4`
- `dpkg-dev=1.19.0.5ubuntu2.4`
- `libdpkg-perl=1.19.0.5ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.5ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.4.dsc' dpkg_1.19.0.5ubuntu2.4.dsc 2111 SHA512:cb24be96d3e3668f5b665864a0fe229bb5885e5dde715d239f1d4c3c2aad72e95ccc78534f096c46ec990f3600cdee209d1c51a95736074275547961401c8139
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.4.tar.xz' dpkg_1.19.0.5ubuntu2.4.tar.xz 4572088 SHA512:5ee43774cc38e1b66133f1a22f001ac058f2ab39c6a51f6bd69954151d5870223ab0cc82672087e8a4a93638bb824372e1805355f954a9e6436a03e4ffb74511
```

### `dpkg` source package: `e2fsprogs=1.44.1-1ubuntu1.4`

Binary Packages:

- `comerr-dev:amd64=2.1-1.44.1-1ubuntu1.4`
- `e2fsprogs=1.44.1-1ubuntu1.4`
- `libcom-err2:amd64=1.44.1-1ubuntu1.4`
- `libext2fs2:amd64=1.44.1-1ubuntu1.4`
- `libss2:amd64=1.44.1-1ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.1-1ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1-1ubuntu1.4.dsc' e2fsprogs_1.44.1-1ubuntu1.4.dsc 3241 SHA512:54691117a9ba838ce0dac97c46e8b088e4a89a8aca3fa3ff32d336b84a82bc14a9f707e80a7a6a2bbdf6292fee644232384a4e7d0055e1e45628c81199d51657
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1.orig.tar.gz' e2fsprogs_1.44.1.orig.tar.gz 7544908 SHA512:c4b1f9baab70ceac9058286eeb75f57a738f01eaa0d9dd74eaaf9b0fd0709c954a0b3efb75896b9dd67ab2626febadd6635fe04a5c32e0700419d2531024dacf
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1.orig.tar.gz.asc' e2fsprogs_1.44.1.orig.tar.gz.asc 488 SHA512:8e3771c784ac83b368e2258ebbd12869683be88cfad15b019ed5e60b72c21aac713494e987f3f3568e859b585808a41480027dd991163a785a93bdf78584853b
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.44.1-1ubuntu1.4.debian.tar.xz' e2fsprogs_1.44.1-1ubuntu1.4.debian.tar.xz 81864 SHA512:a16cb122618be567de9b7eca1a27062c865d6d6395933534e8bf38d1b35671c61557534e8899c6a45fc7875e433a99dae174fc8327369bd2eaae87f93bf66a2a
```

### `dpkg` source package: `elfutils=0.170-0.4ubuntu0.1`

Binary Packages:

- `libelf1:amd64=0.170-0.4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4ubuntu0.1.dsc' elfutils_0.170-0.4ubuntu0.1.dsc 2422 SHA512:cc08e16e9e1b892911f1f48d465127ec621c5dfe9ad3054d5d52e1f165b6650ae76c6f590af05ba743c414ad738379b6a9467f33776e8d2c03a4f0d7b2097507
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA512:aca0b5e271138eaf86e36505ffb101181207b151e833e6cd7c18986ac50678542a5ecd2250f8dd6923ca497142f197c8b08fd225e4130b16b6203c24013d6d28
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4ubuntu0.1.debian.tar.xz' elfutils_0.170-0.4ubuntu0.1.debian.tar.xz 51740 SHA512:a9d615f2dced250403c897ec1e2e2ff2b44523763b88cfad5656d60e864bb42b35384fdfdad372747499732c20e40e2e7d2de06a18c5284ea19f1a1617e2f254
```

### `dpkg` source package: `expat=2.2.5-3ubuntu0.9`

Binary Packages:

- `libexpat1:amd64=2.2.5-3ubuntu0.9`
- `libexpat1-dev:amd64=2.2.5-3ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.5-3ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.dsc' expat_2.2.5-3ubuntu0.9.dsc 2267 SHA512:5c80706e1d54fe89c09201b842a4136fe74f4a9a1606768c3ddbafdd3f51d28ec422ac795337e4907ae8a1e41e94fbadc96959baef333fbf5d0925f58a70c3f1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5.orig.tar.gz' expat_2.2.5.orig.tar.gz 8273003 SHA512:61ce2a479521412e0c56c352106c4adfb61a6bedb883921aba3ebccc29311ddd192646ac2c51b41572728d4de6ab4cb60a1dbc71515d742a80a8b59d89ca74d6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.debian.tar.xz' expat_2.2.5-3ubuntu0.9.debian.tar.xz 27460 SHA512:6c87b2ebdc487359a022efb9820bc4146cdcb0b68393bc3255af5e70739e94218c8c746f1c04908415882a939386f84a3c5dfa8089ed61217d96231dd36e0032
```

### `dpkg` source package: `fftw3=3.3.7-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.7-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7-1.dsc' fftw3_3.3.7-1.dsc 2941 SHA256:65568aacf8b55d87392aeb640ca9bcd37b0d9f1fe2312b298c43c18764e8470a
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7.orig.tar.xz' fftw3_3.3.7.orig.tar.xz 2354860 SHA256:1eb677807ec114a3b1dbbae5d866683b71de2977101cb116063a753365465498
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7-1.debian.tar.xz' fftw3_3.3.7-1.debian.tar.xz 13628 SHA256:5b3763ecfa0177e7c43bf330038b4b2c4d71a5b8c9c33b3e89ccfa4e59f2011b
```

### `dpkg` source package: `file=1:5.32-2ubuntu0.4`

Binary Packages:

- `file=1:5.32-2ubuntu0.4`
- `libmagic-mgc=1:5.32-2ubuntu0.4`
- `libmagic1:amd64=1:5.32-2ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.32-2ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-2ubuntu0.4.dsc' file_5.32-2ubuntu0.4.dsc 1972 SHA512:5d05305d59b222640d75fbc2acc9aa5d95d890f78ab6b3343bebcced830b5c3302f1f560b1ee5f21b7f5bf7599355680a1a8ee59e8ab017916635c43b6b88e65
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32.orig.tar.xz' file_5.32.orig.tar.xz 584352 SHA512:86e095de383a9da86f9adaf0d8cff0f99d7b9c02d75fbc49295f6c44575499e360b8878d0a69109a531307b4f4ac3a7f1655ffcf82ed9619be0e09735d0b139d
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-2ubuntu0.4.debian.tar.xz' file_5.32-2ubuntu0.4.debian.tar.xz 33868 SHA512:5ec41bcf4418ca2c07ed981d1a728e817505a181e59151a5f7e21303ae753dac83e6d8228f6b673c614de19eca56eb6cfe22e2ad42ce69cbaa450319a02f18b4
```

### `dpkg` source package: `findutils=4.6.0+git+20170828-2`

Binary Packages:

- `findutils=4.6.0+git+20170828-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20170828-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828-2.dsc' findutils_4.6.0+git+20170828-2.dsc 2221 SHA256:6997072de2f1b24457073275f7b8f15ad2f0569389dcb277ebe99dd1846e2ee9
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828.orig.tar.xz' findutils_4.6.0+git+20170828.orig.tar.xz 1865192 SHA256:8d6571ffd5105307bcb1b20c4b7d5c2d0b5152e463b082801268bd3ec9e2bbfd
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0%2bgit%2b20170828-2.debian.tar.xz' findutils_4.6.0+git+20170828-2.debian.tar.xz 26532 SHA256:5b13792a14edec982fddcf74fe01b4380b909703d76aaba2860da51c6248de73
```

### `dpkg` source package: `fontconfig=2.12.6-0ubuntu2`

Binary Packages:

- `fontconfig=2.12.6-0ubuntu2`
- `fontconfig-config=2.12.6-0ubuntu2`
- `libfontconfig1:amd64=2.12.6-0ubuntu2`
- `libfontconfig1-dev:amd64=2.12.6-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.12.6-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6-0ubuntu2.dsc' fontconfig_2.12.6-0ubuntu2.dsc 2384 SHA256:e7109f728f73761ad17ff5c5ec066ad940b67b779a78a094b67a7af4cfafadcc
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6.orig.tar.bz2' fontconfig_2.12.6.orig.tar.bz2 1624683 SHA256:cf0c30807d08f6a28ab46c61b8dbd55c97d2f292cf88f3a07d3384687f31f017
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6-0ubuntu2.debian.tar.xz' fontconfig_2.12.6-0ubuntu2.debian.tar.xz 29168 SHA256:75c259e2d6b1944fe76a49f89b806b3ee34fe7a42eb25efd289e38b1b5e16517
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

### `dpkg` source package: `freetype=2.8.1-2ubuntu2.2`

Binary Packages:

- `libfreetype6:amd64=2.8.1-2ubuntu2.2`
- `libfreetype6-dev:amd64=2.8.1-2ubuntu2.2`

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
$ apt-get source -qq --print-uris freetype=2.8.1-2ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.2.dsc' freetype_2.8.1-2ubuntu2.2.dsc 2259 SHA512:588b8d5e7f9eb26e58150f4e7615595983d7b0101d7024cd1f58959b9bfea678117f4f51f824dcccc2a5a724b4e7610b66849132330713ae05a5d70721dad888
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1.orig.tar.gz' freetype_2.8.1.orig.tar.gz 4242784 SHA512:60164caefc506c096142a05e4b578f48d65350fca3082527cd421ed5d0b9671c1123c2303b50ea09dc204288d6d4cbb548a761f67bd8260220f2c83b8f144d42
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.2.diff.gz' freetype_2.8.1-2ubuntu2.2.diff.gz 46148 SHA512:ca57cc2484155cadbab7b65b4366c4a3e25138c6eff35326b57dd65591a06b625f8c48b4b0452111bf612b1aa18c9d79e27e0dbd17c54b610983a1834cf18a60
```

### `dpkg` source package: `gcc-7=7.5.0-3ubuntu1~18.04`

Binary Packages:

- `cpp-7=7.5.0-3ubuntu1~18.04`
- `g++-7=7.5.0-3ubuntu1~18.04`
- `gcc-7=7.5.0-3ubuntu1~18.04`
- `gcc-7-base:amd64=7.5.0-3ubuntu1~18.04`
- `libasan4:amd64=7.5.0-3ubuntu1~18.04`
- `libcilkrts5:amd64=7.5.0-3ubuntu1~18.04`
- `libgcc-7-dev:amd64=7.5.0-3ubuntu1~18.04`
- `libstdc++-7-dev:amd64=7.5.0-3ubuntu1~18.04`
- `libubsan0:amd64=7.5.0-3ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-7=7.5.0-3ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0-3ubuntu1%7e18.04.dsc' gcc-7_7.5.0-3ubuntu1~18.04.dsc 28071 SHA512:1c06ed6e3fb7d3799aaad1915e318597a90ec87ec513d6710157cdf3ce877e15989ea62b70e9b6d6a06c9e24ded1174d87621d01e025797b50d13347126dc3ec
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0.orig.tar.gz' gcc-7_7.5.0.orig.tar.gz 73877115 SHA512:806470ea2d8f69a8d7eed14e38d50ea58b7cb6b8da1bd91fecf15f2f840d67f321fb9602f2c25d44f13df12f80a4f8e2dbe4450d482ae876e3678f69a93dd2d8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.5.0-3ubuntu1%7e18.04.diff.gz' gcc-7_7.5.0-3ubuntu1~18.04.diff.gz 574614 SHA512:030ab7a7894d9af4ce280556bbfd90a695d6d9fc0814f768184dc0cccfb243015f35afc85b97b92a2e1fc7054872b5d59f9fddeb65ca057cbbb3ad2a17935e98
```

### `dpkg` source package: `gcc-8=8.4.0-1ubuntu1~18.04`

Binary Packages:

- `gcc-8-base:amd64=8.4.0-1ubuntu1~18.04`
- `libatomic1:amd64=8.4.0-1ubuntu1~18.04`
- `libcc1-0:amd64=8.4.0-1ubuntu1~18.04`
- `libgcc1:amd64=1:8.4.0-1ubuntu1~18.04`
- `libgomp1:amd64=8.4.0-1ubuntu1~18.04`
- `libitm1:amd64=8.4.0-1ubuntu1~18.04`
- `liblsan0:amd64=8.4.0-1ubuntu1~18.04`
- `libmpx2:amd64=8.4.0-1ubuntu1~18.04`
- `libquadmath0:amd64=8.4.0-1ubuntu1~18.04`
- `libstdc++6:amd64=8.4.0-1ubuntu1~18.04`
- `libtsan0:amd64=8.4.0-1ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.4.0-1ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0-1ubuntu1%7e18.04.dsc' gcc-8_8.4.0-1ubuntu1~18.04.dsc 36382 SHA512:064409c787f62bff87a494f2952f5c3f264d5a7c8508c83b863c1a1ad410d25988cfc73afde9908221258f81714164121cc1f02e3699ca2283c6a3aa035d1ddd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0.orig.tar.gz' gcc-8_8.4.0.orig.tar.gz 85278215 SHA512:ce6ff302ab2e252950bc446bc2b58c198c4b1a75d59122c00845c026a29068f412e0d59cd6ddd8b648838f80589252a1695afc6193fb669082c9a1c4ad14b1dc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.4.0-1ubuntu1%7e18.04.diff.gz' gcc-8_8.4.0-1ubuntu1~18.04.diff.gz 510634 SHA512:7bd97a04eccd35c3483a82b238d8d54c91071c4d1361cb30fb3fbf7b512c84b9d0bc80499373f2da3e17520d112125ebfebae6b93746feede78f9eecc1ccd4ac
```

### `dpkg` source package: `gcc-defaults=1.176ubuntu2.3`

Binary Packages:

- `cpp=4:7.4.0-1ubuntu2.3`
- `g++=4:7.4.0-1ubuntu2.3`
- `gcc=4:7.4.0-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.176ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.176ubuntu2.3.dsc' gcc-defaults_1.176ubuntu2.3.dsc 15463 SHA512:77af785110200dbe6c83c7dc8f1a1e3665c5c05a8cc0a03254936fd42c7ac725d3530b4075a98aadc071050319bfe534f38901b43ba6dccc38c6f19b6514503f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.176ubuntu2.3.tar.gz' gcc-defaults_1.176ubuntu2.3.tar.gz 208597 SHA512:586932097826c71bf94d0a8506d823ff894aae9c1a1053bc71ad8a4cf5101221b058ded1f1ad019e2111ddee13e7cfe8ce197193d770dd8c80eb40d41126cd17
```

### `dpkg` source package: `gdbm=1.14.1-6`

Binary Packages:

- `libgdbm-compat4:amd64=1.14.1-6`
- `libgdbm-dev:amd64=1.14.1-6`
- `libgdbm5:amd64=1.14.1-6`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm5/copyright`)

- `GFDL-1.3+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.14.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.dsc' gdbm_1.14.1-6.dsc 2293 SHA256:85fc353e81fc54b49d9c13c71f4247836fb1aac2693e98416a6821de8cfe7b41
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1.orig.tar.gz' gdbm_1.14.1.orig.tar.gz 894412 SHA256:cdceff00ffe014495bed3aed71c7910aa88bf29379f795abc0f46d4ee5f8bc5f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.debian.tar.xz' gdbm_1.14.1-6.debian.tar.xz 27492 SHA256:c9da59f11d5e40ecd877f1256c53ea4750b9d614c7885800e42d0f1885996658
```

### `dpkg` source package: `gdk-pixbuf=2.36.11-2`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.36.11-2`
- `libgdk-pixbuf2.0-0:amd64=2.36.11-2`
- `libgdk-pixbuf2.0-common=2.36.11-2`
- `libgdk-pixbuf2.0-dev=2.36.11-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1-or-LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-2.dsc' gdk-pixbuf_2.36.11-2.dsc 2886 SHA256:6c6482b64d3b15bf893d6b3dc1864ab49f92ee994736d53ce84a3d052d57e6c4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11.orig.tar.xz' gdk-pixbuf_2.36.11.orig.tar.xz 5675908 SHA256:ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-2.debian.tar.xz' gdk-pixbuf_2.36.11-2.debian.tar.xz 15204 SHA256:064020524e80e3ac713dd6bdf861660df26c61d9aceb75be74df44a9979c0a0c
```

### `dpkg` source package: `git=1:2.17.1-1ubuntu0.13`

Binary Packages:

- `git=1:2.17.1-1ubuntu0.13`
- `git-man=1:2.17.1-1ubuntu0.13`

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


### `dpkg` source package: `glib2.0=2.56.4-0ubuntu0.18.04.9`

Binary Packages:

- `libglib2.0-0:amd64=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-bin=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-data=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-dev:amd64=2.56.4-0ubuntu0.18.04.9`
- `libglib2.0-dev-bin=2.56.4-0ubuntu0.18.04.9`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.56.4-0ubuntu0.18.04.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4-0ubuntu0.18.04.9.dsc' glib2.0_2.56.4-0ubuntu0.18.04.9.dsc 3308 SHA512:1209ada47df60c25f02e82371e8ebcdde130ebbf8642639a8a67867ca57dd2f5741937d36e645ccbc15be35e92664d60b5b7d3ff1342fe365bbe512b5b3e3cb9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4.orig.tar.xz' glib2.0_2.56.4.orig.tar.xz 7029768 SHA512:280a46c2af13283a08c15ff0b4f5492659c2884521930600ad45310ed181c44a878ad8f9b36bae68ed6e7d92db6f1630f7bf015148c513dc317d25807f13abb0
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.4-0ubuntu0.18.04.9.debian.tar.xz' glib2.0_2.56.4-0ubuntu0.18.04.9.debian.tar.xz 107488 SHA512:9cbf02335e216eb2d74914de67411d89b76ff4a18d4194e19801326eb31be8d9300a4416588d7ad1c6fe384e57c4d986f64f05a93ae69fa137d68e0c80c174be
```

### `dpkg` source package: `glibc=2.27-3ubuntu1.6`

Binary Packages:

- `libc-bin=2.27-3ubuntu1.6`
- `libc-dev-bin=2.27-3ubuntu1.6`
- `libc6:amd64=2.27-3ubuntu1.6`
- `libc6-dev:amd64=2.27-3ubuntu1.6`
- `multiarch-support=2.27-3ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.27-3ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.6.dsc' glibc_2.27-3ubuntu1.6.dsc 9612 SHA512:aa5e035e3e8f749abeb3bbd34089d7718bd385710ef4cb00e55bad25cac4d6a3c905e044d115fff8f74417ef21839e8a26eb8897aac32dc9e98e3f9015118fc1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27.orig.tar.xz' glibc_2.27.orig.tar.xz 15923832 SHA512:a0580fb52bc4ea8bb6e6734086b0dc66bd661060cdd837965880b989866490063c2420f250fb19b54e3547c58a5a7f8e012699e6513ce413746fd236ddd239e8
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.6.debian.tar.xz' glibc_2.27-3ubuntu1.6.debian.tar.xz 1111120 SHA512:5b696d4c5404dfa71724a6758b312ae4a2c82b3e9da56e5b5e3a76a903c348bf14dfb9bae77e1453da28a2ce96fdc3405513d60e0c8dd7e04c226ebe34fed606
```

### `dpkg` source package: `gmp=2:6.1.2+dfsg-2ubuntu0.1`

Binary Packages:

- `libgmp-dev:amd64=2:6.1.2+dfsg-2ubuntu0.1`
- `libgmp10:amd64=2:6.1.2+dfsg-2ubuntu0.1`
- `libgmpxx4ldbl:amd64=2:6.1.2+dfsg-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg-2ubuntu0.1.dsc' gmp_6.1.2+dfsg-2ubuntu0.1.dsc 2283 SHA512:05711b25a05e2bd13887b82afd54458f357c1524ce26da37373f9567f97bc7c6ab6ddd379c31bd0b6d007b3ca60f9bdc8116562029385a426bfce06c47ccecee
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA512:cd3771807ebd467cbfdd0c08e5abef107e88af35dfa75e0aa514ea335479c570392f453c05cb033b558f81dc5c0e132cc5e2f56209ef3647fe14ed41cd961e89
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2%2bdfsg-2ubuntu0.1.debian.tar.xz' gmp_6.1.2+dfsg-2ubuntu0.1.debian.tar.xz 21272 SHA512:3566a04bb8271cce23068ccdcd9fa9a9a4d5f42fca15442a2f1c23cc5b5f03b33ce241b574d5b361018c685b3cd4f005395cc2fda36fd8d9801631463c8344f3
```

### `dpkg` source package: `gnupg2=2.2.4-1ubuntu1.6`

Binary Packages:

- `dirmngr=2.2.4-1ubuntu1.6`
- `gnupg=2.2.4-1ubuntu1.6`
- `gnupg-l10n=2.2.4-1ubuntu1.6`
- `gnupg-utils=2.2.4-1ubuntu1.6`
- `gpg=2.2.4-1ubuntu1.6`
- `gpg-agent=2.2.4-1ubuntu1.6`
- `gpg-wks-client=2.2.4-1ubuntu1.6`
- `gpg-wks-server=2.2.4-1ubuntu1.6`
- `gpgconf=2.2.4-1ubuntu1.6`
- `gpgsm=2.2.4-1ubuntu1.6`
- `gpgv=2.2.4-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
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
$ apt-get source -qq --print-uris gnupg2=2.2.4-1ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.6.dsc' gnupg2_2.2.4-1ubuntu1.6.dsc 3816 SHA512:fd78661bb18007758903eae843657368874d788a7d3ab6d42eb2ec1f833a02e25983f93fba9afd651b20eb50e7be6c2d9e80e9ff493d5a4dc9ac4cc07ecf9eb9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2' gnupg2_2.2.4.orig.tar.bz2 6571487 SHA512:3d5c93b7662433103e9549d066a6b1a0c09d595851fab712d2ee844a55157e952a8a2dd5deff70fa8dd6817481f81c3fe5135603bca03206857310d04c1067a8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2.asc' gnupg2_2.2.4.orig.tar.bz2.asc 952 SHA512:85c60b8ff5f7d307d5b741e446915ea067804ad27b4a4b779fbafc11800b0cfb2a94d956b502164a3781b5ad2807434215a3413b913ce22d656838163dc1dabb
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.6.debian.tar.bz2' gnupg2_2.2.4-1ubuntu1.6.debian.tar.bz2 91188 SHA512:b3c96b7a12862052f39f220696fee0a8629cd86b9f351eef8b2844b1944cb9462983f03ec2752cf69995013463e32eef11211f2b8e3706b0aefb378c9e946dc3
```

### `dpkg` source package: `gnutls28=3.5.18-1ubuntu1.6`

Binary Packages:

- `libgnutls30:amd64=3.5.18-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.5.18-1ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.6.dsc' gnutls28_3.5.18-1ubuntu1.6.dsc 3434 SHA512:2868b533ea66b8f48aa4ea4aef4ab6c50feae1fc045edb6fe91d3306ba705f26aedebbf3434d62d659e6e95288b59d25dbd1c05152272975899be05942822a8d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz' gnutls28_3.5.18.orig.tar.xz 7261980 SHA512:434cf33a4221fe2edce1b531cb53690d14a0991cb2056006021f625fb018987351f8ec917c3a7803e5e64179cf1647a3002ae783736ffca3188d2d294b76df52
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz.asc' gnutls28_3.5.18.orig.tar.xz.asc 534 SHA512:c5716fed2d87b88690194cef3aa6ad6674162c77ea6bd536dcff7c32dafe66304d4d2d8cefecf9ee709cf0fae8dae40e9e71dc2c69fd55abf8a15fb6cee52950
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.6.debian.tar.xz' gnutls28_3.5.18-1ubuntu1.6.debian.tar.xz 96712 SHA512:f0ab2f492d6a31264098c57c8ee9fd1adef297e3739ec156556e43b6274b6cca6e45d228f20c9a7ee9bab357672809374b0460b66731f7c5c15c205dad3b9819
```

### `dpkg` source package: `gobject-introspection=1.56.1-1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.56.1-1`
- `gir1.2-glib-2.0:amd64=1.56.1-1`
- `libgirepository-1.0-1:amd64=1.56.1-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.56.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.dsc' gobject-introspection_1.56.1-1.dsc 2915 SHA256:978c16c9988d7bc6fed4f112012d9027d5add7e783d405057c4757e8d377a5a5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1.orig.tar.xz' gobject-introspection_1.56.1.orig.tar.xz 1397812 SHA256:5b2875ccff99ff7baab63a34b67f8c920def240e178ff50add809e267d9ea24b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.debian.tar.xz' gobject-introspection_1.56.1-1.debian.tar.xz 20460 SHA256:20fb97a39c69106ab3b008b31e0409bc6de47989a888004c24dba64397151d86
```

### `dpkg` source package: `graphite2=1.3.11-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.11-2`
- `libgraphite2-dev:amd64=1.3.11-2`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`, `/usr/share/doc/libgraphite2-dev/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-2.1+ `
- `MPL-1.1`
- `custom-sil-open-font-license`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.dsc' graphite2_1.3.11-2.dsc 2367 SHA256:3c2f5ed2b6021e9a18456215d5d01354434f14577dbc862f7f53c8ce62200d71
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11.orig.tar.gz' graphite2_1.3.11.orig.tar.gz 4236768 SHA256:945c01d3647b355d68e5541773fc99a7f29ede6a264bcbd735156a7c493459ff
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.debian.tar.xz' graphite2_1.3.11-2.debian.tar.xz 14068 SHA256:c47ef4ae6edfa6ce02483f347e67786b0fce089515087370ccc10f22ad711f90
```

### `dpkg` source package: `grep=3.1-2build1`

Binary Packages:

- `grep=3.1-2build1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2build1.dsc' grep_3.1-2build1.dsc 2116 SHA512:420de2689ce397d7ae7cfa80bb3f2285445325269f649c387cd265770ba8ea6c0d7a87b5f40d86f88959f807ed77a5dffd6ebf2abdddf05c5c5653df3c6a1232
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA512:05494381c7dd8aad7e2ee4c17450de8d7b969a99dcfe17747db60df3475bf02d5323d091e896e8343e4f3251c29dc7f0b7a9f93c575c9d58ee2a57014c2c9d26
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2build1.debian.tar.bz2' grep_3.1-2build1.debian.tar.bz2 110087 SHA512:ca29a8001c406a2914a9edc1859f2615abc08dc1c8c8a42e48036844ee6249436dba7a43f5e5c078cb44605d620cd0d93904c92178acf73b42cb6faf416be310
```

### `dpkg` source package: `gzip=1.6-5ubuntu1.2`

Binary Packages:

- `gzip=1.6-5ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.2.dsc' gzip_1.6-5ubuntu1.2.dsc 2027 SHA512:988c5bd84a707fe1b68237c4c81f8537ec34d7f60c2ba9755c3628c3305d4e318103eb208981784957bfbdc4e9b8495cfd3e8b1a4e4c520427c32542827dfda4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA512:7fe04ddc101f8a6a8c91ca9cc3502ba80e08011ba27005ddde6bc5926b44066c2f943108c78ac66596cb5ea61f1f7e845a90899a11623638c15088d76e95f04a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.2.debian.tar.xz' gzip_1.6-5ubuntu1.2.debian.tar.xz 20408 SHA512:2253a804bcc3f13696ecef5bb6e5297f3902a471ba7ea239b4309c5fdf377197984f33fbff881f6f8d67540017bbf9f8234519fe332af6397c429454f32d5e13
```

### `dpkg` source package: `harfbuzz=1.7.2-1ubuntu1`

Binary Packages:

- `gir1.2-harfbuzz-0.0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-dev:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-gobject0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-icu0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz0b:amd64=1.7.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-harfbuzz-0.0/copyright`, `/usr/share/doc/libharfbuzz-dev/copyright`, `/usr/share/doc/libharfbuzz-gobject0/copyright`, `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.dsc' harfbuzz_1.7.2-1ubuntu1.dsc 2825 SHA256:0222317c07eecbb164a537694dcb01ff4c658a56e577f9667cbb8ec144d287fa
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.debian.tar.xz' harfbuzz_1.7.2-1ubuntu1.debian.tar.xz 9168 SHA256:f94a2a0990fd0b39fdef14444fa39b0bd1d15f6c79e74b697856ba2cef06b0bf
```

### `dpkg` source package: `heimdal=7.5.0+dfsg-1ubuntu0.2`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libgssapi3-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libhcrypto4-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libheimbase1-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libheimntlm0-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libhx509-5-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libkrb5-26-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libroken18-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`
- `libwind0-heimdal:amd64=7.5.0+dfsg-1ubuntu0.2`

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

### `dpkg` source package: `hostname=3.20`

Binary Packages:

- `hostname=3.20`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.20
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.dsc' hostname_3.20.dsc 1429 SHA256:1fd7b0b2b61e58aa0e50de4d375072c938cb3cc4b722bc73e085e3a3691d9114
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.tar.gz' hostname_3.20.tar.gz 13336 SHA256:e7ed56f8c532573ff34d9bd6e7a10d04fbbb2c7fae187898805868e5fed24ab0
```

### `dpkg` source package: `icu-le-hb=1.0.3+git161113-4`

Binary Packages:

- `libicu-le-hb-dev:amd64=1.0.3+git161113-4`
- `libicu-le-hb0:amd64=1.0.3+git161113-4`

Licenses: (parsed from: `/usr/share/doc/libicu-le-hb-dev/copyright`, `/usr/share/doc/libicu-le-hb0/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu-le-hb=1.0.3+git161113-4
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113-4.dsc' icu-le-hb_1.0.3+git161113-4.dsc 1929 SHA256:e486c93a9795a26347607ea19ad2ca97e043b6de3dcbbc8bf70b0826d740ed50
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113.orig.tar.xz' icu-le-hb_1.0.3+git161113.orig.tar.xz 31460 SHA256:777cdb6fecedb6400cab85894a8407bb70771e38a0e99b837ccf9e4a55f8578c
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3%2bgit161113-4.debian.tar.xz' icu-le-hb_1.0.3+git161113-4.debian.tar.xz 3176 SHA256:e140404464ff5c26af2f7f2f974cb4447e833a64f4529e85564ad367fb483ee5
```

### `dpkg` source package: `icu=60.2-3ubuntu3.2`

Binary Packages:

- `icu-devtools=60.2-3ubuntu3.2`
- `libicu-dev=60.2-3ubuntu3.2`
- `libicu60:amd64=60.2-3ubuntu3.2`
- `libiculx60:amd64=60.2-3ubuntu3.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=60.2-3ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.dsc' icu_60.2-3ubuntu3.2.dsc 1845 SHA512:7a31aeb82e3d5456296665d77efb93c58f93fc49eef10030de32a2811f24592c2ec1f16d9f734ea8a8613bf5ac1bc5ecdb85b08698bdaa51fbf0954722eefa7e
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2.orig.tar.gz' icu_60.2.orig.tar.gz 23315541 SHA512:ecbd9eea199d261d5f2b262abab6b1f3ee4e993081faca1426046b4ed2eadbb082fca3ebdeff82f6b431eafa7ddbe764fe64f9d96bf96486d1aa51cdc4c3d8b2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.debian.tar.xz' icu_60.2-3ubuntu3.2.debian.tar.xz 29840 SHA512:85fc052c31cb78043a3d4029d0024e2871443aa6f31fce677aec398bb2f73d51ff1ba82d19c9e182d8d2bba2e08dd71e2ec8e8edde8ec1455c79eb63ee205a12
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

### `dpkg` source package: `imagemagick=8:6.9.7.4+dfsg-16ubuntu6.14`

Binary Packages:

- `imagemagick=8:6.9.7.4+dfsg-16ubuntu6.14`
- `imagemagick-6-common=8:6.9.7.4+dfsg-16ubuntu6.14`
- `imagemagick-6.q16=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-6-arch-config:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-6-headers=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-6.q16-3-extra:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickcore-dev=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickwand-6-headers=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickwand-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickwand-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu6.14`
- `libmagickwand-dev=8:6.9.7.4+dfsg-16ubuntu6.14`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-3/copyright`, `/usr/share/doc/libmagickcore-6.q16-3-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-3/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
- `LGPL-3`
- `LGPL-3+`
- `Magick++`
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.9.7.4+dfsg-16ubuntu6.14
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4%2bdfsg-16ubuntu6.14.dsc' imagemagick_6.9.7.4+dfsg-16ubuntu6.14.dsc 5108 SHA512:1c2c315a2e33cac45f97817c92cdbb659545600c5ee149e27403fc662f7f1846d9b923646f67d713aa8ee84c3c14f4a106f481df73afc5022abfd4a0c05a531b
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4%2bdfsg.orig.tar.xz' imagemagick_6.9.7.4+dfsg.orig.tar.xz 8929800 SHA512:c1696b80cb95f00c32079110b84df9a125730f336cca5c04caf4aeb4b2f48ba8014dfd808b8a5cef221d5be4da4ffa1472548aa6885c5f756f04db64baf6fbd3
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4%2bdfsg-16ubuntu6.14.debian.tar.xz' imagemagick_6.9.7.4+dfsg-16ubuntu6.14.debian.tar.xz 317328 SHA512:619c90f7ec7c1649f40daf463b448106eaf89bcae03d4071d2c40c599e9223f845163252210175cae03eccd43a92e7569e5b569f8dc5ef00e2ce20900b337db4
```

### `dpkg` source package: `init-system-helpers=1.51`

Binary Packages:

- `init-system-helpers=1.51`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.51
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.dsc' init-system-helpers_1.51.dsc 1963 SHA256:82f0e30fef2ad14c65f9c7d8ccafd43549451041fdf661dca28b963a6cef02e4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.tar.xz' init-system-helpers_1.51.tar.xz 37468 SHA256:e18b28efe8df087146d9c1e4e9c25386ee1b7312f518d48a2a38469a6c661be0
```

### `dpkg` source package: `isl=0.19-1`

Binary Packages:

- `libisl19:amd64=0.19-1`

Licenses: (parsed from: `/usr/share/doc/libisl19/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.19-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19-1.dsc' isl_0.19-1.dsc 1833 SHA256:f9786677430e2ea7295c6ad9480e7e710582f84b5b850a5ddfe1f21b3d726b0f
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19.orig.tar.xz' isl_0.19.orig.tar.xz 1515156 SHA256:6d6c1aa00e2a6dfc509fa46d9a9dbe93af0c451e196a670577a148feecf6b8a5
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19-1.debian.tar.xz' isl_0.19-1.debian.tar.xz 22388 SHA256:aa034a5700c63867aae836a1f985fccc50ccacd1abe57a2a016e076fa745feb0
```

### `dpkg` source package: `jbigkit=2.1-3.1ubuntu0.18.04.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1ubuntu0.18.04.1`
- `libjbig0:amd64=2.1-3.1ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.18.04.1.dsc' jbigkit_2.1-3.1ubuntu0.18.04.1.dsc 1796 SHA512:a0d15d59529f6cbc8f5f78bf61d46951068cc241c180544b31d4b6d0d6fc94268f7ea12324f11c7fa2253db248abad0baca26f8d99089c9c837b9f61c04cb158
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.18.04.1.debian.tar.xz' jbigkit_2.1-3.1ubuntu0.18.04.1.debian.tar.xz 9816 SHA512:c9c46f32443032376c05b84b27a6f196ae7b89418e3b3c50c2bc30195f52b6f9f815ea2f375dbeea5fb1ed2c777f23f73d37283fe468f63356160043e1a021e2
```

### `dpkg` source package: `keyutils=1.5.9-9.2ubuntu2.1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.2ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.2ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.1.dsc' keyutils_1.5.9-9.2ubuntu2.1.dsc 2237 SHA512:61f4e6581936491c0e7276bff184340181966f893160de274b42cde482e6137d0cca7752fd2cf007a5e88292ee54ecd6ffafcb852d6522505d474bdda58625e6
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA512:d4ee1dabb87844e18bfd8d094a5bc9ce792c96720b71e77961b6c36bb1addb9acea2a7004ddfba1d09b167af908368162312e5c3656b22a6266955bb57b887e2
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.1.debian.tar.xz' keyutils_1.5.9-9.2ubuntu2.1.debian.tar.xz 19340 SHA512:03ec3595871f536dcba7979869a4e54054f94172875702ae787bf9207896cde48db038eeaf77672a7110276de9a1ac8827b50ed054121cbf6f5954a25f8063d9
```

### `dpkg` source package: `krb5=1.16-2ubuntu0.2`

Binary Packages:

- `krb5-multidev:amd64=1.16-2ubuntu0.2`
- `libgssapi-krb5-2:amd64=1.16-2ubuntu0.2`
- `libgssrpc4:amd64=1.16-2ubuntu0.2`
- `libk5crypto3:amd64=1.16-2ubuntu0.2`
- `libkadm5clnt-mit11:amd64=1.16-2ubuntu0.2`
- `libkadm5srv-mit11:amd64=1.16-2ubuntu0.2`
- `libkdb5-9:amd64=1.16-2ubuntu0.2`
- `libkrb5-3:amd64=1.16-2ubuntu0.2`
- `libkrb5-dev:amd64=1.16-2ubuntu0.2`
- `libkrb5support0:amd64=1.16-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-9/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.2.dsc' krb5_1.16-2ubuntu0.2.dsc 3566 SHA512:04d0fe2c659918de633560296f62b19b4f358efc714be7ce90938bdfd1d9b1c13d4de597761ef162077fb5a53b48cfa49583be0057d9c232d26736856a89dcae
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.orig.tar.gz' krb5_1.16.orig.tar.gz 9474479 SHA512:7e162467b95dad2b6aaa11686d08a00f1cc4eb08247fca8f0e5a8bcaa5f9f7b42cdf00db69c5c6111bdf9eb8063d53cef3bb207ce5d6a287615ca10b710153f9
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.2.debian.tar.xz' krb5_1.16-2ubuntu0.2.debian.tar.xz 100948 SHA512:77a936bb4cbcefdecc24b9c2d45c4275b40cb363dda386f02347bc4d6668408c405a23bc795722315d4dfd77db49584d6e494235f84dc6b93db0563c749c558b
```

### `dpkg` source package: `lcms2=2.9-1ubuntu0.1`

Binary Packages:

- `liblcms2-2:amd64=2.9-1ubuntu0.1`
- `liblcms2-dev:amd64=2.9-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.9-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-1ubuntu0.1.dsc' lcms2_2.9-1ubuntu0.1.dsc 2084 SHA512:191a120e26ea97428a29c1a8a9f67f6a087315245a40f7240e93e46fb174e953530010e81f35d041615b7b4c53fb9be266890cc007aef8700db0a35e37eb7735
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9.orig.tar.gz' lcms2_2.9.orig.tar.gz 10974649 SHA512:70b1c51fa8d137d5072425e580745ff1fbf49c6e8bb1da0a8adb0647d3b7c095208793cb02de1e8d1a01363b8575fa60c61bedbff99bbec57a44228239cb00e5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-1ubuntu0.1.debian.tar.xz' lcms2_2.9-1ubuntu0.1.debian.tar.xz 10680 SHA512:84285b89b9b3517d07d12aaefed7e1a343dcb5123538c3bd4cb9307fbf3913a54bfc2c9f022c72af28fe781a5db451ae25c1594c8e6133abcf3d6b36b66eedd6
```

### `dpkg` source package: `libassuan=2.5.1-2`

Binary Packages:

- `libassuan0:amd64=2.5.1-2`

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
$ apt-get source -qq --print-uris libassuan=2.5.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.dsc' libassuan_2.5.1-2.dsc 2215 SHA256:e954a7ef30815e62832ca4a1d2959142e264795e7ec78ba369752353135beb68
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1.orig.tar.bz2' libassuan_2.5.1.orig.tar.bz2 564857 SHA256:47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.debian.tar.xz' libassuan_2.5.1-2.debian.tar.xz 15236 SHA256:4a67901dcb0e92cd40e0d5d7148ebe6f929378671df373eb68b48acb560d641f
```

### `dpkg` source package: `libbsd=0.8.7-1ubuntu0.1`

Binary Packages:

- `libbsd0:amd64=0.8.7-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
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
$ apt-get source -qq --print-uris libbsd=0.8.7-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.7-1ubuntu0.1.dsc' libbsd_0.8.7-1ubuntu0.1.dsc 2280 SHA512:a843bcd758e78f005d073a8ca8cfc2813b076851c4dccb307bf12d6870c3fc555e45e89e56d4160a630ae31d59e945f4d41170ac0a9ad9e72e021743b080ad7c
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.7.orig.tar.xz' libbsd_0.8.7.orig.tar.xz 371772 SHA512:605a14eb5d33c0e45c3bd29e585ebc15832e2ed1efa9356291a0562622168da96db1a20766e9dae8910ea0c1516429f43905edc8d4f2a40a5a341a689d08fcc3
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.7.orig.tar.xz.asc' libbsd_0.8.7.orig.tar.xz.asc 833 SHA512:05b65159a7fd4e256fe41df10f3cc389d84ade4e4a5a8786f8b1990951be10b33ec9fbc6cbea16ae0c44a490253511fb2cd6c23422e11e16dbf80bef7f3eb812
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.7-1ubuntu0.1.debian.tar.xz' libbsd_0.8.7-1ubuntu0.1.debian.tar.xz 16608 SHA512:ac2c3278effcba412e732a60258c011b1e6bd0ae9ab28e434fb852df35950905293bba9e2d37466dd29b943763e7e186d3145e81c22f3879b5706f2890e62a17
```

### `dpkg` source package: `libcap-ng=0.7.7-3.1`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3.1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.dsc' libcap-ng_0.7.7-3.1.dsc 2266 SHA256:f545d107ed3e6160b16aac09e242d1ccc054bfca76f6d70731a83c031b416f53
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.debian.tar.xz' libcap-ng_0.7.7-3.1.debian.tar.xz 5432 SHA256:074bf729c3081af729e7e0fbbe3354ddecc16e045245e7d4f44003b9f1f1adc6
```

### `dpkg` source package: `libcroco=0.6.12-2`

Binary Packages:

- `libcroco3:amd64=0.6.12-2`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.12-2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-2.dsc' libcroco_0.6.12-2.dsc 2204 SHA256:46e81715670968edd1d71cd878a5426ea2b28513bc4975f0b1975185adb69c9e
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12.orig.tar.xz' libcroco_0.6.12.orig.tar.xz 482028 SHA256:ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-2.debian.tar.xz' libcroco_0.6.12-2.debian.tar.xz 8076 SHA256:038c42873794d314fb40c9d0a78c49b841b9ac8f3a947f3fee5f7928e7d155b0
```

### `dpkg` source package: `libdatrie=0.2.10-7`

Binary Packages:

- `libdatrie1:amd64=0.2.10-7`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.10-7
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-7.dsc' libdatrie_0.2.10-7.dsc 2256 SHA256:63ad3d2782cfcca0d34055a152908ad65c6b2fc84d3079b79cf90ac4924a77fb
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-7.debian.tar.xz' libdatrie_0.2.10-7.debian.tar.xz 8576 SHA256:0c1496995d89daacad655618e6fff5402cb6935bb5b386c54bf4dcd1cf1b8f85
```

### `dpkg` source package: `libedit=3.1-20170329-1`

Binary Packages:

- `libedit2:amd64=3.1-20170329-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20170329-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.dsc' libedit_3.1-20170329-1.dsc 2269 SHA256:1e657cfcfbbe5c550b844f17cfeb1d8591136fa57300e6cff2b56e5a3e25ad3f
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329.orig.tar.gz' libedit_3.1-20170329.orig.tar.gz 508504 SHA256:91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.debian.tar.bz2' libedit_3.1-20170329-1.debian.tar.bz2 11267 SHA256:7dd7a23b07b082d058b7fb741d3b750b80699472e7c8efd1935a9e7c59a49a39
```

### `dpkg` source package: `liberror-perl=0.17025-1`

Binary Packages:

- `liberror-perl=0.17025-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17025-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.dsc' liberror-perl_0.17025-1.dsc 2077 SHA256:994800c0123fe452ca1f1019e5bf71755c3200231d84999a31dd19be16ada41b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025.orig.tar.gz' liberror-perl_0.17025.orig.tar.gz 32013 SHA256:6c9f474ad3d4fe0cabff6b6be532cb1dd348245986d4a6b600ad921d5cfdefaf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.debian.tar.xz' liberror-perl_0.17025-1.debian.tar.xz 4108 SHA256:0288dcf7eeff5cddfaf8c6bdfbe9fc170a1d333bb6d88489ca8158c929a44f76
```

### `dpkg` source package: `libevent=2.1.8-stable-4build1`

Binary Packages:

- `libevent-2.1-6:amd64=2.1.8-stable-4build1`
- `libevent-core-2.1-6:amd64=2.1.8-stable-4build1`
- `libevent-dev=2.1.8-stable-4build1`
- `libevent-extra-2.1-6:amd64=2.1.8-stable-4build1`
- `libevent-openssl-2.1-6:amd64=2.1.8-stable-4build1`
- `libevent-pthreads-2.1-6:amd64=2.1.8-stable-4build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.1.8-stable-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4build1.dsc' libevent_2.1.8-stable-4build1.dsc 2110 SHA256:50bb6f58ce43bfb8c0b5123bc9722167f79f71c13dcc053da0d38259a9862c4b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4build1.debian.tar.xz' libevent_2.1.8-stable-4build1.debian.tar.xz 12176 SHA256:bc2aaa2398fd296875ee522fbdc1ed146531cd1db9f49119f71d8cf257c51a97
```

### `dpkg` source package: `libexif=0.6.21-4ubuntu0.6`

Binary Packages:

- `libexif-dev:amd64=0.6.21-4ubuntu0.6`
- `libexif12:amd64=0.6.21-4ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-4ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-4ubuntu0.6.dsc' libexif_0.6.21-4ubuntu0.6.dsc 2242 SHA512:589d9a72aedbabf34e8f3c9498b3e29cf40c96ab08315eb88e5d3f2e8f34e25bc9150beabf8182e6255f17e20969464ab88110eb4a6789dcf7b1285abf9100b7
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA512:0a1fac9460d1d91fea8d8390e335946439de44c0ec0e1fd9fa7006532c64bececd12cd622e800c8f1176092bba926a7075838944ad6b62fa07d285af6f73e9fe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-4ubuntu0.6.debian.tar.xz' libexif_0.6.21-4ubuntu0.6.debian.tar.xz 17900 SHA512:0fe3b58982f68fbd4a63d3c15d0797bb039fac039b5de4da68a394dba69cadb81087fb2f8fbb58d0a88fb1d47a4ea6321fd61f63929742d5472e7f7242c8eb6d
```

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi-dev:amd64=3.2.1-8`
- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.dsc' libffi_3.2.1-8.dsc 1959 SHA256:a07201eb5374cfab35703a6f4c88a494bb23ece91da5481497bc25404c57eaf4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.debian.tar.xz' libffi_3.2.1-8.debian.tar.xz 11660 SHA256:1eb0b13e0c0fc989ed98011d18dcddf8a05af17380fe1258883761a8d16586b4
```

### `dpkg` source package: `libgcrypt20=1.8.1-4ubuntu1.3`

Binary Packages:

- `libgcrypt20:amd64=1.8.1-4ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.1-4ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3.dsc' libgcrypt20_1.8.1-4ubuntu1.3.dsc 3035 SHA512:96fc27a4a51579c483ff37b230c7e84dc0ea3c4547cee06d2c274134fa3da948df5f7b7e3e838582d13dc4d8ecd04ef44b065bbd3842590636b27ebc84f6ce65
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2' libgcrypt20_1.8.1.orig.tar.bz2 2967344 SHA512:27c9d2fd9cba5afca71d421c9299d6942463975fae0bd10d4ff42cda2d7ea213e6b73c071a40fcf23ff52a93394cc7505ab332f8a4a3321826460e471eda5b4e
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2.asc' libgcrypt20_1.8.1.orig.tar.bz2.asc 310 SHA512:2e03cade8815ef146ea186efcdef2be5e1a0cfae3b9f8fcd7d7f774503b93ab29dbd2b284c1ad260181419ae0fc23462762e9a5e20193f89af76ca4ea0c1bccf
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3.debian.tar.xz' libgcrypt20_1.8.1-4ubuntu1.3.debian.tar.xz 34832 SHA512:865175d0f34a97873c42749f0a1c783db9c1ab77422bae61627dda2175ac55697e86ef31fffd2eb8645700e3504a1ff7051d684597444df6404166e73d920925
```

### `dpkg` source package: `libgpg-error=1.27-6`

Binary Packages:

- `libgpg-error0:amd64=1.27-6`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.dsc' libgpg-error_1.27-6.dsc 2343 SHA256:d4cc2c1691b295f558d5b347df8a8ad2f0260cf57146180bed223b94ffacafbb
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.debian.tar.xz' libgpg-error_1.27-6.debian.tar.xz 20556 SHA256:89bc57dc3df449febf037226daf1aee830455c4efa493c0e3bdeab2a48971479
```

### `dpkg` source package: `libice=2:1.0.9-2ubuntu0.18.04.1`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-2ubuntu0.18.04.1`
- `libice6:amd64=2:1.0.9-2ubuntu0.18.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-2ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2ubuntu0.18.04.1.dsc' libice_1.0.9-2ubuntu0.18.04.1.dsc 2139 SHA512:0dcf4453781c80af1fd0ba650d2c47d1579b8d80c2a379eac734db6d9ec19925420270b944540c177f2310b3efcafb2e1828ddecdd4cf5466c55b0e2d2ac3d0b
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA512:a95c3a9fb36ea5ce6084d392485cf9abb479aebd73af26e0b974a039d4661aeb8056430ae21a9666e0bbf2262a06a695041f3668ed35fadf4f9875a2936b03b8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2ubuntu0.18.04.1.diff.gz' libice_1.0.9-2ubuntu0.18.04.1.diff.gz 7930 SHA512:86d58544e8b1da1b001df11d17056c566a917e696557b9c3d5bb16f7e41c5cb3921a1ea2861e145b164add87d4598cae7b61718da29d9e7e3eb16060abd8d273
```

### `dpkg` source package: `libidn2=2.0.4-1.1ubuntu0.2`

Binary Packages:

- `libidn2-0:amd64=2.0.4-1.1ubuntu0.2`

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
$ apt-get source -qq --print-uris libidn2=2.0.4-1.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1ubuntu0.2.dsc' libidn2_2.0.4-1.1ubuntu0.2.dsc 2391 SHA512:5c6d826b5994bdeb59f7d71b060643e051ed32ee0c013f638cb80cbb1fb3ad60671b20503bb47fbfabd29005bd3848a95f3bdae7b4ef6ae1d55cabfb4745fc9c
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA512:1e51bd4b8f8907531576291f1c2a8865d17429b4105418b4c98754eb982cd1cbb3adbeab4ec0c1c561d2dba11d876c7c09e5dc5b315c55a2c24986d7a2a3b4d2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1ubuntu0.2.debian.tar.xz' libidn2_2.0.4-1.1ubuntu0.2.debian.tar.xz 10290460 SHA512:b46d51758767ae8d7cc5e9fe59df28c559baac7677bfbfd6a2e51b84c29211e38a5f85ec27afd9e72ec333ea81d03ae783a03e1d8202a0f6ef52dd7bde47475f
```

### `dpkg` source package: `libjpeg-turbo=1.5.2-0ubuntu5.18.04.6`

Binary Packages:

- `libjpeg-turbo8:amd64=1.5.2-0ubuntu5.18.04.6`
- `libjpeg-turbo8-dev:amd64=1.5.2-0ubuntu5.18.04.6`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1.5.2-0ubuntu5.18.04.6
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-0ubuntu5.18.04.6.dsc' libjpeg-turbo_1.5.2-0ubuntu5.18.04.6.dsc 2391 SHA512:96ce8a45cffa62c4026fa739e00490c77c65fe423bd4b67945775b733cdcc22ddfcc7d808d70735f2ffa3ef24bbbf170c1d592263e81a1f03458f47b1f49c1f9
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2.orig.tar.gz' libjpeg-turbo_1.5.2.orig.tar.gz 1657235 SHA512:c7fe5cc77e38fad33af3f10e6db961c8edf033a86c09541121f49bfa20547179760924e6d3e397f0add7030459ff3babadd3457ab2da4a40a2147dc1574aa444
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-0ubuntu5.18.04.6.debian.tar.xz' libjpeg-turbo_1.5.2-0ubuntu5.18.04.6.debian.tar.xz 42484 SHA512:829a5bc3e5dd58f0adbf5e73a5446bc51f7b3d5d5d764c3169dcb307917413d2bf1a11df73a17eaef259cab69bb5efd31dc0bc8fad616ea1b521a9dc79ff5291
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

### `dpkg` source package: `libksba=1.3.5-2ubuntu0.18.04.1`

Binary Packages:

- `libksba8:amd64=1.3.5-2ubuntu0.18.04.1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

### `dpkg` source package: `libmaxminddb=1.3.1-1`

Binary Packages:

- `libmaxminddb-dev:amd64=1.3.1-1`
- `libmaxminddb0:amd64=1.3.1-1`

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
$ apt-get source -qq --print-uris libmaxminddb=1.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.3.1-1.dsc' libmaxminddb_1.3.1-1.dsc 2133 SHA256:3695eba088beaee7249b202b24cf72e839a73a6ec7a7d5c6242eebb28e225298
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.3.1.orig.tar.gz' libmaxminddb_1.3.1.orig.tar.gz 244429 SHA256:6c7f5303322098e3222f1c19bde33c6043514ffe1ce37b50231aa0c04cfffa17
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmaxminddb/libmaxminddb_1.3.1-1.debian.tar.xz' libmaxminddb_1.3.1-1.debian.tar.xz 5264 SHA256:0e0d1adb0cd799cee340d9e3ce6529c8f763957037b6d1958dd9ca1f4763d6cf
```

### `dpkg` source package: `libpng1.6=1.6.34-1ubuntu0.18.04.2`

Binary Packages:

- `libpng-dev:amd64=1.6.34-1ubuntu0.18.04.2`
- `libpng16-16:amd64=1.6.34-1ubuntu0.18.04.2`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.34-1ubuntu0.18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.2.dsc' libpng1.6_1.6.34-1ubuntu0.18.04.2.dsc 2362 SHA512:306827271e4b470dacd142c5b7b4c8d97561c5b2fa39ea5fc36f20bc29f6929c868a0e926179835a24569825def8a778872100b54fbbd1f4b03a817730c40238
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA512:89407c5abc1623faaa3992fc1e4a62def671d9a7401108dfceee895d5f16fe7030090bea89b34a36d377d8e6a5d40046886991f663ce075d1a2d31bf9eaf3c51
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.2.debian.tar.xz' libpng1.6_1.6.34-1ubuntu0.18.04.2.debian.tar.xz 24572 SHA512:7b13f1e486f15260f90376604e92c4050ffbf9023bcca17e527b9d5cf81fffdce83301893d635049939d12608a12835f9e3cbf4321b24dbd08afc5efe8d1a50d
```

### `dpkg` source package: `libpsl=0.19.1-5build1`

Binary Packages:

- `libpsl5:amd64=0.19.1-5build1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.19.1-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.dsc' libpsl_0.19.1-5build1.dsc 2229 SHA256:cb9bcc439b8e37ee27bd3e69a8afa6dd2a59c90ba45de4d533df256f61c8a4f5
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1.orig.tar.gz' libpsl_0.19.1.orig.tar.gz 8578385 SHA256:e370181114b8ef9daf2bb6db49b1edb842335839c15a088e7ec0a35e04e9a227
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.debian.tar.xz' libpsl_0.19.1-5build1.debian.tar.xz 9860 SHA256:53285bee66ac22a25dd41f7778cc4e94ae3d61929eb6701a8064a38a964e40e2
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

### `dpkg` source package: `librsvg=2.40.20-2ubuntu0.2`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.20-2ubuntu0.2`
- `librsvg2-2:amd64=2.40.20-2ubuntu0.2`
- `librsvg2-common:amd64=2.40.20-2ubuntu0.2`
- `librsvg2-dev:amd64=2.40.20-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.20-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.20-2ubuntu0.2.dsc' librsvg_2.40.20-2ubuntu0.2.dsc 2846 SHA512:564b5017bd081092a1098d57b3841070efeab66cb1cafb83c5fdf3a33fba7e432e72f6693a4e10ca18eeb9e28f3787d7c05cf0f6fd6cb9b2c2d4e3de758428fc
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.20.orig.tar.xz' librsvg_2.40.20.orig.tar.xz 1796376 SHA512:cdd8224deb4c3786e29f48ed02c32ed9dff5cb15aba574a5ef845801ad3669cfcc3eedb9d359c22213dc7a29de24c363248825adad5877c40abf73b3688ff12f
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.20-2ubuntu0.2.debian.tar.xz' librsvg_2.40.20-2ubuntu0.2.debian.tar.xz 16768 SHA512:b87308a049c4aeac87b565c48f88fab84feefb3db4c5f03f1619206ab2920993a59222ee4617d51fd04ad874e277cb00c5748539b14cbe7d9f003ccb601a5e83
```

### `dpkg` source package: `libseccomp=2.5.1-1ubuntu1~18.04.2`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1ubuntu1~18.04.2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1ubuntu1~18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e18.04.2.dsc' libseccomp_2.5.1-1ubuntu1~18.04.2.dsc 2303 SHA512:2e493d3aa3b9a83efc57a88388a4e37b57a10947b36e39e90953e630a7637656bcb41ddc5cec4887d928738bab0e652dc8d3264710c577910244fb7a3ebdf600
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA512:2be80a6323f9282dbeae8791724e5778b32e2382b2a3d1b0f77366371ec4072ea28128204f675cce101c091c0420d12c497e1a9ccbb7dc5bcbf61bfd777160af
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.1-1ubuntu1%7e18.04.2.debian.tar.xz' libseccomp_2.5.1-1ubuntu1~18.04.2.debian.tar.xz 18840 SHA512:100d1d23c46f7e76c46b21ac8f7be74527ee52b2d1500427eb5d1891eee0f6afba44c3cddcea663110513f623477ce21904d09a9d50f2a017a90cb568048dca6
```

### `dpkg` source package: `libselinux=2.7-2build2`

Binary Packages:

- `libselinux1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.dsc' libselinux_2.7-2build2.dsc 2468 SHA256:86f2d8422230927aa3274773e2b8a9ed15cb539804c378e75515afcd28545c37
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.debian.tar.xz' libselinux_2.7-2build2.debian.tar.xz 23176 SHA256:ef7a781c247797b66f4d68907d8dd6fec7188d0a08e2a8541437d5f7f6796105
```

### `dpkg` source package: `libsemanage=2.7-2build2`

Binary Packages:

- `libsemanage-common=2.7-2build2`
- `libsemanage1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.dsc' libsemanage_2.7-2build2.dsc 2555 SHA256:4454d11e7228df1e5166907867bbd1be4e6cc8b20c6834dc690fb0dcf19d1c43
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7.orig.tar.gz' libsemanage_2.7.orig.tar.gz 153465 SHA256:07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.debian.tar.xz' libsemanage_2.7-2build2.debian.tar.xz 17136 SHA256:d6d11ecc5687baa3b07a2a2360a9cbc4b93424a9728aa17b81cd9faf13855c3a
```

### `dpkg` source package: `libsepol=2.7-1ubuntu0.1`

Binary Packages:

- `libsepol1:amd64=2.7-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.7-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1ubuntu0.1.dsc' libsepol_2.7-1ubuntu0.1.dsc 2128 SHA512:35a860b3d4eb59743d35e6275d1c624fbf651c5974f45b197194cab0c4ca59ba89f7b2c9d24176b76e2f105c6362bf3a52142aa77a7709f3f2c274d0b17e02ff
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7.orig.tar.gz' libsepol_2.7.orig.tar.gz 471147 SHA512:1d308c17bfea2659f9dc4877ab685449a5a33dff7260e62b603cde9551bed2010360b71a896c6dfcdb8b9fe86ecebc9f6b3225e6c3573a80fca8578a9d561b47
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1ubuntu0.1.debian.tar.xz' libsepol_2.7-1ubuntu0.1.debian.tar.xz 16688 SHA512:26fd4c79e41d7f684f1df4d5e2fc656680756569db963c07327c986eebed70bd5b50c25bbec073f7b91851f64337fcb2f8cff55c680f541062e3d90706defe0b
```

### `dpkg` source package: `libsigsegv=2.12-1`

Binary Packages:

- `libsigsegv2:amd64=2.12-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12-1.dsc' libsigsegv_2.12-1.dsc 2372 SHA256:f1a17e8431a3c1f5d8f69745dcaea78c4007bf463b19c6497fd9672e9e07e438
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz' libsigsegv_2.12.orig.tar.gz 451408 SHA256:3ae1af359eebaa4ffc5896a1aee3568c052c99879316a1ab57f8fe1789c390b6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz.asc' libsigsegv_2.12.orig.tar.gz.asc 2442 SHA256:1861a9a182bbb7a24a18f7e43fe0fa3eb6f6fd53780b30e01990677112694dfc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.12-1.debian.tar.xz' libsigsegv_2.12-1.debian.tar.xz 8548 SHA256:b72c81bfae92575211ceeb2eb4e90453ca4393806efc7f2804df28e7641bc810
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

### `dpkg` source package: `libtasn1-6=4.13-2`

Binary Packages:

- `libtasn1-6:amd64=4.13-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.13-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.dsc' libtasn1-6_4.13-2.dsc 2574 SHA256:8f583c0ae8568ccf7fcf66c387963ef949d644cfca56d66512a17cb91c3a44fd
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.debian.tar.xz' libtasn1-6_4.13-2.debian.tar.xz 63332 SHA256:f36a43fb898c031b6b1a5f43b35af1aea95ac164bb2b57c7f07d1c098ed9f7eb
```

### `dpkg` source package: `libthai=0.1.27-2`

Binary Packages:

- `libthai-data=0.1.27-2`
- `libthai0:amd64=0.1.27-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.27-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27-2.dsc' libthai_0.1.27-2.dsc 2342 SHA256:781b3c7f53d0d743f2cedb7588c3a640aa33c437e3ebd872e018c9113d010323
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27.orig.tar.xz' libthai_0.1.27.orig.tar.xz 410360 SHA256:1659fa1b7b1d6562102d7feb8c8c3fd94bb2dc5761ed7dbaae4f300e1c03eff6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27-2.debian.tar.xz' libthai_0.1.27-2.debian.tar.xz 11660 SHA256:f3c469626104cc97808eab21716bff413b760fb8637976fd27a1b9f0fae64914
```

### `dpkg` source package: `libtool=2.4.6-2`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-2`
- `libltdl7:amd64=2.4.6-2`
- `libtool=2.4.6-2`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
```

### `dpkg` source package: `libunistring=0.9.9-0ubuntu2`

Binary Packages:

- `libunistring2:amd64=0.9.9-0ubuntu2`

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
$ apt-get source -qq --print-uris libunistring=0.9.9-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu2.dsc' libunistring_0.9.9-0ubuntu2.dsc 2006 SHA512:c06c7a7a04dbaef582ed90334e740b70704187df303c033a6298592cdb783f1099ea9a62b787df4b5cbd504ad76f5ff112a3508fda5134b749a25c3222ac9eb1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9.orig.tar.xz' libunistring_0.9.9.orig.tar.xz 2042992 SHA512:c5f3619d0b064c0256dc9326b609cb72871c85102cd67cfc46d85f72b67c564924cd76198c6d6ab60fbf7d6f76ddcb9fbe6c8116f779ca7e24570ae84e31fea8
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu2.debian.tar.xz' libunistring_0.9.9-0ubuntu2.debian.tar.xz 40424 SHA512:e9c6f76208bef66892b584d83e68b60a05a9cf0b67b1ac10532e996a081319d110a92b440713cb9a46fc45404723a5c81420ede10af2ab8e89432c693db4e1ef
```

### `dpkg` source package: `libwebp=0.6.1-2ubuntu0.18.04.1`

Binary Packages:

- `libwebp-dev:amd64=0.6.1-2ubuntu0.18.04.1`
- `libwebp6:amd64=0.6.1-2ubuntu0.18.04.1`
- `libwebpdemux2:amd64=0.6.1-2ubuntu0.18.04.1`
- `libwebpmux3:amd64=0.6.1-2ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.1-2ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.18.04.1.dsc' libwebp_0.6.1-2ubuntu0.18.04.1.dsc 2185 SHA512:a7389414d1a4d1dae5e3ac794342e3034ff59255e379f5229077a481dda9497332b58668996a81da51ac3a55b303ce2c5254d11731c95795ea7525ba47a76150
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1.orig.tar.gz' libwebp_0.6.1.orig.tar.gz 3554290 SHA512:313b345a01c91eb07c2e4d46b93fcda9c50dca9e05e39f757238a679355514a2e9bc9bc220f3d3eb6d6a55148957cb2be14dac330203953337759841af1a32bf
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.18.04.1.debian.tar.xz' libwebp_0.6.1-2ubuntu0.18.04.1.debian.tar.xz 16772 SHA512:b0c8ee7243e7ace81d0b4143566a1f5e2a62bc84ffdba54975d08432eb2bff93c1e7ee181b4a1e5e7ab5a6274545fcd58143d3d141dbd9a23441cb54e36a0e61
```

### `dpkg` source package: `libwmf=0.2.8.4-12`

Binary Packages:

- `libwmf-dev=0.2.8.4-12`
- `libwmf0.2-7:amd64=0.2.8.4-12`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-12
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-12.dsc' libwmf_0.2.8.4-12.dsc 2134 SHA256:cc438ea4b9f9b93d06428989e3920f6e9f1fb317e451aeecbd2b3f608dd82826
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-12.debian.tar.xz' libwmf_0.2.8.4-12.debian.tar.xz 11952 SHA256:579cc19e9199e30b1097559f031a9814f4990206487cb4c402defb68f55be1cd
```

### `dpkg` source package: `libx11=2:1.6.4-3ubuntu0.4`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3ubuntu0.4`
- `libx11-data=2:1.6.4-3ubuntu0.4`
- `libx11-dev:amd64=2:1.6.4-3ubuntu0.4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.4-3ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3ubuntu0.4.dsc' libx11_1.6.4-3ubuntu0.4.dsc 2512 SHA512:0bc10de95babe790f7853cea8c4c48c182d78dfcb8a9d14b77f5c24f2e63cd538ded5b62243febc3d5c974a7c20e9ceeab3c758ad09cc39c8cd44e71419cc320
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA512:253597837e9074f962aacf8d9974491b134591b18b61835f5ab14a6488fbcb15b7761b5ce8c43cfbba10db052933a582bab0fe0980e2388189d60e39a46a0107
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3ubuntu0.4.diff.gz' libx11_1.6.4-3ubuntu0.4.diff.gz 50935 SHA512:9740f50efb90f00a52df79316684530a6a39ec53d6efcbbe5709118d4742a37d4486a79d9470772d28efbfccd6d13713cff4433ed593296353a5739f124e2636
```

### `dpkg` source package: `libxau=1:1.0.8-1ubuntu1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1ubuntu1`
- `libxau6:amd64=1:1.0.8-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1ubuntu1.dsc' libxau_1.0.8-1ubuntu1.dsc 2099 SHA512:944a2481ac5927b7dd649afe7f1f88493499a4de019ac9ef6f0c94f305aedf7695de86935f02610069ef84c0bec56db66357472f773fc9807616b2f4e92f296e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA512:3bdd9c1a491f00000dd891577493803bac3f80d0e61acb28eb2bcb50b8923e6d4540ffc4422bc0f6af8a0d20c5a75d53eedbdef177c25332f970542ea440c5d9
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1ubuntu1.diff.gz' libxau_1.0.8-1ubuntu1.diff.gz 15803 SHA512:c22f2fee07349c910f3d461d1718672ee72fd37b9668e869a7d92b984a3b158034615bf64c9480b995156ef96faa66e0107db50f2fa6fcd6f56da7911bdc8dc7
```

### `dpkg` source package: `libxcb=1.13-2~ubuntu18.04`

Binary Packages:

- `libxcb-render0:amd64=1.13-2~ubuntu18.04`
- `libxcb-render0-dev:amd64=1.13-2~ubuntu18.04`
- `libxcb-shm0:amd64=1.13-2~ubuntu18.04`
- `libxcb-shm0-dev:amd64=1.13-2~ubuntu18.04`
- `libxcb1:amd64=1.13-2~ubuntu18.04`
- `libxcb1-dev:amd64=1.13-2~ubuntu18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.13-2~ubuntu18.04
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.13-2%7eubuntu18.04.dsc' libxcb_1.13-2~ubuntu18.04.dsc 4762 SHA512:034d032bcbbaa311b44eb0c01a7eefbf671644e3a3f8b1f5c001bf80df45120cc85ba25e8453b66a691751eebf2e21ed93af976471efa824b1d83b33a4f3769b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.13.orig.tar.gz' libxcb_1.13.orig.tar.gz 632493 SHA512:28e1db6f1981bef25007c98ba28f4c2a4d285af1aadd43ced631d630abab90ade055f125d5e384b6ff1e5ef8e31a745f53a77d61d862a6e3b7a64c52b749bc02
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.13-2%7eubuntu18.04.diff.gz' libxcb_1.13-2~ubuntu18.04.diff.gz 25267 SHA512:fd19a1c6a8f6ebf362e871e814455b7cc2d63ffa63f0d47cdc035a3d5bc4b4076a4dc487dfead4d40605a4fa330134eeceb0a3acfc760579de2e2380d3b97b01
```

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
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

### `dpkg` source package: `libxml2=2.9.4+dfsg1-6.1ubuntu1.8`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-6.1ubuntu1.8`
- `libxml2-dev:amd64=2.9.4+dfsg1-6.1ubuntu1.8`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-6.1ubuntu1.8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-6.1ubuntu1.8.dsc' libxml2_2.9.4+dfsg1-6.1ubuntu1.8.dsc 3167 SHA512:bb568086db2543550c628f8170388afe59ee6586ca98360bdbfbee8f7dadd4349e03069dddb48c322759ae5afecb1c6988f0488c0eb777603ca40d8be019e392
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA512:c921697db38b530b1a088636cb31226bbe9df8c9e9c83316ce53770f9bd2faeef360d5f526f34e00cd778150c408e8d91b99a67a5f5030a8b279961ff9299ae5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4%2bdfsg1-6.1ubuntu1.8.debian.tar.xz' libxml2_2.9.4+dfsg1-6.1ubuntu1.8.debian.tar.xz 50060 SHA512:0f0f83f113136ac3e439d0b955b0758b28bb76828c9494dbafa061eeb97d938730041d14c4be24f54c3b90442e59ca1af887d52c856186b440a5edecc232ad6e
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

### `dpkg` source package: `libxslt=1.1.29-5ubuntu0.3`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-5ubuntu0.3`
- `libxslt1.1:amd64=1.1.29-5ubuntu0.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-5ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-5ubuntu0.3.dsc' libxslt_1.1.29-5ubuntu0.3.dsc 2518 SHA512:ee9bad76ecd7018d7d48d1b6348275bb540bcd2faa6c3ff2fcbbb123e4652a7dde1144374e137379213a931d71bfb91ca678861872877514bce5bef7f00354eb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA512:a1ce555a74a9dabe65e8f64bb66e27e77760fd76940d88f2d59f58dd63ca73c8ae59f3fcbd8e76c8f92ff992fb0c09328528c20ea38ccac83e63252106bf5f31
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-5ubuntu0.3.debian.tar.xz' libxslt_1.1.29-5ubuntu0.3.debian.tar.xz 39164 SHA512:ebb9f0fdd1fd6ed984930835e6f5f0568240ac95ef964191852843e2ccb140b2cefcd0eabc137706afaf3a43d934a3167d0ed0acbfc537f3e1086014c004ec17
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

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`
- `libyaml-dev:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `libzstd=1.3.3+dfsg-2ubuntu1.2`

Binary Packages:

- `libzstd1:amd64=1.3.3+dfsg-2ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause-with-patent-grant`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.3+dfsg-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg-2ubuntu1.2.dsc' libzstd_1.3.3+dfsg-2ubuntu1.2.dsc 2406 SHA512:ba1f7d18723eafcd18f2722a0005be04d0104c87a7cd80e2ffff91395df87213df3d6969d59e4260930ce583070d319847982c175dc99859bc8f0f964fbf1ad2
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg.orig.tar.xz' libzstd_1.3.3+dfsg.orig.tar.xz 1333584 SHA512:40f66d34247f549b6861677a520bdce722036c49bc78096981b3b6b4cbb798780c6afccaff18e843016ec7aab55b8bb3ce3ddbfb089efb5d83028058df5e755c
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3%2bdfsg-2ubuntu1.2.debian.tar.xz' libzstd_1.3.3+dfsg-2ubuntu1.2.debian.tar.xz 13764 SHA512:f14aa9e453c7041a79dd90a52b5955b86fa86886b89ef26d4d257aa017a50d97410e8b875593992ad7d4b7e8e8d55743b8c66706be62cd4234f81e49c8bfc05d
```

### `dpkg` source package: `linux=4.15.0-200.211`

Binary Packages:

- `linux-libc-dev:amd64=4.15.0-200.211`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lsb=9.20170808ubuntu1`

Binary Packages:

- `lsb-base=9.20170808ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.dsc' lsb_9.20170808ubuntu1.dsc 2126 SHA256:9b98df7b442472d172612bf6855b4dbc3cd6d5892d8073605dda786fec94af5f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.tar.xz' lsb_9.20170808ubuntu1.tar.xz 45492 SHA256:b26bcb746e0bff05ad3e15dfbeb0ba7ea2a8d031f765a6cfa568c57d14c522c4
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu3.1`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu3.1.dsc' lz4_0.0~r131-2ubuntu3.1.dsc 2108 SHA512:a90ae7ae8793f180a604cb20a43ca5a69d837aaf9df7bbe6c23d6f6a4700ad9b81d06cb7503d5d3f2d0f2b9bbbe3013601eeb47641c3d12113ea66900876c6f4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA512:60bd95d529691ffee2c43f0d8a62484c3cff74c0154094f073192606806ac8182dced61e0534ffa7e0ccf5f18e9a8cfd2738883a83814c0711a6d7f1d1b252e5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0%7er131-2ubuntu3.1.debian.tar.xz' lz4_0.0~r131-2ubuntu3.1.debian.tar.xz 5848 SHA512:d2fbe7c7edc933391275d7a29a5e0893cc358454a7d54ee352cb9eb91532cf9d97daedd08b2c921373b0fff3a45522e07fef18f522b04160dc09432c0cf2acdc
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

### `dpkg` source package: `m4=1.4.18-1`

Binary Packages:

- `m4=1.4.18-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.dsc' m4_1.4.18-1.dsc 1426 SHA256:83a6c5e4b94aa47634b7c988fa485155c01120c17682865e6f032de9adf1090c
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.debian.tar.xz' m4_1.4.18-1.debian.tar.xz 15784 SHA256:55de78acb0272fd6e2637ab933114e64eefa58ba1e97b063629453ae1e163fff
```

### `dpkg` source package: `make-dfsg=4.1-9.1ubuntu1`

Binary Packages:

- `make=4.1-9.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.dsc' make-dfsg_4.1-9.1ubuntu1.dsc 2079 SHA256:d8ca40c89cb2b808b28264b7097a001f00a517a68d5bc2657b5c5e1bbfd0ce8b
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.diff.gz' make-dfsg_4.1-9.1ubuntu1.diff.gz 46399 SHA256:6adc229835bd4cf04cefab0767534f9e6934989413002dd5525ec557010af5e8
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu3`

Binary Packages:

- `mawk=1.3.3-17ubuntu3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.dsc' mawk_1.3.3-17ubuntu3.dsc 1970 SHA256:2893a0c18b75c41d480be67d5d4edb7124ed7e9b5ed643d2670aa34481f7a77c
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.diff.gz' mawk_1.3.3-17ubuntu3.diff.gz 64052 SHA256:d1be148525885cb1869e35514f55005b5043f3310b08c444625005a3e14c81fc
```

### `dpkg` source package: `mercurial=4.5.3-1ubuntu2.2`

Binary Packages:

- `mercurial=4.5.3-1ubuntu2.2`
- `mercurial-common=4.5.3-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.5.3-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3-1ubuntu2.2.dsc' mercurial_4.5.3-1ubuntu2.2.dsc 2760 SHA512:40c7351cfee791e98c19ee67b2def518b153d3d348e2e87a0f75bc53bf1729b0736a7195e1cc534a9e186d61df6985caa4d862dc373be9d77b912d573ae745b8
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3.orig.tar.gz' mercurial_4.5.3.orig.tar.gz 5884837 SHA512:9c23ffefb0a194b5a88ee783186347c21e7d973524ba40119439702953b35b01ad6fbc32ce09ae169f1020963e92312a39321b1da3ffe06db1d44158761abbec
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3.orig.tar.gz.asc' mercurial_4.5.3.orig.tar.gz.asc 833 SHA512:c34d9e3ac1a04cc8b35405828ab4d8a7c98ef775f4af5e8ac3b347b504ca608bcd66f06646aeb554688aa95f14900e1a611675aabf385efd7b322548051c25eb
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3-1ubuntu2.2.debian.tar.xz' mercurial_4.5.3-1ubuntu2.2.debian.tar.xz 66484 SHA512:cdc796c1d5d39ce77215c2ba3166030309c91a6830a169368501dc3ee75e96f802c59b0b243fb55150ab34006a6f10acbf48fbf967b83e2216b647c2c25d0369
```

### `dpkg` source package: `mime-support=3.60ubuntu1`

Binary Packages:

- `mime-support=3.60ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.dsc' mime-support_3.60ubuntu1.dsc 1712 SHA256:1e58e26d0f87f25ebe6c08007e9d354a24457ab73d40a1eb3b9ab62ea0d366d5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.tar.gz' mime-support_3.60ubuntu1.tar.gz 37743 SHA256:cb1bc122ac2dc7046f6c0c06146ac0897a3c1c02e7e5e53cdd30817db2c62d33
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

### `dpkg` source package: `mpdecimal=2.4.2-1ubuntu1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.dsc' mpdecimal_2.4.2-1ubuntu1.dsc 2051 SHA256:6a1a2c1b839492e178d601dc6b9de26a3173124b35659ccd21362167a4fabda9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.debian.tar.xz' mpdecimal_2.4.2-1ubuntu1.debian.tar.xz 5328 SHA256:091414d364411f1d05b496f877e04d8ad22d52441cb698d739929907e94e0fc7
```

### `dpkg` source package: `mpfr4=4.0.1-1`

Binary Packages:

- `libmpfr6:amd64=4.0.1-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1-1.dsc' mpfr4_4.0.1-1.dsc 1972 SHA256:85d8dad92d3f9ace96ac78b2f4ec00eafef228fa53e0344ae4255fc4d3f75626
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1.orig.tar.xz' mpfr4_4.0.1.orig.tar.xz 1412692 SHA256:67874a60826303ee2fb6affc6dc0ddd3e749e9bfcb4c8655e3953d0458a6e16e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1-1.debian.tar.xz' mpfr4_4.0.1-1.debian.tar.xz 10460 SHA256:9e0d582dea7e88958b8bc1f3782ada59b9c7175f01b4e06e8487fc6cbfc5a2d7
```

### `dpkg` source package: `mysql-5.7=5.7.40-0ubuntu0.18.04.1`

Binary Packages:

- `libmysqlclient-dev=5.7.40-0ubuntu0.18.04.1`
- `libmysqlclient20:amd64=5.7.40-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`)

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
- `SWsoft`
- `public-domain`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mysql-5.7=5.7.40-0ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40-0ubuntu0.18.04.1.dsc' mysql-5.7_5.7.40-0ubuntu0.18.04.1.dsc 3446 SHA512:81ff981daca129c1455909d6d02de6d5d9a846d13a6a388e84f67c526afd18486333f377d4f8f8ea2636933e4328df7d2f81d8959bb5ec5d8cb8ab3c7a529e77
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40.orig.tar.gz' mysql-5.7_5.7.40.orig.tar.gz 53255386 SHA512:5c49ef65c00658786117cc489d80a6ed7517759b010fb4530508649ab6b4079bb8f1dbc70cefe5d179e1a003960d296b85210b161be4f8f18756a578a1a11365
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.40-0ubuntu0.18.04.1.debian.tar.xz' mysql-5.7_5.7.40-0ubuntu0.18.04.1.debian.tar.xz 156984 SHA512:f9048d9e9457c22513f918a69c2b781fb9a1453b11a046408563b9d26868399cf994303c807dd71702535768c4350268dc67071858e278c56c690094767b754b
```

### `dpkg` source package: `mysql-defaults=1.0.4`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.4`
- `mysql-common=5.8+1.0.4`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.dsc' mysql-defaults_1.0.4.dsc 2213 SHA256:c0cb0ba90874c858c30cfc71ccbd078c1fb1b45fbfdc6414af75811101d6f01f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.tar.xz' mysql-defaults_1.0.4.tar.xz 7084 SHA256:01b92a09aaa08fd589610c0d7cbe55e05dce64db57ff2dfa6f794bcf857e002a
```

### `dpkg` source package: `ncurses=6.1-1ubuntu1.18.04`

Binary Packages:

- `libncurses5:amd64=6.1-1ubuntu1.18.04`
- `libncurses5-dev:amd64=6.1-1ubuntu1.18.04`
- `libncursesw5:amd64=6.1-1ubuntu1.18.04`
- `libncursesw5-dev:amd64=6.1-1ubuntu1.18.04`
- `libtinfo-dev:amd64=6.1-1ubuntu1.18.04`
- `libtinfo5:amd64=6.1-1ubuntu1.18.04`
- `ncurses-base=6.1-1ubuntu1.18.04`
- `ncurses-bin=6.1-1ubuntu1.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1-1ubuntu1.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.dsc' ncurses_6.1-1ubuntu1.18.04.dsc 4702 SHA512:e998c05380a2599d3f37572e720ab60854a1c83bacdf921372767e320d4063c2af611d45409201dbc77e6c6b981537eec246f46326bae6a69536ddf974007ab1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz' ncurses_6.1.orig.tar.gz 3365395 SHA512:e308af43f8b7e01e98a55f4f6c4ee4d1c39ce09d95399fa555b3f0cdf5fd0db0f4c4d820b4af78a63f6cf6d8627587114a40af48cfc066134b600520808a77ee
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz.asc' ncurses_6.1.orig.tar.gz.asc 251 SHA512:53659ddf0890683f1d9bf895d7d5b0693d95e102cde4440685a3d0c97230c4930203a9383bd9833ba4639713a12b0afd2b3ebecd9fa5640fb6f2b5fa8e662441
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.debian.tar.xz' ncurses_6.1-1ubuntu1.18.04.debian.tar.xz 57464 SHA512:ec0211e25ecc865296afd54eeae8314718ca2d443936e016dd74dacfaa1f1de79778b1d50fe9377488f07e40fce82ed367348db30889757efd1db4f96630a6fa
```

### `dpkg` source package: `netbase=5.4`

Binary Packages:

- `netbase=5.4`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.4
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.4.dsc' netbase_5.4.dsc 1326 SHA256:ebe29d45e65b661d64636cbce3840997d8079cf338efbfa347b4c73ed2831b7b
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.4.tar.xz' netbase_5.4.tar.xz 31524 SHA256:66ff73d2d162e2d49db43988d8b8cd328cf7fffca042db73397f14c71825e80d
```

### `dpkg` source package: `nettle=3.4.1-0ubuntu0.18.04.1`

Binary Packages:

- `libhogweed4:amd64=3.4.1-0ubuntu0.18.04.1`
- `libnettle6:amd64=3.4.1-0ubuntu0.18.04.1`

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
$ apt-get source -qq --print-uris nettle=3.4.1-0ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1-0ubuntu0.18.04.1.dsc' nettle_3.4.1-0ubuntu0.18.04.1.dsc 2153 SHA512:01b4b4de8dfcde469729f09e1271af2d39f8728bef22f709f21113e139c81fe8cbe5224582a4eee5699486143b93a67b96d4da357225dd1dcb8be403705ed5e7
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz' nettle_3.4.1.orig.tar.gz 1947053 SHA512:26aefbbe9927e90e28f271e56d2ba876611831222d0e1e1a58bdb75bbd50934fcd84418a4fe47b845f557e60a9786a72a4de2676c930447b104f2256aca7a54f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1-0ubuntu0.18.04.1.debian.tar.xz' nettle_3.4.1-0ubuntu0.18.04.1.debian.tar.xz 27048 SHA512:424581749cb4e4f30343f788b9a26a2ced0f734b2a8faddc93f27317ff45e071f8f47d845e93d2d3eb5374390f29a868b1020858cc7890107916ec60991c1203
```

### `dpkg` source package: `nghttp2=1.30.0-1ubuntu1`

Binary Packages:

- `libnghttp2-14:amd64=1.30.0-1ubuntu1`

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
$ apt-get source -qq --print-uris nghttp2=1.30.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.dsc' nghttp2_1.30.0-1ubuntu1.dsc 2674 SHA256:1848fdc28933b7ee23dbebe3c9dcd0ca9182f95a278d627758d5ccfa2e0b44ad
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0.orig.tar.bz2' nghttp2_1.30.0.orig.tar.bz2 1839714 SHA256:f66918dd03773f4847da1d069295c758ce478cbd1fe58298a37d65e1dce056d8
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.debian.tar.xz' nghttp2_1.30.0-1ubuntu1.debian.tar.xz 13244 SHA256:eb99f2c10cd872ce750964fc59734aa70b89ad04179291a23bfbee0e1a2903d3
```

### `dpkg` source package: `npth=1.5-3`

Binary Packages:

- `libnpth0:amd64=1.5-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.dsc' npth_1.5-3.dsc 1954 SHA256:98e02623d39451685321ab638e12cd0b85f7829f6b174d03dbb806b8d899ae3f
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.debian.tar.xz' npth_1.5-3.debian.tar.xz 10480 SHA256:5cbaf91c95c90ab82053110eeec5ac72f5a3cab36829edb0579f1fb759ec5fec
```

### `dpkg` source package: `openexr=2.2.0-11.1ubuntu1.9`

Binary Packages:

- `libopenexr-dev=2.2.0-11.1ubuntu1.9`
- `libopenexr22:amd64=2.2.0-11.1ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11.1ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11.1ubuntu1.9.dsc' openexr_2.2.0-11.1ubuntu1.9.dsc 2403 SHA512:946115a443dbc601337d8327be9307bbbe4f75c7441a663a0e66f9c7c008e06e9da9a65f1a01634f7f4791f9c98020277d6e3bfd116cbd8502ba0208b04cc794
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA512:017abbeeb6b814508180721bc8e8940094965c4c55b135a198c6bcb109a04bf7f72e4aee81ee72cb2185fe818a41d892b383e8d2d59f40c673198948cb79279a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11.1ubuntu1.9.debian.tar.xz' openexr_2.2.0-11.1ubuntu1.9.debian.tar.xz 40924 SHA512:07cecb0a817953c070391f6d93b0a9cf3c940916c6203c8f87449e5647bc34336dbf5b55555d57d0a6ba7b44e9dd164887c15df82e85197bf869314e1be5551a
```

### `dpkg` source package: `openldap=2.4.45+dfsg-1ubuntu1.11`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1ubuntu1.11`
- `libldap-common=2.4.45+dfsg-1ubuntu1.11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1ubuntu1.11
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg-1ubuntu1.11.dsc' openldap_2.4.45+dfsg-1ubuntu1.11.dsc 2888 SHA512:5bb7107e4edef2110b854ab51293be2c8363fb75c07f5bb954e712b967cd9237f71a9ab48874d234459eabcddd81f1fda045c14c9b2daef4a776c6e3d3375794
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA512:fb2089aa6949ecced1d48242b203bc2f744e920ecea41559209f7d3a1cfe626c1d81e8a9234b6997b2379832d62e439ca1f674a8a06635fdaa359fc09d1b414e
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45%2bdfsg-1ubuntu1.11.debian.tar.xz' openldap_2.4.45+dfsg-1ubuntu1.11.debian.tar.xz 185504 SHA512:f4552c4b7c4e8d21fadbcbdcc4a616756b75394d3fed9586e0ece9c3d20f8b40bd3c8b1e91f7391b0acdaaa4caa885978ba963498db94861abf9f726af282e38
```

### `dpkg` source package: `openssh=1:7.6p1-4ubuntu0.7`

Binary Packages:

- `openssh-client=1:7.6p1-4ubuntu0.7`

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
$ apt-get source -qq --print-uris openssh=1:7.6p1-4ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.6p1-4ubuntu0.7.dsc' openssh_7.6p1-4ubuntu0.7.dsc 2989 SHA512:37cbc8b6f0f4ddabb988f7158ea11782a41227f16453e58624f2aba5ff2ce27da715810b311f6b353303317ac5079b5b396e8299394617711dc337a10235257e
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.6p1.orig.tar.gz' openssh_7.6p1.orig.tar.gz 1489788 SHA512:de17fdcb8239401f76740c8d689a8761802f6df94e68d953f3c70b9f4f8bdb403617c48c1d01cc8c368d88e9d50aee540bf03d5a36687dfb39dfd28d73029d72
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.6p1-4ubuntu0.7.debian.tar.xz' openssh_7.6p1-4ubuntu0.7.debian.tar.xz 169636 SHA512:d498db0aaf93a16d766d1e71d395c5290e60a6eb76198afcb6631a7f35cc1009556ec9f8141edc3cc76c34f317a39a245c56380bfeb7d644d35c17d768ec45ec
```

### `dpkg` source package: `openssl1.0=1.0.2n-1ubuntu5.10`

Binary Packages:

- `libssl1.0.0:amd64=1.0.2n-1ubuntu5.10`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl1.0=1.0.2n-1ubuntu5.10
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/openssl1.0_1.0.2n-1ubuntu5.10.dsc' openssl1.0_1.0.2n-1ubuntu5.10.dsc 2717 SHA512:13a6733ba1d76e8a34dabb41bbf9793892c9d92714736811b1526321e29c6e516a3b07c97bfb9e191be06c7d22af1e9ae070f631d58f639226e088f8909c896f
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/openssl1.0_1.0.2n.orig.tar.gz' openssl1.0_1.0.2n.orig.tar.gz 5375802 SHA512:144bf0d6aa27b4af01df0b7b734c39962649e1711554247d42e05e14d8945742b18745aefdba162e2dfc762b941fd7d3b2d5dc6a781ae4ba10a6f5a3cadb0687
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/openssl1.0_1.0.2n.orig.tar.gz.asc' openssl1.0_1.0.2n.orig.tar.gz.asc 455 SHA512:7a4d82d1abbfdac92f87839321a40348099fa32193e97042c1d5ff0b0ac719104e0e2b079e0669e603c98c7d2313d0e0de4c1aec0c9180eadd1dd241e7f1985a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/openssl1.0_1.0.2n-1ubuntu5.10.debian.tar.xz' openssl1.0_1.0.2n-1ubuntu5.10.debian.tar.xz 130496 SHA512:da9fe2c441f50af3e4aa861397ca1c43ab178a27e27e455d517b8e02c1cccee11162835c18275763ce1450f32846e00fe84133b71a21ef6e21eab094b7ac7942
```

### `dpkg` source package: `openssl=1.1.1-1ubuntu2.1~18.04.20`

Binary Packages:

- `libssl-dev:amd64=1.1.1-1ubuntu2.1~18.04.20`
- `libssl1.1:amd64=1.1.1-1ubuntu2.1~18.04.20`
- `openssl=1.1.1-1ubuntu2.1~18.04.20`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1-1ubuntu2.1~18.04.20
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.dsc' openssl_1.1.1-1ubuntu2.1~18.04.20.dsc 2514 SHA512:cf3b83b1ec29b576328faa6e2dd10e9b396afeafcd8277d008ef82f80f999834237cbc61b44b2d8684fbb7104e0b9c79a2878333c09027beed5fbf9a55916bcc
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1.orig.tar.gz' openssl_1.1.1.orig.tar.gz 8337920 SHA512:c0284a4fe84bdf765ca5bc5148da4441ffc36392cfecaf9d372af00cf93b6de5681cab1248b6f8246474532155dc205da5ad49549ad7c61c07c917145e7c9c71
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.debian.tar.xz' openssl_1.1.1-1ubuntu2.1~18.04.20.debian.tar.xz 171540 SHA512:213a93d75c90436974dd9d8aa2fd12000a062ca089204ef8c86aee50952c86a32df5766a993b41029c650865d057ce728f14c117de0eaa5439c6503af1011e6a
```

### `dpkg` source package: `p11-kit=0.23.9-2ubuntu0.1`

Binary Packages:

- `libp11-kit0:amd64=0.23.9-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.9-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2ubuntu0.1.dsc' p11-kit_0.23.9-2ubuntu0.1.dsc 2573 SHA512:f7494e246f8a092a240fa0eecc2c0352a6f48ea5f245dfb46ce3daae2579384c418534d18d0dfde6ee973b01aa5376676d9c7829262e36854881a6d1b0eb3030
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz' p11-kit_0.23.9.orig.tar.gz 1091561 SHA512:6a8a569483763d3ffacadf669b8ba9b9be38a77dd8dc366ca0cb91c44753517fa1879d4422e4e8dfbcac594565727839a619566a170c0f94f8e112f18b0086ed
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz.asc' p11-kit_0.23.9.orig.tar.gz.asc 900 SHA512:c6e3cda0a2f3a75126fa046ead97e2914c277bda7e7cb6712f48bd993f5f441b6f5c14d6e74a2042c600cfe4526494872e6fef2fd7453aebb975696de1bff9b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2ubuntu0.1.debian.tar.xz' p11-kit_0.23.9-2ubuntu0.1.debian.tar.xz 24380 SHA512:460f4179781768a4a4b686955f16f335565d50f7a2d74c298216fe6725ce4e04119f49605752026f65bf56e143e560718969c5983decc906d3246f0a01c46178
```

### `dpkg` source package: `pam=1.1.8-3.6ubuntu2.18.04.3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6ubuntu2.18.04.3`
- `libpam-modules-bin=1.1.8-3.6ubuntu2.18.04.3`
- `libpam-runtime=1.1.8-3.6ubuntu2.18.04.3`
- `libpam0g:amd64=1.1.8-3.6ubuntu2.18.04.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.6ubuntu2.18.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.18.04.3.dsc' pam_1.1.8-3.6ubuntu2.18.04.3.dsc 2557 SHA512:2ef95d8bdbc9edbad8f20c1db07bd07c0a9b32d431ff144c92e8739ed2f1a43580a257ba5c45505a471265c55d7ae4dee86667bb0424fd3541abbca22aa51c46
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.18.04.3.tar.gz' pam_1.1.8-3.6ubuntu2.18.04.3.tar.gz 2011024 SHA512:18a11b3b9e355354ab1a9ae11f7870727a1bb9cfddfc080b2f0df43afafec6f23ce9f60d8d870eb282bd47bb20a4deab9fc0ec4a4fc1d7db50081ecef2257d11
```

### `dpkg` source package: `pango1.0=1.40.14-1ubuntu0.1`

Binary Packages:

- `libpango-1.0-0:amd64=1.40.14-1ubuntu0.1`
- `libpangocairo-1.0-0:amd64=1.40.14-1ubuntu0.1`
- `libpangoft2-1.0-0:amd64=1.40.14-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.40.14-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14-1ubuntu0.1.dsc' pango1.0_1.40.14-1ubuntu0.1.dsc 3358 SHA512:03cd5f36dbbd14f63dd36c0fa633ee62d883897e553195c953b67986ede019bdb3a291b7d8d1e69768a83ff89acc3bb9a4a05b00a248b8a13355513811f554ac
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14.orig.tar.xz' pango1.0_1.40.14.orig.tar.xz 858388 SHA512:35ba7bc8be3992f206ccc2cc5aca0b94e2a3832f887fc9c45b0e29fddcb9051ce05a74377de0ca4ff95a87983b15688fa5d379d592faf87aa8eaca25ac18b7ea
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14-1ubuntu0.1.debian.tar.xz' pango1.0_1.40.14-1ubuntu0.1.debian.tar.xz 28460 SHA512:9de609d588388be9436c3cb0cd1913a7b8eda0a5b8e7e1effd6beb4002cf7a60236cd8a52410d1c09501beddbb2d89473da3f7f56d6b2b47886c18f0561b94d4
```

### `dpkg` source package: `patch=2.7.6-2ubuntu1.1`

Binary Packages:

- `patch=2.7.6-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.1.dsc' patch_2.7.6-2ubuntu1.1.dsc 1798 SHA512:80fefde6e5b713944a47a40d9dec24510467249135659f987f2d544c8e83ff4acf3b4e5cbcb8fa87cbf0ae001fa66173f06a8404d2163a66578a3b41ff6a62fa
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA512:fcca87bdb67a88685a8a25597f9e015f5e60197b9a269fa350ae35a7991ed8da553939b4bbc7f7d3cfd863c67142af403b04165633acbce4339056a905e87fbd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.1.debian.tar.xz' patch_2.7.6-2ubuntu1.1.debian.tar.xz 12356 SHA512:3ba381149e7e7a7f878a6ff485c42775a8f1c8c0546cdbe9d7f9354bd1700bb884028466a9c660979b1bc0ad1e8ed9f09e50688d33d8979eee14d4bb0a65f332
```

### `dpkg` source package: `pcre3=2:8.39-9ubuntu0.1`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-9ubuntu0.1`
- `libpcre3:amd64=2:8.39-9ubuntu0.1`
- `libpcre3-dev:amd64=2:8.39-9ubuntu0.1`
- `libpcre32-3:amd64=2:8.39-9ubuntu0.1`
- `libpcrecpp0v5:amd64=2:8.39-9ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-9ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9ubuntu0.1.dsc' pcre3_8.39-9ubuntu0.1.dsc 2076 SHA512:d21296f802e0197b5e8c129acfd5857a1f582e0507ed34fc27de9e9f6fcff2f2f5f3a5effa569f2a84f1aa622f7fd57e434c30373f74146c99fa0c1d0a8f1728
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA512:8b0f14ae5947c4b2d74876a795b04e532fd71c2479a64dbe0ed817e7c7894ea3cae533413de8c17322d305cb7f4e275d72b43e4e828eaca77dc4bcaf04529cf6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9ubuntu0.1.debian.tar.gz' pcre3_8.39-9ubuntu0.1.debian.tar.gz 27241 SHA512:31396aa4ad4077c702cb28c3611e58605e04a45f0d0c6e3ef6158324ee6703784c53a9b2b84959defa3bef96ea5754420016bb15ca6dd0bcfe3b1cf37a025c43
```

### `dpkg` source package: `perl=5.26.1-6ubuntu0.6`

Binary Packages:

- `libperl5.26:amd64=5.26.1-6ubuntu0.6`
- `perl=5.26.1-6ubuntu0.6`
- `perl-base=5.26.1-6ubuntu0.6`
- `perl-modules-5.26=5.26.1-6ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libperl5.26/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.26/copyright`)

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
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.26.1-6ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.6.dsc' perl_5.26.1-6ubuntu0.6.dsc 2768 SHA512:bd9753e82e06455628fe271f1bafc7be75359daea84c71dc1c6484772507b4191804b325f07513b82cb5c156df0c7f0fe1c44e5da085fbdc7f57370bb87f0073
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig-regen-configure.tar.gz' perl_5.26.1.orig-regen-configure.tar.gz 712883 SHA512:3a8ecf16483d87d40bf428e952a3f5c287af8e4f64977133b61188855120d5896b3c5af845a19ad1912f469d9345dddd728708f6171498a7fd0dd0f56b463139
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig.tar.xz' perl_5.26.1.orig.tar.xz 11922848 SHA512:13faa7bcd7ed8c490c37e9032c115af06c9b8152b75f8062409dd72d263d1314480e8a9a883490de1b448b2e6d53b6a87d108e2eceb17de2524d5857c6a7d300
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.6.debian.tar.xz' perl_5.26.1-6ubuntu0.6.debian.tar.xz 181812 SHA512:5cf34deafe0755b063bc0fcdddc4f0fe49feb751fcb462395bbec26bebde052914ae14b962feecbf229b8b687a8054ea49e68365c6ca02494713ba46a6f983a5
```

### `dpkg` source package: `pinentry=1.1.0-1`

Binary Packages:

- `pinentry-curses=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.dsc' pinentry_1.1.0-1.dsc 2910 SHA256:8cda3442923c0e18f9c3d5a2817a97a54db7447046b9c469e890abd19c680247
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2.asc' pinentry_1.1.0.orig.tar.bz2.asc 534 SHA256:0e3a7633b9fddf9c01c3dcf74aeb94888cc6d5d233f0b8357b0b9c1a1fed9a73
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.debian.tar.xz' pinentry_1.1.0-1.debian.tar.xz 15408 SHA256:ddee92638e762f125ac09b86b4f3b31e2d240e8d2dcce940302293bb2ea0873e
```

### `dpkg` source package: `pixman=0.34.0-2ubuntu0.1`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-2ubuntu0.1`
- `libpixman-1-dev:amd64=0.34.0-2ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2ubuntu0.1.dsc' pixman_0.34.0-2ubuntu0.1.dsc 2169 SHA512:1a2e1e3dbe9dc53601055404a799b6f901f217bed4adb67f8588d02e3caf79436012baf00ef4c6ef83837e137fc3ea4114b84d7a473e8f646336900b0dd36ad9
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA512:81caca5b71582b53aaac473bc37145bd66ba9acebb4773fa8cdb51f4ed7fbcb6954790d8633aad85b2826dd276bcce725e26e37997a517760e9edd72e2669a6d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2ubuntu0.1.diff.gz' pixman_0.34.0-2ubuntu0.1.diff.gz 312650 SHA512:42e1fe2dfae81f44748208cf1c9c26d3bd5da9f4bdf9be3ad610633c00831bc0452874d0d7587dcf7acc7aa35ed100cd4f348d4e7ab08ad51a3379cf81ef4dea
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu2`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.dsc' pkg-config_0.29.1-0ubuntu2.dsc 1824 SHA256:91f07d5a80083fbe86c93d9f107890920f4740df8f3d1e6b162a5d703afc3b89
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.diff.gz' pkg-config_0.29.1-0ubuntu2.diff.gz 12715 SHA256:8d5645ccad7bdbcaf3bd83b1b18c7f7d0e2a813e9813b5d4603aa646fc5ff5ea
```

### `dpkg` source package: `postgresql-10=10.22-0ubuntu0.18.04.1`

Binary Packages:

- `libpq-dev=10.22-0ubuntu0.18.04.1`
- `libpq5:amd64=10.22-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Artistic`
- `BSD-2-clause`
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
$ apt-get source -qq --print-uris postgresql-10=10.22-0ubuntu0.18.04.1
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.22-0ubuntu0.18.04.1.dsc' postgresql-10_10.22-0ubuntu0.18.04.1.dsc 3617 SHA512:b936ea4eedce64f347e4dc7278afd27d14ba77aca4b461daa90039de025e50a72318652a775d8fdae6959b77306158f72f6071a8b2145895d61c32178d1eac58
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.22.orig.tar.gz' postgresql-10_10.22.orig.tar.gz 25460734 SHA512:8b5af86f02e038f22c08864467df293f62bfd2fb2411fd1ba4d3cf6f7bced0f86ff5488c6ba28636c1eb02c97b6e2ab8200a95afaf5bbdac5d90f87a3fb5464b
'http://security.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.22-0ubuntu0.18.04.1.debian.tar.xz' postgresql-10_10.22-0ubuntu0.18.04.1.debian.tar.xz 36456 SHA512:4f40a29eba3e1b62e443656015f2dd417effea6b8556a7dc8bc56a5e467df8c83892d10e42698d4b99095cf20f3b3d5ac183dcaae6645736ac8824fa505c7eea
```

### `dpkg` source package: `procps=2:3.3.12-3ubuntu1.2`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-3ubuntu1.2`
- `procps=2:3.3.12-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.2.dsc' procps_3.3.12-3ubuntu1.2.dsc 1920 SHA512:0ba0450d7411075000e5be9f64c92c73cf9f029fac707a13ad9bba692042a70c6f5535b31793eaca31670be61408e3a49cd861a0078859c57798a991e713459b
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA512:cb26a6b8419cc41134ccd072e1b38919ffd7126a99055a64726dc1d55149a2278fbf84528a71388196351e5bc72e81b18ce2a4f576a111d3741971327b30e6f8
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.2.debian.tar.xz' procps_3.3.12-3ubuntu1.2.debian.tar.xz 37736 SHA512:36ef9f540a72538f4a6fb02bfb53bf0b4689077c733b7dc4e301f968e2698667e6ad997f30a0ad21d189a8ee4bef7de2710441a8cc9f1ecb3aff6f67f182d49e
```

### `dpkg` source package: `python-defaults=2.7.15~rc1-1`

Binary Packages:

- `libpython-stdlib:amd64=2.7.15~rc1-1`
- `python=2.7.15~rc1-1`
- `python-minimal=2.7.15~rc1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.15~rc1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15%7erc1-1.dsc' python-defaults_2.7.15~rc1-1.dsc 2633 SHA256:1089e25a274fb86e8dfbab1b661ecb5ef2b7610e1b6e3fbf8388f875758f7c2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15%7erc1-1.tar.gz' python-defaults_2.7.15~rc1-1.tar.gz 1958015 SHA256:f3bed2b81091821d2e514c2e17c6846f7e744487fd15f7d3c48fa1c91b9cd49b
```

### `dpkg` source package: `python2.7=2.7.17-1~18.04ubuntu1.10`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.17-1~18.04ubuntu1.10`
- `libpython2.7-stdlib:amd64=2.7.17-1~18.04ubuntu1.10`
- `python2.7=2.7.17-1~18.04ubuntu1.10`
- `python2.7-minimal=2.7.17-1~18.04ubuntu1.10`

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
$ apt-get source -qq --print-uris python2.7=2.7.17-1~18.04ubuntu1.10
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17-1%7e18.04ubuntu1.10.dsc' python2.7_2.7.17-1~18.04ubuntu1.10.dsc 3487 SHA512:cae83b4698aa976ec3c98f11be1c970ad4aee8e7fd3a394f674ecdc92d5ca7f76fd24d2538e1a73c746a8ea52d2a7a5ffab7b5431f98fccb32fddbbc43394c94
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17.orig.tar.gz' python2.7_2.7.17.orig.tar.gz 17535962 SHA512:f526baff7f1a9451244edb04e2aca63336b656aac178f4f64c135390b5b1185990ccff0c48f602914dd1c49c9e075951d372b4f2daac39e336c23ae84ef4ca16
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.17-1%7e18.04ubuntu1.10.diff.gz' python2.7_2.7.17-1~18.04ubuntu1.10.diff.gz 305168 SHA512:b9656b2e96971b43b9535a5b29f1c290a9949cee7bad579a1029a6165b3327a557ff024b59562eb5e5335a37ef981c823d8699c0030351c79bd10535ad7dd19e
```

### `dpkg` source package: `python3-defaults=3.6.7-1~18.04`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.7-1~18.04`
- `python3=3.6.7-1~18.04`
- `python3-minimal=3.6.7-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.7-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1%7e18.04.dsc' python3-defaults_3.6.7-1~18.04.dsc 2896 SHA512:1f6f6bdbc030b0c9bf24a97b2c48052c8a52810e22e021b00719fce7eea8d454c9cc756e3d73ee79be06655b9a35fe8279bf71833a4aa6c605859856e4a31151
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1%7e18.04.tar.gz' python3-defaults_3.6.7-1~18.04.tar.gz 137600 SHA512:7020c60ba146deafaf1937883bea03c39efb1068968025756b32e7c7f069c06bfdfb3e1b91dcaa5a1e1c4c01e0177ea91beb4f5fa71f5e60334866ef5b28a2ef
```

### `dpkg` source package: `python3-stdlib-extensions=3.6.9-1~18.04`

Binary Packages:

- `python3-distutils=3.6.9-1~18.04`
- `python3-lib2to3=3.6.9-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.6.9-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9-1%7e18.04.dsc' python3-stdlib-extensions_3.6.9-1~18.04.dsc 2624 SHA512:e10786f72375b0da8042ac41094c5c2fa9d4649001646da0072e51207042dc0434d5f06616e50a13bfe9610044f0e0bed4cc5b6e9487c38a81024568d52918ce
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9.orig.tar.bz2' python3-stdlib-extensions_3.6.9.orig.tar.bz2 4237908 SHA512:79312db29db5ad407d6710f3f8d1c725f2efd481d875d06dfb7e3d442cafccca19d0601a899b86c4cf0360ba6dcaeca187e856c5a6d50df04abef309122b3dd7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.9-1%7e18.04.debian.tar.xz' python3-stdlib-extensions_3.6.9-1~18.04.debian.tar.xz 16908 SHA512:7f0e9efb59e4a50b913c13ed0308a3f3fd4c9fc8f029ea6100f40afffc7e6698c781d0910e5443dcde20345a9e5ef4402d4e22f393507169149e58fe14d857a3
```

### `dpkg` source package: `python3.6=3.6.9-1~18.04ubuntu1.9`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-stdlib:amd64=3.6.9-1~18.04ubuntu1.9`
- `python3.6=3.6.9-1~18.04ubuntu1.9`
- `python3.6-minimal=3.6.9-1~18.04ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.6=3.6.9-1~18.04ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9-1%7e18.04ubuntu1.9.dsc' python3.6_3.6.9-1~18.04ubuntu1.9.dsc 3470 SHA512:24df6348ccda376026e56cdf0774dfab7c8dfc3ece47696728cc7a869ed2dc4d6000f7bddb5180aa0d95b74ad4507ac50c2a3ab233ca23f9e7db363f39fe6652
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9.orig.tar.xz' python3.6_3.6.9.orig.tar.xz 17212164 SHA512:05de9c6f44d96a52bfce10ede4312de892573edaf8bece65926d19973a3a800d65eed7a857af945f69efcfb25efa3788e7a54016b03d80b611eb51c3ea074819
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.9-1%7e18.04ubuntu1.9.debian.tar.xz' python3.6_3.6.9-1~18.04ubuntu1.9.debian.tar.xz 231660 SHA512:4b7d1a77ccc536acd7cef8912484eecde40bbea28909eaf1c6d210e65b3e19a78d7ad16d64d8103058234ef5010b2b3df25a80893b3c6867455cff51c1e52721
```

### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline-dev:amd64=7.0-3`
- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

### `dpkg` source package: `sed=4.4-2`

Binary Packages:

- `sed=4.4-2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.dsc' sed_4.4-2.dsc 2006 SHA256:0e025a69a04c867048f918778771e2ba79d6ddfd62cb5ce6c3a6e255c005706c
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.debian.tar.xz' sed_4.4-2.debian.tar.xz 59600 SHA256:9f9b8bec0438ea0d0bd4315548de519543385c8196bcfcc61362f38f4cc6e7ed
```

### `dpkg` source package: `sensible-utils=0.0.12`

Binary Packages:

- `sensible-utils=0.0.12`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.12
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.dsc' sensible-utils_0.0.12.dsc 1732 SHA256:1b62cc5f7561b3f5692a6edaec942e2e97e8368dabff8c865867d428eecb1221
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.tar.xz' sensible-utils_0.0.12.tar.xz 62152 SHA256:99ba2ebf8c57447c69d426b99b84ff9dc817be0bc4988ec6890a14558c529e2e
```

### `dpkg` source package: `serf=1.3.9-6`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-6`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-6/


### `dpkg` source package: `shadow=1:4.5-1ubuntu2.5`

Binary Packages:

- `login=1:4.5-1ubuntu2.5`
- `passwd=1:4.5-1ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu2.5.dsc' shadow_4.5-1ubuntu2.5.dsc 2105 SHA512:5753e1aebcc18abe88c5143ca18e6a8da3aa622a601aa785bbc44ff01bb57030de02d2c59f8f4cff7da77b0dc77725b7a52bed6622cce8c01c908e5692c8bf8a
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA512:4278544efdd6d800a3c46cfcb144f209ace14ebe017ba1c0d05425fac7868062a73afa8522036a2bc0a16f6f1e7c16373a204463221012367ce0e8e9ef4c4a4d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu2.5.debian.tar.xz' shadow_4.5-1ubuntu2.5.debian.tar.xz 473964 SHA512:9bfcc493e74c384e7fc6c54616590283b00972c853862999659e88c521fe38b81a8ad1ea7a910aabdc293bbd4eefffe46d1624c823c3f239a4eb7dd509ec929c
```

### `dpkg` source package: `shared-mime-info=1.9-2`

Binary Packages:

- `shared-mime-info=1.9-2`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.dsc' shared-mime-info_1.9-2.dsc 2203 SHA256:0592a6550b9bee8895d4a4fe577a15a28a5a911135765ae74b310abaea5c5b66
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9.orig.tar.xz' shared-mime-info_1.9.orig.tar.xz 607648 SHA256:5c0133ec4e228e41bdf52f726d271a2d821499c2ab97afd3aa3d6cf43efcdc83
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.debian.tar.xz' shared-mime-info_1.9-2.debian.tar.xz 9992 SHA256:18cb7e2c0f2a3daa2d55abc87c4619d68f537f268a3bad8510e1fcf0d6b0cd76
```

### `dpkg` source package: `six=1.11.0-2`

Binary Packages:

- `python-six=1.11.0-2`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.11.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.dsc' six_1.11.0-2.dsc 2316 SHA256:c0391b38bc251a3df586bdb163cb250af78aee69bbb27880215a350caaea53f2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0.orig.tar.gz' six_1.11.0.orig.tar.gz 29860 SHA256:70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.debian.tar.xz' six_1.11.0-2.debian.tar.xz 4176 SHA256:bbd91dcb509a1f083bf531062b77dfdf2cbd2badca0fbe5d81957fe852ac4a7a
```

### `dpkg` source package: `sqlite3=3.22.0-1ubuntu0.7`

Binary Packages:

- `libsqlite3-0:amd64=3.22.0-1ubuntu0.7`
- `libsqlite3-dev:amd64=3.22.0-1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.22.0-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1ubuntu0.7.dsc' sqlite3_3.22.0-1ubuntu0.7.dsc 2512 SHA512:f71e3d3499da10f02f3d521e2a19820102e85a5f16841427bb80faf6119e9de879f9e322193337c32aac2e4f2d96f1233bfeaad32a67a36789b6eef35a884b46
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig-www.tar.xz' sqlite3_3.22.0.orig-www.tar.xz 3564688 SHA512:e469878137ec3d06886fe096c4325451e8c9b73f6841d28fac9bed45e698bdc1222739570abf2ce456e0853b0c6876b1c79ca0896826295f64d27b276541c1f8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig.tar.xz' sqlite3_3.22.0.orig.tar.xz 6019648 SHA512:ce3b05cb9f75a5c7a5e8562b70e72e23c043222fd61995f795cbcc40f3f8efcac2660e57b588a15bfdce28c8eb644745bb73af35f5b98ba956dd77457d661dfa
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1ubuntu0.7.debian.tar.xz' sqlite3_3.22.0-1ubuntu0.7.debian.tar.xz 48864 SHA512:a6086620c444a6c16c790894ce3cdade4575770630fe695ffaaff6c19723199f944a6999b0957dc7ec46e72fabd34201463ea9c33c23f8bf53e85e3f8f163993
```

### `dpkg` source package: `subversion=1.9.7-4ubuntu1.1`

Binary Packages:

- `libsvn1:amd64=1.9.7-4ubuntu1.1`
- `subversion=1.9.7-4ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.7-4ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7-4ubuntu1.1.dsc' subversion_1.9.7-4ubuntu1.1.dsc 2793 SHA512:fde6624f530aec8d8ae576435cfbc719b783468be312691e1182f802b113a658b4e85cffcff94fa0fdb326f485deb73c84108d7381dc36df3c4e91d5563bc7f6
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7.orig.tar.gz' subversion_1.9.7.orig.tar.gz 10643686 SHA512:789f7f26ba2d0ef34e8332bfcb83647b05c59ab16a98615e3c60809c59b3d468505db36e97276d3fd4bf54fee1e14d2cc7c4e99d1cdfb1851f129a68baa8b210
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7-4ubuntu1.1.debian.tar.xz' subversion_1.9.7-4ubuntu1.1.debian.tar.xz 2274448 SHA512:2b8a93ad9fb7f1e609bf2356d4313a16d411d6e8aa71ca7bb05250db65c2831f7baed9e19970714c6b81880319e069c3a571400f97c1fd394a056e12a30e4b0d
```

### `dpkg` source package: `systemd=237-3ubuntu10.56`

Binary Packages:

- `libsystemd0:amd64=237-3ubuntu10.56`
- `libudev1:amd64=237-3ubuntu10.56`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=237-3ubuntu10.56
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.56.dsc' systemd_237-3ubuntu10.56.dsc 5057 SHA512:f2f70add1d9b4a56b677a7078365c8263dccac069affb765c3cf8c00b33c9854d4ef8f34023a40a550bc6fe8360519ece0829892f348b31215b2770e712424ac
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237.orig.tar.gz' systemd_237.orig.tar.gz 6871350 SHA512:15ef4b92815a6dd9a6c51672dbc00fd7cd0f08068ef0cbeaca574f68d330b28bc67ba1946f24f75ef3d9e7b63843a73eea700db54688061dbf5c9f8470394c3b
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.56.debian.tar.xz' systemd_237-3ubuntu10.56.debian.tar.xz 304208 SHA512:4ebcb84f31d046a0bd97b551c90e0c25112ebf1f4ca3e94a2c046d02ba4a4208963a78fa98b9bbf2dbd7e0f635dc0f9e7f8641657f451f70784b2624a3aec0d4
```

### `dpkg` source package: `sysvinit=2.88dsf-59.10ubuntu1`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.dsc' sysvinit_2.88dsf-59.10ubuntu1.dsc 2428 SHA256:030f4e8a71381529da3141988344d6e1d0e05ba437e0cdd38d2f3786185bf285
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz' sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz 132736 SHA256:faee591309aa0065aa43f44a1e840eb01db7f55379af2b45949534bd0317b734
```

### `dpkg` source package: `tar=1.29b-2ubuntu0.3`

Binary Packages:

- `tar=1.29b-2ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2ubuntu0.3.dsc' tar_1.29b-2ubuntu0.3.dsc 1776 SHA512:d67785fa916988ddc357d3de81486b8dce4995e68b852ba5dae36527a846fb2431e902c0b036d287d0fc35a95ca2def3aade4facec29c2834c70c77db02c5998
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA512:6814c906f3bf3d1421d46e63aff7921acffbd2b2a0a7e5c20b472a821eab839d6eab93653d964ae16376b65da223c57a92455f44793522c84c8b1343af20b106
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2ubuntu0.3.debian.tar.xz' tar_1.29b-2ubuntu0.3.debian.tar.xz 35080 SHA512:4808285a3ea5903a7c61be297e2c2cb41654facd68397966a91ae5ebd2381e196cb159c2cec3bcf8f26b24d913764fd4d178670a324ca4daf8ee78050acd7cb2
```

### `dpkg` source package: `tiff=4.0.9-5ubuntu0.9`

Binary Packages:

- `libtiff-dev=4.0.9-5ubuntu0.9`
- `libtiff5:amd64=4.0.9-5ubuntu0.9`
- `libtiff5-dev:amd64=4.0.9-5ubuntu0.9`
- `libtiffxx5:amd64=4.0.9-5ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.9-5ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-5ubuntu0.9.dsc' tiff_4.0.9-5ubuntu0.9.dsc 2352 SHA512:2e2c2f5a7cb37b2a59738e3a6980d6c3f7c216f4895da9067464b6ae6697e4378f930c694f9150a3e13413024963986bcef44b71583e5d267c7a21b3db33a8b9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9.orig.tar.gz' tiff_4.0.9.orig.tar.gz 2305681 SHA512:04f3d5eefccf9c1a0393659fe27f3dddd31108c401ba0dc587bca152a1c1f6bc844ba41622ff5572da8cc278593eff8c402b44e7af0a0090e91d326c2d79f6cd
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-5ubuntu0.9.debian.tar.xz' tiff_4.0.9-5ubuntu0.9.debian.tar.xz 49440 SHA512:b469a24b4d53560826438deee6788801feafb61980bcd83800cdc4a71e485b975e0aa14f00abb73c77eded40bf44dfcb2c698149087a9ad92b72182a5d989cb7
```

### `dpkg` source package: `tzdata=2022g-0ubuntu0.18.04`

Binary Packages:

- `tzdata=2022g-0ubuntu0.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2022g-0ubuntu0.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g-0ubuntu0.18.04.dsc' tzdata_2022g-0ubuntu0.18.04.dsc 2331 SHA512:d047ce6a7b961ec55a903adca7059cfe67640ab0640ee78802bc04353b15601338b99ab433b2990c2e77b7d68abd2497d622ac62c3717c3eefbc6ce4d8851753
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g.orig.tar.gz' tzdata_2022g.orig.tar.gz 439731 SHA512:7f79394295e00e3a24ebdbf9af3bc454a65f432a93b517e7e96c7f9db9949f6f5fdae9892a9d3789ff44ae0eb1bfe4744d36976b4624659af951d26414f94e65
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g.orig.tar.gz.asc' tzdata_2022g.orig.tar.gz.asc 833 SHA512:3474a05373ec4397e17133c54708e1f9efd1f1c5e7ee6945f0972809ceda2214cc4962238773818d04ab4f29dcdf0b3e87247ab19795d06a62b8769dd85cf76b
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2022g-0ubuntu0.18.04.debian.tar.xz' tzdata_2022g-0ubuntu0.18.04.debian.tar.xz 107104 SHA512:212b0f1d601b4bcc358647e3465864a4ace022e3fa0257986b720ae08cf24ab9750a901ca654548a7f4ed19467b2445a5d8a24bfebf4b3a70c443d1dd721e2f1
```

### `dpkg` source package: `ubuntu-keyring=2018.09.18.1~18.04.2`

Binary Packages:

- `ubuntu-keyring=2018.09.18.1~18.04.2`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2018.09.18.1~18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1%7e18.04.2.dsc' ubuntu-keyring_2018.09.18.1~18.04.2.dsc 1828 SHA512:d8ae5d5c056c7234d98171a9ad9eacf579e284ac6b06a33abd74fd153e7b42d62a8c4171222cd7d9e1feb7fc84e32671d15483e5a68e0e96d40b3efaea18d387
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1%7e18.04.2.tar.gz' ubuntu-keyring_2018.09.18.1~18.04.2.tar.gz 34312 SHA512:54b1a31b822bdfe096d879c524043cc93df6d4440fd53264cc4f459fcbe25c26262a09eb637ed9dad6f7715f30acd96dc7e07ed1881a40fd982f7fa00a94e839
```

### `dpkg` source package: `ucf=3.0038`

Binary Packages:

- `ucf=3.0038`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038.dsc' ucf_3.0038.dsc 1445 SHA256:5fab6d0af664eac92b3404c6bb62d0a3ceb88cd21a1462b9a262d1292c77328f
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038.tar.xz' ucf_3.0038.tar.xz 65416 SHA256:262ccd52637c869ac851838a176d76e90db8d3f12373e3b62eb89e217f93fe7e
```

### `dpkg` source package: `unzip=6.0-21ubuntu1.2`

Binary Packages:

- `unzip=6.0-21ubuntu1.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-21ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-21ubuntu1.2.dsc' unzip_6.0-21ubuntu1.2.dsc 1674 SHA512:cb27aed1f296e4beb945ebee203944ff0008432bf45470052186c807559612d1db5bfbc48cdc41514aea9fb7f9d562a9e4029ea3f28f9a2dbef4317953197a7c
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA512:0694e403ebc57b37218e00ec1a406cae5cc9c5b52b6798e0d4590840b6cdbf9ddc0d9471f67af783e960f8fa2e620394d51384257dca23d06bcd90224a80ce5d
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-21ubuntu1.2.debian.tar.xz' unzip_6.0-21ubuntu1.2.debian.tar.xz 27436 SHA512:16249d6d88ec9c6a07152360b9834bf4619a31ce28771f4e66f5897a1941a30765340a9e448290670895de2e27508305e20d7a47005d7257bba119bbb464ed13
```

### `dpkg` source package: `util-linux=2.31.1-0.4ubuntu3.7`

Binary Packages:

- `bsdutils=1:2.31.1-0.4ubuntu3.7`
- `fdisk=2.31.1-0.4ubuntu3.7`
- `libblkid1:amd64=2.31.1-0.4ubuntu3.7`
- `libfdisk1:amd64=2.31.1-0.4ubuntu3.7`
- `libmount1:amd64=2.31.1-0.4ubuntu3.7`
- `libsmartcols1:amd64=2.31.1-0.4ubuntu3.7`
- `libuuid1:amd64=2.31.1-0.4ubuntu3.7`
- `mount=2.31.1-0.4ubuntu3.7`
- `util-linux=2.31.1-0.4ubuntu3.7`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.31.1-0.4ubuntu3.7
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.7.dsc' util-linux_2.31.1-0.4ubuntu3.7.dsc 4122 SHA512:2602472fb8da0cedd750f9df51b3a5ff4a04be4fcc8843d2b9294495d5697c7209111ec2889f980da7051c39ee186ab3d69fdefea08a1531c9686e4ac9427a1e
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1.orig.tar.xz' util-linux_2.31.1.orig.tar.xz 4514032 SHA512:0a3dc7a4c80f180d99ff64452e6e7269688a7d066a212ab15eafb3b9aaedf0b5294345bc1087dc9655f0efc82d4bb7dff9b669b5ee338a5f13aaff7407fe384f
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.7.debian.tar.xz' util-linux_2.31.1-0.4ubuntu3.7.debian.tar.xz 102216 SHA512:f94ae8ca8fa4d3a79a2c909807bbee0bc28156abe33e072a47149fab6f820aab462f2869f564c9a30ef20c0ca21f2b777809324c7c426bf58f584ea4efe3596f
```

### `dpkg` source package: `wget=1.19.4-1ubuntu2.2`

Binary Packages:

- `wget=1.19.4-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.4-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.4-1ubuntu2.2.dsc' wget_1.19.4-1ubuntu2.2.dsc 2226 SHA512:7fbc8eccfcb3e559f4f25c4159b06a9663f87c02ab63a9eebc63a812a6a0d72958329f4c8f60fd3dc0272bb586a13535389e0fe5d5a6a2b42f909f567976dd57
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.4.orig.tar.gz' wget_1.19.4.orig.tar.gz 4310657 SHA512:e84b0c40235b160ade69e18f2f139c782eb2387edc97a847c11dbb906c0273daf6d0ef5afe20360ba965c7da8b5e109f5a45e39ea93d20ec945575203235943a
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.4.orig.tar.gz.asc' wget_1.19.4.orig.tar.gz.asc 1241 SHA512:63ad8a3184a98dbda966a535964e37c84291a13fe15f7defb6fb3672f7148d66143498354e818eabc1e506ae9a16f7c9b8188fa22c2fed3a02aa9cb6d1de3a38
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.4-1ubuntu2.2.debian.tar.xz' wget_1.19.4-1ubuntu2.2.debian.tar.xz 66156 SHA512:c458c630d82aaeffa0f4df6a543aa9b3a312d5b4aad4835d6da37736f165bb1151a9337ad65298c8b50c4a07de40d40303f0fc5953f2086a1909878f97c7b262
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

### `dpkg` source package: `xorg=1:7.7+19ubuntu7.1`

Binary Packages:

- `x11-common=1:7.7+19ubuntu7.1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+19ubuntu7.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b19ubuntu7.1.dsc' xorg_7.7+19ubuntu7.1.dsc 2103 SHA512:e6c459b18a96cbfda965f13852ff1c75b7e3240f61c4ea941996b99f74ffcf52b6ef539d37ca91903459260354a9368db5cd38d84903647259d8f1ac85a47943
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b19ubuntu7.1.tar.gz' xorg_7.7+19ubuntu7.1.tar.gz 298771 SHA512:6e3ac8b4932fc3ba476ce69fa5e111ed2f57b46e0b9361b01f631d82e635e8741088eedeeafdb0e13cf63cbedacf0a0872ca656ace349ecb6a79402f67522b6a
```

### `dpkg` source package: `xorgproto=2018.4-4`

Binary Packages:

- `x11proto-core-dev=2018.4-4`
- `x11proto-dev=2018.4-4`
- `x11proto-xext-dev=2018.4-4`

Licenses: (parsed from: `/usr/share/doc/x11proto-core-dev/copyright`, `/usr/share/doc/x11proto-dev/copyright`, `/usr/share/doc/x11proto-xext-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2018.4-4
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2018.4-4.dsc' xorgproto_2018.4-4.dsc 4059 SHA256:6279a145ce040d9301a0e2efdf203dd7d2822bc9a90e94de08d545c4b724d8e3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2018.4.orig.tar.gz' xorgproto_2018.4.orig.tar.gz 493597 SHA256:8e48d851efea0e951bcb6cf0d537f84ba3803de95e488bd039fe59fc75ec8f7d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2018.4.orig.tar.gz.asc' xorgproto_2018.4.orig.tar.gz.asc 241 SHA256:3ab131cf8f497d315043b2c791912c22045da557e6894f1e5db533a0b0baed2f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2018.4-4.diff.gz' xorgproto_2018.4-4.diff.gz 20976 SHA256:a9b27658c7c9e53372679bbb26099abed6cb9215355a99995858164de3fa5048
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

### `dpkg` source package: `xz-utils=5.2.2-1.3ubuntu0.1`

Binary Packages:

- `liblzma-dev:amd64=5.2.2-1.3ubuntu0.1`
- `liblzma5:amd64=5.2.2-1.3ubuntu0.1`
- `xz-utils=5.2.2-1.3ubuntu0.1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.dsc' xz-utils_5.2.2-1.3ubuntu0.1.dsc 2661 SHA512:2ce48f364229361c75c56216b25290df301f0016ad98b326280327750945586fcebcba6c58dfabd6ca703582e75771de3917c438d130dc6f53d00f771479ab0a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA512:949ef90669a31b9855c5328d7f9d7e2e537c8072b700b1d2f5d69c307eb7f7635a2a4b1b5bb1bb300fba9429355a6d8935b803c505be5c0104bda9e81d0cf477
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA512:7d0c8ac212731a5d7364d2d29467eafa831a5703b91e894ff90025c632605e669333d14e61c6d9b86ab38bc3f598f0a8774b7ff7abc088ca893a2776f8aee576
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz' xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz 110048 SHA512:ec41e17d0e2e3e54a888798236fcbff9bfd3a4b65a3416790095e832b29b08d8507248d5db3d33c1b0066fe282b79066f583f8fbc7e32ea98b7722f8d480abf8
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2.2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2.2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-0ubuntu2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.dsc' zlib_1.2.11.dfsg-0ubuntu2.2.dsc 2412 SHA512:ce7274a30b09b16a7da4206b0c69853511c3f8bad780b32226ae17e43765622d900092dcb72f86b16726e54d617cc0adbcd220dbd3c6e731c62689a459189984
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA512:ffa49436c80fc94555a36a1f2f1f025b223055e02e43f297a572dd5df56d88421dfc36fcbbf0825fbdad876cb0c104f1846af51cca66cac57bbfe698c4365731
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz 23148 SHA512:0b5bbd7ff0af3bdec1497619e036253bc5a6ea38bbe62d31aff51f9c0df3d341056376d4474f3194a619279b41392b81f9e4c944d4bf44faa8ab8052450e7517
```
