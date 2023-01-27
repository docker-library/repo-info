# `swift:5.7.3-bionic`

## Docker Metadata

- Image ID: `sha256:1f9c0908c1cbf8aa9d9bf3b555e6480005d1e56a1015c3b6d33492db2fdcf7c0`
- Created: `2023-01-19T18:25:14.275924837Z`
- Virtual Size: ~ 2.20 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `SWIFT_SIGNING_KEY=A62AE125BBBFBB96A6E042EC925CC1CCED3D1561`
  - `SWIFT_PLATFORM=ubuntu18.04`
  - `SWIFT_BRANCH=swift-5.7.3-release`
  - `SWIFT_VERSION=swift-5.7.3-RELEASE`
  - `SWIFT_WEBROOT=https://download.swift.org`
- Labels:
  - `Description=Docker Container for the Swift programming language`
  - `maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>`

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

### `dpkg` source package: `build-essential=12.4ubuntu1`

Binary Packages:

- `build-essential=12.4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.4ubuntu1.dsc' build-essential_12.4ubuntu1.dsc 2032 SHA256:93ee6ef55a672f52722fbc37d1ec3172e685226ee7f44f028db43bea0791c30e
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.4ubuntu1.tar.gz' build-essential_12.4ubuntu1.tar.gz 64966 SHA256:890a4bb7b72ffa4fa152d6bb0a9cca8835b9e9c0f4e110c487a22de9903dce0a
```

### `dpkg` source package: `bzip2=1.0.6-8.1ubuntu0.2`

Binary Packages:

- `bzip2=1.0.6-8.1ubuntu0.2`
- `libbz2-1.0:amd64=1.0.6-8.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.dsc' bzip2_1.0.6-8.1ubuntu0.2.dsc 2181 SHA512:872defc414a97416d701ce8bb59ddbf44b80ebffe447d67ebba20ed13b3e006c771002c82ad11c0c669004d22ce9368254e44c6be977c21e7d92dab69ec4e33a
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA512:b1108c392a7f45218b86196498657f50333c870db4ab555ce4859a3fe76c17b4a3430b8a075b7f1c86d9ded006bdf17001b73bfcf261e2d2ee7de4998ad604fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2' bzip2_1.0.6-8.1ubuntu0.2.debian.tar.bz2 61477 SHA512:f895cded216bd210eed7356be97630de75f650bb40d3bb0c7a26b0fadf9991188005ab1c5438e4b8f95614e6ff8c2ad5b2a94f0cc048580bcdc387a219ba7495
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

- `libcurl3-gnutls:amd64=7.58.0-2ubuntu3.21`

Licenses: (parsed from: `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `curl=7.58.0-2ubuntu3.22`

Binary Packages:

- `libcurl4:amd64=7.58.0-2ubuntu3.22`
- `libcurl4-openssl-dev:amd64=7.58.0-2ubuntu3.22`

Licenses: (parsed from: `/usr/share/doc/libcurl4/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.58.0-2ubuntu3.22
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0-2ubuntu3.22.dsc' curl_7.58.0-2ubuntu3.22.dsc 2781 SHA512:eba8b82632c96ac7bc3ced335d1c39d413d86b2de9522e19d3bef3d0060cd06142185b18499da943a4615708c0c96981f93f61694109effbf865138971aaa04d
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0.orig.tar.gz' curl_7.58.0.orig.tar.gz 3879728 SHA512:7b12b79107558bb266672d6e128615fe5a8149c37f4ae540197e3298f5d312beb2d78fbb23e3ea84ea7afc41549898a1e5cd38509f0388b11707b48d5efb8ca3
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0-2ubuntu3.22.debian.tar.xz' curl_7.58.0-2ubuntu3.22.debian.tar.xz 74080 SHA512:b491fe118af4d8a3b44c1a80bd4a8dd2ccb4b950e4e4413b685a080c3521bfa030d208b8684d429c013fb503dc3f6583bde0f2749ebbb42950c1e8681eb09216
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`
- `libsasl2-modules:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

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

### `dpkg` source package: `db5.3=5.3.28-13.1ubuntu1.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1ubuntu1.1`

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

- `e2fsprogs=1.44.1-1ubuntu1.4`
- `libcom-err2:amd64=1.44.1-1ubuntu1.4`
- `libext2fs2:amd64=1.44.1-1ubuntu1.4`
- `libss2:amd64=1.44.1-1ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

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

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.5-3ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.dsc' expat_2.2.5-3ubuntu0.9.dsc 2267 SHA512:5c80706e1d54fe89c09201b842a4136fe74f4a9a1606768c3ddbafdd3f51d28ec422ac795337e4907ae8a1e41e94fbadc96959baef333fbf5d0925f58a70c3f1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5.orig.tar.gz' expat_2.2.5.orig.tar.gz 8273003 SHA512:61ce2a479521412e0c56c352106c4adfb61a6bedb883921aba3ebccc29311ddd192646ac2c51b41572728d4de6ab4cb60a1dbc71515d742a80a8b59d89ca74d6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3ubuntu0.9.debian.tar.xz' expat_2.2.5-3ubuntu0.9.debian.tar.xz 27460 SHA512:6c87b2ebdc487359a022efb9820bc4146cdcb0b68393bc3255af5e70739e94218c8c746f1c04908415882a939386f84a3c5dfa8089ed61217d96231dd36e0032
```

### `dpkg` source package: `fakeroot=1.22-2ubuntu1`

Binary Packages:

- `fakeroot=1.22-2ubuntu1`
- `libfakeroot:amd64=1.22-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/fakeroot/copyright`, `/usr/share/doc/libfakeroot/copyright`)

- `Artistic`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris fakeroot=1.22-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22-2ubuntu1.dsc' fakeroot_1.22-2ubuntu1.dsc 2045 SHA256:ecfa77196d71e4d2720bd61808cbd08b14dc34d8a8173c372456824f5a77c19c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22.orig.tar.bz2' fakeroot_1.22.orig.tar.bz2 338238 SHA256:bd806a4a1e641203eb3d4571a10089e8a038c10ec7e492fa1e061b03ae3ec6fe
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22-2ubuntu1.debian.tar.xz' fakeroot_1.22-2ubuntu1.debian.tar.xz 44960 SHA256:ffcfc108ec282b729937ada529729b1ab071e10d70f0e3f6977a1bfddc75f172
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

### `dpkg` source package: `freetype=2.8.1-2ubuntu2.2`

Binary Packages:

- `libfreetype6:amd64=2.8.1-2ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

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

### `dpkg` source package: `gcc-5=5.5.0-12ubuntu1`

Binary Packages:

- `gcc-5-base:amd64=5.5.0-12ubuntu1`
- `libasan2:amd64=5.5.0-12ubuntu1`
- `libgcc-5-dev:amd64=5.5.0-12ubuntu1`
- `libmpx0:amd64=5.5.0-12ubuntu1`
- `libstdc++-5-dev:amd64=5.5.0-12ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-5-base/copyright`, `/usr/share/doc/libasan2/copyright`, `/usr/share/doc/libgcc-5-dev/copyright`, `/usr/share/doc/libmpx0/copyright`, `/usr/share/doc/libstdc++-5-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.5.0-12ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-5/gcc-5_5.5.0-12ubuntu1.dsc' gcc-5_5.5.0-12ubuntu1.dsc 18527 SHA256:3efbdbe7b08de448bdc320ae4e0d214269a5756d84916b8702f7f7de5825d763
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-5/gcc-5_5.5.0.orig.tar.gz' gcc-5_5.5.0.orig.tar.gz 74111464 SHA256:16f7a0c8dfc8474c51f5117cba44a7a5e6c7a00ba773eb21530b0abf96f7ed08
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-5/gcc-5_5.5.0-12ubuntu1.diff.gz' gcc-5_5.5.0-12ubuntu1.diff.gz 1488914 SHA256:c85377aaaee2cc1df0247e32f4916d9972ef99629f98960dc385d7a9bf70f900
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
- `libgdbm5:amd64=1.14.1-6`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm5/copyright`)

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

- `libgmp10:amd64=2:6.1.2+dfsg-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

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

- `gir1.2-glib-2.0:amd64=1.56.1-1`
- `libgirepository-1.0-1:amd64=1.56.1-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

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

- `krb5-locales=1.16-2ubuntu0.2`
- `libgssapi-krb5-2:amd64=1.16-2ubuntu0.2`
- `libk5crypto3:amd64=1.16-2ubuntu0.2`
- `libkrb5-3:amd64=1.16-2ubuntu0.2`
- `libkrb5support0:amd64=1.16-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/krb5-locales/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `less=487-0.1`

Binary Packages:

- `less=487-0.1`

Licenses: (parsed from: `/usr/share/doc/less/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris less=487-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_487-0.1.dsc' less_487-0.1.dsc 1748 SHA256:daeac4ed838871cdc428a02bc831b5f225d29632fc8a2417f39d7ec06bed8dab
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_487.orig.tar.gz' less_487.orig.tar.gz 318488 SHA256:f3dc8455cb0b2b66e0c6b816c00197a71bf6d1787078adeee0bcf2aea4b12706
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_487-0.1.debian.tar.xz' less_487-0.1.debian.tar.xz 19536 SHA256:36e9ef0b7cdfac578c02a98502fe7e58f4bc8cf2e720735e5fbb5b3cb08ac482
```

### `dpkg` source package: `libalgorithm-diff-perl=1.19.03-1`

Binary Packages:

- `libalgorithm-diff-perl=1.19.03-1`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-diff-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-diff-perl=1.19.03-1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03-1.dsc' libalgorithm-diff-perl_1.19.03-1.dsc 2254 SHA256:4b073915c571575245d12a5ee880ef4453c9b600a5f4370ec74bc7fa90fb6549
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03.orig.tar.gz' libalgorithm-diff-perl_1.19.03.orig.tar.gz 34174 SHA256:30e84ac4b31d40b66293f7b1221331c5a50561a39d580d85004d9c1fff991751
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03-1.debian.tar.xz' libalgorithm-diff-perl_1.19.03-1.debian.tar.xz 4664 SHA256:2dcfd1e9506a9c2170d04ff1635cbb62ade68223641408eeea5c1f698efe1b66
```

### `dpkg` source package: `libalgorithm-diff-xs-perl=0.04-5`

Binary Packages:

- `libalgorithm-diff-xs-perl=0.04-5`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-diff-xs-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-diff-xs-perl=0.04-5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-5.dsc' libalgorithm-diff-xs-perl_0.04-5.dsc 2184 SHA256:f4d410349217b173909c69c81bf0dc4f545572db203658a7f94c44012520e221
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04.orig.tar.gz' libalgorithm-diff-xs-perl_0.04.orig.tar.gz 47699 SHA256:cea89b47e1f70fa78f55f3c405491ce36d3effd9980f5c5491edffa31aa77153
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-5.debian.tar.xz' libalgorithm-diff-xs-perl_0.04-5.debian.tar.xz 2716 SHA256:3935af413d77cc00436d9f99f9369b5349e716223d79ca249a2f61a4c5ad51e0
```

### `dpkg` source package: `libalgorithm-merge-perl=0.08-3`

Binary Packages:

- `libalgorithm-merge-perl=0.08-3`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-merge-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-merge-perl=0.08-3
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08-3.dsc' libalgorithm-merge-perl_0.08-3.dsc 2191 SHA256:91b957847cf0e27bae0d254f160aec3ba35316ea034f12cd0878e693b136cfa2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08.orig.tar.gz' libalgorithm-merge-perl_0.08.orig.tar.gz 9915 SHA256:9c0688258a1dc4b83988053b9f9a98e7728cdb9b69a5008dcbd251d0f80816cf
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08-3.debian.tar.xz' libalgorithm-merge-perl_0.08-3.debian.tar.xz 2436 SHA256:241e8212e7b8607b7f5c6b7969d7bb1b62361eb013f0e48c28f8ef6390c7bce3
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

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.dsc' libffi_3.2.1-8.dsc 1959 SHA256:a07201eb5374cfab35703a6f4c88a494bb23ece91da5481497bc25404c57eaf4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.debian.tar.xz' libffi_3.2.1-8.debian.tar.xz 11660 SHA256:1eb0b13e0c0fc989ed98011d18dcddf8a05af17380fe1258883761a8d16586b4
```

### `dpkg` source package: `libfile-fcntllock-perl=0.22-3build2`

Binary Packages:

- `libfile-fcntllock-perl=0.22-3build2`

Licenses: (parsed from: `/usr/share/doc/libfile-fcntllock-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libfile-fcntllock-perl=0.22-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3build2.dsc' libfile-fcntllock-perl_0.22-3build2.dsc 2143 SHA256:28a24ceaa143e8691e1132d0384755a5432ebd0769dff3632244694b31d4ea34
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22.orig.tar.gz' libfile-fcntllock-perl_0.22.orig.tar.gz 16994 SHA256:9a9abb2efff93ab73741a128d3f700e525273546c15d04e7c51c704ab09dbcdf
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3build2.debian.tar.xz' libfile-fcntllock-perl_0.22-3build2.debian.tar.xz 2552 SHA256:0bfaefac775dfcad90e1810d5d13156c1dcfdd1c26206cb1a8f7b44f0ef2084c
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

### `dpkg` source package: `libksba=1.3.5-2ubuntu0.18.04.1`

Binary Packages:

- `libksba8:amd64=1.3.5-2ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `liblocale-gettext-perl=1.07-3build2`

Binary Packages:

- `liblocale-gettext-perl=1.07-3build2`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.07-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07-3build2.dsc' liblocale-gettext-perl_1.07-3build2.dsc 2216 SHA256:25a6cfd1acaa2cb396fc1977ec5b87f4c0cb7b0b6801e9290d66a56c1eadf021
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07.orig.tar.gz' liblocale-gettext-perl_1.07.orig.tar.gz 8651 SHA256:909d47954697e7c04218f972915b787bd1244d75e3bd01620bc167d5bbc49c15
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07-3build2.debian.tar.xz' liblocale-gettext-perl_1.07-3build2.debian.tar.xz 5648 SHA256:6f6dbd0989c29f6d8bb47d157f4e0a9f8f700c71bbb859cdd512d8dd425d38b5
```

### `dpkg` source package: `libpng1.6=1.6.34-1ubuntu0.18.04.2`

Binary Packages:

- `libpng16-16:amd64=1.6.34-1ubuntu0.18.04.2`

Licenses: (parsed from: `/usr/share/doc/libpng16-16/copyright`)

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

### `dpkg` source package: `libx11=2:1.6.4-3ubuntu0.4`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3ubuntu0.4`
- `libx11-data=2:1.6.4-3ubuntu0.4`

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

- `libxcb1:amd64=1.13-2~ubuntu18.04`

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

### `dpkg` source package: `libxmu=2:1.1.2-2`

Binary Packages:

- `libxmuu1:amd64=2:1.1.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.dsc' libxmu_1.1.2-2.dsc 2291 SHA256:5e3333a3fe9dbed9d0df596d964b94aa1d45d56a0475a8b66b3f69d60ab29504
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2.orig.tar.gz' libxmu_1.1.2.orig.tar.gz 469019 SHA256:e5fd4bacef068f9509b8226017205040e38d3fba8d2de55037200e7176c13dba
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.diff.gz' libxmu_1.1.2-2.diff.gz 6054 SHA256:c01cbd09a15e71c0418d2689a0fd0b946bf4e40d1dbe9f594beb00a4818f0740
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

### `dpkg` source package: `manpages=4.15-1`

Binary Packages:

- `manpages=4.15-1`
- `manpages-dev=4.15-1`

Licenses: (parsed from: `/usr/share/doc/manpages/copyright`, `/usr/share/doc/manpages-dev/copyright`)

- `BSD-3-clause`
- `BSD-4-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LDPv1`
- `freely-redistributable`
- `henry-spencer-regex`
- `public-domain`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris manpages=4.15-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15-1.dsc' manpages_4.15-1.dsc 1920 SHA256:df3144dbe878623168f0a06a94ce7570c88107a88e23a13e53802742a8d8e961
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15.orig.tar.gz' manpages_4.15.orig.tar.gz 2572651 SHA256:e62cc43bea97dbde70e08645148d2727965b91f66dc347f677604b8865cadc41
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15-1.debian.tar.xz' manpages_4.15-1.debian.tar.xz 75852 SHA256:d9961fd52b81c67b5a8e30fb2842e0b3551828b4d268f819a621dbf93935270e
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

### `dpkg` source package: `ncurses=6.1-1ubuntu1.18.04`

Binary Packages:

- `libncurses5:amd64=6.1-1ubuntu1.18.04`
- `libncursesw5:amd64=6.1-1ubuntu1.18.04`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `publicsuffix=20180223.1310-1`

Binary Packages:

- `publicsuffix=20180223.1310-1`

Licenses: (parsed from: `/usr/share/doc/publicsuffix/copyright`)

- `CC0`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris publicsuffix=20180223.1310-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/publicsuffix/publicsuffix_20180223.1310-1.dsc' publicsuffix_20180223.1310-1.dsc 1343 SHA256:9977613565fee592bc705cdd44e9778e5058bcb2decddc42c6142696a29b69c9
'http://archive.ubuntu.com/ubuntu/pool/main/p/publicsuffix/publicsuffix_20180223.1310.orig.tar.gz' publicsuffix_20180223.1310.orig.tar.gz 83988 SHA256:70204865c9b59993c57bfba823ebd9d8f83db01fe914654d415ffc29ecb5667e
'http://archive.ubuntu.com/ubuntu/pool/main/p/publicsuffix/publicsuffix_20180223.1310-1.debian.tar.xz' publicsuffix_20180223.1310-1.debian.tar.xz 15436 SHA256:05182da7fd7cb1f2aa9397e0230a43798dfdb082a69ba203e712080efe1fd2bd
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

- `libpython3.6:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-minimal:amd64=3.6.9-1~18.04ubuntu1.9`
- `libpython3.6-stdlib:amd64=3.6.9-1~18.04ubuntu1.9`
- `python3.6=3.6.9-1~18.04ubuntu1.9`
- `python3.6-minimal=3.6.9-1~18.04ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libpython3.6/copyright`, `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

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

- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

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

### `dpkg` source package: `sqlite3=3.22.0-1ubuntu0.7`

Binary Packages:

- `libsqlite3-0:amd64=3.22.0-1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

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

### `dpkg` source package: `xauth=1:1.0.10-1`

Binary Packages:

- `xauth=1:1.0.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xauth=1:1.0.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xauth/xauth_1.0.10-1.dsc' xauth_1.0.10-1.dsc 1891 SHA256:4bcb2b5fcc8b174bebea9584b3a06e16027b58d8e1b31e6d7704b6fd0df5c6e3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xauth/xauth_1.0.10.orig.tar.gz' xauth_1.0.10.orig.tar.gz 204259 SHA256:5196821221d824b9bc278fa6505c595acee1d374518a52217d9b64d3c63dedd0
'http://archive.ubuntu.com/ubuntu/pool/main/x/xauth/xauth_1.0.10-1.diff.gz' xauth_1.0.10-1.diff.gz 12303 SHA256:a8212a5cc9607c542d30abd880eb3a69870e642e3c45880c1ab86836008f4ede
```

### `dpkg` source package: `xdg-user-dirs=0.17-1ubuntu1`

Binary Packages:

- `xdg-user-dirs=0.17-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/xdg-user-dirs/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xdg-user-dirs=0.17-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17-1ubuntu1.dsc' xdg-user-dirs_0.17-1ubuntu1.dsc 2319 SHA256:62400a07ff099ac286502629389843a22b9d71e30179f37b7c05a2bc5ae37d9b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17.orig.tar.gz' xdg-user-dirs_0.17.orig.tar.gz 257291 SHA256:2a07052823788e8614925c5a19ef5b968d8db734fdee656699ea4f97d132418c
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17-1ubuntu1.debian.tar.xz' xdg-user-dirs_0.17-1ubuntu1.debian.tar.xz 28680 SHA256:1c18dd3208d58ec4be6cbf28c480ebc2f9c349463a2e7765d040172ba6a63c23
```

### `dpkg` source package: `xz-utils=5.2.2-1.3ubuntu0.1`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3ubuntu0.1`
- `xz-utils=5.2.2-1.3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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
