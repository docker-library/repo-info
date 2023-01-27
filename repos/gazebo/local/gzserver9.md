# `gazebo:gzserver9`

## Docker Metadata

- Image ID: `sha256:3f55a42edf33b7f7ff1933bf9683fb8332fe65d681cb18b647deb7a3af9ebceb`
- Created: `2023-01-02T19:28:54.77616725Z`
- Virtual Size: ~ 647.71 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/gzserver_entrypoint.sh"]`
- Command: `["gzserver"]`
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

### `dpkg` source package: `alsa-lib=1.1.3-5ubuntu0.6`

Binary Packages:

- `libasound2:amd64=1.1.3-5ubuntu0.6`
- `libasound2-data=1.1.3-5ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libasound2/copyright`, `/usr/share/doc/libasound2-data/copyright`)

- `LGPL-2.1`
- `LPGL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.1.3-5ubuntu0.6
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.3-5ubuntu0.6.dsc' alsa-lib_1.1.3-5ubuntu0.6.dsc 1972 SHA512:f60b108a9b66962dbc1a8547ee40d3a40cdf5055e5339c778a3510b4e374d09148daa25bf0fbd12014219871d36e862a6232dd9c644e5efa1a8f52011d6f17c3
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.3.orig.tar.bz2' alsa-lib_1.1.3.orig.tar.bz2 962001 SHA512:f5dbe2375a8c66af14378314a5238284d4ed63dfc86a750c0c6e8f6cdb6b1ea2d8ef26f870b5d152dc0b77d9b40821cab523f6734902b91583beb08e28c66850
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.3-5ubuntu0.6.debian.tar.xz' alsa-lib_1.1.3-5ubuntu0.6.debian.tar.xz 142668 SHA512:a7e82c484e4ee7c8755dac9fbfa4a87b662683d2927d7de6a00579b468169937649e24e896f39620ffd80f1e3a94a9225ccb01b49e4d322123cb62fdc52b8970
```

### `dpkg` source package: `apparmor=2.12-4ubuntu5.1`

Binary Packages:

- `libapparmor1:amd64=2.12-4ubuntu5.1`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=2.12-4ubuntu5.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.12-4ubuntu5.1.dsc' apparmor_2.12-4ubuntu5.1.dsc 3181 SHA512:954ab5ff4e791c28857d6458aa477aa60fef09a6f5191fad3d890515b6fcd893b44c278cb8055be17f51fbb07417a2bcce559ca0d07b03444b868d51a14c1be9
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.12.orig.tar.gz' apparmor_2.12.orig.tar.gz 7258450 SHA512:d85fd47c66333fe5658ee5e977b32142697f6e36c575550712ee2ace2ad0fbf2aa59c8fd3b82ad8821c0190adf8cc150cf623ea09a84d5b32bde050a03dd6e9a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.12-4ubuntu5.1.debian.tar.xz' apparmor_2.12-4ubuntu5.1.debian.tar.xz 89084 SHA512:838586458181e4b49d21af2b6becb9b73670c198ec2314a4bd35e60ee72d5baeffcd269d7c13251d62a1554b3f3cac0e74c187a43418096ec7a0f94f6a0bb5da
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

### `dpkg` source package: `armadillo=1:8.400.0+dfsg-2`

Binary Packages:

- `libarmadillo8=1:8.400.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libarmadillo8/copyright`)

- `Apache`
- `Apache-2.0`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris armadillo=1:8.400.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_8.400.0%2bdfsg-2.dsc' armadillo_8.400.0+dfsg-2.dsc 2191 SHA256:c2c5eed729005a9b2eac851b6f7f82960aa00db7807d90e1c962cfdc6fdbbcbe
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_8.400.0%2bdfsg.orig.tar.xz' armadillo_8.400.0+dfsg.orig.tar.xz 514320 SHA256:bce152015c141d9b7cc3325965d08567ba0bd166b9554f7e2ff5605755b643f7
'http://archive.ubuntu.com/ubuntu/pool/universe/a/armadillo/armadillo_8.400.0%2bdfsg-2.debian.tar.xz' armadillo_8.400.0+dfsg-2.debian.tar.xz 6484 SHA256:38c5b876f4a7ac2beb67002fd9e24d01f82fe690603326c9b35f5540993b044b
```

### `dpkg` source package: `arpack=3.5.0+real-2`

Binary Packages:

- `libarpack2:amd64=3.5.0+real-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris arpack=3.5.0+real-2
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.5.0%2breal-2.dsc' arpack_3.5.0+real-2.dsc 2207 SHA256:0229fa299321be762d5f31bde875ec960a246570d7879f3e8d0c503f8df3b816
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.5.0%2breal.orig.tar.gz' arpack_3.5.0+real.orig.tar.gz 949853 SHA256:50f7a3e3aec2e08e732a487919262238f8504c3ef927246ec3495617dde81239
'http://archive.ubuntu.com/ubuntu/pool/universe/a/arpack/arpack_3.5.0%2breal-2.debian.tar.xz' arpack_3.5.0+real-2.debian.tar.xz 8504 SHA256:3e3ab16843bcbf9d1a2da90343190ac7cbf7c02581477068bd0747c3e62f1988
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

### `dpkg` source package: `avahi=0.7-3.1ubuntu1.3`

Binary Packages:

- `libavahi-client3:amd64=0.7-3.1ubuntu1.3`
- `libavahi-common-data:amd64=0.7-3.1ubuntu1.3`
- `libavahi-common3:amd64=0.7-3.1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.7-3.1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.7-3.1ubuntu1.3.dsc' avahi_0.7-3.1ubuntu1.3.dsc 4202 SHA512:ec9573eda9ec23f1c0c187f35e58b640dd779fe8f8e2d146845b13e07ad862d70eaeffa7336742333024e6d0b8353e51ed31dc811832b9f18d5541e43feb0d00
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.7.orig.tar.gz' avahi_0.7.orig.tar.gz 1333400 SHA512:bae5a1e9204aca90b90e7fd223d19e809e3514d03ba5fa2da1e55bf1d72d3d3b98567f357900c36393613dc17dc98e15ff3ebf0f226f2f6b9766e592452a6ce7
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.7-3.1ubuntu1.3.debian.tar.xz' avahi_0.7-3.1ubuntu1.3.debian.tar.xz 35756 SHA512:50c7195f3fd9a8822d5b9d951425be8d032ac19762483f3bd8f99d234408b32907ff4faf1c99a027eff2c1c6b46b8d9044975b094d6bf242132fd90a77d42aa0
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

### `dpkg` source package: `boost1.65.1=1.65.1+dfsg-0ubuntu5`

Binary Packages:

- `libboost-filesystem1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-iostreams1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-program-options1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-regex1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-system1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-thread1.65.1:amd64=1.65.1+dfsg-0ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libboost-filesystem1.65.1/copyright`, `/usr/share/doc/libboost-iostreams1.65.1/copyright`, `/usr/share/doc/libboost-program-options1.65.1/copyright`, `/usr/share/doc/libboost-regex1.65.1/copyright`, `/usr/share/doc/libboost-system1.65.1/copyright`, `/usr/share/doc/libboost-thread1.65.1/copyright`)

- `Boost`
- `bjam`
- `boostbook`

Source:

```console
$ apt-get source -qq --print-uris boost1.65.1=1.65.1+dfsg-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg-0ubuntu5.dsc' boost1.65.1_1.65.1+dfsg-0ubuntu5.dsc 7825 SHA256:e046822facd57a5810416328f6e440f5ae5a4017215d1ea3ca7bec59e090c598
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg.orig.tar.bz2' boost1.65.1_1.65.1+dfsg.orig.tar.bz2 82120283 SHA256:c7709bf6b416e0609fac4bcc0c0093a890ccbeaeebbeabe45877cffc5d06f43c
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1%2bdfsg-0ubuntu5.debian.tar.xz' boost1.65.1_1.65.1+dfsg-0ubuntu5.debian.tar.xz 105524 SHA256:c238e8a63c232911402cef6f8ea7763bddf572f7062b5353147ee9ed9a79afdb
```

### `dpkg` source package: `bullet=2.87+dfsg-2`

Binary Packages:

- `libbullet2.87:amd64=2.87+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libbullet2.87/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Elsevier-CDROM-License`
- `Expat`
- `GNU-All-Permissive-License`
- `GPL-2`
- `GPL-2+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris bullet=2.87+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.87%2bdfsg-2.dsc' bullet_2.87+dfsg-2.dsc 2490 SHA256:25d93a13fc5058f9a96ba8af198221071f0bc406a0744bcbd3bdc30268b6d04a
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.87%2bdfsg.orig.tar.xz' bullet_2.87+dfsg.orig.tar.xz 1503036 SHA256:4636db8ab61e3873e8fe8f52f45a539fcac83adbaac79b4ddb2dab179dfe6d71
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_2.87%2bdfsg-2.debian.tar.xz' bullet_2.87+dfsg-2.debian.tar.xz 10492 SHA256:be16d62f7aadb0f314927dbb26d85ce7c4bed32d9ac205a2adf9722f1d1425b1
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

### `dpkg` source package: `cairo=1.15.10-2ubuntu0.1`

Binary Packages:

- `libcairo2:amd64=1.15.10-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

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

### `dpkg` source package: `chromaprint=1.4.3-1`

Binary Packages:

- `libchromaprint1:amd64=1.4.3-1`

Licenses: (parsed from: `/usr/share/doc/libchromaprint1/copyright`)

- `BSD-3-clause`
- `Expat`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris chromaprint=1.4.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.4.3-1.dsc' chromaprint_1.4.3-1.dsc 2257 SHA256:ea067cb8fdbdf773d6a3176a12315e658546d08f5aa2ebd713d85105bf370f2f
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.4.3.orig.tar.gz' chromaprint_1.4.3.orig.tar.gz 613718 SHA256:d4ae6596283aad7a015a5b0445012054c634a4b9329ecb23000cd354b40a283b
'http://archive.ubuntu.com/ubuntu/pool/universe/c/chromaprint/chromaprint_1.4.3-1.debian.tar.xz' chromaprint_1.4.3-1.debian.tar.xz 5648 SHA256:400f44ab9a509675ccc93b7619b90919019b50e049ed573c7085a4475c5c617e
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

### `dpkg` source package: `crystalhd=1:0.0~git20110715.fdd2f19-12`

Binary Packages:

- `libcrystalhd3:amd64=1:0.0~git20110715.fdd2f19-12`

Licenses: (parsed from: `/usr/share/doc/libcrystalhd3/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris crystalhd=1:0.0~git20110715.fdd2f19-12
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19-12.dsc' crystalhd_0.0~git20110715.fdd2f19-12.dsc 2356 SHA256:24d2413fe865d91f54366f906f04ebaa8cb9a2c28b3359a83f3754581474f621
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19.orig.tar.gz' crystalhd_0.0~git20110715.fdd2f19.orig.tar.gz 1186072 SHA256:a1c22908b85085dcc4591bc033fe054be63eab59b7d35f0a9ab3fcb2600722b7
'http://archive.ubuntu.com/ubuntu/pool/universe/c/crystalhd/crystalhd_0.0%7egit20110715.fdd2f19-12.debian.tar.xz' crystalhd_0.0~git20110715.fdd2f19-12.debian.tar.xz 15260 SHA256:b634af1ff394c6e44445e29e7e6b27648d35f58e475ed1749eeaf3dc80ca15a1
```

### `dpkg` source package: `cups=2.2.7-1ubuntu2.9`

Binary Packages:

- `libcups2:amd64=2.2.7-1ubuntu2.9`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.2.7-1ubuntu2.9
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.2.7-1ubuntu2.9.dsc' cups_2.2.7-1ubuntu2.9.dsc 3647 SHA512:cd81e2ffa8f6cb38531287daba73bf1c86bdde2ea863ebf0f7be0f95bea3d80ed7de78fd209e59d5c5fe3fd706fbbe897914a46cecf1d7a49b59c85ae75471bb
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.2.7.orig.tar.gz' cups_2.2.7.orig.tar.gz 10330296 SHA512:780a6a484f38967ff678456ec7b532aa8445a9562663e4e4f6f7a24aac6ec9e8eae36459ee3c025dff053d59ad1d9ecfb823e8a832bae9d384db3d1a10d8860e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.2.7.orig.tar.gz.asc' cups_2.2.7.orig.tar.gz.asc 872 SHA512:0fe9291e40afb7090c9262d16ab11dce250ac04763300ba300fb89df30be002eb6f737a6ec396135bb35a90dc45c82cf3a1a34682469baf75abdcbf0389469fd
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.2.7-1ubuntu2.9.debian.tar.xz' cups_2.2.7-1ubuntu2.9.debian.tar.xz 365088 SHA512:0cffaae0facfd0749c1f181d70be4a84b3b60d68d543d2e9f4fa7775b363cbb5e497c99c5523fc0fb8da26f9c3c3cd512029bbdf0984880ac0489ab53f803bcb
```

### `dpkg` source package: `curl=7.58.0-2ubuntu3.21`

Binary Packages:

- `libcurl3-gnutls:amd64=7.58.0-2ubuntu3.21`
- `libcurl4:amd64=7.58.0-2ubuntu3.21`

Licenses: (parsed from: `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

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

### `dpkg` source package: `dbus=1.12.2-1ubuntu1.4`

Binary Packages:

- `libdbus-1-3:amd64=1.12.2-1ubuntu1.4`

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
$ apt-get source -qq --print-uris dbus=1.12.2-1ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.2-1ubuntu1.4.dsc' dbus_1.12.2-1ubuntu1.4.dsc 3431 SHA512:7de7ca9e331e5f840f9e6813214fdef989c9f10e2d3c025ad30610a6ac3c1fbba53d09d3e8531277c7c8a85be73e693e9c3d330b4a8b2685000c1cd2d443a192
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.2.orig.tar.gz' dbus_1.12.2.orig.tar.gz 2063143 SHA512:523698ae543a4f1d9142898351ed38827882a3ca583ca7934676af48d09219ea562ae77d734cd142e5ca0d5e74f9e8d0fdeb1019592ca3524e2b690c6283f7cd
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.2-1ubuntu1.4.debian.tar.xz' dbus_1.12.2-1ubuntu1.4.debian.tar.xz 72152 SHA512:6fee483bf27f9b4f4836af4f3c100caf60e6db3f56b473ab8dafb1dc9e8f18c2fb68066168975bfbc8b181705cfde1a623c19ff846cf93fe7e4e9e8441842612
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

### `dpkg` source package: `distro-info-data=0.37ubuntu0.15`

Binary Packages:

- `distro-info-data=0.37ubuntu0.15`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.37ubuntu0.15
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.15.dsc' distro-info-data_0.37ubuntu0.15.dsc 1776 SHA512:60fc499e69221ab6d97caf31084907736cbb18423450cd075fe36213ff69264258066183742100b34b33c8ac5f99261af6c5b1b08b211f66aef9fa4a9d0d4610
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.15.tar.xz' distro-info-data_0.37ubuntu0.15.tar.xz 7608 SHA512:75142b5638b9daf0adb7da02994f2a0d16e5286d36c787c52bad6008cd2f9d6458b3862a1c4c73a05e4b8cee7174728835dd27309714a0225038518dd8955186
```

### `dpkg` source package: `double-conversion=2.0.1-4ubuntu1`

Binary Packages:

- `libdouble-conversion1:amd64=2.0.1-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdouble-conversion1/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris double-conversion=2.0.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/double-conversion/double-conversion_2.0.1-4ubuntu1.dsc' double-conversion_2.0.1-4ubuntu1.dsc 2179 SHA256:cb9d63d50991c512449fbc084a58e64f50e8127bf0b20431935ea67785dafb03
'http://archive.ubuntu.com/ubuntu/pool/main/d/double-conversion/double-conversion_2.0.1.orig.tar.gz' double-conversion_2.0.1.orig.tar.gz 7014061 SHA256:671f0439b4531c7344ace5b2ddaab4bdd860e80cee586efcfebf37b4eedd7cf0
'http://archive.ubuntu.com/ubuntu/pool/main/d/double-conversion/double-conversion_2.0.1-4ubuntu1.debian.tar.xz' double-conversion_2.0.1-4ubuntu1.debian.tar.xz 5008 SHA256:b5948b9b29907d17b8fcd59f1c17a1b603c2778731cb84fe83c1156e9af292ee
```

### `dpkg` source package: `dpkg=1.19.0.5ubuntu2.4`

Binary Packages:

- `dpkg=1.19.0.5ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

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

### `dpkg` source package: `ffmpeg=7:3.4.11-0ubuntu0.1`

Binary Packages:

- `libavcodec57:amd64=7:3.4.11-0ubuntu0.1`
- `libavdevice57:amd64=7:3.4.11-0ubuntu0.1`
- `libavfilter6:amd64=7:3.4.11-0ubuntu0.1`
- `libavformat57:amd64=7:3.4.11-0ubuntu0.1`
- `libavresample3:amd64=7:3.4.11-0ubuntu0.1`
- `libavutil55:amd64=7:3.4.11-0ubuntu0.1`
- `libpostproc54:amd64=7:3.4.11-0ubuntu0.1`
- `libswresample2:amd64=7:3.4.11-0ubuntu0.1`
- `libswscale4:amd64=7:3.4.11-0ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libavcodec57/copyright`, `/usr/share/doc/libavdevice57/copyright`, `/usr/share/doc/libavfilter6/copyright`, `/usr/share/doc/libavformat57/copyright`, `/usr/share/doc/libavresample3/copyright`, `/usr/share/doc/libavutil55/copyright`, `/usr/share/doc/libpostproc54/copyright`, `/usr/share/doc/libswresample2/copyright`, `/usr/share/doc/libswscale4/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL`
- `Expat`
- `FSF`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Avisynth exception`
- `GPL-3`
- `GPL-3+`
- `IJG`
- `ISC`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Sundry`
- `Zlib`
- `man-page`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris ffmpeg=7:3.4.11-0ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_3.4.11-0ubuntu0.1.dsc' ffmpeg_3.4.11-0ubuntu0.1.dsc 5231 SHA512:e2bff2c216cdcdd88b5ba05823231254b67d17c42c44ffc697a9504a7ab6dc47c0e7e5e2386a62d6a3edce0ef2436a88f6111a42e65dc5f8066e2feee292ee74
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_3.4.11.orig.tar.xz' ffmpeg_3.4.11.orig.tar.xz 8517940 SHA512:61d62d5ad7bbde78d957ca40b5cf9fae5fe0125292b99d0caff9441fad3ecea165a4546a44b9049849f588024c881bba2c6bbd0255133db49188d4bf4693ff4e
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_3.4.11.orig.tar.xz.asc' ffmpeg_3.4.11.orig.tar.xz.asc 520 SHA512:81439c508579cca6ffa284747e613902084d65000e0d6bb2aaf8b7303e4178a60b8075030ceee1bf0fac88a5b4930eb44f18da02e818d927abf5dfd08fd9b0d7
'http://archive.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/ffmpeg_3.4.11-0ubuntu0.1.debian.tar.xz' ffmpeg_3.4.11-0ubuntu0.1.debian.tar.xz 42560 SHA512:ffa80a67ad6043a5d0585e2a6276e1880248aedded3de895ce94ff13fcc78a9a2162ff7c5f00885ac2bc7cbc728d9cc624a78ff02fdf62e179c87f8a80d6d959
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

### `dpkg` source package: `flac=1.3.2-1ubuntu0.1`

Binary Packages:

- `libflac8:amd64=1.3.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libflac8/copyright`)

- `BSD-3-clause`
- `GFDL-1.1+`
- `GFDL-1.2`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Public-domain`

Source:

```console
$ apt-get source -qq --print-uris flac=1.3.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.2-1ubuntu0.1.dsc' flac_1.3.2-1ubuntu0.1.dsc 2087 SHA512:beeb033278b796e0b36269285737e0639d5f0066b2b50450a3d302d704c3c50a86aafe86c2d8957d831cd6a5118c423dd1c616cd684c04c0d38edb86dd57a136
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.2.orig.tar.xz' flac_1.3.2.orig.tar.xz 776192 SHA512:63910e8ebbe508316d446ffc9eb6d02efbd5f47d29d2ea7864da9371843c8e671854db6e89ba043fe08aef1845b8ece70db80f1cce853f591ca30d56ef7c3a15
'http://archive.ubuntu.com/ubuntu/pool/main/f/flac/flac_1.3.2-1ubuntu0.1.debian.tar.xz' flac_1.3.2-1ubuntu0.1.debian.tar.xz 18268 SHA512:7692503ba799a4e9c94cb4f389ef95895c447c80a9fe7ca8491cf7f525cbfb8baf0c9b41bb4f051f0daf325356e353eaa8beae46f0817a9bd0e3b8d4513565ec
```

### `dpkg` source package: `flite=2.1-release-1`

Binary Packages:

- `libflite1:amd64=2.1-release-1`

Licenses: (parsed from: `/usr/share/doc/libflite1/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris flite=2.1-release-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.1-release-1.dsc' flite_2.1-release-1.dsc 1878 SHA256:dd8b64159eacf5bcdc743f720ab362a475e91f05bc5d1033f8a851d5d94337de
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.1-release.orig.tar.bz2' flite_2.1-release.orig.tar.bz2 14816327 SHA256:c73c3f6a2ea764977d6eaf0a287722d1e2066b4697088c552e342c790f3d2b85
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flite/flite_2.1-release-1.debian.tar.xz' flite_2.1-release-1.debian.tar.xz 31144 SHA256:5f7e36406db6c8215e0a2b6d13d8cfa3b3a904c8203b6df4fb938791b8ee8066
```

### `dpkg` source package: `fontconfig=2.12.6-0ubuntu2`

Binary Packages:

- `fontconfig=2.12.6-0ubuntu2`
- `fontconfig-config=2.12.6-0ubuntu2`
- `libfontconfig1:amd64=2.12.6-0ubuntu2`

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
- `ttf-dejavu-core=2.37-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/ttf-dejavu-core/copyright`)

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

### `dpkg` source package: `freeimage=3.17.0+ds1-5+deb9u1build0.18.04.1`

Binary Packages:

- `libfreeimage3:amd64=3.17.0+ds1-5+deb9u1build0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libfreeimage3/copyright`)

- `FIPL-1.0`
- `GPL-2`
- `GPL-2.0`
- `GPL-3`
- `GPL-3.0`

Source:

```console
$ apt-get source -qq --print-uris freeimage=3.17.0+ds1-5+deb9u1build0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1-5%2bdeb9u1build0.18.04.1.dsc' freeimage_3.17.0+ds1-5+deb9u1build0.18.04.1.dsc 2791 SHA512:594770924a92f16c46bae0fc688eb64c12146152231dd569dff611ac4be879b8818a3440b5b7cee84f357ccffcc755c8812ec12a418eb1962b094ba72e5917c3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1.orig.tar.xz' freeimage_3.17.0+ds1.orig.tar.xz 1277296 SHA512:c30b9539c0c913fccc7647b302a6b9de823b4f36e3f66cdb963d718f5e88eef2d955a002859e0a410b015305625695a8ed3a7d77f46d1749df36c6fa24caca7f
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freeimage/freeimage_3.17.0%2bds1-5%2bdeb9u1build0.18.04.1.debian.tar.xz' freeimage_3.17.0+ds1-5+deb9u1build0.18.04.1.debian.tar.xz 25536 SHA512:d704bd8c993a08f3207c376e9ba7d7ebe0e8c75eba0d87f6af577c4137f051313f8449667cdb741b038633cbf57996b4f71b28f26f0a4b714ccc87c872a0584e
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

### `dpkg` source package: `freexl=1.0.5-1`

Binary Packages:

- `libfreexl1:amd64=1.0.5-1`

Licenses: (parsed from: `/usr/share/doc/libfreexl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `fsf-unlimited`
- `fsf-unlimited-configure`
- `fsf-unlimited-disclaimer`
- `fsf-unlimited-makefile`
- `install-sh`

Source:

```console
$ apt-get source -qq --print-uris freexl=1.0.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.5-1.dsc' freexl_1.0.5-1.dsc 2062 SHA256:de57b390ba08a62dc7ab7358e84c55e2e165a8486caf5b298d3890a35d2921f1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.5.orig.tar.gz' freexl_1.0.5.orig.tar.gz 938994 SHA256:3dc9b150d218b0e280a3d6a41d93c1e45f4d7155829d75f1e5bf3e0b0de6750d
'http://archive.ubuntu.com/ubuntu/pool/universe/f/freexl/freexl_1.0.5-1.debian.tar.xz' freexl_1.0.5-1.debian.tar.xz 13076 SHA256:0d01a679d5b359527c513148bbc91f1295ef1ddf32c927f3f2470c21edfa7110
```

### `dpkg` source package: `fribidi=0.19.7-2ubuntu0.1`

Binary Packages:

- `libfribidi0:amd64=0.19.7-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=0.19.7-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7-2ubuntu0.1.dsc' fribidi_0.19.7-2ubuntu0.1.dsc 2409 SHA512:8ceca609117c9cb5ba0d539e9992ad62905c82ee669aa358b4a4171bfee2ae52e54d2f514f0a34163ba5b137fab11cd434d727083f0f6d68bef58704ef31b205
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7.orig.tar.bz2' fribidi_0.19.7.orig.tar.bz2 648299 SHA512:4bfdda43d961030a8a2ae2c98d2ca5d43c1b59633fa0987920c5537ec69f3f624204ceacc4c474d878cbb417ee2d9e708dfe169cfce6ad584d2f2d5122678b63
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.7-2ubuntu0.1.debian.tar.xz' fribidi_0.19.7-2ubuntu0.1.debian.tar.xz 9044 SHA512:c93b5ff5c4550bab989ae3b9b381ebbb746c2ba00af5444ca9895f06cc6914d787d0f1eaf8cd96b4442582cbe7836e903e91229a5e5b3b5532058b1be9728c60
```

### `dpkg` source package: `fyba=4.1.1-3`

Binary Packages:

- `libfyba0:amd64=4.1.1-3`

Licenses: (parsed from: `/usr/share/doc/libfyba0/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris fyba=4.1.1-3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1-3.dsc' fyba_4.1.1-3.dsc 1937 SHA256:a5ec62577b530d994c95e10cf155e7b5a064c6cc37b28bc4a4e774d0a2eb3173
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1.orig.tar.gz' fyba_4.1.1.orig.tar.gz 500377 SHA256:99f658d52e8fd8997118bb6207b9c121500700996d9481a736683474e2534179
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fyba/fyba_4.1.1-3.debian.tar.xz' fyba_4.1.1-3.debian.tar.xz 11384 SHA256:3587e2749978ddecd272ea557e8982affa4dccc2bee5795a54aa32305b797659
```

### `dpkg` source package: `game-music-emu=0.6.2-1`

Binary Packages:

- `libgme0:amd64=0.6.2-1`

Licenses: (parsed from: `/usr/share/doc/libgme0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris game-music-emu=0.6.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.2-1.dsc' game-music-emu_0.6.2-1.dsc 2006 SHA256:8359c17b8c7d7887b3d44a5ac4958e5456afbf816ba29e6713c1e4212dbe63eb
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.2.orig.tar.xz' game-music-emu_0.6.2.orig.tar.xz 163052 SHA256:5046cb471d422dbe948b5f5dd4e5552aaef52a0899c4b2688e5a68a556af7342
'http://archive.ubuntu.com/ubuntu/pool/universe/g/game-music-emu/game-music-emu_0.6.2-1.debian.tar.xz' game-music-emu_0.6.2-1.debian.tar.xz 4412 SHA256:8ea69035bd72261ec85e5f0486707d448f7491733ae055040a9995cebb0ea820
```

### `dpkg` source package: `gazebo9=9.19.0-1~bionic`

Binary Packages:

- `gazebo9=9.19.0-1~bionic`
- `gazebo9-common=9.19.0-1~bionic`
- `libgazebo9:amd64=9.19.0-1~bionic`

Licenses: (parsed from: `/usr/share/doc/gazebo9/copyright`, `/usr/share/doc/gazebo9-common/copyright`, `/usr/share/doc/libgazebo9/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSL (v1.0)`
- `LGPL`
- `LGPL-2.1`
- `LGPL-3`
- `LGPL-3+`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris gazebo9=9.19.0-1~bionic
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.19.0-1%7ebionic.dsc' gazebo9_9.19.0-1~bionic.dsc 2136 SHA256:0305f20279aed4fc631ff027a77fbcef89ba1ef0cc213c52c8b8543b2cff8de9
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.19.0.orig.tar.bz2' gazebo9_9.19.0.orig.tar.bz2 55792777 SHA256:1f3ca430824b120ae0c7c4c0037a1a56e7b6bf6c50731b148b5c75bfc46d7fe7
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/g/gazebo9/gazebo9_9.19.0-1%7ebionic.debian.tar.xz' gazebo9_9.19.0-1~bionic.debian.tar.xz 6932 SHA256:d99762aad17f63c870b8c1a30d896a7ad215326ccb9223b7145ba4175faafbe3
```

### `dpkg` source package: `gcc-7=7.5.0-3ubuntu1~18.04`

Binary Packages:

- `gcc-7-base:amd64=7.5.0-3ubuntu1~18.04`
- `libgfortran4:amd64=7.5.0-3ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libgfortran4/copyright`)

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
- `libgcc1:amd64=1:8.4.0-1ubuntu1~18.04`
- `libgomp1:amd64=8.4.0-1ubuntu1~18.04`
- `libquadmath0:amd64=8.4.0-1ubuntu1~18.04`
- `libstdc++6:amd64=8.4.0-1ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`)

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

### `dpkg` source package: `gdal=2.2.3+dfsg-2`

Binary Packages:

- `gdal-data=2.2.3+dfsg-2`
- `libgdal20=2.2.3+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/gdal-data/copyright`, `/usr/share/doc/libgdal20/copyright`)

- `Apache-2.0`
- `Artistic`
- `BSD-3-Clause`
- `Base64`
- `GPL-1`
- `GPL-1.0+`
- `GPL-2`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Bison exception`
- `HPND-3i`
- `HPND-disclaimer`
- `HPND-eos`
- `HPND-p-sl-sgi`
- `HPND-sl-gl-sgi`
- `HPND-sl-sgi`
- `IJG`
- `ITT`
- `Info-ZIP`
- `JasPer-2.0`
- `LGPL-2`
- `LGPL-2+`
- `MIT`
- `MIT-short`
- `PostgreSQL`
- `Qhull`
- `fsf-unlimited-configure`
- `fsf-unlimited-disclaimer`
- `libpng`
- `public-domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris gdal=2.2.3+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_2.2.3%2bdfsg-2.dsc' gdal_2.2.3+dfsg-2.dsc 3417 SHA256:1c773c32fc34610ef9ae19343476186423679f0ebe759c3b47664cb3205021f7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_2.2.3%2bdfsg.orig.tar.xz' gdal_2.2.3+dfsg.orig.tar.xz 8812900 SHA256:3f99d84541ec6f174da137166c1002b50ed138dde51d05180ad5c8dd49721057
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gdal/gdal_2.2.3%2bdfsg-2.debian.tar.xz' gdal_2.2.3+dfsg-2.debian.tar.xz 178768 SHA256:a545f89efa6815eb5d529f2114e9a04a4ba61df233752541369cee92009fc9c0
```

### `dpkg` source package: `gdk-pixbuf=2.36.11-2`

Binary Packages:

- `libgdk-pixbuf2.0-0:amd64=2.36.11-2`
- `libgdk-pixbuf2.0-common=2.36.11-2`

Licenses: (parsed from: `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`)

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

### `dpkg` source package: `geos=3.6.2-1build2`

Binary Packages:

- `libgeos-3.6.2:amd64=3.6.2-1build2`
- `libgeos-c1v5:amd64=3.6.2-1build2`

Licenses: (parsed from: `/usr/share/doc/libgeos-3.6.2/copyright`, `/usr/share/doc/libgeos-c1v5/copyright`)

- `GPL-2`
- `GPL-2+ with Libtool exception`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris geos=3.6.2-1build2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.6.2-1build2.dsc' geos_3.6.2-1build2.dsc 2084 SHA256:6e1f4473ff8d2b4f5331ed0ec3a7853ae89f56320bbb4d9c17731a0236e8a00b
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.6.2.orig.tar.bz2' geos_3.6.2.orig.tar.bz2 2030705 SHA256:045a13df84d605a866602f6020fc6cbf8bf4c42fb50de237a08926e1d7d7652a
'http://archive.ubuntu.com/ubuntu/pool/universe/g/geos/geos_3.6.2-1build2.debian.tar.xz' geos_3.6.2-1build2.debian.tar.xz 45568 SHA256:127175d5dcf63e46e99a658bd52c59a859420132db8259d6721dabe5ffabc911
```

### `dpkg` source package: `giflib=5.1.4-2ubuntu0.1`

Binary Packages:

- `libgif7:amd64=5.1.4-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgif7/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris giflib=5.1.4-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4-2ubuntu0.1.dsc' giflib_5.1.4-2ubuntu0.1.dsc 2018 SHA512:d905863f9b7f0e61ab9ec56ddd46a1ac48fb3feb52cd1c0ba3b312b8b4473b60babf9c0b7fdc843463660c4440c99866162c46346d432a99bfc918d1a2a7d3f2
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4.orig.tar.bz2' giflib_5.1.4.orig.tar.bz2 639703 SHA512:32b5e342056c210e6478e9cb3b6ceec9594dcfaf34feea1eb4dad633a081ed4465bceee578c19165907cb47cb83912ac359ceea666a8e07dbbb5420f9928f96d
'http://archive.ubuntu.com/ubuntu/pool/main/g/giflib/giflib_5.1.4-2ubuntu0.1.debian.tar.xz' giflib_5.1.4-2ubuntu0.1.debian.tar.xz 8768 SHA512:e1dc47d73443a9d436482b8945e9f35012f6de278976bdee125d7fd4baa54dcd3c5ee3643e9a1052cfa871917ee5047b22610f4336d8643958ba1e849dfe7b9e
```

### `dpkg` source package: `glib2.0=2.56.4-0ubuntu0.18.04.9`

Binary Packages:

- `libglib2.0-0:amd64=2.56.4-0ubuntu0.18.04.9`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

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
- `libc6:amd64=2.27-3ubuntu1.6`
- `multiarch-support=2.27-3ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

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
- `gnupg2=2.2.4-1ubuntu1.6`
- `gpg=2.2.4-1ubuntu1.6`
- `gpg-agent=2.2.4-1ubuntu1.6`
- `gpg-wks-client=2.2.4-1ubuntu1.6`
- `gpg-wks-server=2.2.4-1ubuntu1.6`
- `gpgconf=2.2.4-1ubuntu1.6`
- `gpgsm=2.2.4-1ubuntu1.6`
- `gpgv=2.2.4-1ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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

### `dpkg` source package: `graphite2=1.3.11-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.11-2`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

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

### `dpkg` source package: `gts=0.7.6+darcs121130-4`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-4`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-4
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-4.dsc' gts_0.7.6+darcs121130-4.dsc 2170 SHA256:3d7dbf72a2194891a485d03f8a002e8d149dc59a915a7bbf36b42c53408ef733
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA256:c23f72ab74bbf65599f8c0b599d6336fabe1ec2a09c19b70544eeefdc069b73b
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-4.debian.tar.bz2' gts_0.7.6+darcs121130-4.debian.tar.bz2 13837 SHA256:1fcf9c79ca0b4fc3662de645ba4e65564ea974566a3ecd730e9908f1adc425cd
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

- `libharfbuzz0b:amd64=1.7.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.dsc' harfbuzz_1.7.2-1ubuntu1.dsc 2825 SHA256:0222317c07eecbb164a537694dcb01ff4c658a56e577f9667cbb8ec144d287fa
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.debian.tar.xz' harfbuzz_1.7.2-1ubuntu1.debian.tar.xz 9168 SHA256:f94a2a0990fd0b39fdef14444fa39b0bd1d15f6c79e74b697856ba2cef06b0bf
```

### `dpkg` source package: `hdf5=1.10.0-patch1+docs-4`

Binary Packages:

- `libhdf5-100:amd64=1.10.0-patch1+docs-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris hdf5=1.10.0-patch1+docs-4
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.10.0-patch1%2bdocs-4.dsc' hdf5_1.10.0-patch1+docs-4.dsc 2748 SHA256:cffb7859ef5db09b27d1cb0fc14375241e499c7f602f124b2a1e1019feaf9adf
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.10.0-patch1%2bdocs.orig.tar.gz' hdf5_1.10.0-patch1+docs.orig.tar.gz 25959021 SHA256:db039dd6825ce1e2845b2c7e9d8cf3cd0caa0842f713a7a8c282af09520204d8
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hdf5/hdf5_1.10.0-patch1%2bdocs-4.debian.tar.xz' hdf5_1.10.0-patch1+docs-4.debian.tar.xz 119648 SHA256:d527f57aa97334bf9669b104d884ce4471cb9a49ef326d964b3d6c8620be283f
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

### `dpkg` source package: `icu=60.2-3ubuntu3.2`

Binary Packages:

- `libicu60:amd64=60.2-3ubuntu3.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=60.2-3ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.dsc' icu_60.2-3ubuntu3.2.dsc 1845 SHA512:7a31aeb82e3d5456296665d77efb93c58f93fc49eef10030de32a2811f24592c2ec1f16d9f734ea8a8613bf5ac1bc5ecdb85b08698bdaa51fbf0954722eefa7e
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2.orig.tar.gz' icu_60.2.orig.tar.gz 23315541 SHA512:ecbd9eea199d261d5f2b262abab6b1f3ee4e993081faca1426046b4ed2eadbb082fca3ebdeff82f6b431eafa7ddbe764fe64f9d96bf96486d1aa51cdc4c3d8b2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.2.debian.tar.xz' icu_60.2-3ubuntu3.2.debian.tar.xz 29840 SHA512:85fc052c31cb78043a3d4029d0024e2871443aa6f31fce677aec398bb2f73d51ff1ba82d19c9e182d8d2bba2e08dd71e2ec8e8edde8ec1455c79eb63ee205a12
```

### `dpkg` source package: `ignition-common=1.1.1-1~bionic`

Binary Packages:

- `libignition-common:amd64=1.1.1-1~bionic`

Licenses: (parsed from: `/usr/share/doc/libignition-common/copyright`)

- `Apache`
- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-fuel-tools1=1.2.0-1~bionic`

Binary Packages:

- `libignition-fuel-tools1-1:amd64=1.2.0-1~bionic`

Licenses: (parsed from: `/usr/share/doc/libignition-fuel-tools1-1/copyright`)

- `Apache`
- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ignition-math4=4.0.0+dfsg1-4`

Binary Packages:

- `libignition-math4:amd64=4.0.0+dfsg1-4`

Licenses: (parsed from: `/usr/share/doc/libignition-math4/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris ignition-math4=4.0.0+dfsg1-4
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-math4/ignition-math4_4.0.0%2bdfsg1-4.dsc' ignition-math4_4.0.0+dfsg1-4.dsc 1957 SHA256:28535a35128a72bd6d9d9bb2ae4aab474c2913d901f9657478dca3da6a74e8de
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-math4/ignition-math4_4.0.0%2bdfsg1.orig.tar.bz2' ignition-math4_4.0.0+dfsg1.orig.tar.bz2 215647 SHA256:e66e02479c6227cb11f5becddca6de05913ffd2eb92282fef687fff7a9445950
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-math4/ignition-math4_4.0.0%2bdfsg1-4.debian.tar.xz' ignition-math4_4.0.0+dfsg1-4.debian.tar.xz 5256 SHA256:fc8ba9c23fe6c5a5f40c399794b19143d998452185a0c415020dfc5446e37d7c
```

### `dpkg` source package: `ignition-msgs=1.0.0+dfsg1-5`

Binary Packages:

- `libignition-msgs:amd64=1.0.0+dfsg1-5`

Licenses: (parsed from: `/usr/share/doc/libignition-msgs/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ignition-msgs=1.0.0+dfsg1-5
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-msgs/ignition-msgs_1.0.0%2bdfsg1-5.dsc' ignition-msgs_1.0.0+dfsg1-5.dsc 2061 SHA256:2b3044e53547e20a67dcd566108c544a043a5d404fda54a430de5aba3a09c710
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-msgs/ignition-msgs_1.0.0%2bdfsg1.orig.tar.bz2' ignition-msgs_1.0.0+dfsg1.orig.tar.bz2 140544 SHA256:4ea1615b8998dfb212e6adb4c368bb3194fa230033393362bc2afc57ac71f339
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-msgs/ignition-msgs_1.0.0%2bdfsg1-5.debian.tar.xz' ignition-msgs_1.0.0+dfsg1-5.debian.tar.xz 4024 SHA256:eb0643a07d40c9ccffc130ad7e50b95f60d89863aedeaa350ad903a0b0858312
```

### `dpkg` source package: `ignition-transport=4.0.0+dfsg-4`

Binary Packages:

- `libignition-transport4:amd64=4.0.0+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libignition-transport4/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris ignition-transport=4.0.0+dfsg-4
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-transport/ignition-transport_4.0.0%2bdfsg-4.dsc' ignition-transport_4.0.0+dfsg-4.dsc 2241 SHA256:86385c54f9e8dbaf92c5a34634c0e02bb6ed42c11f67a6db29fc586da4eb8e3e
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-transport/ignition-transport_4.0.0%2bdfsg.orig.tar.xz' ignition-transport_4.0.0+dfsg.orig.tar.xz 194328 SHA256:18c3104694614f80f99ff295309d771d2f0ef61718f2647f760e23965d62ef6c
'http://archive.ubuntu.com/ubuntu/pool/universe/i/ignition-transport/ignition-transport_4.0.0%2bdfsg-4.debian.tar.xz' ignition-transport_4.0.0+dfsg-4.debian.tar.xz 4752 SHA256:5b63a43a71521a9c75a85916e373657d639863bd3075d71c25daf2f2d52fe9b9
```

### `dpkg` source package: `ilmbase=2.2.0-11ubuntu2`

Binary Packages:

- `libilmbase12:amd64=2.2.0-11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.dsc' ilmbase_2.2.0-11ubuntu2.dsc 2099 SHA256:894cddbe71ecaa8be9d1a348962270882dbe6c339f65e6b702db2fa07d4c9c2d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.debian.tar.xz' ilmbase_2.2.0-11ubuntu2.debian.tar.xz 13400 SHA256:400b77a32f7a04d78ff0462f32dc1e4073f5e1225ed070c63fa6a0ec619905c5
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

### `dpkg` source package: `jackd2=1.9.12~dfsg-2`

Binary Packages:

- `libjack-jackd2-0:amd64=1.9.12~dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libjack-jackd2-0/copyright`)

- `BSD-3-clause`
- `Expat`
- `Expat~modrequest`
- `GPL-2`
- `GPL-2+`
- `GPL-2~either`
- `GPL-2~jack-audio-connection-kit`
- `GPL-2~jackd2`
- `GPL-2~or`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `None`
- `public-domain~Kroon`

Source:

```console
$ apt-get source -qq --print-uris jackd2=1.9.12~dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.12%7edfsg-2.dsc' jackd2_1.9.12~dfsg-2.dsc 2521 SHA256:7378eb1f223f0b69b8698f4a09e59c7f26632c1f2dec0452a76ea80ca5798d9a
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.12%7edfsg.orig.tar.gz' jackd2_1.9.12~dfsg.orig.tar.gz 1147874 SHA256:059741090d548d1888d34c90647e3ac1650bbee84990dceffcb5144b8f8cd539
'http://archive.ubuntu.com/ubuntu/pool/main/j/jackd2/jackd2_1.9.12%7edfsg-2.debian.tar.xz' jackd2_1.9.12~dfsg-2.debian.tar.xz 44324 SHA256:59904fbdc98a3404bd5f21af13bd24977d2e5b03600f2bb0a84127a1bc69aeb9
```

### `dpkg` source package: `jbigkit=2.1-3.1ubuntu0.18.04.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.18.04.1.dsc' jbigkit_2.1-3.1ubuntu0.18.04.1.dsc 1796 SHA512:a0d15d59529f6cbc8f5f78bf61d46951068cc241c180544b31d4b6d0d6fc94268f7ea12324f11c7fa2253db248abad0baca26f8d99089c9c837b9f61c04cb158
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.18.04.1.debian.tar.xz' jbigkit_2.1-3.1ubuntu0.18.04.1.debian.tar.xz 9816 SHA512:c9c46f32443032376c05b84b27a6f196ae7b89418e3b3c50c2bc30195f52b6f9f815ea2f375dbeea5fb1ed2c777f23f73d37283fe468f63356160043e1a021e2
```

### `dpkg` source package: `json-c=0.12.1-1.3ubuntu0.3`

Binary Packages:

- `libjson-c3:amd64=0.12.1-1.3ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libjson-c3/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris json-c=0.12.1-1.3ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.12.1-1.3ubuntu0.3.dsc' json-c_0.12.1-1.3ubuntu0.3.dsc 2219 SHA512:9a776b413bc2abab0d4f0d52f57d179dc7ba948aacd87a8a47c993bb2d7aac6084395e0f69a4c548792defab4ce2a570ea24a6e7ee5d1efe2003ad35818fc513
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.12.1.orig.tar.gz' json-c_0.12.1.orig.tar.gz 528103 SHA512:1e4e63b3a9dbd959049955a2fa548067edd394d7d7fa7a8ae86dbad3a7ed02058bc6353aefacd0cb56f3ec4bc01858c80d74a5264eb381eb4c7c15dee5fb81a6
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.12.1-1.3ubuntu0.3.debian.tar.xz' json-c_0.12.1-1.3ubuntu0.3.debian.tar.xz 9468 SHA512:1e8278a5b02be8f81ba7411ce45aed9cd5b49b3aafcff8ec2c768023dbc9ebdbad6abaa6e6999bd57a67f38c378cbba3ddcef6fd65ecdc0e5cfb0e742aa941e6
```

### `dpkg` source package: `jxrlib=1.1-6build1`

Binary Packages:

- `libjxr0:amd64=1.1-6build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris jxrlib=1.1-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1-6build1.dsc' jxrlib_1.1-6build1.dsc 2159 SHA256:b13540b10be54d8c5e0b1e6061cb688f96906d9ccb72601705c3e5ed50350da0
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1.orig.tar.gz' jxrlib_1.1.orig.tar.gz 287517 SHA256:c7287b86780befa0914f2eeb8be2ac83e672ebd4bd16dc5574a36a59d9708303
'http://archive.ubuntu.com/ubuntu/pool/universe/j/jxrlib/jxrlib_1.1-6build1.debian.tar.xz' jxrlib_1.1-6build1.debian.tar.xz 24336 SHA256:f30956b7b5f3c119067f56a0a4a740221f511a486e2692849ef217501d1e98d0
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

- `libgssapi-krb5-2:amd64=1.16-2ubuntu0.2`
- `libk5crypto3:amd64=1.16-2ubuntu0.2`
- `libkrb5-3:amd64=1.16-2ubuntu0.2`
- `libkrb5support0:amd64=1.16-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lame=3.100-2`

Binary Packages:

- `libmp3lame0:amd64=3.100-2`

Licenses: (parsed from: `/usr/share/doc/libmp3lame0/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-1+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris lame=3.100-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.100-2.dsc' lame_3.100-2.dsc 2193 SHA256:23ead7cb4e1e0dd7925e67f935d005aa2ae73b508d240420e63d87b99c5a952e
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.100.orig.tar.gz' lame_3.100.orig.tar.gz 1524133 SHA256:ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e
'http://archive.ubuntu.com/ubuntu/pool/main/l/lame/lame_3.100-2.debian.tar.xz' lame_3.100-2.debian.tar.xz 12152 SHA256:096925e4c15a9ee4e3f79451111b0ad11ea33a4ab9b74581e6f4775b7f1867e5
```

### `dpkg` source package: `lapack=3.7.1-4ubuntu1`

Binary Packages:

- `libblas3:amd64=3.7.1-4ubuntu1`
- `liblapack3:amd64=3.7.1-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.7.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.dsc' lapack_3.7.1-4ubuntu1.dsc 2920 SHA256:e33bcdea935109083a85442f1826cb4fef865c7e56fb5b38e75a08a8defc3fcd
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1.orig.tar.gz' lapack_3.7.1.orig.tar.gz 9137261 SHA256:f6c53fd9f56932f3ddb3d5e24c1c07e4cd9b3b08e7f89de9c867125eecc9a1c8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.debian.tar.xz' lapack_3.7.1-4ubuntu1.debian.tar.xz 20956 SHA256:0b981a911d7a8cde6b1addd3d823be88d29807f50c19e71e1a8a233e469c3a6d
```

### `dpkg` source package: `lcms2=2.9-1ubuntu0.1`

Binary Packages:

- `liblcms2-2:amd64=2.9-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

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

### `dpkg` source package: `libaec=0.3.2-2`

Binary Packages:

- `libaec0:amd64=0.3.2-2`
- `libsz2:amd64=0.3.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libaec=0.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2-2.dsc' libaec_0.3.2-2.dsc 1955 SHA256:bae4388d78aef50942df9bb89ed9797db508b3988685e27e8ca4d9623ba3c42a
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2.orig.tar.gz' libaec_0.3.2.orig.tar.gz 352861 SHA256:9734713c5be1e534939db61f842f4ea01ab8b01f35539429c9dad6b202955421
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libaec/libaec_0.3.2-2.debian.tar.xz' libaec_0.3.2-2.debian.tar.xz 2011524 SHA256:f2587f5208ab6ff0162f3c4c7b9720d08ba11d49bf9c4cccbcd9bdf2f96e7602
```

### `dpkg` source package: `libass=1:0.14.0-1`

Binary Packages:

- `libass9:amd64=1:0.14.0-1`

Licenses: (parsed from: `/usr/share/doc/libass9/copyright`)

- `GPL-2`
- `GPL-2+`
- `ISC`
- `other-1`

Source:

```console
$ apt-get source -qq --print-uris libass=1:0.14.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.14.0-1.dsc' libass_0.14.0-1.dsc 2129 SHA256:8944e47c22ed168f80a70e347497173b80d498ec6536cf594a5a2b7011219a6d
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.14.0.orig.tar.xz' libass_0.14.0.orig.tar.xz 356256 SHA256:881f2382af48aead75b7a0e02e65d88c5ebd369fe46bc77d9270a94aa8fd38a2
'http://archive.ubuntu.com/ubuntu/pool/universe/liba/libass/libass_0.14.0-1.debian.tar.xz' libass_0.14.0-1.debian.tar.xz 5700 SHA256:3ccc2c3bebe5f1917484f3ac6496801b0b4602dbe41efa22ef1cb372a2fc13ed
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

### `dpkg` source package: `libasyncns=0.8-6`

Binary Packages:

- `libasyncns0:amd64=0.8-6`

Licenses: (parsed from: `/usr/share/doc/libasyncns0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libasyncns=0.8-6
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8-6.dsc' libasyncns_0.8-6.dsc 1921 SHA256:d6a3cccafadceda0bd1542c6325c6238ec34a8ff85276d6f2e5914e282c67dc6
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8.orig.tar.gz' libasyncns_0.8.orig.tar.gz 341591 SHA256:4f1a66e746cbe54ff3c2fbada5843df4fbbbe7481d80be003e8d11161935ab74
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libasyncns/libasyncns_0.8-6.debian.tar.xz' libasyncns_0.8-6.debian.tar.xz 4564 SHA256:69b23a155b8a3da3bf68b1e440283e117c55e92bd3b4aa308605fe3f1164485e
```

### `dpkg` source package: `libavc1394=0.5.4-4build1`

Binary Packages:

- `libavc1394-0:amd64=0.5.4-4build1`

Licenses: (parsed from: `/usr/share/doc/libavc1394-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libavc1394=0.5.4-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4-4build1.dsc' libavc1394_0.5.4-4build1.dsc 2299 SHA256:d0266351a9e045a7ee21ab414e959c97559bbb432980729a8b7fea11c744b168
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4.orig.tar.gz' libavc1394_0.5.4.orig.tar.gz 341679 SHA256:7cb1ff09506ae911ca9860bef4af08c2403f3e131f6c913a2cbd6ddca4215b53
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libavc1394/libavc1394_0.5.4-4build1.debian.tar.xz' libavc1394_0.5.4-4build1.debian.tar.xz 6644 SHA256:3b9855f03ca3192d029875d937328a8ea193f992a1d23bd140aa5f0d5477e007
```

### `dpkg` source package: `libbluray=1:1.0.2-3`

Binary Packages:

- `libbluray2:amd64=1:1.0.2-3`

Licenses: (parsed from: `/usr/share/doc/libbluray2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.0`
- `custom`

Source:

```console
$ apt-get source -qq --print-uris libbluray=1:1.0.2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.0.2-3.dsc' libbluray_1.0.2-3.dsc 2528 SHA256:088ff7c4426cc6107d7afd928d4614b3e21ed718414ed0ef1d73c9a546f6b2e4
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.0.2.orig.tar.bz2' libbluray_1.0.2.orig.tar.bz2 733058 SHA256:6d9e7c4e416f664c330d9fa5a05ad79a3fb39b95adfc3fd6910cbed503b7aeff
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbluray/libbluray_1.0.2-3.debian.tar.xz' libbluray_1.0.2-3.debian.tar.xz 16812 SHA256:4e6e7320820e70bd7fe3d4d262b42138a8a166d44e29d9d9cf3fb6abcb029ce1
```

### `dpkg` source package: `libbs2b=3.1.0+dfsg-2.2`

Binary Packages:

- `libbs2b0:amd64=3.1.0+dfsg-2.2`

Licenses: (parsed from: `/usr/share/doc/libbs2b0/copyright`)

- `FSF-unlimited`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `MIT+FSF-public`

Source:

```console
$ apt-get source -qq --print-uris libbs2b=3.1.0+dfsg-2.2
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg-2.2.dsc' libbs2b_3.1.0+dfsg-2.2.dsc 1939 SHA256:a5fa01cf653b4161bb8595509be5ee91d1f47b8a9ff2b8c98b7fdd60b290e643
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg.orig.tar.gz' libbs2b_3.1.0+dfsg.orig.tar.gz 330675 SHA256:c23faf614f787342c1a1a40f83064f2e5a49391733c029dc31d09fba759cee0a
'http://archive.ubuntu.com/ubuntu/pool/universe/libb/libbs2b/libbs2b_3.1.0%2bdfsg-2.2.debian.tar.xz' libbs2b_3.1.0+dfsg-2.2.debian.tar.xz 4632 SHA256:37d7d8da3d0ab030ca49944e98c83b4ae8a4463d3a70c301af79da20e05b0440
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

### `dpkg` source package: `libcaca=0.99.beta19-2ubuntu0.18.04.3`

Binary Packages:

- `libcaca0:amd64=0.99.beta19-2ubuntu0.18.04.3`

Licenses: (parsed from: `/usr/share/doc/libcaca0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcaca=0.99.beta19-2ubuntu0.18.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19-2ubuntu0.18.04.3.dsc' libcaca_0.99.beta19-2ubuntu0.18.04.3.dsc 2355 SHA512:0e669ac3e8c9291577853cc03252c33a39496ce22e2d4a9a2a804a80a2db82b3e883ad0e20814b971e2f0c1e6cdc3895e15a6830270aa85cf378b57873967148
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19.orig.tar.gz' libcaca_0.99.beta19.orig.tar.gz 1203495 SHA512:780fc7684d40207cc10df3f87d6d8f1d47ddfffa0e76e41a5ce671b82d5c7f090facb054c3d49ca7c4ea1a619625bb9085ce52f837f50792b4a2d776a4c68e15
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcaca/libcaca_0.99.beta19-2ubuntu0.18.04.3.debian.tar.xz' libcaca_0.99.beta19-2ubuntu0.18.04.3.debian.tar.xz 15964 SHA512:911a5ed3e0fb72f9be999723b54ec8b130a7ac50009b4bd7fbf786488ff4fec3f862f08b718e2fd0fee7c771b1a5a607a6d555baf108ef65dc4688dbe9a1ddcd
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

### `dpkg` source package: `libcdio-paranoia=10.2+0.94+2-2build1`

Binary Packages:

- `libcdio-cdda2:amd64=10.2+0.94+2-2build1`
- `libcdio-paranoia2:amd64=10.2+0.94+2-2build1`

Licenses: (parsed from: `/usr/share/doc/libcdio-cdda2/copyright`, `/usr/share/doc/libcdio-paranoia2/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libcdio-paranoia=10.2+0.94+2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio-paranoia/libcdio-paranoia_10.2%2b0.94%2b2-2build1.dsc' libcdio-paranoia_10.2+0.94+2-2build1.dsc 2287 SHA256:dcdec7f773cae87bc54a242fc5ad8b1134973b728a10afb79e27d0c12451b21f
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio-paranoia/libcdio-paranoia_10.2%2b0.94%2b2.orig.tar.gz' libcdio-paranoia_10.2+0.94+2.orig.tar.gz 704560 SHA256:d60f82ece97eeb92407a9ee03f3499c8983206672c28ae5e4e22179063c81941
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio-paranoia/libcdio-paranoia_10.2%2b0.94%2b2-2build1.debian.tar.xz' libcdio-paranoia_10.2+0.94+2-2build1.debian.tar.xz 8044 SHA256:22d0b91598f80376cb026536380dd594fe8e22c4b3f53cc6551aba50eac59e19
```

### `dpkg` source package: `libcdio=1.0.0-2ubuntu2`

Binary Packages:

- `libcdio17:amd64=1.0.0-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcdio17/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libcdio=1.0.0-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_1.0.0-2ubuntu2.dsc' libcdio_1.0.0-2ubuntu2.dsc 2298 SHA256:e5ba26fe1f3918897c926535c01189f176a9260f3b1fffff51c4589075acb19e
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_1.0.0.orig.tar.gz' libcdio_1.0.0.orig.tar.gz 2343992 SHA256:fe080bc3cb7a57becdecf2b392bf39c24df0211f5fdfddfe99748fa052a7e231
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcdio/libcdio_1.0.0-2ubuntu2.debian.tar.xz' libcdio_1.0.0-2ubuntu2.debian.tar.xz 12376 SHA256:b48ec937ddaa6cd188e9578dd39a231150e72bd41037450550b9e7140766e674
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

### `dpkg` source package: `libdap=3.19.1-2build1`

Binary Packages:

- `libdap25:amd64=3.19.1-2build1`
- `libdapclient6v5:amd64=3.19.1-2build1`

Licenses: (parsed from: `/usr/share/doc/libdap25/copyright`, `/usr/share/doc/libdapclient6v5/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `URI`
- `W3C`

Source:

```console
$ apt-get source -qq --print-uris libdap=3.19.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.19.1-2build1.dsc' libdap_3.19.1-2build1.dsc 2345 SHA256:4e4960e6f9f8cb61467caefbc14635455382757a451dd13245867719f48cded4
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.19.1.orig.tar.xz' libdap_3.19.1.orig.tar.xz 1453864 SHA256:d50b8002a5e85080cac494998867adf85837a8aedfd7122012bb6886a6f9a9a0
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdap/libdap_3.19.1-2build1.debian.tar.xz' libdap_3.19.1-2build1.debian.tar.xz 13404 SHA256:f1fad27ebcf29ccf0ca6374d1ab9b6ea2fe6e887f8152f661b36f46451a4f4ec
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

### `dpkg` source package: `libdc1394-22=2.2.5-1`

Binary Packages:

- `libdc1394-22:amd64=2.2.5-1`

Licenses: (parsed from: `/usr/share/doc/libdc1394-22/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libdc1394-22=2.2.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.5-1.dsc' libdc1394-22_2.2.5-1.dsc 2244 SHA256:210d37ef0e48144be2c46bb547d563ac1a67fa1ec8c893461100de8c971ad006
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.5.orig.tar.gz' libdc1394-22_2.2.5.orig.tar.gz 611918 SHA256:350cc8d08aee5ffc4e1f3049e2e1c2bc6660642d424595157da97ab5b1263337
'http://archive.ubuntu.com/ubuntu/pool/universe/libd/libdc1394-22/libdc1394-22_2.2.5-1.debian.tar.xz' libdc1394-22_2.2.5-1.debian.tar.xz 8244 SHA256:895eeea4458059ae65a879a7d1c625508b854eb5f3d472192b94bd5ba281e316
```

### `dpkg` source package: `libdrm=2.4.101-2~18.04.1`

Binary Packages:

- `libdrm-amdgpu1:amd64=2.4.101-2~18.04.1`
- `libdrm-common=2.4.101-2~18.04.1`
- `libdrm-intel1:amd64=2.4.101-2~18.04.1`
- `libdrm-nouveau2:amd64=2.4.101-2~18.04.1`
- `libdrm-radeon1:amd64=2.4.101-2~18.04.1`
- `libdrm2:amd64=2.4.101-2~18.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libdrm=2.4.101-2~18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.101-2%7e18.04.1.dsc' libdrm_2.4.101-2~18.04.1.dsc 3297 SHA512:96d96d552b439a04502e8b32a0d27d02cb1f72cdc6245f9c88c4a114bef74a1629fc1c96ff7888e36a88721154a6ce94920e4b1a5d07504379346936d900c702
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.101.orig.tar.xz' libdrm_2.4.101.orig.tar.xz 408856 SHA512:658cfc6f478b674b77b4613e1af9ce8f4fd2ace8a18e75729de254d14b7c1f5d67d4bfdb58744aea74abca0f6521326225f4156bd5cbeeed79ca3e025f657e8c
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.101.orig.tar.xz.asc' libdrm_2.4.101.orig.tar.xz.asc 833 SHA512:7c3897cb19de52e3a3d259e07993bc2e9699751497b4e3abd1b604a2eb8a5ffaa29cae61f92d2415befa34811e9f91189366b354dac9ab1e93c8a90a367860c2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.101-2%7e18.04.1.debian.tar.xz' libdrm_2.4.101-2~18.04.1.debian.tar.xz 54212 SHA512:96d7085a73abfcda2997c45e833026e98f1eeb586ed546336aca8a19862d7b7b019f8e64bb6185c6d7b6f27f1cdf9d80e8c939298b4526243c27fcd62116d590
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

### `dpkg` source package: `libepsilon=0.9.2+dfsg-2`

Binary Packages:

- `libepsilon1:amd64=0.9.2+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libepsilon1/copyright`)

- `BSD-3-Clause`
- `BSD-3-Clause `
- `GPL-3`
- `GPL-3+`
- `GPL-3+ `
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libepsilon=0.9.2+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2%2bdfsg-2.dsc' libepsilon_0.9.2+dfsg-2.dsc 2231 SHA256:2c5bb58cb9c98c04fa8e80afd176414395d63b9c767ae1508468d11b09d88515
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2%2bdfsg.orig.tar.gz' libepsilon_0.9.2+dfsg.orig.tar.gz 2395551 SHA256:684f77097c96862571e8c5da7acfe030bb597878153bf7d56672cb93ebd83c86
'http://archive.ubuntu.com/ubuntu/pool/universe/libe/libepsilon/libepsilon_0.9.2%2bdfsg-2.debian.tar.xz' libepsilon_0.9.2+dfsg-2.debian.tar.xz 6912 SHA256:216d6a081950b15bbcaed0dd67ce64e595d6b6799492c4d4d04a042848e7aac7
```

### `dpkg` source package: `libevdev=1.5.8+dfsg-1ubuntu0.2`

Binary Packages:

- `libevdev2:amd64=1.5.8+dfsg-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libevdev2/copyright`)

- `GPL-2`
- `GPL-2+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libevdev=1.5.8+dfsg-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.5.8%2bdfsg-1ubuntu0.2.dsc' libevdev_1.5.8+dfsg-1ubuntu0.2.dsc 2039 SHA512:2b346be200535e42ce5411552b68fab2d443ba75b6ba0cdabc432b1881dda6b4dd6378609c08eda1a278390f085c034b82b7be5a81878f3c6edf65ed77c34398
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.5.8%2bdfsg.orig.tar.xz' libevdev_1.5.8+dfsg.orig.tar.xz 304700 SHA512:800412afd607035491054bfa482e309fe91439b2dd8e31e12f73da8358e43ff1bc38909d4358e1c81e096896e96132e26f756df5f2833c168c7e15cf265cc161
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevdev/libevdev_1.5.8%2bdfsg-1ubuntu0.2.debian.tar.xz' libevdev_1.5.8+dfsg-1ubuntu0.2.debian.tar.xz 11552 SHA512:83874f053c8643f80a1af64659f29f9f2a5349264b3ea4ae5b4f231ae453b090a4cf39646120acaee2fa1d17e70329fd24eab9f06b694271f7369e981c5a5a48
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

### `dpkg` source package: `libgeotiff-dfsg=1.4.2-2build1`

Binary Packages:

- `libgeotiff2:amd64=1.4.2-2build1`

Licenses: (parsed from: `/usr/share/doc/libgeotiff2/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `HPND-sl-sgi`
- `MIT`
- `attribution`
- `fsf-doc-unlimited`
- `fsf-makefile-unlimited`
- `fsf-unlimited`
- `install-sh`

Source:

```console
$ apt-get source -qq --print-uris libgeotiff-dfsg=1.4.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff-dfsg/libgeotiff-dfsg_1.4.2-2build1.dsc' libgeotiff-dfsg_1.4.2-2build1.dsc 2322 SHA256:351127612a3dc150515f752203b2221beac61a489f9ac64c41ced3543e1d5f50
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff-dfsg/libgeotiff-dfsg_1.4.2.orig.tar.gz' libgeotiff-dfsg_1.4.2.orig.tar.gz 531810 SHA256:2fd9896d2c07d559aa3bc63ac8c3db7489a754d3cc876086b0b988f1b34b46b9
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgeotiff-dfsg/libgeotiff-dfsg_1.4.2-2build1.debian.tar.xz' libgeotiff-dfsg_1.4.2-2build1.debian.tar.xz 10004 SHA256:9e0fa4e03407003b0ed006503146f26bde0136b2d3a090071eae35e121cb1068
```

### `dpkg` source package: `libglu=9.0.0-2.1build1`

Binary Packages:

- `libglu1-mesa:amd64=9.0.0-2.1build1`

Licenses: (parsed from: `/usr/share/doc/libglu1-mesa/copyright`)

- `GPL-2`
- `LGPL-2`
- `SGI-1.1`
- `SGI-2`

Source:

```console
$ apt-get source -qq --print-uris libglu=9.0.0-2.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0-2.1build1.dsc' libglu_9.0.0-2.1build1.dsc 1938 SHA256:8b6749edcf95fe948f0d044ea2c99ab040962c3fad737ba4d6e760e9e945cd6b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0.orig.tar.gz' libglu_9.0.0.orig.tar.gz 626786 SHA256:4387476a1933f36fec1531178ea204057bbeb04cc2d8396c9ea32720a1f7e264
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglu/libglu_9.0.0-2.1build1.diff.gz' libglu_9.0.0-2.1build1.diff.gz 14740 SHA256:823038bcb4418ae2756d2bbd4c9b9a90d2997806ebcfe6460cffa688cf1b8ede
```

### `dpkg` source package: `libglvnd=1.0.0-2ubuntu2.3`

Binary Packages:

- `libegl1:amd64=1.0.0-2ubuntu2.3`
- `libgl1:amd64=1.0.0-2ubuntu2.3`
- `libglvnd0:amd64=1.0.0-2ubuntu2.3`
- `libglx0:amd64=1.0.0-2ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libegl1/copyright`, `/usr/share/doc/libgl1/copyright`, `/usr/share/doc/libglvnd0/copyright`, `/usr/share/doc/libglx0/copyright`)

- `BSD-1-clause`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libglvnd=1.0.0-2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.0.0-2ubuntu2.3.dsc' libglvnd_1.0.0-2ubuntu2.3.dsc 2435 SHA512:4e8575554e8af5ea69f536531bf7d99678471609945e0500728f192750cb1cd21b08d12bafa81c8c8885c0c5fe15d612ac26416a4df9638974582966c33bfa63
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.0.0.orig.tar.gz' libglvnd_1.0.0.orig.tar.gz 795552 SHA512:c6040b0a508a6b74d7113f8e375fcaf93ec6f2875504953f30e2882e58e22f954bd4027a7d9ab8ac41abef266039e5834fdaf4ce2a69d5d98acf3bbdd54f04b6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libglvnd/libglvnd_1.0.0-2ubuntu2.3.debian.tar.xz' libglvnd_1.0.0-2ubuntu2.3.debian.tar.xz 21704 SHA512:08fb273e6a3a82700f86348a1bf0f57d78db7565c9da8417fbb8626529c48eb8d259cbaedebae97ba91cbfb4b151200b04f791b556b69af8551a0fab3e4e5898
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

### `dpkg` source package: `libgsm=1.0.13-4build1`

Binary Packages:

- `libgsm1:amd64=1.0.13-4build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libgsm=1.0.13-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13-4build1.dsc' libgsm_1.0.13-4build1.dsc 1946 SHA256:c840f9b7c515ca615934fd2a203f099d63c179b0a6579e0b6b795988aa83b48c
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13.orig.tar.gz' libgsm_1.0.13.orig.tar.gz 65318 SHA256:52c518244d428c2e56c543b98c9135f4a76ff780c32455580b793f60a0a092ad
'http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgsm/libgsm_1.0.13-4build1.debian.tar.xz' libgsm_1.0.13-4build1.debian.tar.xz 9544 SHA256:d8a2d41e8990d70f742b269bcbe55eb7903a9b71501779e996abc9cc82c84020
```

### `dpkg` source package: `libgudev=232-2`

Binary Packages:

- `libgudev-1.0-0:amd64=1:232-2`

Licenses: (parsed from: `/usr/share/doc/libgudev-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libgudev=232-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_232-2.dsc' libgudev_232-2.dsc 2305 SHA256:32a8bb891c441019d8fd0af123047ada6df1c42d0bc0363d88a6c8459f4ddd74
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_232.orig.tar.xz' libgudev_232.orig.tar.xz 270904 SHA256:ee4cb2b9c573cdf354f6ed744f01b111d4b5bed3503ffa956cefff50489c7860
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgudev/libgudev_232-2.debian.tar.xz' libgudev_232-2.debian.tar.xz 4556 SHA256:aa5e8df923bf2c78ba260b9bbb560a41f2d1528b83585379aa9965b4b8c98113
```

### `dpkg` source package: `libhdf4=4.2.13-2`

Binary Packages:

- `libhdf4-0-alt=4.2.13-2`

Licenses: (parsed from: `/usr/share/doc/libhdf4-0-alt/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Bison exception`
- `GPL-2+ with Libtool exception`
- `HDF4`
- `NetCDF`

Source:

```console
$ apt-get source -qq --print-uris libhdf4=4.2.13-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.2.13-2.dsc' libhdf4_4.2.13-2.dsc 2385 SHA256:87704462363eff85c7dd16dc869e41744bed0ecb1be66f148726662a41ec4a8f
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.2.13.orig.tar.bz2' libhdf4_4.2.13.orig.tar.bz2 3616255 SHA256:55d3a42313bda0aba7b0463687caf819a970e0ba206f5ed2c23724f80d2ae0f3
'http://archive.ubuntu.com/ubuntu/pool/universe/libh/libhdf4/libhdf4_4.2.13-2.debian.tar.xz' libhdf4_4.2.13-2.debian.tar.xz 72988 SHA256:410d70e6848e6e2b8c20e768956f53e677d8db3d6b0473ef04cb602d0613d86d
```

### `dpkg` source package: `libice=2:1.0.9-2ubuntu0.18.04.1`

Binary Packages:

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

### `dpkg` source package: `libiec61883=1.2.0-2`

Binary Packages:

- `libiec61883-0:amd64=1.2.0-2`

Licenses: (parsed from: `/usr/share/doc/libiec61883-0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libiec61883=1.2.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0-2.dsc' libiec61883_1.2.0-2.dsc 1928 SHA256:1137ced1712a1e805379c97df8e06ca5287fc8f951414d9aa85ed7ef6e4a09ce
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0.orig.tar.gz' libiec61883_1.2.0.orig.tar.gz 339064 SHA256:7c7879c6b9add3148baea697dfbfdcefffbc8ac74e8e6bcf46125ec1d21b373a
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libiec61883/libiec61883_1.2.0-2.debian.tar.xz' libiec61883_1.2.0-2.debian.tar.xz 14708 SHA256:f913b26d2724871dbf617e5af9e6c15d5e4ab6404648b3fce810d70cf39c104f
```

### `dpkg` source package: `libinput=1.10.4-1ubuntu0.18.04.3`

Binary Packages:

- `libinput-bin=1.10.4-1ubuntu0.18.04.3`
- `libinput10:amd64=1.10.4-1ubuntu0.18.04.3`

Licenses: (parsed from: `/usr/share/doc/libinput-bin/copyright`, `/usr/share/doc/libinput10/copyright`)

- `Expat`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libinput=1.10.4-1ubuntu0.18.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.10.4-1ubuntu0.18.04.3.dsc' libinput_1.10.4-1ubuntu0.18.04.3.dsc 2426 SHA512:bb603d1c39bd082e271ca2347035f0616d617d02a162621e0f0c01299472132162a03815702b23a1d126e55bb6a36272e4d6429adfebcdb1c74d4a5ecb87c18d
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.10.4.orig.tar.xz' libinput_1.10.4.orig.tar.xz 493152 SHA512:b6f24f135e2396d53c0576a3b3887cd3736f2209fc448c6419cd1f1d7ee6aedff8e067f4b780f50ada5a4418d5bc47a4010cb328f366ee7fd1a2dba1ffc96c38
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.10.4.orig.tar.xz.asc' libinput_1.10.4.orig.tar.xz.asc 241 SHA512:6d36abc31fcbb0892e694159a42905576bdb9e818f57ca7845ad3015a6fa9db80afbd0e98034a13eabcef67b5fe0ed705830db6f9805900c9f86a1e986daad17
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libinput/libinput_1.10.4-1ubuntu0.18.04.3.debian.tar.xz' libinput_1.10.4-1ubuntu0.18.04.3.debian.tar.xz 12672 SHA512:6cef510f9b8797d06364266c937ee514abf60d5d7d014d333a84489a18f65ede18103de5efa68e88a868f08f8c9f8fc9eba2934292f4d5574ef5ca6caf2db4f0
```

### `dpkg` source package: `libjpeg-turbo=1.5.2-0ubuntu5.18.04.6`

Binary Packages:

- `libjpeg-turbo8:amd64=1.5.2-0ubuntu5.18.04.6`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`)

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

- `libjpeg8:amd64=8c-2ubuntu8`

Licenses: (parsed from: `/usr/share/doc/libjpeg8/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.dsc' libjpeg8-empty_8c-2ubuntu8.dsc 1637 SHA256:e7f575dcb3e0d462513b6f928179baa0ff1d145273934b1041b714515096b407
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.tar.gz' libjpeg8-empty_8c-2ubuntu8.tar.gz 1770 SHA256:48a4227e9fc70851a4f304b10624e02875bf6f4e2debfcbe4ba0dd85a3ec05c6
```

### `dpkg` source package: `libjsoncpp=1.7.4-3`

Binary Packages:

- `libjsoncpp1:amd64=1.7.4-3`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp1/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.7.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.dsc' libjsoncpp_1.7.4-3.dsc 2137 SHA256:8f8d17cb824b288e140988e489b953f7ca084b094a06cc39867a4af1faf1f421
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4.orig.tar.gz' libjsoncpp_1.7.4.orig.tar.gz 205752 SHA256:10dcd0677e80727e572a1e462193e51a5fde3e023b99e144b2ee1a469835f769
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.debian.tar.xz' libjsoncpp_1.7.4-3.debian.tar.xz 7828 SHA256:4d99ab057737a02512e75404315ee0b723823f6caed4401c25e46925c4c8857e
```

### `dpkg` source package: `libkml=1.3.0-5`

Binary Packages:

- `libkmlbase1:amd64=1.3.0-5`
- `libkmldom1:amd64=1.3.0-5`
- `libkmlengine1:amd64=1.3.0-5`

Licenses: (parsed from: `/usr/share/doc/libkmlbase1/copyright`, `/usr/share/doc/libkmldom1/copyright`, `/usr/share/doc/libkmlengine1/copyright`)

- `BSD-3-Clause`
- `GPL-3`
- `GPL-3+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libkml=1.3.0-5
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-5.dsc' libkml_1.3.0-5.dsc 2660 SHA256:3a0d2867d9c47fa51027576693ce48163c91f8ac15d1825c9d090e363d7b53a8
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0.orig.tar.gz' libkml_1.3.0.orig.tar.gz 6639857 SHA256:8892439e5570091965aaffe30b08631fdf7ca7f81f6495b4648f0950d7ea7963
'http://archive.ubuntu.com/ubuntu/pool/universe/libk/libkml/libkml_1.3.0-5.debian.tar.xz' libkml_1.3.0-5.debian.tar.xz 24536 SHA256:ab48120e1c5fe948b9099f2d2ca0765f5f17ffcf57f3f10a668caa6db70668df
```

### `dpkg` source package: `libksba=1.3.5-2ubuntu0.18.04.1`

Binary Packages:

- `libksba8:amd64=1.3.5-2ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libmysofa=0.6~dfsg0-3+deb10u1build1`

Binary Packages:

- `libmysofa0:amd64=0.6~dfsg0-3+deb10u1build1`

Licenses: (parsed from: `/usr/share/doc/libmysofa0/copyright`)

- `BSD-3-clause`
- `CC-BY-4.0`
- `CC-BY-SA-3.0`
- `cipic`
- `listen-ircam`
- `mit-kemar`

Source:

```console
$ apt-get source -qq --print-uris libmysofa=0.6~dfsg0-3+deb10u1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmysofa/libmysofa_0.6%7edfsg0-3%2bdeb10u1build1.dsc' libmysofa_0.6~dfsg0-3+deb10u1build1.dsc 2297 SHA512:f719325643634a17c95f408608567d35fb6f88280ee9bc0b00f698fe3c3e4745b8ec1be814e49874b9b113a78ab87b746df79fd6b3a7f310f23f0b931e7ab1b9
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmysofa/libmysofa_0.6%7edfsg0.orig.tar.gz' libmysofa_0.6~dfsg0.orig.tar.gz 13540940 SHA512:3319e997d1931f832bd1b78759db887f622faa90af98dd20524d653fe0b5a514bce211addb0bc611204dc592f652932dbb804e83bc42f39560818dc74a25916b
'http://archive.ubuntu.com/ubuntu/pool/universe/libm/libmysofa/libmysofa_0.6%7edfsg0-3%2bdeb10u1build1.debian.tar.xz' libmysofa_0.6~dfsg0-3+deb10u1build1.debian.tar.xz 18316 SHA512:af8f4aa9c4eb5783a2b8d69b0f07465f020284fa26838f003ff70a637265ecfe92a68adb0de88405f0f155badf8cb8f8f027aa968168d3b2c41cd47838e0c71b
```

### `dpkg` source package: `libogg=1.3.2-1`

Binary Packages:

- `libogg0:amd64=1.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libogg=1.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2-1.dsc' libogg_1.3.2-1.dsc 1230 SHA256:dacc2059f8f92d1f6b18805432f2f40ac45fb9d52a1a61f14dc8c7c6a1aecb58
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2.orig.tar.gz' libogg_1.3.2.orig.tar.gz 557232 SHA256:bf253517df60ef1e6f5ae328bac7477595465de30638818948574e05f502dfa3
'http://archive.ubuntu.com/ubuntu/pool/main/libo/libogg/libogg_1.3.2-1.diff.gz' libogg_1.3.2-1.diff.gz 6824 SHA256:9bee2f473a5ed92f1c744105447f15fe38feea8935e740a9eea2d840fa2d15c7
```

### `dpkg` source package: `libopenmpt=0.3.6-1`

Binary Packages:

- `libopenmpt0:amd64=0.3.6-1`

Licenses: (parsed from: `/usr/share/doc/libopenmpt0/copyright`)

- `BSD-3-clause`
- `GNU-All-Permissive-License`
- `GNU-All-Permissive-License-FSF`
- `GPL-2`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with LibTool exception`
- `GPL-3`
- `GPL-3+ with AutoConf exception`
- `GPL-3+ with Autoconf Macros exception`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris libopenmpt=0.3.6-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.3.6-1.dsc' libopenmpt_0.3.6-1.dsc 2589 SHA256:3e9131101540793a44323aef4bc146dccd608ace202245b0032552c098f64da6
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.3.6.orig.tar.gz' libopenmpt_0.3.6.orig.tar.gz 1409983 SHA256:0a49e4770c9c7778cd6544ad559bff873ec905c4a3ba6521f6bf192b1c0b34d2
'http://archive.ubuntu.com/ubuntu/pool/universe/libo/libopenmpt/libopenmpt_0.3.6-1.debian.tar.xz' libopenmpt_0.3.6-1.debian.tar.xz 12336 SHA256:74d9634433a10c335be3ce612657dc4bc0bf26647e1f521edd0c0e7dde27821c
```

### `dpkg` source package: `libpciaccess=0.14-1`

Binary Packages:

- `libpciaccess0:amd64=0.14-1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.dsc' libpciaccess_0.14-1.dsc 2062 SHA256:1cbfd426e4efcc958b6c9fd4889877b533035175370fa0505f361b89e1aeaa4f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14.orig.tar.gz' libpciaccess_0.14.orig.tar.gz 461764 SHA256:8d86e64893917be3dfb1c5e837888d1275399c818783474002203d751312b03c
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.diff.gz' libpciaccess_0.14-1.diff.gz 25039 SHA256:fea9483fbfb202040a8e5eef3ec3b434b3e897f301e735753568db2106e1512d
```

### `dpkg` source package: `libpgm=5.2.122~dfsg-2`

Binary Packages:

- `libpgm-5.2-0:amd64=5.2.122~dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libpgm-5.2-0/copyright`)

- `BSD-3-clause`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libpgm=5.2.122~dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.2.122%7edfsg-2.dsc' libpgm_5.2.122~dfsg-2.dsc 1870 SHA256:2d6eb667fd66046c4c35215068cfa562decd8d0838ec864a35796cdad354fc49
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.2.122%7edfsg.orig.tar.xz' libpgm_5.2.122~dfsg.orig.tar.xz 550996 SHA256:d6e5ec0918216d4e9b14459f5742f6f8416df965f03ac4d854bd5d111709b507
'http://archive.ubuntu.com/ubuntu/pool/universe/libp/libpgm/libpgm_5.2.122%7edfsg-2.debian.tar.xz' libpgm_5.2.122~dfsg-2.debian.tar.xz 6568 SHA256:5f02e1055a199f545d99f4f709330abe5e31c7073a3cb2ed737a4fbb5b7d2857
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

### `dpkg` source package: `libraw1394=2.1.2-1`

Binary Packages:

- `libraw1394-11:amd64=2.1.2-1`

Licenses: (parsed from: `/usr/share/doc/libraw1394-11/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libraw1394=2.1.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2-1.dsc' libraw1394_2.1.2-1.dsc 2080 SHA256:d8b7cb13f4a73fa0dae8d61d5b4ded82b3f02d6b3584ac77c671432d250988f4
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2.orig.tar.gz' libraw1394_2.1.2.orig.tar.gz 458134 SHA256:ddc4e32721cdfe680d964aaede68ac606a20cd17dd2ba70e2d7e0692086ab57c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw1394/libraw1394_2.1.2-1.debian.tar.xz' libraw1394_2.1.2-1.debian.tar.xz 8760 SHA256:5cee0e0049d820a8e4e5d3dbd94fb2c3d7b782ec09134c6c714ed523829dc1c3
```

### `dpkg` source package: `libraw=0.18.8-1ubuntu0.4`

Binary Packages:

- `libraw16:amd64=0.18.8-1ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libraw16/copyright`)

- `BSD-3-clause`
- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `dcraw`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.18.8-1ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.18.8-1ubuntu0.4.dsc' libraw_0.18.8-1ubuntu0.4.dsc 2294 SHA512:0d5d65c3166b168b9f1eb2791f7c42a3ba2303142674804debdde58a2fae6d2b7b7b090f8d25bd0f052d689f0aa68d3cf797fe86c36e7133012211abe42d0804
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.18.8.orig.tar.gz' libraw_0.18.8.orig.tar.gz 519442 SHA512:481373763751adf2055fc7e26de7608e7a609c672b20753635ba2337245dbfb9bf5c3cae9406df21fc90dadaf9cc7193fb4ee5de28b53eca0f3eefe21bed728b
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.18.8-1ubuntu0.4.debian.tar.xz' libraw_0.18.8-1ubuntu0.4.debian.tar.xz 30080 SHA512:0e1d2c640bb623e8c2810c91d3e173148c4073c0fbb0a711e0019d595424e98b6b0ddabaabd958c65eededc3bdd278fb2255a65bbbfb9cf135837762a8e6dda5
```

### `dpkg` source package: `librsvg=2.40.20-2ubuntu0.2`

Binary Packages:

- `librsvg2-2:amd64=2.40.20-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/librsvg2-2/copyright`)

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

### `dpkg` source package: `libsamplerate=0.1.9-1`

Binary Packages:

- `libsamplerate0:amd64=0.1.9-1`

Licenses: (parsed from: `/usr/share/doc/libsamplerate0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libsamplerate=0.1.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.9-1.dsc' libsamplerate_0.1.9-1.dsc 2039 SHA256:4a7460c6b0f1e0387e6106dfc57957ecf803550d60c4658316cfa0f81b720455
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.9.orig.tar.gz' libsamplerate_0.1.9.orig.tar.gz 4336641 SHA256:0a7eb168e2f21353fb6d84da152e4512126f7dc48ccb0be80578c565413444c1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsamplerate/libsamplerate_0.1.9-1.debian.tar.xz' libsamplerate_0.1.9-1.debian.tar.xz 7424 SHA256:71ed7abb72b70fe3654e48fbbd4c338bd525f2a03dc3bdfed6682540d660720c
```

### `dpkg` source package: `libsdl2=2.0.8+dfsg1-1ubuntu1.18.04.4`

Binary Packages:

- `libsdl2-2.0-0:amd64=2.0.8+dfsg1-1ubuntu1.18.04.4`

Licenses: (parsed from: `/usr/share/doc/libsdl2-2.0-0/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-chromium`
- `BrownUn_UnCalifornia_ErikCorry`
- `Expat-like`
- `Gareth_McCaughan`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT/X11`
- `PublicDomain_David_Ludwig`
- `PublicDomain_Edgar_Simo`
- `PublicDomain_Sam_Lantinga`
- `RSA_Data_Security`
- `SGI-Free-Software-License-B`
- `SunPro`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris libsdl2=2.0.8+dfsg1-1ubuntu1.18.04.4
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsdl2/libsdl2_2.0.8%2bdfsg1-1ubuntu1.18.04.4.dsc' libsdl2_2.0.8+dfsg1-1ubuntu1.18.04.4.dsc 2561 SHA512:a65bff7f5906d434148bc1c96a030d639cf56a7b75e7b1db0c0f9c86d04afdb3bd3d7cd98c244900b59ff984c7bfe822fc672f58afcfd0924feb44ea37b418d1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsdl2/libsdl2_2.0.8%2bdfsg1.orig.tar.gz' libsdl2_2.0.8+dfsg1.orig.tar.gz 3269839 SHA512:46dbdc722cef472376b06400ddc8091fc639682a3d8e926bb1e19adc92f694cce5202a462438a7d4106f11b2951edc962ed6b0632aac64bacb714a3849c74ac9
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsdl2/libsdl2_2.0.8%2bdfsg1-1ubuntu1.18.04.4.debian.tar.xz' libsdl2_2.0.8+dfsg1-1ubuntu1.18.04.4.debian.tar.xz 18712 SHA512:794d8f79d81207070427b96d54ec0169d514a0f46a463c63b48025ceb7ba5b4e3ff7a2a022bbcec1e4c9b67876945c73f99554a0a8f5140c53a8fc058676b415
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

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

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

### `dpkg` source package: `libsndfile=1.0.28-4ubuntu0.18.04.2`

Binary Packages:

- `libsndfile1:amd64=1.0.28-4ubuntu0.18.04.2`

Licenses: (parsed from: `/usr/share/doc/libsndfile1/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `FSFAP`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `gsm`
- `sun`

Source:

```console
$ apt-get source -qq --print-uris libsndfile=1.0.28-4ubuntu0.18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.28-4ubuntu0.18.04.2.dsc' libsndfile_1.0.28-4ubuntu0.18.04.2.dsc 2056 SHA512:d6e63397110c03d2b4fabf0d679a446cbfc78e67349f4d86ed7c8fcfe4a7f08f06b03d99e873b1f3a4ca4b22d9025d61e5aab2770b986ac3c55b21a2639f3ebd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.28.orig.tar.gz' libsndfile_1.0.28.orig.tar.gz 1202833 SHA512:890731a6b8173f714155ce05eaf6d991b31632c8ab207fbae860968861a107552df26fcf85602df2e7f65502c7256c1b41735e1122485a3a07ddb580aa83b57f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsndfile/libsndfile_1.0.28-4ubuntu0.18.04.2.debian.tar.xz' libsndfile_1.0.28-4ubuntu0.18.04.2.debian.tar.xz 16356 SHA512:c162404618010141592b29570ee1e11d32dc68eee790e9f608fd50259caba4fa108431664ac316ce8af5ccc13faa6efac2de3b34eb5d3d5a2b259c9bcf063699
```

### `dpkg` source package: `libsodium=1.0.16-2`

Binary Packages:

- `libsodium23:amd64=1.0.16-2`

Licenses: (parsed from: `/usr/share/doc/libsodium23/copyright`)

- `BSD-2-clause`
- `CC0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libsodium=1.0.16-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.16-2.dsc' libsodium_1.0.16-2.dsc 1912 SHA256:5638da6c305cc462a8faef697621bb56d9f90aa2dd01d13dcc73112b3b9ce6de
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.16.orig.tar.gz' libsodium_1.0.16.orig.tar.gz 1571140 SHA256:0c14604bbeab2e82a803215d65c3b6e74bb28291aaee6236d65c699ccfe1a98c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsodium/libsodium_1.0.16-2.debian.tar.xz' libsodium_1.0.16-2.debian.tar.xz 7152 SHA256:76868d50f33869161131b19efa03ea8683f7c38146243fbbf9ad1fd678ccd48a
```

### `dpkg` source package: `libsoxr=0.1.2-3`

Binary Packages:

- `libsoxr0:amd64=0.1.2-3`

Licenses: (parsed from: `/usr/share/doc/libsoxr0/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Spherepack`
- `permissive1`
- `permissive2`

Source:

```console
$ apt-get source -qq --print-uris libsoxr=0.1.2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2-3.dsc' libsoxr_0.1.2-3.dsc 2170 SHA256:7f6133cee147b7c7d819c6de78541ebedd97cc79a2b66451421d8bea8a9a9d5b
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2.orig.tar.xz' libsoxr_0.1.2.orig.tar.xz 83760 SHA256:54e6f434f1c491388cd92f0e3c47f1ade082cc24327bdc43762f7d1eefe0c275
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libsoxr/libsoxr_0.1.2-3.debian.tar.xz' libsoxr_0.1.2-3.debian.tar.xz 4840 SHA256:8c49143d8c600ea024da765049dcddc392d033cea0c43ec4fc27e4c9d0e3d94a
```

### `dpkg` source package: `libspnav=0.2.3-1`

Binary Packages:

- `libspnav0=0.2.3-1`

Licenses: (parsed from: `/usr/share/doc/libspnav0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libspnav=0.2.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3-1.dsc' libspnav_0.2.3-1.dsc 1874 SHA256:e7f4bf5b738690c79294c673a4385b1f5708c5f1a4cf3255dd31cfa4f082c0e1
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3.orig.tar.gz' libspnav_0.2.3.orig.tar.gz 11985 SHA256:7ae4d7bb7f6a5dda28b487891e01accc856311440f582299760dace6ee5f1f93
'http://archive.ubuntu.com/ubuntu/pool/universe/libs/libspnav/libspnav_0.2.3-1.debian.tar.xz' libspnav_0.2.3-1.debian.tar.xz 3536 SHA256:90989c2656f922ee6a56280d530a77c547268edecb9a1e2f02b2011bf451afe3
```

### `dpkg` source package: `libssh=0.8.0~20170825.94fa1e38-1ubuntu0.7`

Binary Packages:

- `libssh-gcrypt-4:amd64=0.8.0~20170825.94fa1e38-1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libssh-gcrypt-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.8.0~20170825.94fa1e38-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.8.0%7e20170825.94fa1e38-1ubuntu0.7.dsc' libssh_0.8.0~20170825.94fa1e38-1ubuntu0.7.dsc 2518 SHA512:310a10f3179034b994048805dfbe1c4a026d7b3466b5bc3816d474d42eb7a3972136fe66801885c9fd568db7cf9c8d9515ce6cfca8b9484ae0036c6439fc2673
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.8.0%7e20170825.94fa1e38.orig.tar.xz' libssh_0.8.0~20170825.94fa1e38.orig.tar.xz 381176 SHA512:849eb8994361d56391471ef810aca16501fa5609f2c5a1b83bfa2f2ad688c4a5956c1d91c03d6bc6b93ec994ab38e10367ffc7d02c2d5a08f78b03859dcb82e5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.8.0%7e20170825.94fa1e38-1ubuntu0.7.debian.tar.xz' libssh_0.8.0~20170825.94fa1e38-1ubuntu0.7.debian.tar.xz 36936 SHA512:60b6efb09514716500a953b8ea356b799c45d1defd13ebf719f44036d1298d5c063c9e12f8189c1916a1a2eef0a35fcb79bfa3c40cb13ecc501f2461c7392ab9
```

### `dpkg` source package: `libtar=1.2.20-7`

Binary Packages:

- `libtar0=1.2.20-7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libtar=1.2.20-7
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20-7.dsc' libtar_1.2.20-7.dsc 1863 SHA256:76d4664920b0c4830dbcdaf09f114426165fe5b7daa1e825ff3dface5968db4d
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20.orig.tar.gz' libtar_1.2.20.orig.tar.gz 63542 SHA256:50f24c857a7ef1cb092e6508758b86d06f1188508f897f3e6b40c573e8879109
'http://archive.ubuntu.com/ubuntu/pool/universe/libt/libtar/libtar_1.2.20-7.debian.tar.xz' libtar_1.2.20-7.debian.tar.xz 11536 SHA256:78fa275f8239f6ae703560423ff70a498d26f945e49a0f8e6d18baebcde08e6d
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

### `dpkg` source package: `libtheora=1.1.1+dfsg.1-14`

Binary Packages:

- `libtheora0:amd64=1.1.1+dfsg.1-14`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libtheora=1.1.1+dfsg.1-14
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1-14.dsc' libtheora_1.1.1+dfsg.1-14.dsc 2592 SHA256:20992f97c4ea622cb2336e6795dd5d816eaf29499ed5278d05dd684218c8e91a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1.orig.tar.gz' libtheora_1.1.1+dfsg.1.orig.tar.gz 2100495 SHA256:c59b0f07a7314dfe2ade15c41bc9f637f8a450fc6b340af61b81760629f28f90
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtheora/libtheora_1.1.1%2bdfsg.1-14.debian.tar.xz' libtheora_1.1.1+dfsg.1-14.debian.tar.xz 10532 SHA256:51d8d8bc6a613c42857a5c37e93b013e9239c2bb24c24873161adeee08319bc5
```

### `dpkg` source package: `libtool=2.4.6-2`

Binary Packages:

- `libltdl7:amd64=2.4.6-2`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

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

### `dpkg` source package: `libusb-1.0=2:1.0.21-2`

Binary Packages:

- `libusb-1.0-0:amd64=2:1.0.21-2`

Licenses: (parsed from: `/usr/share/doc/libusb-1.0-0/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libusb-1.0=2:1.0.21-2
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.21-2.dsc' libusb-1.0_1.0.21-2.dsc 2067 SHA256:fb8a5cd34d3308652845e054ca97fcd29971cb18659cdb08873d874df1ee8795
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.21.orig.tar.bz2' libusb-1.0_1.0.21.orig.tar.bz2 607417 SHA256:7dce9cce9a81194b7065ee912bcd55eeffebab694ea403ffb91b67db66b1824b
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb-1.0/libusb-1.0_1.0.21-2.debian.tar.xz' libusb-1.0_1.0.21-2.debian.tar.xz 13712 SHA256:96da0c02309cfc80de84bbec84a3f63b0571fae83ae1a4d99b361505b959e1eb
```

### `dpkg` source package: `libva=2.1.0-3`

Binary Packages:

- `libva-drm2:amd64=2.1.0-3`
- `libva-x11-2:amd64=2.1.0-3`
- `libva2:amd64=2.1.0-3`

Licenses: (parsed from: `/usr/share/doc/libva-drm2/copyright`, `/usr/share/doc/libva-x11-2/copyright`, `/usr/share/doc/libva2/copyright`)

- `Expat`
- `Expat-advertising`
- `GPL-2`
- `GPL-2+`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libva=2.1.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_2.1.0-3.dsc' libva_2.1.0-3.dsc 2457 SHA256:3bbbb71628354d3b8ed54d1b584fced2275da7999e274734907c146639fde54e
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_2.1.0.orig.tar.bz2' libva_2.1.0.orig.tar.bz2 476977 SHA256:f3fa953a11d3210c3a4ee79031abdbe0863d5ce13d9b3f93f315f1eec60a4b0f
'http://archive.ubuntu.com/ubuntu/pool/universe/libv/libva/libva_2.1.0-3.debian.tar.xz' libva_2.1.0-3.debian.tar.xz 10980 SHA256:610fe4209dda50a4cb3aa28f6f6a6d2c046e4165473b16d8d98d686b2f686294
```

### `dpkg` source package: `libvdpau=1.1.1-3ubuntu1`

Binary Packages:

- `libvdpau1:amd64=1.1.1-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libvdpau1/copyright`)

- `Expat`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libvdpau=1.1.1-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.1.1-3ubuntu1.dsc' libvdpau_1.1.1-3ubuntu1.dsc 2429 SHA256:a11d3d368f3686ef488019090abd50bffc180560128778b40ec9a477975743d4
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.1.1.orig.tar.bz2' libvdpau_1.1.1.orig.tar.bz2 429576 SHA256:857a01932609225b9a3a5bf222b85e39b55c08787d0ad427dbd9ec033d58d736
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvdpau/libvdpau_1.1.1-3ubuntu1.debian.tar.xz' libvdpau_1.1.1-3ubuntu1.debian.tar.xz 15708 SHA256:720d7706e6f63dfe360d203c724210588d6ecfc77f2adce95b5d64273311a494
```

### `dpkg` source package: `libvorbis=1.3.5-4.2`

Binary Packages:

- `libvorbis0a:amd64=1.3.5-4.2`
- `libvorbisenc2:amd64=1.3.5-4.2`
- `libvorbisfile3:amd64=1.3.5-4.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libvorbis=1.3.5-4.2
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5-4.2.dsc' libvorbis_1.3.5-4.2.dsc 2546 SHA256:074430404ed9851708fa99c6028c6419c2eae6d57299e623b443d6079f8b3d87
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5.orig.tar.gz' libvorbis_1.3.5.orig.tar.gz 1638779 SHA256:6efbcecdd3e5dfbf090341b485da9d176eb250d893e3eb378c428a2db38301ce
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvorbis/libvorbis_1.3.5-4.2.debian.tar.xz' libvorbis_1.3.5-4.2.debian.tar.xz 12340 SHA256:22d0f18332c7f5fb06b8366e1653d18165284c07152a3af7872b70cde3a7fdfc
```

### `dpkg` source package: `libvpx=1.7.0-3ubuntu0.18.04.1`

Binary Packages:

- `libvpx5:amd64=1.7.0-3ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libvpx5/copyright`)

- `BSD-3-Clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libvpx=1.7.0-3ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.7.0-3ubuntu0.18.04.1.dsc' libvpx_1.7.0-3ubuntu0.18.04.1.dsc 2400 SHA512:f12e42e8967faeb4d6662ce6eec8db22cba5ea8aec0c3571a9a5c5e01b829174088c91f55718923cfc74bbf814b15a70c68333d693c1c00459d8f2e161e58b3c
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.7.0.orig.tar.gz' libvpx_1.7.0.orig.tar.gz 2679797 SHA512:8b3b766b550f8d86907628d7ed88035f9a2612aac21542e0fd5ad35b905eb82cbe1be02a1a24afce7a3bcc4766f62611971f72724761996b392136c40a1e7ff0
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.7.0-3ubuntu0.18.04.1.debian.tar.xz' libvpx_1.7.0-3ubuntu0.18.04.1.debian.tar.xz 15888 SHA512:0042ff84057f205751f326194415abc2272f215ed0c0604f6574a810e7efcfd33046d3dcebe1bc3960147850328eb7aea776e2af793b05c36c01e3ef116c1fa3
```

### `dpkg` source package: `libwacom=0.29-1`

Binary Packages:

- `libwacom-common=0.29-1`
- `libwacom2:amd64=0.29-1`

Licenses: (parsed from: `/usr/share/doc/libwacom-common/copyright`, `/usr/share/doc/libwacom2/copyright`)

- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libwacom=0.29-1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.29-1.dsc' libwacom_0.29-1.dsc 2252 SHA256:2388fb9e60f60dde7601fb8c039ad486d4ce907f29f732c16b944db457f336fc
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.29.orig.tar.gz' libwacom_0.29.orig.tar.gz 118001 SHA256:8edc5a0342fa63c2c8d80cb02e172b4f26232b28e0f3f557ac291b3a66a362f4
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwacom/libwacom_0.29-1.debian.tar.xz' libwacom_0.29-1.debian.tar.xz 4088 SHA256:6561cffda6f718fce11e29e84e9f8e1f06f11920010bff121e3c14c0b76a38ed
```

### `dpkg` source package: `libwebp=0.6.1-2ubuntu0.18.04.1`

Binary Packages:

- `libwebp6:amd64=0.6.1-2ubuntu0.18.04.1`
- `libwebpmux3:amd64=0.6.1-2ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.1-2ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.18.04.1.dsc' libwebp_0.6.1-2ubuntu0.18.04.1.dsc 2185 SHA512:a7389414d1a4d1dae5e3ac794342e3034ff59255e379f5229077a481dda9497332b58668996a81da51ac3a55b303ce2c5254d11731c95795ea7525ba47a76150
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1.orig.tar.gz' libwebp_0.6.1.orig.tar.gz 3554290 SHA512:313b345a01c91eb07c2e4d46b93fcda9c50dca9e05e39f757238a679355514a2e9bc9bc220f3d3eb6d6a55148957cb2be14dac330203953337759841af1a32bf
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.1-2ubuntu0.18.04.1.debian.tar.xz' libwebp_0.6.1-2ubuntu0.18.04.1.debian.tar.xz 16772 SHA512:b0c8ee7243e7ace81d0b4143566a1f5e2a62bc84ffdba54975d08432eb2bff93c1e7ee181b4a1e5e7ab5a6274545fcd58143d3d141dbd9a23441cb54e36a0e61
```

### `dpkg` source package: `libx11=2:1.6.4-3ubuntu0.4`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3ubuntu0.4`
- `libx11-data=2:1.6.4-3ubuntu0.4`
- `libx11-xcb1:amd64=2:1.6.4-3ubuntu0.4`

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

### `dpkg` source package: `libxaw=2:1.0.13-1`

Binary Packages:

- `libxaw7:amd64=2:1.0.13-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxaw=2:1.0.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13-1.dsc' libxaw_1.0.13-1.dsc 2196 SHA256:9fdf48f9ff66c0889cda5030997fe919e5320e7988f32e20bb96602daa37e7f7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13.orig.tar.gz' libxaw_1.0.13.orig.tar.gz 848997 SHA256:7e74ac3e5f67def549722ff0333d6e6276b8becd9d89615cda011e71238ab694
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.13-1.diff.gz' libxaw_1.0.13-1.diff.gz 12643 SHA256:241f21ba0810d9d859a98ab60f100a366bc9e98cd946c736566a8ed1353a1bcc
```

### `dpkg` source package: `libxcb=1.13-2~ubuntu18.04`

Binary Packages:

- `libxcb-dri2-0:amd64=1.13-2~ubuntu18.04`
- `libxcb-dri3-0:amd64=1.13-2~ubuntu18.04`
- `libxcb-glx0:amd64=1.13-2~ubuntu18.04`
- `libxcb-present0:amd64=1.13-2~ubuntu18.04`
- `libxcb-randr0:amd64=1.13-2~ubuntu18.04`
- `libxcb-render0:amd64=1.13-2~ubuntu18.04`
- `libxcb-shape0:amd64=1.13-2~ubuntu18.04`
- `libxcb-shm0:amd64=1.13-2~ubuntu18.04`
- `libxcb-sync1:amd64=1.13-2~ubuntu18.04`
- `libxcb-xfixes0:amd64=1.13-2~ubuntu18.04`
- `libxcb-xinerama0:amd64=1.13-2~ubuntu18.04`
- `libxcb-xkb1:amd64=1.13-2~ubuntu18.04`
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

### `dpkg` source package: `libxcursor=1:1.1.15-1`

Binary Packages:

- `libxcursor1:amd64=1:1.1.15-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.15-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.15-1.dsc' libxcursor_1.1.15-1.dsc 2288 SHA256:0e204ad2040f088b9a06d28576148970c107f13f3951b95d7536b5bb6fa7e4c4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.15.orig.tar.gz' libxcursor_1.1.15.orig.tar.gz 406960 SHA256:449befea2b11dde58ba3323b2c1ec30550013bd84d80501eb56d0048e62251a1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.15-1.debian.tar.xz' libxcursor_1.1.15-1.debian.tar.xz 8796 SHA256:67728eb5f3ad07f61390793c060b4b6b56806af5b60f0057db04762bc804650f
```

### `dpkg` source package: `libxdamage=1:1.1.4-3`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-3.dsc' libxdamage_1.1.4-3.dsc 2161 SHA256:f1207d4fca942d2cddfe40abc818046e282ceeb0e0b565a44c2908fd03c41368
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-3.debian.tar.xz' libxdamage_1.1.4-3.debian.tar.xz 5904 SHA256:94dcf3997a92f5e1b4681dcbe555af4469607ae7af2d0dc643a7a1be7b94e64a
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

### `dpkg` source package: `libxfixes=1:5.0.3-1`

Binary Packages:

- `libxfixes3:amd64=1:5.0.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3-1.dsc' libxfixes_5.0.3-1.dsc 2040 SHA256:87c1c491d8ff261b5a723c6c6aa974f315ff6f25f47425285a62065cbf944025
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3.orig.tar.gz' libxfixes_5.0.3.orig.tar.gz 360412 SHA256:9ab6c13590658501ce4bd965a8a5d32ba4d8b3bb39a5a5bc9901edffc5666570
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3-1.diff.gz' libxfixes_5.0.3-1.diff.gz 15140 SHA256:95b9688465531c60ff372bf8a2eb5fdd456970cbbb679ba13e54d24af44fb904
```

### `dpkg` source package: `libxi=2:1.7.9-1`

Binary Packages:

- `libxi6:amd64=2:1.7.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9-1.dsc' libxi_1.7.9-1.dsc 2202 SHA256:fb19b7e8b9ad6306c3e8a6728f29576f956f07a7980e7b4d727259714d6ca686
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9.orig.tar.gz' libxi_1.7.9.orig.tar.gz 604214 SHA256:463cc5370191404bc0f8a450fdbf6d9159efbbf274e5e0f427a60191fed9cf4b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9-1.diff.gz' libxi_1.7.9-1.diff.gz 15892 SHA256:8c9c221faecc97a7ba7ff1a1a14fad580c49b72e270dc3aae40b72b2d7f4dc5e
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

### `dpkg` source package: `libxkbcommon=0.8.2-1~ubuntu18.04.1`

Binary Packages:

- `libxkbcommon-x11-0:amd64=0.8.2-1~ubuntu18.04.1`
- `libxkbcommon0:amd64=0.8.2-1~ubuntu18.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxkbcommon=0.8.2-1~ubuntu18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_0.8.2-1%7eubuntu18.04.1.dsc' libxkbcommon_0.8.2-1~ubuntu18.04.1.dsc 2178 SHA512:7ffcfd8b44df0c4c9e139e26682ce3187b14445f59235b7eea88c93194d86d451444e5d6715251e49565dc0c0987a4d044cbd889ad74547de525da2ff371f955
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxkbcommon/libxkbcommon_0.8.2-1%7eubuntu18.04.1.tar.gz' libxkbcommon_0.8.2-1~ubuntu18.04.1.tar.gz 615081 SHA512:df4478194169c2f6abc43965be2ff0ceae06d37cc11b7bcdb26909b7bcf7b7eca6e933ce3921e4a926335aca94865231fb1a310483c7f59bd1eee2347b470180
```

### `dpkg` source package: `libxml2=2.9.4+dfsg1-6.1ubuntu1.8`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-6.1ubuntu1.8`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

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

- `libxmu6:amd64=2:1.1.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.dsc' libxmu_1.1.2-2.dsc 2291 SHA256:5e3333a3fe9dbed9d0df596d964b94aa1d45d56a0475a8b66b3f69d60ab29504
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2.orig.tar.gz' libxmu_1.1.2.orig.tar.gz 469019 SHA256:e5fd4bacef068f9509b8226017205040e38d3fba8d2de55037200e7176c13dba
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.2-2.diff.gz' libxmu_1.1.2-2.diff.gz 6054 SHA256:c01cbd09a15e71c0418d2689a0fd0b946bf4e40d1dbe9f594beb00a4818f0740
```

### `dpkg` source package: `libxpm=1:3.5.12-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12-1.dsc' libxpm_3.5.12-1.dsc 2061 SHA256:1b5d07d820d656030d0f79a15a0652f258c9d2be0cd6064ec37c40853906f7e8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12.orig.tar.gz' libxpm_3.5.12.orig.tar.gz 529302 SHA256:2523acc780eac01db5163267b36f5b94374bfb0de26fc0b5a7bee76649fd8501
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12-1.diff.gz' libxpm_3.5.12-1.diff.gz 9458 SHA256:4103400f8d73d0ec567f87e8aa9824c4a07d068e81da6efe54fb535ec897e326
```

### `dpkg` source package: `libxrandr=2:1.5.1-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1-1.dsc' libxrandr_1.5.1-1.dsc 2046 SHA256:0d7102ab75fdfe06534e842d5dcac8430614c61a061ab12794e2285712b0b103
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1.orig.tar.gz' libxrandr_1.5.1.orig.tar.gz 388607 SHA256:2baa7fb3eca78fe7e11a09b373ba898b717f7eeba4a4bfd68187e04b4789b0d3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1-1.diff.gz' libxrandr_1.5.1-1.diff.gz 16386 SHA256:42262cbc2117ea559a4e16a02c6ea6478554aa2128d9fe1e141da07006612a1d
```

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

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

### `dpkg` source package: `libxshmfence=1.3-1`

Binary Packages:

- `libxshmfence1:amd64=1.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxshmfence=1.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3-1.dsc' libxshmfence_1.3-1.dsc 2096 SHA256:7da3e1195622ab34427bd5d09167b1f44ed1a3e828782fa8e618f1181c56194a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3.orig.tar.gz' libxshmfence_1.3.orig.tar.gz 378960 SHA256:7eb3d46ad91bab444f121d475b11b39273142d090f7e9ac43e6a87f4ff5f902c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxshmfence/libxshmfence_1.3-1.diff.gz' libxshmfence_1.3-1.diff.gz 17456 SHA256:85422af90300523b8fb27e697b59418f18bd7cd5c849161fd0be64c91ce94698
```

### `dpkg` source package: `libxss=1:1.2.2-1`

Binary Packages:

- `libxss1:amd64=1:1.2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxss=1:1.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.2-1.dsc' libxss_1.2.2-1.dsc 2042 SHA256:22379490d80d7661c793f0f016a5e12255fdb53a0b2b58b6fe14afa805fcac3f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.2.orig.tar.gz' libxss_1.2.2.orig.tar.gz 348915 SHA256:e12ba814d44f7b58534c0d8521e2d4574f7bf2787da405de4341c3b9f4cc8d96
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxss/libxss_1.2.2-1.diff.gz' libxss_1.2.2-1.diff.gz 14712 SHA256:fcc9c125f3af01da27f6cee798410a7907a63802f5c6360f972e12b1ff59e6c1
```

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

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

### `dpkg` source package: `libxv=2:1.0.11-1`

Binary Packages:

- `libxv1:amd64=2:1.0.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxv=2:1.0.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.11-1.dsc' libxv_1.0.11-1.dsc 1959 SHA256:7753e8d4496ec0d3f32417b03cfc8b344e2dff486e46f630158a6a52e4bd8542
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.11.orig.tar.gz' libxv_1.0.11.orig.tar.gz 387057 SHA256:c4112532889b210e21cf05f46f0f2f8354ff7e1b58061e12d7a76c95c0d47bb1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxv/libxv_1.0.11-1.diff.gz' libxv_1.0.11-1.diff.gz 8235 SHA256:529ed2bcbccc9340c9c7987e8c5ed933a0fa41d6e4e67ef71ce3925ac83d93b6
```

### `dpkg` source package: `libxxf86vm=1:1.1.4-1`

Binary Packages:

- `libxxf86vm1:amd64=1:1.1.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxxf86vm=1:1.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-1.dsc' libxxf86vm_1.1.4-1.dsc 2078 SHA256:5a3aded030a415b0d6c201d2b9d3af36f241dc981f10052fd4c2b56d59597838
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4.orig.tar.gz' libxxf86vm_1.1.4.orig.tar.gz 363146 SHA256:5108553c378a25688dcb57dca383664c36e293d60b1505815f67980ba9318a99
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxxf86vm/libxxf86vm_1.1.4-1.diff.gz' libxxf86vm_1.1.4-1.diff.gz 8040 SHA256:e0f11739d28c7a4475820ebda26e6f29e6cfa80b99a3513c075471132c81725b
```

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `libzip=1.1.2-1.1`

Binary Packages:

- `libzip4:amd64=1.1.2-1.1`

Licenses: (parsed from: `/usr/share/doc/libzip4/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libzip=1.1.2-1.1
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.1.2-1.1.dsc' libzip_1.1.2-1.1.dsc 2162 SHA256:f973d6fb8838bb220a7ae297e19bf822b256509dc0bf53ab7374183ea7cbc651
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.1.2.orig.tar.gz' libzip_1.1.2.orig.tar.gz 671193 SHA256:59ac7c09b0aa9aa7e21849c236d0a66a97aa6d442d78335c2fdfe0ee16366221
'http://archive.ubuntu.com/ubuntu/pool/universe/libz/libzip/libzip_1.1.2-1.1.debian.tar.xz' libzip_1.1.2-1.1.debian.tar.xz 4940 SHA256:49e5589eb16f16cc6a8011e1613d5e1a41e39ae7ca8bb576c11d181e745532bb
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

### `dpkg` source package: `llvm-toolchain-10=1:10.0.0-4ubuntu1~18.04.2`

Binary Packages:

- `libllvm10:amd64=1:10.0.0-4ubuntu1~18.04.2`

Licenses: (parsed from: `/usr/share/doc/libllvm10/copyright`)

- `APACHE-2-LLVM-EXCEPTIONS`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-clause`
- `MIT`
- `Python`
- `solar-public-domain`

Source:

```console
$ apt-get source -qq --print-uris llvm-toolchain-10=1:10.0.0-4ubuntu1~18.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-10/llvm-toolchain-10_10.0.0-4ubuntu1%7e18.04.2.dsc' llvm-toolchain-10_10.0.0-4ubuntu1~18.04.2.dsc 5754 SHA512:f90ee3293a09e01758c79eb0a91906322ff12f05401022c61325659409f6bbc109a0beefa192aeed64412ab24db3a2e417c6083ff4b37a5f7f9705b92944cb68
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-10/llvm-toolchain-10_10.0.0.orig.tar.xz' llvm-toolchain-10_10.0.0.orig.tar.xz 78321340 SHA512:7d2111510daf52ad085df9876c993b550e252b2a0ed2153fd45de1465fc2a38a798e7b1418dd750e84315ffce39d4439069510483bae44f4878fcc68e4823865
'http://archive.ubuntu.com/ubuntu/pool/main/l/llvm-toolchain-10/llvm-toolchain-10_10.0.0-4ubuntu1%7e18.04.2.debian.tar.xz' llvm-toolchain-10_10.0.0-4ubuntu1~18.04.2.debian.tar.xz 138936 SHA512:6c9b93289e077cf4ec717ff1d022c96f25a62f83cf3ce627eadec26fa155d4bf4c0b811eb9f53d3d0ce77f18acbd54c516f6574c6473406eae32dea770cb75dc
```

### `dpkg` source package: `lm-sensors=1:3.4.0-4ubuntu0.1`

Binary Packages:

- `libsensors4:amd64=1:3.4.0-4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsensors4/copyright`)

- `GPL`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lm-sensors=1:3.4.0-4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0-4ubuntu0.1.dsc' lm-sensors_3.4.0-4ubuntu0.1.dsc 2046 SHA512:7fc76bace9150a568e62f81743ae8b57faf9b2dc1504c5430e27066b3d279d496a2511029efd46bf0b0cf86a35db1dbc9bb59a5cbac75a8d4159d6238511152c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0.orig.tar.bz2' lm-sensors_3.4.0.orig.tar.bz2 175802 SHA512:993064bd14b855c1ae8c057e89313df5b3d5efe441fb2e8c3e508f42bb15658564df2563fac8fabbdb0d650dfdbc694037736c748d45cb9d85dfb8fb5a3d1ea9
'http://archive.ubuntu.com/ubuntu/pool/main/l/lm-sensors/lm-sensors_3.4.0-4ubuntu0.1.debian.tar.xz' lm-sensors_3.4.0-4ubuntu0.1.debian.tar.xz 26500 SHA512:dc031d817a95d36a26e1b8a6cff960b36242a0e78b49ea1799883b8fefdecd677a5ce9202834a2dd4dafb9ea1b5ec8e043a515643293d97391d5c69b95373612
```

### `dpkg` source package: `lsb=9.20170808ubuntu1`

Binary Packages:

- `lsb-base=9.20170808ubuntu1`
- `lsb-release=9.20170808ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

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

### `dpkg` source package: `mesa=20.0.8-0ubuntu1~18.04.1`

Binary Packages:

- `libegl-mesa0:amd64=20.0.8-0ubuntu1~18.04.1`
- `libegl1-mesa:amd64=20.0.8-0ubuntu1~18.04.1`
- `libgbm1:amd64=20.0.8-0ubuntu1~18.04.1`
- `libgl1-mesa-dri:amd64=20.0.8-0ubuntu1~18.04.1`
- `libglapi-mesa:amd64=20.0.8-0ubuntu1~18.04.1`
- `libglx-mesa0:amd64=20.0.8-0ubuntu1~18.04.1`
- `libwayland-egl1-mesa:amd64=20.0.8-0ubuntu1~18.04.1`

Licenses: (parsed from: `/usr/share/doc/libegl-mesa0/copyright`, `/usr/share/doc/libegl1-mesa/copyright`, `/usr/share/doc/libgbm1/copyright`, `/usr/share/doc/libgl1-mesa-dri/copyright`, `/usr/share/doc/libglapi-mesa/copyright`, `/usr/share/doc/libglx-mesa0/copyright`, `/usr/share/doc/libwayland-egl1-mesa/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-google`
- `BSL`
- `GPL`
- `Khronos`
- `MIT`
- `MLAA`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris mesa=20.0.8-0ubuntu1~18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_20.0.8-0ubuntu1%7e18.04.1.dsc' mesa_20.0.8-0ubuntu1~18.04.1.dsc 5293 SHA512:c2149b9557227aa1c5fdfaddf62b000feb039a42b326e6b390d546713e3e1ec7fd438eb815d309f202124e39b5c4c876ecd3e30f870ab870daa65872c95ec84f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_20.0.8.orig.tar.gz' mesa_20.0.8.orig.tar.gz 19030315 SHA512:d6a0365c8248c704548d74d6035da43a0791f3306176e873f7929ae34ac2254370190c6cd40cf5e8bfc2455dfbc02f40569a9b12c4b18c2048b29e635427cd53
'http://archive.ubuntu.com/ubuntu/pool/main/m/mesa/mesa_20.0.8-0ubuntu1%7e18.04.1.diff.gz' mesa_20.0.8-0ubuntu1~18.04.1.diff.gz 118306 SHA512:cba9931b5cd76a3e5300e1201d5f99e6f7893ff612f3ce36c9f33973c7bbc041dc4bb3d433f2dfdc9dcfb2ab48ada45a49b432b62b34a75ba030121e3f3cf2d9
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

### `dpkg` source package: `minizip=1.1-8build1`

Binary Packages:

- `libminizip1:amd64=1.1-8build1`

Licenses: (parsed from: `/usr/share/doc/libminizip1/copyright`)

- `zlib`

Source:

```console
$ apt-get source -qq --print-uris minizip=1.1-8build1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1-8build1.dsc' minizip_1.1-8build1.dsc 1970 SHA256:22deeab8cbf11f87b6a764297d1aeb4e543526d286b30d8e13ef6a46794d0281
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1.orig.tar.xz' minizip_1.1.orig.tar.xz 36204 SHA256:7d8da446d3b6799e7851f077a66551a46b80fc3de708549e79dbd3e49e842ba1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/minizip/minizip_1.1-8build1.debian.tar.xz' minizip_1.1-8build1.debian.tar.xz 5316 SHA256:945c953786e32dc01d680e8ba2aaad6ad51f892375f6a39b85138f8eebf4306f
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

### `dpkg` source package: `mpg123=1.25.10-1`

Binary Packages:

- `libmpg123-0:amd64=1.25.10-1`

Licenses: (parsed from: `/usr/share/doc/libmpg123-0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpg123=1.25.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.25.10-1.dsc' mpg123_1.25.10-1.dsc 2523 SHA256:48a7cc9cb104758592d6505204eb86a0109268f33270ce9dcaa4a05d9957b4f8
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.25.10.orig.tar.bz2' mpg123_1.25.10.orig.tar.bz2 921219 SHA256:6c1337aee2e4bf993299851c70b7db11faec785303cfca3a5c3eb5f329ba7023
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.25.10.orig.tar.bz2.asc' mpg123_1.25.10.orig.tar.bz2.asc 847 SHA256:4ea1ac82c47b21f3fb353b8f11040abba8529b0e6f4a50a87e18f68b87b71530
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpg123/mpg123_1.25.10-1.debian.tar.xz' mpg123_1.25.10-1.debian.tar.xz 23548 SHA256:32c68939ff1635124cb5b0c1708c8c420475726e8cb8e5822b8fec97d5266bbb
```

### `dpkg` source package: `mtdev=1.1.5-1ubuntu3`

Binary Packages:

- `libmtdev1:amd64=1.1.5-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libmtdev1/copyright`)

- `The MIT License`
- `The MIT license`

Source:

```console
$ apt-get source -qq --print-uris mtdev=1.1.5-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5-1ubuntu3.dsc' mtdev_1.1.5-1ubuntu3.dsc 2262 SHA256:01e7b11d7ed54675eebce7b0f8b038b8c257f46efffc8bef382b942c2562b893
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5.orig.tar.bz2' mtdev_1.1.5.orig.tar.bz2 274162 SHA256:6677d5708a7948840de734d8b4675d5980d4561171c5a8e89e54adf7a13eba7f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mtdev/mtdev_1.1.5-1ubuntu3.debian.tar.xz' mtdev_1.1.5-1ubuntu3.debian.tar.xz 6268 SHA256:60d8d42d71828abc8ef728c1a52f8c5e407be1d0c24871580a744e2b12a7a8a6
```

### `dpkg` source package: `mysql-5.7=5.7.40-0ubuntu0.18.04.1`

Binary Packages:

- `libmysqlclient20:amd64=5.7.40-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient20/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `mysql-defaults=1.0.4`

Binary Packages:

- `mysql-common=5.8+1.0.4`

Licenses: (parsed from: `/usr/share/doc/mysql-common/copyright`)

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

### `dpkg` source package: `netcdf=1:4.6.0-2build1`

Binary Packages:

- `libnetcdf13:amd64=1:4.6.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libnetcdf13/copyright`)

- `BSD-3-Clause`
- `Expat`
- `GPL-2`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `HDF5`
- `NetCDF`
- `Unicode-data`
- `d4crc32`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris netcdf=1:4.6.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.6.0-2build1.dsc' netcdf_4.6.0-2build1.dsc 2392 SHA256:d0dccef84b9c192ba2d9ee9d3222d33c3733eecc2780c4db2a3af6f2724869ae
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.6.0.orig.tar.gz' netcdf_4.6.0.orig.tar.gz 18155830 SHA256:6d740356399aac12290650325a05aec2fe92c1905df10761b2b0100994197725
'http://archive.ubuntu.com/ubuntu/pool/universe/n/netcdf/netcdf_4.6.0-2build1.debian.tar.xz' netcdf_4.6.0-2build1.debian.tar.xz 25316 SHA256:88f0188874a93468b818c7b76d12973e8b4a691d1745c848104bd423e126223d
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

### `dpkg` source package: `norm=1.5r6+dfsg1-6`

Binary Packages:

- `libnorm1:amd64=1.5r6+dfsg1-6`

Licenses: (parsed from: `/usr/share/doc/libnorm1/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause-UC`
- `NRL-2-clause`
- `NRL-3-clause`

Source:

```console
$ apt-get source -qq --print-uris norm=1.5r6+dfsg1-6
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5r6%2bdfsg1-6.dsc' norm_1.5r6+dfsg1-6.dsc 1534 SHA256:e8cab4884a245691d9ef6a24254560cc7abc8d3600c00219f10da836648aba24
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5r6%2bdfsg1.orig.tar.gz' norm_1.5r6+dfsg1.orig.tar.gz 2132249 SHA256:bb63051fb03cde826be4548f157bfbd18525829f8f97870bf94a00be8cae6bed
'http://archive.ubuntu.com/ubuntu/pool/universe/n/norm/norm_1.5r6%2bdfsg1-6.debian.tar.xz' norm_1.5r6+dfsg1-6.debian.tar.xz 6780 SHA256:d80cd4ebacc76e1506c3b9025f4e382ba8878e2a41c563cbc0b31b8c9a586a06
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

### `dpkg` source package: `nspr=2:4.18-1ubuntu1`

Binary Packages:

- `libnspr4:amd64=2:4.18-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.18-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.18-1ubuntu1.dsc' nspr_4.18-1ubuntu1.dsc 2136 SHA256:fd2977c7937d1c2a6a39d21f42bcccc8615b6c126ed6b15f1e6685e9d872fdf9
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.18.orig.tar.gz' nspr_4.18.orig.tar.gz 1139663 SHA256:b89657c09bf88707d06ac238b8930d3ae08de68cb3edccfdc2e3dc97f9c8fb34
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.18-1ubuntu1.debian.tar.xz' nspr_4.18-1ubuntu1.debian.tar.xz 19520 SHA256:712cd17e174defbae082724ba3278164218cd77f4fa322d5f376c0bec111b70c
```

### `dpkg` source package: `nss=2:3.35-2ubuntu2.15`

Binary Packages:

- `libnss3:amd64=2:3.35-2ubuntu2.15`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nss=2:3.35-2ubuntu2.15
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.35-2ubuntu2.15.dsc' nss_3.35-2ubuntu2.15.dsc 2354 SHA512:ee4665a883b43c503c4263d4874577202b12f4a1623ef3b4dce69a691d59eb372f974022f68f750dce41a70719a03b77add06687ad906e9e3b9f06bb50e202b7
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.35.orig.tar.gz' nss_3.35.orig.tar.gz 9620041 SHA512:8d466f4602427d278b6aa28af0e6bdb99326fc40c94ac6d517d1cbe7ce6b9332dadba52ea092762fac2fd6e72f17cb880cf81e1cf86bf6b4f7913a755419626d
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.35-2ubuntu2.15.debian.tar.xz' nss_3.35-2ubuntu2.15.debian.tar.xz 221648 SHA512:a57148832b32d25b2ea5adba76f38253810f0d0c07fc38a1bf233a6f7c1f68a7258a535ae96ce76e1699d94b6013024a9d6e71fce7b62cc1c87f8217e02621f4
```

### `dpkg` source package: `numactl=2.0.11-2.1ubuntu0.1`

Binary Packages:

- `libnuma1:amd64=2.0.11-2.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.11-2.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1ubuntu0.1.dsc' numactl_2.0.11-2.1ubuntu0.1.dsc 1970 SHA512:ef9adf0b792d712b56903cbb9b9bbc7b0ff8b0b42c836fe52595befbf1412251dcefb6fce0db039a5501b41463d1152046ad11477b332590560c44e669da0f2f
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11.orig.tar.gz' numactl_2.0.11.orig.tar.gz 408175 SHA512:1969d7ee0ff3de0d6f1fa42ec089a17cdb3f92cb35d453b8f8b2eec49724c43787ecbd213357013a8f2500a260b0df9844d515815ca3a0376314a0eed050a0d4
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1ubuntu0.1.debian.tar.xz' numactl_2.0.11-2.1ubuntu0.1.debian.tar.xz 9504 SHA512:a389644eac8e9ddaa9c644d9c3fff01f1bd4c5e0f2b4da7593806846fd5d288af44e559a8eb48a720003e62141924f96b654b0a4adda846947ac5e0601892961
```

### `dpkg` source package: `ogdi-dfsg=3.2.0+ds-2`

Binary Packages:

- `libogdi3.2=3.2.0+ds-2`

Licenses: (parsed from: `/usr/share/doc/libogdi3.2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `OGDI-3I`
- `OGDI-LAS`
- `OGDI-QUEEN`
- `OGDI-TORONTO`
- `VPFLIB`
- `other-ecshash`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris ogdi-dfsg=3.2.0+ds-2
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%2bds-2.dsc' ogdi-dfsg_3.2.0+ds-2.dsc 2131 SHA256:85613bf33f00823c3c5109681e14844604179e2c7a109bb972d6f0793b09a582
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%2bds.orig.tar.gz' ogdi-dfsg_3.2.0+ds.orig.tar.gz 659158 SHA256:887bcfeaee5a3cffd228280a970b1a7e402763725ff9fad02387da9e3a521db9
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogdi-dfsg/ogdi-dfsg_3.2.0%2bds-2.debian.tar.xz' ogdi-dfsg_3.2.0+ds-2.debian.tar.xz 12924 SHA256:cf9ef3233fd89a5e910630ac33ee37b61a2cd4c442f5af2bd2b4191847ecb4f3
```

### `dpkg` source package: `ogre-1.9=1.9.0+dfsg1-10`

Binary Packages:

- `libogre-1.9.0v5:amd64=1.9.0+dfsg1-10`

Licenses: (parsed from: `/usr/share/doc/libogre-1.9.0v5/copyright`)

- `AnyUse`
- `BSD-2Clause`
- `BSL-1`
- `CC-BY-SA-3.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`
- `Scintilla`
- `UnivIllinois/NCSA`
- `other1`
- `other2`
- `other3`
- `other4`
- `other5`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris ogre-1.9=1.9.0+dfsg1-10
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1-10.dsc' ogre-1.9_1.9.0+dfsg1-10.dsc 2704 SHA256:7c0b608d7fa7211972179ce17386db7719c2c427f3d9ff3fa90caeb8e5fdedc4
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1.orig.tar.xz' ogre-1.9_1.9.0+dfsg1.orig.tar.xz 6641368 SHA256:a813af69085c9ef8bf785e8d3cb13216f8f2cc202df6db37fc620a83ae646185
'http://archive.ubuntu.com/ubuntu/pool/universe/o/ogre-1.9/ogre-1.9_1.9.0%2bdfsg1-10.debian.tar.xz' ogre-1.9_1.9.0+dfsg1-10.debian.tar.xz 24816 SHA256:28c424cc6cd70fb34b1ac7a13d6dce21e3869b6aa0d745e29dc0c930fee84c2b
```

### `dpkg` source package: `openal-soft=1:1.18.2-2`

Binary Packages:

- `libopenal-data=1:1.18.2-2`
- `libopenal1:amd64=1:1.18.2-2`

Licenses: (parsed from: `/usr/share/doc/libopenal-data/copyright`, `/usr/share/doc/libopenal1/copyright`)

- `Apache`
- `BSD-3-clause-cmake`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2+`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris openal-soft=1:1.18.2-2
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.18.2-2.dsc' openal-soft_1.18.2-2.dsc 2384 SHA256:6479b896fb3f1cab9df0b0a719d18caec33ffd05714c705c119989b4d109e6c9
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.18.2.orig.tar.gz' openal-soft_1.18.2.orig.tar.gz 775095 SHA256:a598241d1af2e90c25a1b91da4c9ddc0e7cb6a4b5f1477fc680d139c57cd38cc
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/openal-soft_1.18.2-2.debian.tar.xz' openal-soft_1.18.2-2.debian.tar.xz 12568 SHA256:c000c6a95f16e7307748c40c2c34cdf8484887a56d8bafd8071b716976799059
```

### `dpkg` source package: `openexr=2.2.0-11.1ubuntu1.9`

Binary Packages:

- `libopenexr22:amd64=2.2.0-11.1ubuntu1.9`

Licenses: (parsed from: `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11.1ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11.1ubuntu1.9.dsc' openexr_2.2.0-11.1ubuntu1.9.dsc 2403 SHA512:946115a443dbc601337d8327be9307bbbe4f75c7441a663a0e66f9c7c008e06e9da9a65f1a01634f7f4791f9c98020277d6e3bfd116cbd8502ba0208b04cc794
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA512:017abbeeb6b814508180721bc8e8940094965c4c55b135a198c6bcb109a04bf7f72e4aee81ee72cb2185fe818a41d892b383e8d2d59f40c673198948cb79279a
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11.1ubuntu1.9.debian.tar.xz' openexr_2.2.0-11.1ubuntu1.9.debian.tar.xz 40924 SHA512:07cecb0a817953c070391f6d93b0a9cf3c940916c6203c8f87449e5647bc34336dbf5b55555d57d0a6ba7b44e9dd164887c15df82e85197bf869314e1be5551a
```

### `dpkg` source package: `openjpeg2=2.3.0-2build0.18.04.1`

Binary Packages:

- `libopenjp2-7:amd64=2.3.0-2build0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`)

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
$ apt-get source -qq --print-uris openjpeg2=2.3.0-2build0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.3.0-2build0.18.04.1.dsc' openjpeg2_2.3.0-2build0.18.04.1.dsc 2788 SHA512:829c842d7bd33b7723ee34318e34850dd0baf25fe6434554dc256c6ac0c138245f39d3a5f48b10ea348ff117e9bd443ad2a29263872efa4b374ec7eb4dc85bd5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.3.0.orig.tar.gz' openjpeg2_2.3.0.orig.tar.gz 2074456 SHA512:be8095e592ce2104bf368396c84741102fe8d7c0c7b7083509f6cba0d6f2d0b2db6069cbb107bb02426ef364c214c5f26a21c326e375aa0d96b2096345ae5c4e
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openjpeg2/openjpeg2_2.3.0-2build0.18.04.1.debian.tar.xz' openjpeg2_2.3.0-2build0.18.04.1.debian.tar.xz 21152 SHA512:a0c896c10c9677a6fac5ea845db877a3d9bdc163800e80a9ed5331babe1188cd4e9b1d86a270ea288081fb48ac85edffba4324cf42c12b31a08c67a0f08bfd14
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

### `dpkg` source package: `openssl=1.1.1-1ubuntu2.1~18.04.20`

Binary Packages:

- `libssl1.1:amd64=1.1.1-1ubuntu2.1~18.04.20`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1-1ubuntu2.1~18.04.20
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.dsc' openssl_1.1.1-1ubuntu2.1~18.04.20.dsc 2514 SHA512:cf3b83b1ec29b576328faa6e2dd10e9b396afeafcd8277d008ef82f80f999834237cbc61b44b2d8684fbb7104e0b9c79a2878333c09027beed5fbf9a55916bcc
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1.orig.tar.gz' openssl_1.1.1.orig.tar.gz 8337920 SHA512:c0284a4fe84bdf765ca5bc5148da4441ffc36392cfecaf9d372af00cf93b6de5681cab1248b6f8246474532155dc205da5ad49549ad7c61c07c917145e7c9c71
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1%7e18.04.20.debian.tar.xz' openssl_1.1.1-1ubuntu2.1~18.04.20.debian.tar.xz 171540 SHA512:213a93d75c90436974dd9d8aa2fd12000a062ca089204ef8c86aee50952c86a32df5766a993b41029c650865d057ce728f14c117de0eaa5439c6503af1011e6a
```

### `dpkg` source package: `opus=1.1.2-1ubuntu1`

Binary Packages:

- `libopus0:amd64=1.1.2-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris opus=1.1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2-1ubuntu1.dsc' opus_1.1.2-1ubuntu1.dsc 1983 SHA256:8f8ccf72939b5c7923df4a189ca1d7a0dcf0cd5151e70b5623029c095c54849e
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2.orig.tar.gz' opus_1.1.2.orig.tar.gz 1012168 SHA256:7aaa84f06ec89cbf19d08c1dd1ceac965a11b28b3ff504cc52893f9be78eb5d1
'http://archive.ubuntu.com/ubuntu/pool/main/o/opus/opus_1.1.2-1ubuntu1.debian.tar.xz' opus_1.1.2-1ubuntu1.debian.tar.xz 5920 SHA256:d31fc55216fbda1a05ea6d59f43b71988a5b748c3d292f0297dc97e5585c9535
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

### `dpkg` source package: `pcre3=2:8.39-9ubuntu0.1`

Binary Packages:

- `libpcre3:amd64=2:8.39-9ubuntu0.1`

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

- `perl-base=5.26.1-6ubuntu0.6`

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

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2ubuntu0.1.dsc' pixman_0.34.0-2ubuntu0.1.dsc 2169 SHA512:1a2e1e3dbe9dc53601055404a799b6f901f217bed4adb67f8588d02e3caf79436012baf00ef4c6ef83837e137fc3ea4114b84d7a473e8f646336900b0dd36ad9
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA512:81caca5b71582b53aaac473bc37145bd66ba9acebb4773fa8cdb51f4ed7fbcb6954790d8633aad85b2826dd276bcce725e26e37997a517760e9edd72e2669a6d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2ubuntu0.1.diff.gz' pixman_0.34.0-2ubuntu0.1.diff.gz 312650 SHA512:42e1fe2dfae81f44748208cf1c9c26d3bd5da9f4bdf9be3ad610633c00831bc0452874d0d7587dcf7acc7aa35ed100cd4f348d4e7ab08ad51a3379cf81ef4dea
```

### `dpkg` source package: `poppler=0.62.0-2ubuntu2.14`

Binary Packages:

- `libpoppler73:amd64=0.62.0-2ubuntu2.14`

Licenses: (parsed from: `/usr/share/doc/libpoppler73/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris poppler=0.62.0-2ubuntu2.14
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.62.0-2ubuntu2.14.dsc' poppler_0.62.0-2ubuntu2.14.dsc 3374 SHA512:852f2bfbaa6ca846a2d60ca3947365bf28499924a47cc20a0a73a7483b4a75a623e7dd519a690bb6eb24a611fdd0fc5556ae630590b1772ca7622759f34ec42a
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.62.0.orig.tar.xz' poppler_0.62.0.orig.tar.xz 1423372 SHA512:91f7eae7b05965ae97a34e658bed2a676be8a6e4d34f82148ece6eb58932632dcf9a34d50c66412f93f560ce575abf5c608ed6b1e5184604b96024801886c706
'http://archive.ubuntu.com/ubuntu/pool/main/p/poppler/poppler_0.62.0-2ubuntu2.14.debian.tar.xz' poppler_0.62.0-2ubuntu2.14.debian.tar.xz 46652 SHA512:2fcb65b8090ad26190232beeba1e285b49396de3ba07a4a5f9b8a4c53ad281895977e2c6acc1467b85eab7eeafd308f37539dfbae3886f6d2ec78f8a387270fd
```

### `dpkg` source package: `postgresql-10=10.22-0ubuntu0.18.04.1`

Binary Packages:

- `libpq5:amd64=10.22-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libpq5/copyright`)

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

### `dpkg` source package: `proj=4.9.3-2`

Binary Packages:

- `libproj12:amd64=4.9.3-2`
- `proj-data=4.9.3-2`

Licenses: (parsed from: `/usr/share/doc/libproj12/copyright`, `/usr/share/doc/proj-data/copyright`)

- `Apache-2.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris proj=4.9.3-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.3-2.dsc' proj_4.9.3-2.dsc 2213 SHA256:60deb9c2230a2357f5f0c5ce45e2c1ebbf87081bd210424162dc747f03077d2b
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.3.orig.tar.gz' proj_4.9.3.orig.tar.gz 921448 SHA256:6984542fea333488de5c82eea58d699e4aff4b359200a9971537cd7e047185f7
'http://archive.ubuntu.com/ubuntu/pool/universe/p/proj/proj_4.9.3-2.debian.tar.xz' proj_4.9.3-2.debian.tar.xz 10474464 SHA256:782ae8d83a9720979ac35cc459f6eb169b7fcadfeed7f0103bda69945c062b93
```

### `dpkg` source package: `protobuf=3.0.0-9.1ubuntu1`

Binary Packages:

- `libprotobuf10:amd64=3.0.0-9.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libprotobuf10/copyright`)

- `Apache-2.0`
- `BSD-3-Clause~Bloomberg`
- `BSD-3-Clause~Google`
- `BSD-3-Clause~RedHat`
- `Expat`
- `GPL`
- `GPL-3`
- `GPLWithACException`
- `Public-Domain`

Source:

```console
$ apt-get source -qq --print-uris protobuf=3.0.0-9.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.0.0-9.1ubuntu1.dsc' protobuf_3.0.0-9.1ubuntu1.dsc 3063 SHA256:f21cf3939e74e92fd337e1e2ae38e2deb6070e24ca0d8877bde293adcd008560
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.0.0.orig.tar.gz' protobuf_3.0.0.orig.tar.gz 3899337 SHA256:f5b3563f118f1d3d6e001705fa7082e8fc3bda50038ac3dff787650795734146
'http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/protobuf_3.0.0-9.1ubuntu1.debian.tar.xz' protobuf_3.0.0-9.1ubuntu1.debian.tar.xz 25208 SHA256:6897f66a24609b9da3426996a691f6ff01b269b3cd60b8c7043340cd139e975a
```

### `dpkg` source package: `pulseaudio=1:11.1-1ubuntu7.11`

Binary Packages:

- `libpulse0:amd64=1:11.1-1ubuntu7.11`

Licenses: (parsed from: `/usr/share/doc/libpulse0/copyright`)

- `AGPL-3+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris pulseaudio=1:11.1-1ubuntu7.11
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_11.1-1ubuntu7.11.dsc' pulseaudio_11.1-1ubuntu7.11.dsc 3707 SHA512:67c7aa6f1a476e0a4072985830e2c0363bb1f980e41067962d045f7845a5c66a955a480f5c97a07c03776ed09f750b6b80ed2685c4c7eb51ba839cae06f2f413
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_11.1.orig.tar.xz' pulseaudio_11.1.orig.tar.xz 1648924 SHA512:8863d8d7aede0d9a4d158e84e7bece91747c335f9ac98c7b21fafe76b762f8817e1125307aa46e561e540d2c40525e91f51a55ec34ac55d58fd5980199856a7a
'http://archive.ubuntu.com/ubuntu/pool/main/p/pulseaudio/pulseaudio_11.1-1ubuntu7.11.debian.tar.xz' pulseaudio_11.1-1ubuntu7.11.debian.tar.xz 116092 SHA512:04fa7dcf5dde007fe6282d13d0658daf2f65f786bcb239a900e98140c3025e2dc137a998a1974984c37bcb1da1d9ec65d69dd5f67e9a0c2ead163a9b6c7787b7
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

### `dpkg` source package: `qhull=2015.2-4`

Binary Packages:

- `libqhull7:amd64=2015.2-4`

Licenses: (parsed from: `/usr/share/doc/libqhull7/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris qhull=2015.2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2015.2-4.dsc' qhull_2015.2-4.dsc 2270 SHA256:58fd067a3e3fc3f3f97714de599e687886ef42f0085bd786d66a1de960f9936b
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2015.2.orig.tar.gz' qhull_2015.2.orig.tar.gz 1010153 SHA256:78b010925c3b577adc3d58278787d7df08f7c8fb02c3490e375eab91bb58a436
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qhull/qhull_2015.2-4.debian.tar.xz' qhull_2015.2-4.debian.tar.xz 10816 SHA256:b1135fff216f4cf256690a8a2ecec6a775bec656d38ec12cbfda936360e4e0bb
```

### `dpkg` source package: `qtbase-opensource-src=5.9.5+dfsg-0ubuntu2.6`

Binary Packages:

- `libqt5core5a:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5dbus5:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5gui5:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5network5:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5opengl5:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5printsupport5:amd64=5.9.5+dfsg-0ubuntu2.6`
- `libqt5widgets5:amd64=5.9.5+dfsg-0ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libqt5core5a/copyright`, `/usr/share/doc/libqt5dbus5/copyright`, `/usr/share/doc/libqt5gui5/copyright`, `/usr/share/doc/libqt5network5/copyright`, `/usr/share/doc/libqt5opengl5/copyright`, `/usr/share/doc/libqt5printsupport5/copyright`, `/usr/share/doc/libqt5widgets5/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `Expat`
- `FTL`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3 with Qt-1.0 exception`
- `Harfbuzz`
- `Hybrid-BSD`
- `LGPL-2.1`
- `LGPL-2.1-or-3 with Qt-1.1 exception`
- `LGPL-3`
- `MIT`
- `Unicode`
- `W3C`
- `Zlib`
- `brg-endian`
- `libjpeg`
- `libpng`
- `public-domain`
- `wintab`

Source:

```console
$ apt-get source -qq --print-uris qtbase-opensource-src=5.9.5+dfsg-0ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.9.5%2bdfsg-0ubuntu2.6.dsc' qtbase-opensource-src_5.9.5+dfsg-0ubuntu2.6.dsc 5088 SHA512:4a81e4704176c7277e5ee42b1d914d4727018480204d5eaff1e88e4df15ed589019503a955bceab489aec1621db54569076920d6e67291031c99fe5264f20d4b
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.9.5%2bdfsg.orig.tar.xz' qtbase-opensource-src_5.9.5+dfsg.orig.tar.xz 44935364 SHA512:fd96926d965132d54212219d5cae4471d485a4fcf96884afb9588d2e4f90a2f9c8f28dec5ed07827043b090c349275ce6d7ffedef8560fa6d88e6ed6219e3d09
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtbase-opensource-src/qtbase-opensource-src_5.9.5%2bdfsg-0ubuntu2.6.debian.tar.xz' qtbase-opensource-src_5.9.5+dfsg-0ubuntu2.6.debian.tar.xz 267128 SHA512:5d08f10b6474e0d41c551dbad74288e363cc2838561dfa26fdb79b5ffa698954f30068fa562c97c6f8994eab44873ce98b2b2abb593396ac8405e3afdd45ad5e
```

### `dpkg` source package: `qtsvg-opensource-src=5.9.5-0ubuntu1.1`

Binary Packages:

- `libqt5svg5:amd64=5.9.5-0ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libqt5svg5/copyright`)

- `BSD-3-clause`
- `GFDL-1.3`
- `GFDL-NIV-1.3`
- `GPL-2`
- `GPL-2,`
- `GPL-3`
- `GPL-3 with Qt-1.0 exception`
- `LGPL-3`
- `MIT-ISI`

Source:

```console
$ apt-get source -qq --print-uris qtsvg-opensource-src=5.9.5-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.9.5-0ubuntu1.1.dsc' qtsvg-opensource-src_5.9.5-0ubuntu1.1.dsc 2892 SHA512:8bc447cb954de61afd7739ee6ee0b163ea5c340f9dca6ba36fe9855c551977ce10e5a07122d01fd87835ae96c5e693ffb6161c2e3fed8a1ed107b8404cce19bc
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.9.5.orig.tar.xz' qtsvg-opensource-src_5.9.5.orig.tar.xz 1778820 SHA512:e087f07d76833a8d215225cc7499e40ec56aac979bdaec2018918bccc89ee9eb2fcf3f41584694e29c73ab4ea531e33cf1652380e8b8f75e4b16547b17a9fd20
'http://archive.ubuntu.com/ubuntu/pool/main/q/qtsvg-opensource-src/qtsvg-opensource-src_5.9.5-0ubuntu1.1.debian.tar.xz' qtsvg-opensource-src_5.9.5-0ubuntu1.1.debian.tar.xz 14040 SHA512:4c718ab2cd00d5643c110193e2f57326a1d6673241dcb41b89a57baf67fd734232f7dd688bc11ac8b1c067e0bfbec170b9f493361971593ed416c9a2b74e6f4c
```

### `dpkg` source package: `qwt=6.1.3-1`

Binary Packages:

- `libqwt-qt5-6=6.1.3-1`

Licenses: (parsed from: `/usr/share/doc/libqwt-qt5-6/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris qwt=6.1.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.3-1.dsc' qwt_6.1.3-1.dsc 2519 SHA256:b570f0f0f01416a81cd0733b1540b537d38a39bbfe4d9ac95e2e3f5140ae377b
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.3.orig.tar.bz2' qwt_6.1.3.orig.tar.bz2 4128937 SHA256:70f21fd14ded18710171df412b5ee5c83e722d8fded86ab461fe158d6e69f0cf
'http://archive.ubuntu.com/ubuntu/pool/universe/q/qwt/qwt_6.1.3-1.debian.tar.xz' qwt_6.1.3-1.debian.tar.xz 32020 SHA256:11d58f463a62ac89530b5fa2b4ee86740cc9cce09fe9e3aa92aba163e74db336
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

### `dpkg` source package: `rubberband=1.8.1-7ubuntu2`

Binary Packages:

- `librubberband2:amd64=1.8.1-7ubuntu2`

Licenses: (parsed from: `/usr/share/doc/librubberband2/copyright`)

- `GPL-2`
- `GPL-2+`
- `other-1`
- `other-bsd-3-clause-kissft`
- `other-bsd-3-clause-speex`
- `other-bsd-4-clause-1`
- `other-bsd-4-clause-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris rubberband=1.8.1-7ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rubberband/rubberband_1.8.1-7ubuntu2.dsc' rubberband_1.8.1-7ubuntu2.dsc 2442 SHA256:43182648c1613281de9c2e64fab0da7bf1c7664169138a1184a1ef89cd2d3c69
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rubberband/rubberband_1.8.1.orig.tar.bz2' rubberband_1.8.1.orig.tar.bz2 177501 SHA256:ff0c63b0b5ce41f937a8a3bc560f27918c5fe0b90c6bc1cb70829b86ada82b75
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rubberband/rubberband_1.8.1-7ubuntu2.debian.tar.xz' rubberband_1.8.1-7ubuntu2.debian.tar.xz 9424 SHA256:2e1af1831dc0223fc5df26d131e633fc5f9ccbb68c705cfa95823db9584df15f
```

### `dpkg` source package: `sdformat6=6.3.1-1~bionic`

Binary Packages:

- `libsdformat6:amd64=6.3.1-1~bionic`
- `sdformat-sdf=6.3.1-1~bionic`

Licenses: (parsed from: `/usr/share/doc/libsdformat6/copyright`, `/usr/share/doc/sdformat-sdf/copyright`)

- `Apache`
- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris sdformat6=6.3.1-1~bionic
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/s/sdformat6/sdformat6_6.3.1-1%7ebionic.dsc' sdformat6_6.3.1-1~bionic.dsc 1398 SHA256:e210c296bb39d958021854336c8a29a1823ba257b604e8c7a68f2f4fa3e40e73
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/s/sdformat6/sdformat6_6.3.1.orig.tar.bz2' sdformat6_6.3.1.orig.tar.bz2 474497 SHA256:24f8c314b14fd3e999eead5a9b788f98395cc861bf8b562d8bccca758eddecc1
'http://packages.osrfoundation.org/gazebo/ubuntu-stable/pool/main/s/sdformat6/sdformat6_6.3.1-1%7ebionic.debian.tar.xz' sdformat6_6.3.1-1~bionic.debian.tar.xz 3348 SHA256:9aff88a3f66b6b48d378c2c208a32cc97ac770b1c0496e99d6411d6841bd2a27
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

### `dpkg` source package: `shine=3.1.1-1`

Binary Packages:

- `libshine3:amd64=3.1.1-1`

Licenses: (parsed from: `/usr/share/doc/libshine3/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris shine=3.1.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1-1.dsc' shine_3.1.1-1.dsc 2030 SHA256:66a5f46a7a0f5e7fe8264f35740009bd2c774d020f85261339a830403ecfc422
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1.orig.tar.gz' shine_3.1.1.orig.tar.gz 940443 SHA256:565b87867d6f8e6616a236445d194e36f4daa9b4e7af823fcf5010af7610c49e
'http://archive.ubuntu.com/ubuntu/pool/universe/s/shine/shine_3.1.1-1.debian.tar.xz' shine_3.1.1-1.debian.tar.xz 3488 SHA256:0752ce4cb26066d5f0fd42f4a164340c91e061bb603848e870d29e4c345e9ce9
```

### `dpkg` source package: `simbody=3.5.4+dfsg-1ubuntu2`

Binary Packages:

- `libsimbody3.5v5:amd64=3.5.4+dfsg-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libsimbody3.5v5/copyright`)

- `AS-IS`
- `Apache2`
- `BSD-3`
- `ECLIPSE-1`

Source:

```console
$ apt-get source -qq --print-uris simbody=3.5.4+dfsg-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.4%2bdfsg-1ubuntu2.dsc' simbody_3.5.4+dfsg-1ubuntu2.dsc 2382 SHA256:354188d20b3bd46e1b0f3445f5b43ef4cd244034bc4754cc7929a426106f1cd2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.4%2bdfsg.orig.tar.gz' simbody_3.5.4+dfsg.orig.tar.gz 22354343 SHA256:986d08ce4e5a8931ca89fdb8b36064e41b214cdc8a0e37fd7cb12e8f2a21f8f2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/simbody/simbody_3.5.4%2bdfsg-1ubuntu2.debian.tar.xz' simbody_3.5.4+dfsg-1ubuntu2.debian.tar.xz 11972 SHA256:115b106041321420435b10aa155ceae73f928347aab71062465588c52f86cfe5
```

### `dpkg` source package: `slang2=2.3.1a-3ubuntu1`

Binary Packages:

- `libslang2:amd64=2.3.1a-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libslang2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris slang2=2.3.1a-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.1a-3ubuntu1.dsc' slang2_2.3.1a-3ubuntu1.dsc 2401 SHA256:68966016c0ddc7de6c3d61727e10c1bc35e6f82885b0fac76bfc57e11ad7717e
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.1a.orig.tar.xz' slang2_2.3.1a.orig.tar.xz 1292048 SHA256:c37fb0dc27922b182d240e36ae781a839410738af740928288670b2851d987da
'http://archive.ubuntu.com/ubuntu/pool/main/s/slang2/slang2_2.3.1a-3ubuntu1.debian.tar.xz' slang2_2.3.1a-3ubuntu1.debian.tar.xz 24152 SHA256:011bc33f0abf437d7338ddd25e07c078da1c3c8204e4eac2aa539c99ea742c6b
```

### `dpkg` source package: `snappy=1.1.7-1`

Binary Packages:

- `libsnappy1v5:amd64=1.1.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris snappy=1.1.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.1.7-1.dsc' snappy_1.1.7-1.dsc 1785 SHA256:a2b45cc0ddc41baae02f0dd51448afef2d9a2f771253b472f0141aff6b5c640c
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.1.7.orig.tar.gz' snappy_1.1.7.orig.tar.gz 1090550 SHA256:3dfa02e873ff51a11ee02b9ca391807f0c8ea0529a4924afa645fbf97163f9d4
'http://archive.ubuntu.com/ubuntu/pool/main/s/snappy/snappy_1.1.7-1.debian.tar.xz' snappy_1.1.7-1.debian.tar.xz 5028 SHA256:b6041cea215dbc3a48c8230be97445fe0ec342bad9eb4f6ddc26ac6cb3fc4e12
```

### `dpkg` source package: `sndio=1.1.0-3`

Binary Packages:

- `libsndio6.1:amd64=1.1.0-3`

Licenses: (parsed from: `/usr/share/doc/libsndio6.1/copyright`)

- `ISC`
- `ISC-packaging`

Source:

```console
$ apt-get source -qq --print-uris sndio=1.1.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sndio/sndio_1.1.0-3.dsc' sndio_1.1.0-3.dsc 1861 SHA256:31f5b892d023550d3b4657ee74982a6053102db4869c8c8c23d3c7a8aaf2752b
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sndio/sndio_1.1.0.orig.tar.gz' sndio_1.1.0.orig.tar.gz 121018 SHA256:fcd7f845ff70f38c2898d737450b8aa3e1bb0afb9d147e8429ef22c0b2c2db57
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sndio/sndio_1.1.0-3.debian.tar.xz' sndio_1.1.0-3.debian.tar.xz 5196 SHA256:c0e5e04946b01d04f131223a9c9ee6e204ee325b50419e2160eed19a4d49d8aa
```

### `dpkg` source package: `spatialite=4.3.0a-5build1`

Binary Packages:

- `libspatialite7:amd64=4.3.0a-5build1`

Licenses: (parsed from: `/usr/share/doc/libspatialite7/copyright`)

- `BSD-4-Clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris spatialite=4.3.0a-5build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a-5build1.dsc' spatialite_4.3.0a-5build1.dsc 2437 SHA256:46b1c7da28340eb72b446f4551c1295b34ec4efc2da548c61ce82e1b03ef2640
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a.orig.tar.gz' spatialite_4.3.0a.orig.tar.gz 4440660 SHA256:88900030a4762904a7880273f292e5e8ca6b15b7c6c3fb88ffa9e67ee8a5a499
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spatialite/spatialite_4.3.0a-5build1.debian.tar.xz' spatialite_4.3.0a-5build1.debian.tar.xz 23924 SHA256:ae4875dac4e3232eaa99fc1e2789fd551a0e1345b464fc1169c533ea6f1b7b97
```

### `dpkg` source package: `speex=1.2~rc1.2-1ubuntu2.1`

Binary Packages:

- `libspeex1:amd64=1.2~rc1.2-1ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris speex=1.2~rc1.2-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2-1ubuntu2.1.dsc' speex_1.2~rc1.2-1ubuntu2.1.dsc 2339 SHA512:c065c80da02e312055abd2d9f6f5d71c43021a4a13667fa012432949756d79b7ebd459d5d7bdf9d7fa0fafa4136ba62ef9e2fd3e795cbc7b55954cef2b36aca5
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2.orig.tar.gz' speex_1.2~rc1.2.orig.tar.gz 1069339 SHA512:b523803dd2c024c20f992e8410421719c53981df3ff1c1d96bc030baddaf4729ee6a5172b8501f4c9a3194e4dafab8b79814d90624e8226bf869605505cc0bce
'http://archive.ubuntu.com/ubuntu/pool/main/s/speex/speex_1.2%7erc1.2-1ubuntu2.1.diff.gz' speex_1.2~rc1.2-1ubuntu2.1.diff.gz 10577 SHA512:4118b1f2cffe4ba01c0bc38c50cd515cb0f92cf28d27801b219a6cf0f1333ac194fa888ae4d1aae78bdbeb9d6108dc06a939e114c4833e54620d42d6ca6ef785
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

### `dpkg` source package: `superlu=5.2.1+dfsg1-3`

Binary Packages:

- `libsuperlu5:amd64=5.2.1+dfsg1-3`

Licenses: (parsed from: `/usr/share/doc/libsuperlu5/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `permissive`
- `permissive-colamd`

Source:

```console
$ apt-get source -qq --print-uris superlu=5.2.1+dfsg1-3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_5.2.1%2bdfsg1-3.dsc' superlu_5.2.1+dfsg1-3.dsc 2203 SHA256:f0d1a6cf14701616d86cdd64a6b604ddfb5200ac063a121656deb019758393a6
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_5.2.1%2bdfsg1.orig.tar.xz' superlu_5.2.1+dfsg1.orig.tar.xz 702616 SHA256:6b09d9ad5f384300e9d2c85ccabb88e748405fbf768c79d7325bf1b8aba9d5e1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/superlu/superlu_5.2.1%2bdfsg1-3.debian.tar.xz' superlu_5.2.1+dfsg1-3.debian.tar.xz 6100 SHA256:143d97303271ad64e69a3166452bc3a79bf76a2bff19a8f91df44579b8ead65c
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

### `dpkg` source package: `tbb=2017~U7-8`

Binary Packages:

- `libtbb2:amd64=2017~U7-8`

Licenses: (parsed from: `/usr/share/doc/libtbb2/copyright`)

- `Apache-2.0`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris tbb=2017~U7-8
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_2017%7eU7-8.dsc' tbb_2017~U7-8.dsc 2174 SHA256:0a120c83fbcc102ae337af9e43968200d8dcc2b189feb5c1b31cfa0c8a7a8dc0
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_2017%7eU7.orig.tar.xz' tbb_2017~U7.orig.tar.xz 1863996 SHA256:a4121cb8e91ec95c4ee462eee0ab082d74f079bc58183dd7296d7a6f831de85d
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tbb/tbb_2017%7eU7-8.debian.tar.xz' tbb_2017~U7-8.debian.tar.xz 46076 SHA256:4d8054fb02d9d5686a9490fc1b6710a6c752a200b7ffdd3cf08bea9658d9b927
```

### `dpkg` source package: `tcp-wrappers=7.6.q-27`

Binary Packages:

- `libwrap0:amd64=7.6.q-27`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tcp-wrappers=7.6.q-27
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-27.dsc' tcp-wrappers_7.6.q-27.dsc 1748 SHA256:5313bbce685bf4d4bfc1311ecdbf2a42a3acbc1d5d9fbb5c1b2e27e17d89fa9b
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q.orig.tar.gz' tcp-wrappers_7.6.q.orig.tar.gz 99438 SHA256:9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-27.debian.tar.xz' tcp-wrappers_7.6.q-27.debian.tar.xz 36060 SHA256:b73487b0faf59dfcc1074b9f11a91556713d9ae210033536f20cfd3c8bc73b36
```

### `dpkg` source package: `tiff=4.0.9-5ubuntu0.9`

Binary Packages:

- `libtiff5:amd64=4.0.9-5ubuntu0.9`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.9-5ubuntu0.9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-5ubuntu0.9.dsc' tiff_4.0.9-5ubuntu0.9.dsc 2352 SHA512:2e2c2f5a7cb37b2a59738e3a6980d6c3f7c216f4895da9067464b6ae6697e4378f930c694f9150a3e13413024963986bcef44b71583e5d267c7a21b3db33a8b9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9.orig.tar.gz' tiff_4.0.9.orig.tar.gz 2305681 SHA512:04f3d5eefccf9c1a0393659fe27f3dddd31108c401ba0dc587bca152a1c1f6bc844ba41622ff5572da8cc278593eff8c402b44e7af0a0090e91d326c2d79f6cd
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-5ubuntu0.9.debian.tar.xz' tiff_4.0.9-5ubuntu0.9.debian.tar.xz 49440 SHA512:b469a24b4d53560826438deee6788801feafb61980bcd83800cdc4a71e485b975e0aa14f00abb73c77eded40bf44dfcb2c698149087a9ad92b72182a5d989cb7
```

### `dpkg` source package: `tinyxml2=6.0.0+dfsg-1`

Binary Packages:

- `libtinyxml2-6:amd64=6.0.0+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-6/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=6.0.0+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg-1.dsc' tinyxml2_6.0.0+dfsg-1.dsc 1999 SHA256:d103b12a55f1225e61a87cabf184237be9213233972e3d7bd35a4cc926736aec
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg.orig.tar.gz' tinyxml2_6.0.0+dfsg.orig.tar.gz 352041 SHA256:ef930de291e18acef913a79bba1d2d8e387cd19cfd9fef7618895a21c909164b
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0%2bdfsg-1.debian.tar.xz' tinyxml2_6.0.0+dfsg-1.debian.tar.xz 5532 SHA256:6e6052241bc2d7cefbf915b101474185bd5a7369456fbac0f0efa53b8a3c75a6
```

### `dpkg` source package: `tinyxml=2.6.2-4`

Binary Packages:

- `libtinyxml2.6.2v5:amd64=2.6.2-4`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2.6.2v5/copyright`)

- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris tinyxml=2.6.2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-4.dsc' tinyxml_2.6.2-4.dsc 2037 SHA256:20b92fb0ce6365ba6bd780bf5fe68bdc8c013317203eaa1b955adf72ccdb3d8a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2.orig.tar.gz' tinyxml_2.6.2.orig.tar.gz 210124 SHA256:15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-4.debian.tar.xz' tinyxml_2.6.2-4.debian.tar.xz 4344 SHA256:ceb250b862165f89d0fd081d4d3174fe5843ca0573517c9acb765b5af1723002
```

### `dpkg` source package: `twolame=0.3.13-3`

Binary Packages:

- `libtwolame0:amd64=0.3.13-3`

Licenses: (parsed from: `/usr/share/doc/libtwolame0/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris twolame=0.3.13-3
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.3.13-3.dsc' twolame_0.3.13-3.dsc 2079 SHA256:f3e7b075f6b7e15f3e9d72ddd4486aeb427974a75f03fd69ec7bc64f0e38999f
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.3.13.orig.tar.gz' twolame_0.3.13.orig.tar.gz 660415 SHA256:98f332f48951f47f23f70fd0379463aff7d7fb26f07e1e24e42ddef22cc6112a
'http://archive.ubuntu.com/ubuntu/pool/main/t/twolame/twolame_0.3.13-3.debian.tar.xz' twolame_0.3.13-3.debian.tar.xz 4352 SHA256:5d1806d16825de652a1c956afbd77739a7d7f1494cf8b238f2f85ed4c94d173f
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

### `dpkg` source package: `unixodbc=2.3.4-1.1ubuntu3`

Binary Packages:

- `libodbc1:amd64=2.3.4-1.1ubuntu3`
- `odbcinst=2.3.4-1.1ubuntu3`
- `odbcinst1debian2:amd64=2.3.4-1.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libodbc1/copyright`, `/usr/share/doc/odbcinst/copyright`, `/usr/share/doc/odbcinst1debian2/copyright`)

- `GPL`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.4-1.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.dsc' unixodbc_2.3.4-1.1ubuntu3.dsc 2213 SHA256:82ff3dc47665081d287c98f2d8c1390819c176d4d23378a65010b7860827b06f
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4.orig.tar.gz' unixodbc_2.3.4.orig.tar.gz 1830660 SHA256:2e1509a96bb18d248bf08ead0d74804957304ff7c6f8b2e5965309c632421e39
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.diff.gz' unixodbc_2.3.4-1.1ubuntu3.diff.gz 19700 SHA256:7b533e947f1a0c49541668924b3679e8fe7dac75a3759081a6ac82f0c55f9184
```

### `dpkg` source package: `uriparser=0.8.4-1+deb9u2ubuntu0.1`

Binary Packages:

- `liburiparser1:amd64=0.8.4-1+deb9u2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liburiparser1/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris uriparser=0.8.4-1+deb9u2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4-1%2bdeb9u2ubuntu0.1.dsc' uriparser_0.8.4-1+deb9u2ubuntu0.1.dsc 2107 SHA512:f7bc17d01fcec159c81c12e614023670bf6a831805f495c69aebae5d737f4d50838a0784a8e4c376dbabe7026294a4a41784abff0ce2d2b313f03d4d1b66be94
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4.orig.tar.bz2' uriparser_0.8.4.orig.tar.bz2 358408 SHA512:b6238c6495eaa9f7178269d66dbea05a39c51c27137d8ebf39cd02d1c3fa96aa0d1608f5ccb36bf7b454f3238830dd46d7de8299b608f185b2520fc2c955aa1a
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uriparser/uriparser_0.8.4-1%2bdeb9u2ubuntu0.1.debian.tar.xz' uriparser_0.8.4-1+deb9u2ubuntu0.1.debian.tar.xz 11124 SHA512:a2e72b04b8a2c810818b0df7a0ef692a0a11f0bdbcd4dcdc0b5e913c32d5e20fb7e5b82c5f50084af426b41c873016c7e86104d0af927ded0e9405eeba02c402
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

### `dpkg` source package: `wavpack=5.1.0-2ubuntu1.5`

Binary Packages:

- `libwavpack1:amd64=5.1.0-2ubuntu1.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris wavpack=5.1.0-2ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_5.1.0-2ubuntu1.5.dsc' wavpack_5.1.0-2ubuntu1.5.dsc 2215 SHA512:693bb42009e4f72364567b9f6962d1ec5a851bb9d2dd196c1d6f57b93a220108dea3403c7185feee3f1a2a2eabdece4c11b61cf306eaa04b85f92ccd04a46de7
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_5.1.0.orig.tar.bz2' wavpack_5.1.0.orig.tar.bz2 824331 SHA512:4c31616ae63c3a875afa20f26ce935f7a8f9921e2892b4b8388eca3ccd83b2d686f43eed8b9ec1dead934a1148401b9dced3b05f509b7942c48d7af31cf80a54
'http://archive.ubuntu.com/ubuntu/pool/main/w/wavpack/wavpack_5.1.0-2ubuntu1.5.debian.tar.xz' wavpack_5.1.0-2ubuntu1.5.debian.tar.xz 12020 SHA512:15aa44aa1d74adc9a90b0a4bd4d183b2b43deba047b82feda46393d736649802353753800dd3e0db5735b8a26472fd67e70df108aa69dc2fd0e5bbeb4905a40b
```

### `dpkg` source package: `wayland=1.16.0-1ubuntu1.1~18.04.4`

Binary Packages:

- `libwayland-client0:amd64=1.16.0-1ubuntu1.1~18.04.4`
- `libwayland-cursor0:amd64=1.16.0-1ubuntu1.1~18.04.4`
- `libwayland-egl1:amd64=1.16.0-1ubuntu1.1~18.04.4`
- `libwayland-server0:amd64=1.16.0-1ubuntu1.1~18.04.4`

Licenses: (parsed from: `/usr/share/doc/libwayland-client0/copyright`, `/usr/share/doc/libwayland-cursor0/copyright`, `/usr/share/doc/libwayland-egl1/copyright`, `/usr/share/doc/libwayland-server0/copyright`)

- `X11`

Source:

```console
$ apt-get source -qq --print-uris wayland=1.16.0-1ubuntu1.1~18.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.16.0-1ubuntu1.1%7e18.04.4.dsc' wayland_1.16.0-1ubuntu1.1~18.04.4.dsc 2468 SHA512:ef2d1dc712a8aa12ecc3a7afc3ded0c7c8a022bb8b7bea6b02c2efc4e16af5dd4ff20a9e9f8253f1b194d5d9817010483f8870c103ae104e28562ce2a8bf11b5
'http://archive.ubuntu.com/ubuntu/pool/main/w/wayland/wayland_1.16.0-1ubuntu1.1%7e18.04.4.tar.gz' wayland_1.16.0-1ubuntu1.1~18.04.4.tar.gz 326458 SHA512:d70d238c1a4e6e36895639075fe09577ba1c6b7fc4ac8016ab371466c537aa035d89ce2c234a98460bd1a0d8028110ec6fee249b62667ab9dec1c7a8353c6d80
```

### `dpkg` source package: `x264=2:0.152.2854+gite9a5903-2`

Binary Packages:

- `libx264-152:amd64=2:0.152.2854+gite9a5903-2`

Licenses: (parsed from: `/usr/share/doc/libx264-152/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with other exception`
- `ISC`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris x264=2:0.152.2854+gite9a5903-2
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.152.2854%2bgite9a5903-2.dsc' x264_0.152.2854+gite9a5903-2.dsc 2469 SHA256:df456fc46c606550c87a8cd4fefee72cd6981acccda66c9ec363e7913fd225dd
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.152.2854%2bgite9a5903.orig.tar.gz' x264_0.152.2854+gite9a5903.orig.tar.gz 912193 SHA256:8b623844222e23ae1f166a58575967d41e8a4478b43c4b2ff4b75dbcdd1f2d82
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/x264_0.152.2854%2bgite9a5903-2.debian.tar.xz' x264_0.152.2854+gite9a5903-2.debian.tar.xz 23472 SHA256:a26888df268e5222a137fd09cb871e446d1edd8ca4f57e76eef92f1338277a98
```

### `dpkg` source package: `x265=2.6-3`

Binary Packages:

- `libx265-146:amd64=2.6-3`

Licenses: (parsed from: `/usr/share/doc/libx265-146/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris x265=2.6-3
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_2.6-3.dsc' x265_2.6-3.dsc 2253 SHA256:9d23c37afb383646216502fae2ff7e45396c759aea4f3e8b215e21ef14115801
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_2.6.orig.tar.gz' x265_2.6.orig.tar.gz 1271976 SHA256:1bf0036415996af841884802161065b9e6be74f5f6808ac04831363e2549cdbf
'http://archive.ubuntu.com/ubuntu/pool/universe/x/x265/x265_2.6-3.debian.tar.xz' x265_2.6-3.debian.tar.xz 12856 SHA256:4ac9f0b06d67a95773b150a378d1e126f1bd5d96be3cc452d6266686b7e8b893
```

### `dpkg` source package: `xcb-util-image=0.4.0-1build1`

Binary Packages:

- `libxcb-image0:amd64=0.4.0-1build1`

Licenses: (parsed from: `/usr/share/doc/libxcb-image0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-image=0.4.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0-1build1.dsc' xcb-util-image_0.4.0-1build1.dsc 2203 SHA256:06054630452521765015e5b3eb83865e7b208a16856c7441de05920092347062
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0.orig.tar.bz2' xcb-util-image_0.4.0.orig.tar.bz2 327891 SHA256:2db96a37d78831d643538dd1b595d7d712e04bdccf8896a5e18ce0f398ea2ffc
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-image/xcb-util-image_0.4.0-1build1.debian.tar.xz' xcb-util-image_0.4.0-1build1.debian.tar.xz 4584 SHA256:7db5db856a24b5944979e25c06fefc5da315677c40a9d2cab421aec055474794
```

### `dpkg` source package: `xcb-util-keysyms=0.4.0-1`

Binary Packages:

- `libxcb-keysyms1:amd64=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/libxcb-keysyms1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-keysyms=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0-1.dsc' xcb-util-keysyms_0.4.0-1.dsc 1529 SHA256:7dd5419ccc060295ef0bb4815ca6406af490d3b950eed43905882cab95082ebf
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0.orig.tar.bz2' xcb-util-keysyms_0.4.0.orig.tar.bz2 289880 SHA256:0ef8490ff1dede52b7de533158547f8b454b241aa3e4dcca369507f66f216dd9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-keysyms/xcb-util-keysyms_0.4.0-1.debian.tar.xz' xcb-util-keysyms_0.4.0-1.debian.tar.xz 4228 SHA256:c26e5a78a50dff072d1b701b680b211431ace0faa1f19300768eab895f2b8637
```

### `dpkg` source package: `xcb-util-renderutil=0.3.9-1`

Binary Packages:

- `libxcb-render-util0:amd64=0.3.9-1`

Licenses: (parsed from: `/usr/share/doc/libxcb-render-util0/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-renderutil=0.3.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9-1.dsc' xcb-util-renderutil_0.3.9-1.dsc 1602 SHA256:00d89cea2ad48c087126083e49f53b352fbf794931c7a3a9dcde727c4097649f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9.orig.tar.bz2' xcb-util-renderutil_0.3.9.orig.tar.bz2 292898 SHA256:c6e97e48fb1286d6394dddb1c1732f00227c70bd1bedb7d1acabefdd340bea5b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-renderutil/xcb-util-renderutil_0.3.9-1.debian.tar.xz' xcb-util-renderutil_0.3.9-1.debian.tar.xz 4292 SHA256:6febe28c38155aa90ec866dbc8b7446494662cc09f3a38be392f21c90fa0b4ec
```

### `dpkg` source package: `xcb-util-wm=0.4.1-1ubuntu1`

Binary Packages:

- `libxcb-icccm4:amd64=0.4.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libxcb-icccm4/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util-wm=0.4.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1-1ubuntu1.dsc' xcb-util-wm_0.4.1-1ubuntu1.dsc 2349 SHA256:3395ae9ee3cab9d0d84d728f5f860a78222ea00d82797267fdcb50b08c702a75
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1.orig.tar.gz' xcb-util-wm_0.4.1.orig.tar.gz 395835 SHA256:038b39c4bdc04a792d62d163ba7908f4bb3373057208c07110be73c1b04b8334
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util-wm/xcb-util-wm_0.4.1-1ubuntu1.debian.tar.gz' xcb-util-wm_0.4.1-1ubuntu1.debian.tar.gz 4679 SHA256:51c439e1e8f58990e3d74f546c925bc9ee8a343721ce15a85e86c3256eadfce8
```

### `dpkg` source package: `xcb-util=0.4.0-0ubuntu3`

Binary Packages:

- `libxcb-util1:amd64=0.4.0-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libxcb-util1/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT/X Consortium License`

Source:

```console
$ apt-get source -qq --print-uris xcb-util=0.4.0-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0-0ubuntu3.dsc' xcb-util_0.4.0-0ubuntu3.dsc 1556 SHA256:6a8dd8a53fedd333fbe081ed715d7207f085d59fa38fcaa6d52ffbdf9c221917
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0.orig.tar.gz' xcb-util_0.4.0.orig.tar.gz 362923 SHA256:0ed0934e2ef4ddff53fcc70fc64fb16fe766cd41ee00330312e20a985fd927a7
'http://archive.ubuntu.com/ubuntu/pool/main/x/xcb-util/xcb-util_0.4.0-0ubuntu3.debian.tar.xz' xcb-util_0.4.0-0ubuntu3.debian.tar.xz 4648 SHA256:89d029b7ee5dd96794fb7db9a8ac168952a6cb9b1ac77f24967d327ca6fe1436
```

### `dpkg` source package: `xerces-c=3.2.0+debian-2`

Binary Packages:

- `libxerces-c3.2:amd64=3.2.0+debian-2`

Licenses: (parsed from: `/usr/share/doc/libxerces-c3.2/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-2+ with Autoconf exception`
- `GPL-2+ with Libtool exception`
- `GPL-3`
- `GPL-3+ with Autoconf exception`
- `X11-install-sh`
- `permissive-configure`
- `permissive-fsf`
- `xerces-Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris xerces-c=3.2.0+debian-2
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.0%2bdebian-2.dsc' xerces-c_3.2.0+debian-2.dsc 2252 SHA256:126ad6bc0beffeb8dce7fccb66ce1b63e2298387502dd8e1bb92ef53570c9a90
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.0%2bdebian.orig.tar.gz' xerces-c_3.2.0+debian.orig.tar.gz 2456570 SHA256:78a246cb973f319c257a230bf6be3551104e04c7e7d94bbd3aa45f2c8822c016
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xerces-c/xerces-c_3.2.0%2bdebian-2.debian.tar.xz' xerces-c_3.2.0+debian-2.debian.tar.xz 22084 SHA256:fbe820380a85d6c3f55359587a992ea0da5b8426434dc628b04a89e5d8cc8c56
```

### `dpkg` source package: `xkeyboard-config=2.23.1-1ubuntu1.18.04.1`

Binary Packages:

- `xkb-data=2.23.1-1ubuntu1.18.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xkeyboard-config=2.23.1-1ubuntu1.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.23.1-1ubuntu1.18.04.1.dsc' xkeyboard-config_2.23.1-1ubuntu1.18.04.1.dsc 1645 SHA512:9abc336013fbb13322699f8ade9c0a1a97c5d19c83f2c34c3c497c716fd824a3355e9c8b8ba023557583ff5e75ea90819ad3594bdce1a71612e2af562c0e88b3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.23.1.orig.tar.gz' xkeyboard-config_2.23.1.orig.tar.gz 1599103 SHA512:2f11039e48b1a0f45d5c3c5e1b7a3c915b1d6050972b11434ec13caafe3948c5bde6f4bba856c4e1fa7408ccd2680d39c5250ab267558b55f2b010528dc73016
'http://archive.ubuntu.com/ubuntu/pool/main/x/xkeyboard-config/xkeyboard-config_2.23.1-1ubuntu1.18.04.1.diff.gz' xkeyboard-config_2.23.1-1ubuntu1.18.04.1.diff.gz 52509 SHA512:639f52ff248d0feb17b02e71ff11d4ea7e9b23d88c9917d4e0441eb2352f70c60575e08f3d51f73bca8b3a2860ce97ccb2d1ee61bdbd8d4e519dfe2a1da92e7b
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

### `dpkg` source package: `xvidcore=2:1.3.5-1`

Binary Packages:

- `libxvidcore4:amd64=2:1.3.5-1`

Licenses: (parsed from: `/usr/share/doc/libxvidcore4/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xvidcore=2:1.3.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.5-1.dsc' xvidcore_1.3.5-1.dsc 2131 SHA256:36b1e21f8767346d8698c13ad560961336726c2cb206b7097715d421abdf8192
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.5.orig.tar.bz2' xvidcore_1.3.5.orig.tar.bz2 698846 SHA256:7c20f279f9d8e89042e85465d2bcb1b3130ceb1ecec33d5448c4589d78f010b4
'http://archive.ubuntu.com/ubuntu/pool/universe/x/xvidcore/xvidcore_1.3.5-1.debian.tar.xz' xvidcore_1.3.5-1.debian.tar.xz 6180 SHA256:06166aa04159f8c451d53f1ae70cbf65a65d325b4769f779dc009894ca801e08
```

### `dpkg` source package: `xz-utils=5.2.2-1.3ubuntu0.1`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3ubuntu0.1`

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

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.dsc' xz-utils_5.2.2-1.3ubuntu0.1.dsc 2661 SHA512:2ce48f364229361c75c56216b25290df301f0016ad98b326280327750945586fcebcba6c58dfabd6ca703582e75771de3917c438d130dc6f53d00f771479ab0a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA512:949ef90669a31b9855c5328d7f9d7e2e537c8072b700b1d2f5d69c307eb7f7635a2a4b1b5bb1bb300fba9429355a6d8935b803c505be5c0104bda9e81d0cf477
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA512:7d0c8ac212731a5d7364d2d29467eafa831a5703b91e894ff90025c632605e669333d14e61c6d9b86ab38bc3f598f0a8774b7ff7abc088ca893a2776f8aee576
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz' xz-utils_5.2.2-1.3ubuntu0.1.debian.tar.xz 110048 SHA512:ec41e17d0e2e3e54a888798236fcbff9bfd3a4b65a3416790095e832b29b08d8507248d5db3d33c1b0066fe282b79066f583f8fbc7e32ea98b7722f8d480abf8
```

### `dpkg` source package: `zeromq3=4.2.5-1ubuntu0.2`

Binary Packages:

- `libzmq5:amd64=4.2.5-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libzmq5/copyright`)

- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-3`
- `LGPL-3.0+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris zeromq3=4.2.5-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.2.5-1ubuntu0.2.dsc' zeromq3_4.2.5-1ubuntu0.2.dsc 1973 SHA512:63b6318b3c835b5cab4c8589d9d66f1bd3765ab45565707e777fac19ed0cd671fe13e763358c238bcb5c4b8a694998500d3138e9509e56c61034d1fdb11bb824
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.2.5.orig.tar.gz' zeromq3_4.2.5.orig.tar.gz 1409447 SHA512:4556cb50d05a6d133015a0ba804d6d951a47479a33fa29561eaeecb93d48b7bb6477365d0986c38b779f500cadaf08522c4a7aa13f5510303bd923f794d37036
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zeromq3/zeromq3_4.2.5-1ubuntu0.2.debian.tar.xz' zeromq3_4.2.5-1ubuntu0.2.debian.tar.xz 22840 SHA512:9618ff385a838b28756488663271a6da228b941b462aea99edec6ab7be7159be62b8777c7ce9dc5894f93bd7f34385eb3040a1abae76be0757ed232e5e29e423
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2.2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.dsc' zlib_1.2.11.dfsg-0ubuntu2.2.dsc 2412 SHA512:ce7274a30b09b16a7da4206b0c69853511c3f8bad780b32226ae17e43765622d900092dcb72f86b16726e54d617cc0adbcd220dbd3c6e731c62689a459189984
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA512:ffa49436c80fc94555a36a1f2f1f025b223055e02e43f297a572dd5df56d88421dfc36fcbbf0825fbdad876cb0c104f1846af51cca66cac57bbfe698c4365731
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.2.debian.tar.xz 23148 SHA512:0b5bbd7ff0af3bdec1497619e036253bc5a6ea38bbe62d31aff51f9c0df3d341056376d4474f3194a619279b41392b81f9e4c944d4bf44faa8ab8052450e7517
```

### `dpkg` source package: `zvbi=0.2.35-13`

Binary Packages:

- `libzvbi-common=0.2.35-13`
- `libzvbi0:amd64=0.2.35-13`

Licenses: (parsed from: `/usr/share/doc/libzvbi-common/copyright`, `/usr/share/doc/libzvbi0/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris zvbi=0.2.35-13
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35-13.dsc' zvbi_0.2.35-13.dsc 2109 SHA256:8ac47d2f6354995b0302f780ae4447388e1929d72d3bf9ab893a5e87deba4399
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35.orig.tar.bz2' zvbi_0.2.35.orig.tar.bz2 1047761 SHA256:fc883c34111a487c4a783f91b1b2bb5610d8d8e58dcba80c7ab31e67e4765318
'http://archive.ubuntu.com/ubuntu/pool/universe/z/zvbi/zvbi_0.2.35-13.debian.tar.xz' zvbi_0.2.35-13.debian.tar.xz 15184 SHA256:9199d10d014a76498dc6ef08424b13863c689775e877e3d425d8437b85895886
```

### `dpkg` source package: `zziplib=0.13.62-3.1ubuntu0.18.04.1`

Binary Packages:

- `libzzip-0-13:amd64=0.13.62-3.1ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libzzip-0-13/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris zziplib=0.13.62-3.1ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62-3.1ubuntu0.18.04.1.dsc' zziplib_0.13.62-3.1ubuntu0.18.04.1.dsc 2175 SHA512:d747169f37b1604213b8cb12f9275257c99a4443212ad70cb22bff47ea09f3b474138eeac749effbc0704ade730859d5e96a0b3babe66bd668cd3354bef3761e
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62.orig.tar.bz2' zziplib_0.13.62.orig.tar.bz2 685770 SHA512:fd3b9e9015ba7603bdebd8f6a2ac6d11003705bfab22f3a0025f75455042664aea69440845b59e6f389417dff5ac777f49541d8cbacb2a220e67d20bb6973e25
'http://archive.ubuntu.com/ubuntu/pool/main/z/zziplib/zziplib_0.13.62-3.1ubuntu0.18.04.1.debian.tar.xz' zziplib_0.13.62-3.1ubuntu0.18.04.1.debian.tar.xz 15524 SHA512:bef63f4ab3008c2afa28c40e7ad35fff461b1097dad98f91c40140cf247857c9d951aa169047ccb3fc9abd1b859ef5c9a3882bb26dd921bef97ccf4b31d7016b
```
