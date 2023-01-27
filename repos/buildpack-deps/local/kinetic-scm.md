# `buildpack-deps:kinetic-scm`

## Docker Metadata

- Image ID: `sha256:e0c0aa51b2829105536dc1486c99a258d521fc4da774c26f5946df4b7336847f`
- Created: `2022-12-09T04:03:50.435720596Z`
- Virtual Size: ~ 218.94 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.3.1-1`

Binary Packages:

- `libacl1:amd64=2.3.1-1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1-1.dsc' acl_2.3.1-1.dsc 2486 SHA512:8eb7f71030d7c4d355886390f12ffd7f66605bb2082a9a9de2eea0918aefe7b7cf1c26a3f8872681f5b3074df1cf07c4d01ae564bcba5b400b048b0e34b233c2
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1.orig.tar.xz' acl_2.3.1.orig.tar.xz 355676 SHA512:7d02f05d17305f8587ab485395b00c7fdb8e44c1906d0d04b70a43a3020803e8b2b8c707abb6147f794867dfa87bd51769c2d3e11a3db55ecbd2006a6e6231dc
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1.orig.tar.xz.asc' acl_2.3.1.orig.tar.xz.asc 833 SHA512:be046f3bf1ac7e21d2a07bf6ea87c1fedeed2f9d370d8bf3de1aa0c448de5484b1523697415849b6b7ca23e48e3df5353f6aebe850eb20fc2044d2681c71f298
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.1-1.debian.tar.xz' acl_2.3.1-1.debian.tar.xz 27732 SHA512:2fdfcd8daa1919e850cd3ed634b4141d65bbf7847eaf0a7899b6e8ae52fe2fa15de3378f6487a9224d00eb530cf5b285cc3b6272af66fcdcf1f29f2838648083
```

### `dpkg` source package: `adduser=3.121ubuntu1`

Binary Packages:

- `adduser=3.121ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.121ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.121ubuntu1.dsc' adduser_3.121ubuntu1.dsc 1804 SHA512:5d884c2b792bb2197c4d9855f06a1c778a346d8473f77f836fab34ff3adeb9197c7221bca622a92bb5f20fdadb53abb6538b6da2ed4f80d7f83ac84e55cf4464
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.121ubuntu1.tar.xz' adduser_3.121ubuntu1.tar.xz 228260 SHA512:0d47de2e87f6e4327831eb875b5db322d197e50c207f2b574297cd0e782ced11dfffd2f6c1cc42d1d49efecfd491bbc26a26cb99a62cacb1a34a201c5ceab4c7
```

### `dpkg` source package: `apr-util=1.6.1-5ubuntu4`

Binary Packages:

- `libaprutil1:amd64=1.6.1-5ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-5ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-5ubuntu4.dsc' apr-util_1.6.1-5ubuntu4.dsc 2266 SHA512:ed049fbfc6316f2c014c0933851de8fa3d671d62ef9e68f153ba39d9e0bcbd9a627fee9902773fca85c6bb35b264ddc247f50aacd3f1773175be09cfd0d1a585
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA512:40eff8a37c0634f7fdddd6ca5e596b38de15fd10767a34c30bbe49c632816e8f3e1e230678034f578dd5816a94f246fb5dfdf48d644829af13bf28de3225205d
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-5ubuntu4.debian.tar.xz' apr-util_1.6.1-5ubuntu4.debian.tar.xz 342880 SHA512:01795e95ce4b5003c3622925151caea9bdf0104d33f1d4ef4279429bfdf4a381749e6019658bdc9037fabde0aab6c9f6b437e81303b89364f0f5385f34ad4070
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

### `dpkg` source package: `apt=2.5.3`

Binary Packages:

- `apt=2.5.3`
- `libapt-pkg6.0:amd64=2.5.3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.5.3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.5.3.dsc' apt_2.5.3.dsc 2933 SHA512:fb662b81a6f3474217aa6f3b3ae25e8a43ad3310bb87b82567fa8d5adf0db4f43ecc2b1008a6b509fd1e5200a9b1b8907eebddcb4875f0119610cbde73e74d59
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.5.3.tar.xz' apt_2.5.3.tar.xz 2322196 SHA512:0681efbfc8de04760462410bbb8bdaeff3fb2833709ac4b7bda72b5fb2a530fe6d520a3702ff02bff9bd583bb7bb146885f5ca193f4996803e838d0c0dd44ab6
```

### `dpkg` source package: `attr=1:2.5.1-1build1`

Binary Packages:

- `libattr1:amd64=1:2.5.1-1build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1-1build1.dsc' attr_2.5.1-1build1.dsc 2134 SHA512:4beeec510cf7976a3b2c0de3b90974ef03886b3a98ccb2b74f6278ed988727af3a0fa432d86aefd3bdb4bc50e29b3351f11fd892512407203f3e61636290ae15
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1.orig.tar.xz' attr_2.5.1.orig.tar.xz 318188 SHA512:9e5555260189bb6ef2440c76700ebb813ff70582eb63d446823874977307d13dfa3a347dfae619f8866943dfa4b24ccf67dadd7e3ea2637239fdb219be5d2932
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1.orig.tar.xz.asc' attr_2.5.1.orig.tar.xz.asc 833 SHA512:be4f3629ef66bd400bcdeaf8b6b1564dc729472a514d59fb4909a30f3269711dedea16002283e9aabbf83c374e0a3d70bc00f1136da0fed66a8184acdfd7e78f
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.1-1build1.debian.tar.xz' attr_2.5.1-1build1.debian.tar.xz 28032 SHA512:c9d0869a3bb9f8019e6764fee3a78d8b1b9a3cdb37968aac19a9a7e7bbeeaadcbad86d5363ce3b0e26b5a178a4d446e4097d095e17b7a6d7f3e595d07176675c
```

### `dpkg` source package: `audit=1:3.0.7-1ubuntu1`

Binary Packages:

- `libaudit-common=1:3.0.7-1ubuntu1`
- `libaudit1:amd64=1:3.0.7-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0.7-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1ubuntu1.dsc' audit_3.0.7-1ubuntu1.dsc 2521 SHA512:247724f2209f20aaec694e5ac5a3b6a314ff326a90e81e71d212a1a5542cdf401f984c9dcc9e99808d9897a3f63fb983538aad8437b02c1e49dd37124d2b88ed
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7.orig.tar.gz' audit_3.0.7.orig.tar.gz 1180226 SHA512:b5662b32082fc2ac54e247aa0db5442d76afa30134ebba1d624a17004e9ccf6856bb75344af4ce9d9a0a66c03e1c6f18b7d45658d7df13ea71af0c8362e08d70
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1ubuntu1.debian.tar.xz' audit_3.0.7-1ubuntu1.debian.tar.xz 18800 SHA512:ea4843cf1a065eb98e1ab569464b754d88292673cf84459d56785cab20b8c2ebcf825ad9323c310835a5d2ba96e09c787ee2230d0b7ce186718a8759c132f372
```

### `dpkg` source package: `base-files=12.2ubuntu3`

Binary Packages:

- `base-files=12.2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=12.2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12.2ubuntu3.dsc' base-files_12.2ubuntu3.dsc 1598 SHA512:2d95d50e7d453858677bcef791ac4ec9ea242002f9786362398a1071977e2741b4ae440bd5e37e89c304e11918b45d559285e495b9862e610dca02e1f6752026
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12.2ubuntu3.tar.xz' base-files_12.2ubuntu3.tar.xz 92584 SHA512:bb80be970f8ea6cd6dc44ea58b18c225f93d94c7e53d88d75aa82f5d3f579a86b2f514ab056905e996c2e0b0efb9d0a303dfd9d0d14ddbecc293a1797e06a8a9
```

### `dpkg` source package: `base-passwd=3.6.0`

Binary Packages:

- `base-passwd=3.6.0`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.0
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.0.dsc' base-passwd_3.6.0.dsc 1740 SHA512:071f78ea02c72aaa2e04f7b86ec603926e24e9059618c92e4bfd37f534df30ec5a4f76e7bcc7bd1f743b4f429c79cbd8dc6119185404339e5985bda1f1723e6e
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.0.tar.xz' base-passwd_3.6.0.tar.xz 55648 SHA512:1f799df35a792e9e2ed2a157260d0f94dfd78111fa235288cc0381fc7c4e88a185d98af401aa3b88b82fc8aacc8ba47074b08e8c799e564c73b1023a9bd3afca
```

### `dpkg` source package: `bash=5.2-1ubuntu2`

Binary Packages:

- `bash=5.2-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.2-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2-1ubuntu2.dsc' bash_5.2-1ubuntu2.dsc 2422 SHA512:2ce1f0186b3a1db8c2c6a96891e980938e088e1091eeccab890ed6a79933629557d7cfe76006c7b67d574e8f7b2651ac10db7ef5d8e12604e60636f4d34dd788
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2.orig.tar.xz' bash_5.2.orig.tar.xz 5886100 SHA512:2aa66d4f25bce7bb3d5275eca16e8697916780811799d5f7b27a1d39b3e04f462424e3760725f17eb2fd64dce1f7573375858a97eee03a557e5a46a0db818053
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.2-1ubuntu2.debian.tar.xz' bash_5.2-1ubuntu2.debian.tar.xz 92980 SHA512:acfd80a2edc9881e79219de7fe3b4a0da7e672313e4d40c0ccf40ff9d30f7ee189fcc302e57fabb9c22e02c2a488f6eeaba867caed9d7c846ea74b6bf7c2eab7
```

### `dpkg` source package: `brotli=1.0.9-2build6`

Binary Packages:

- `libbrotli1:amd64=1.0.9-2build6`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.0.9-2build6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9-2build6.dsc' brotli_1.0.9-2build6.dsc 1940 SHA512:9294702945cdaadad51f8690e7454d06b3281f94429123a4353cfdcce9eac598e9ad827f97f74798a7e958147aafec059022214b3bb7fe1db6337bebec2774b4
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9.orig.tar.gz' brotli_1.0.9.orig.tar.gz 486984 SHA512:b8e2df955e8796ac1f022eb4ebad29532cb7e3aa6a4b6aee91dbd2c7d637eee84d9a144d3e878895bb5e62800875c2c01c8f737a1261020c54feacf9f676b5f5
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.0.9-2build6.debian.tar.xz' brotli_1.0.9-2build6.debian.tar.xz 5812 SHA512:a50a2e8ce37aa228c3074f657d5591cd509f6b34e78b3b16b044072886c184623994a6420e5c0759a2bab1df26ba69462692c7d2c59bdc72f9683b7df884771c
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

### `dpkg` source package: `ca-certificates=20211016ubuntu0.22.10.1`

Binary Packages:

- `ca-certificates=20211016ubuntu0.22.10.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20211016ubuntu0.22.10.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.22.10.1.dsc' ca-certificates_20211016ubuntu0.22.10.1.dsc 1878 SHA512:2e17a66089242556f8312cb57eb084cd4fca3c9af25d41f6537fa7cd598660a9408d76fcc0c1b15176267f7931cf7035aa40c8390eeeb750921e09ce716ce7c7
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20211016ubuntu0.22.10.1.tar.xz' ca-certificates_20211016ubuntu0.22.10.1.tar.xz 239808 SHA512:d8afa7f2bbf5319e5c1679b1779e55a25fd275200203e2a2c5c7df89fd775c0cb81aacb06d09201f111dedc23db096068f4f1c9e5cba90a396c3300ce2d4ad42
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

### `dpkg` source package: `curl=7.85.0-1ubuntu0.1`

Binary Packages:

- `curl=7.85.0-1ubuntu0.1`
- `libcurl3-gnutls:amd64=7.85.0-1ubuntu0.1`
- `libcurl4:amd64=7.85.0-1ubuntu0.1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg-6ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg-6ubuntu2.dsc' cyrus-sasl2_2.1.28+dfsg-6ubuntu2.dsc 3570 SHA512:48551795a90890c16e4cf472ba165aba14fabadf4efa12c27bfb834d722a5a9b2ba82553317046f4709a110f008cbf725e6a33ea0dde7702ee80fc9e5528859b
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg.orig.tar.xz 797472 SHA512:70cccbac70e71828f1345beba5c78c14332e425b75c84a66393cf62ecf6848741c5912697fc0197516f1d4c41ec8c9644506a6241588b8f6bf5bba79edd8b15a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg-6ubuntu2.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg-6ubuntu2.debian.tar.xz 97164 SHA512:8ca80fbba9f1f2a2dacf04e57a229dad7dba9932b48cf34fb75b567f86b71f86b40c82ed32e4b391f19fac02503a272033e795819d796c36ccfe58fb81cebf4e
```

### `dpkg` source package: `dash=0.5.11+git20210903+057cd650a4ed-8ubuntu1`

Binary Packages:

- `dash=0.5.11+git20210903+057cd650a4ed-8ubuntu1`

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
$ apt-get source -qq --print-uris dash=0.5.11+git20210903+057cd650a4ed-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-8ubuntu1.dsc' dash_0.5.11+git20210903+057cd650a4ed-8ubuntu1.dsc 2208 SHA512:e0dde76140d2c0c62a8172ab46483d56277748162b75f0dc2ffff39ca437270648f4a63fc46cb690f83844bf8f98f87d7999705b34d4332454c07dce4cdf549f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed.orig.tar.xz' dash_0.5.11+git20210903+057cd650a4ed.orig.tar.xz 133320 SHA512:eced6bc60ca6ba4394a2ee65d8c6b88eca729c43e47053fc01dec5500ebe002a12f536c128c3fd821a2eb61b97e92c8a0be6d4532926479ce4b7d986be109cb7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-8ubuntu1.debian.tar.xz' dash_0.5.11+git20210903+057cd650a4ed-8ubuntu1.debian.tar.xz 35656 SHA512:7e0247e4d7577ad5889c0ae488e465a610ddf829b325d6f1ab763599bf7e261333bf6f7d3878a3ba392962b107d42df8e5a9350264f7e76700c402b753da054d
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

Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.10
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.10.dsc' db5.3_5.3.28+dfsg1-0.10.dsc 2964 SHA512:0adddce042d8e46b91811959770fa966d2bcc8dd9c9aecb24bc98edfec6c33dc68f4f8739da191788d837636af977b467c30f2c186d967dc58f98a6b126c8b2f
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA512:50cb87bc3f24065839ee2932e82af032b236b290ebe89983076f503c6c62c5f36ff93d7847a3f68b2b19f35088fbab5d3ac6a34553d07e8148e68e9a3f079a12
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.10.debian.tar.xz' db5.3_5.3.28+dfsg1-0.10.debian.tar.xz 34656 SHA512:e755ddbd4cfe0ac2f5204ea8366471361a2362f2f2989a2b1bf6fe9dc3f96736166d848bc0e11295675981056802b7e9df3742821642469926cb54aadf678a98
```

### `dpkg` source package: `debconf=1.5.79ubuntu1`

Binary Packages:

- `debconf=1.5.79ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.79ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.79ubuntu1.dsc' debconf_1.5.79ubuntu1.dsc 2077 SHA512:0aac451b347a5f6758ab2e468c25ea8061840519412210861a13ced479d5e6bb2a3abd469cb0cf68d80f1f9c4debba28501141055eb2eb1ac1701f800cdd83ba
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.79ubuntu1.tar.xz' debconf_1.5.79ubuntu1.tar.xz 570660 SHA512:1bf6de4d1cec7475f64d9bdaa47ef6dcb3d1181bcb3b97076ec60213534aa344ca49d552fdcb5c6fde4d42c364b8242bb4880de0a787493868383e6db36f9e5f
```

### `dpkg` source package: `debianutils=5.7-0.3`

Binary Packages:

- `debianutils=5.7-0.3`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.7-0.3
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7-0.3.dsc' debianutils_5.7-0.3.dsc 1887 SHA512:c125ce17d3415f0aea9ba92afb527cfe20db17d41e4c86670ee198865a776771e86fd4d067151658f9f14ae8fea04348d123a0a263ecb72be7805385c6543fa7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7.orig.tar.gz' debianutils_5.7.orig.tar.gz 257231 SHA512:79acd8885abca93842d696167171a359011c49a40f38deeb25bc94d62905f95afa3a7b2540d3bd4b0ffd363c5c48a439a1a68139a29d6c033980b019cea75d92
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.7-0.3.debian.tar.xz' debianutils_5.7-0.3.debian.tar.xz 22120 SHA512:b0c4e5177e4b61664b4fa76382882900268119b9c211e4aea30865aecb970bef7926c0779adf09845d786e1aaa4bc80bfddfbfa8da02563ec7807d1b7e2a1198
```

### `dpkg` source package: `diffutils=1:3.8-1`

Binary Packages:

- `diffutils=1:3.8-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-1.dsc' diffutils_3.8-1.dsc 1705 SHA512:33682549a968ef1e004f9e98fcc8d0c7328bfd30d7ce419ce18eb7454d8e493990dd4a32dc12f98724db7a32822ad3a7a53113c3a07148f9856f4de2c54bf96e
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz' diffutils_3.8.orig.tar.xz 1585120 SHA512:279441270987e70d5ecfaf84b6285a4866929c43ec877e50f154a788858d548a8a316f2fc26ad62f7348c8d289cb29a09d06dfadce1806e3d8b4ea88c8b1aa7c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz.asc' diffutils_3.8.orig.tar.xz.asc 833 SHA512:0464ac89209411993800666b45ff90243d22fbda53bf1d71c6870d565b39cc8d9c54c141b9d297a181ce74ad8fb5313953f416bced179ff7728a52a3e9a4f5a5
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-1.debian.tar.xz' diffutils_3.8-1.debian.tar.xz 11004 SHA512:ad5d9a682d9973491c66f80a77d180a1941f23dc99866fa63ef9866a437576c02c86a6af4673b3ce43aa4e99156016eba5b54348f88d0e71e84f609a4b97a5c2
```

### `dpkg` source package: `dpkg=1.21.9ubuntu1`

Binary Packages:

- `dpkg=1.21.9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.21.9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.9ubuntu1.dsc' dpkg_1.21.9ubuntu1.dsc 2167 SHA512:b4af4f60f8e3bc6f7b0b039de1c7f7d25eff6b4cad6c6da82e50587bd58bfebac4ad2e0cb851352f5585e3a7f6d1be1cb5401ecd3c0c968f2e69035cd459398a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.9ubuntu1.tar.xz' dpkg_1.21.9ubuntu1.tar.xz 5100624 SHA512:4c5b5540ad2a660d081dd52a5ea778617e93221bf3a9b22289d00212174aab33e63fcbaa837a9081d085839853f2e1a7adb4b61022ff282f0689213a3d8c1218
```

### `dpkg` source package: `e2fsprogs=1.46.5-2ubuntu2`

Binary Packages:

- `e2fsprogs=1.46.5-2ubuntu2`
- `libcom-err2:amd64=1.46.5-2ubuntu2`
- `libext2fs2:amd64=1.46.5-2ubuntu2`
- `libss2:amd64=1.46.5-2ubuntu2`
- `logsave=1.46.5-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.5-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu2.dsc' e2fsprogs_1.46.5-2ubuntu2.dsc 2865 SHA512:b273bf7dc996e3a85712268ae9bbc1ceb24002f3b17426abe06964f59d3638ded7af3cfe94a7cf5207a8ea99af1cac40a4b231192d7d8fa9249ea7e2152fb679
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz' e2fsprogs_1.46.5.orig.tar.gz 9530158 SHA512:1a3496cb6ac575c7a5c523cc4eede39bc77c313a6d1fea2d303fc967792d75d94e42d7821e1a61b7513509320aae4a7170506decf5753ddbd1dda9d304cc392e
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz.asc' e2fsprogs_1.46.5.orig.tar.gz.asc 488 SHA512:b288fa2418a85750673743cb58faf10537e2c79a5c2ec8b0d59435316f00006424195556ccf78fa023b67b05a29cd85bf9d96c14c166847d71a1d79b189c1d05
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu2.debian.tar.xz' e2fsprogs_1.46.5-2ubuntu2.debian.tar.xz 85956 SHA512:2842625713c5d30d5bd1d59c792a6e618ee46b33f429d0857778e1ae624be2cbad9ef37b8539096e02ce33b80053963cc1ee1e93932872cf298dd9d2ad849c32
```

### `dpkg` source package: `expat=2.4.8-2ubuntu0.22.10.1`

Binary Packages:

- `libexpat1:amd64=2.4.8-2ubuntu0.22.10.1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.4.8-2ubuntu0.22.10.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.8-2ubuntu0.22.10.1.dsc' expat_2.4.8-2ubuntu0.22.10.1.dsc 2173 SHA512:64c8ba75d7706724f21144450bd065d9bae76a7be9e24d7aeb0d0ff343fa46ad06f335f6a09df95f453283985679f8f7606302bcc39110d62cf6885c9fca49d9
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.8.orig.tar.gz' expat_2.4.8.orig.tar.gz 8316762 SHA512:452982888e993937dc37968f27eed080d8fb8c8d98935051b195e11051de8fe31217a4d40ae3e7df53fe3265b897823a2a7793af794fd066e0ead4535b5cbc99
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.8-2ubuntu0.22.10.1.debian.tar.xz' expat_2.4.8-2ubuntu0.22.10.1.debian.tar.xz 15788 SHA512:6175ca3d35af83fc31579ab011bae2d149354214975acad9f72d848d8d946020e8069d18667c968a3020f839ed3c6939e073e6e60a6aeb62b329699ba85741f8
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

### `dpkg` source package: `gcc-12=12.2.0-3ubuntu1`

Binary Packages:

- `gcc-12-base:amd64=12.2.0-3ubuntu1`
- `libgcc-s1:amd64=12.2.0-3ubuntu1`
- `libstdc++6:amd64=12.2.0-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-12=12.2.0-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.2.0-3ubuntu1.dsc' gcc-12_12.2.0-3ubuntu1.dsc 27738 SHA512:322ce44f94bf69f0eeb44e04ea389d490512efee9cbb315b9d978d1c71a57faeab77658a8f77368ffac1a02ec51c9bd11f4c2039425a2ca05275fb0874761634
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.2.0.orig.tar.gz' gcc-12_12.2.0.orig.tar.gz 91338630 SHA512:f614d673deaf6d586993be859052930db80dbbb030bc0a14d3e3517788262db8ad1ff3e992a68198195b3b283207d96720e2196d3556cf1f4788ed106f62e48e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.2.0-3ubuntu1.debian.tar.xz' gcc-12_12.2.0-3ubuntu1.debian.tar.xz 1562796 SHA512:8e31eac72db6b011482451d214237c63dabbea8b6702184c4017bd2c5cb07ce41f65250ab83f2f4b3e491449b8906138179c81d16b31b5e30b763fd114d243fe
```

### `dpkg` source package: `gdbm=1.23-1`

Binary Packages:

- `libgdbm-compat4:amd64=1.23-1`
- `libgdbm6:amd64=1.23-1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.23-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-1.dsc' gdbm_1.23-1.dsc 2583 SHA512:f931348ff659e5f9485fe92734b02c426b6428e41e2abc180b131183e8ca437c5287a7f88854f788e5111efbed114b5eda2b66c24318b39e88661ddbbb39ce15
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz' gdbm_1.23.orig.tar.gz 1115854 SHA512:918080cb0225b221c11eb7339634a95e00c526072395f7a3d46ccf42ef020dea7c4c5bec34aff2c4f16033e1fff6583252b7e978f68b8d7f8736b0e025838e10
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23.orig.tar.gz.asc' gdbm_1.23.orig.tar.gz.asc 181 SHA512:6653751c04584f10aa3325bd1cb5b9f7970a786dd2a99602ea620c11a86a9ba5c342aa52627bd06c03da822e9e1600dc034d9a8f42856a287fd67f6b9f161c71
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.23-1.debian.tar.xz' gdbm_1.23-1.debian.tar.xz 18484 SHA512:e7ca0a608da94e5b5bc5949e27b794c87e032202eb09359ad55f6c1a7a6e895f01126781a4e0fbfdb8fef3de7c4a312b9d5a653aaf55ce8c5afbceb945945253
```

### `dpkg` source package: `git=1:2.37.2-1ubuntu1.1`

Binary Packages:

- `git=1:2.37.2-1ubuntu1.1`
- `git-man=1:2.37.2-1ubuntu1.1`

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

### `dpkg` source package: `gmp=2:6.2.1+dfsg1-1ubuntu2`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg1-1ubuntu2`

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
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1ubuntu2.dsc' gmp_6.2.1+dfsg1-1ubuntu2.dsc 2362 SHA512:3cc22495eafd8f5b34d735d53bd579412d82222d65c1707fe69cebbdf82e061a8572b7c6ebeb7f563851da40e3afb939cd9ee7a071813eb33da94b031c177f45
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1.orig.tar.xz' gmp_6.2.1+dfsg1.orig.tar.xz 1787428 SHA512:705b8de10ed61e00d3124a6ba4de7075dde1addc32282cc410513de136f0b5c3c769adc37bfd629c1f7208ab6ba0332f2dbe236208e2cf06b2528ea64ddc31af
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg1-1ubuntu2.debian.tar.xz' gmp_6.2.1+dfsg1-1ubuntu2.debian.tar.xz 39284 SHA512:2c899e6a12439282bc280517fa7045dd1c9869b751ac29c6cb6eefe4606a06a0d247dda0f7030b908243155da421bf6b99f41f956cd5fbad55ca57e79668b211
```

### `dpkg` source package: `gnupg2=2.2.35-3ubuntu1`

Binary Packages:

- `dirmngr=2.2.35-3ubuntu1`
- `gnupg=2.2.35-3ubuntu1`
- `gnupg-l10n=2.2.35-3ubuntu1`
- `gnupg-utils=2.2.35-3ubuntu1`
- `gpg=2.2.35-3ubuntu1`
- `gpg-agent=2.2.35-3ubuntu1`
- `gpg-wks-client=2.2.35-3ubuntu1`
- `gpg-wks-server=2.2.35-3ubuntu1`
- `gpgconf=2.2.35-3ubuntu1`
- `gpgsm=2.2.35-3ubuntu1`
- `gpgv=2.2.35-3ubuntu1`

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
$ apt-get source -qq --print-uris gnupg2=2.2.35-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.35-3ubuntu1.dsc' gnupg2_2.2.35-3ubuntu1.dsc 3949 SHA512:15f48b420cae0eb1ecad024e5ac851da4f4a4b36563654b7721d007dcab79e71be0911aa16b2c3405035dd989131895cc79cdf59a41d5e8bd0d3a6dcc08b436a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.35.orig.tar.bz2' gnupg2_2.2.35.orig.tar.bz2 7262687 SHA512:ad9f8d10890b7fafb15a7422e2cebaf0f85ce7cf5f880f4edd8d1dec46aa73c01f9096e601f6edd665f8684d1f5892634991a400e00b3185e6b201f549004d3e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.35.orig.tar.bz2.asc' gnupg2_2.2.35.orig.tar.bz2.asc 228 SHA512:82ebe037ef1309f85293a540ceb056d1e38b05f3ba354af0e5cc45223be1a9c3bf22c92e9ad012931c62da0dd5e388013ce24d3959a749870413414909b20898
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.35-3ubuntu1.debian.tar.xz' gnupg2_2.2.35-3ubuntu1.debian.tar.xz 65224 SHA512:5d0c00727a166e93993f15526ffc7682a2759733fcc231ab3d4a0815c3967510b79385ad7dacdbb1d0f61d061fcb1c329e70c06a096e2ace288f762203df96a3
```

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

### `dpkg` source package: `grep=3.7-1build1`

Binary Packages:

- `grep=3.7-1build1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7-1build1.dsc' grep_3.7-1build1.dsc 1900 SHA512:3345c289bc163924615d3bc9ac3138e35870715d38223ef9d38a90ab17160fc415f8c0c9a5da1939143e2701e46fc854b27b45c280c4af686db2208f2becbe4f
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7.orig.tar.xz' grep_3.7.orig.tar.xz 1641196 SHA512:e9e45dcd40af8367f819f2b93c5e1b4e98a251a9aa251841fa67a875380fae52cfa27c68c6dbdd6a4dde1b1017ee0f6b9833ef6dd6e419d32d71b6df5e972b82
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7.orig.tar.xz.asc' grep_3.7.orig.tar.xz.asc 833 SHA512:9db28883b696fbbb0fad32f4ecd168954dc475d5f0a8f2b4f960ff615ef7dd8348a7caaee85a96287824472a29485ff921af121c582083ca5ad5c30960f99cf4
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.7-1build1.debian.tar.xz' grep_3.7-1build1.debian.tar.xz 18184 SHA512:cbefc3635a0b0acc33d8a052d3ca7d583adbd1bcfc384559076b5e4f5508b4a8301b0dd54a029aecbab925a6f916c99a2d5bebe0a6936fe5ffeb5a07a0d9a917
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

### `dpkg` source package: `init-system-helpers=1.64`

Binary Packages:

- `init-system-helpers=1.64`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.64
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.64.dsc' init-system-helpers_1.64.dsc 1993 SHA512:0cac01db69df5bc2265302a9fce4f900f3b9e7bc07bcc67323e80e43c2fca16b6cc1ff5c45b45162c4765c924976f29e5a912c64675b1ab273eb350284be3e8e
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.64.tar.xz' init-system-helpers_1.64.tar.xz 43400 SHA512:8f4b70a1eab178338527c66ad16b719e86320127a627011fd12c2dd839e512173179d15749f2e48a385708a78dfa7fd719b3cf3a231cc23d82710651dff582d8
```

### `dpkg` source package: `keyutils=1.6.3-1`

Binary Packages:

- `libkeyutils1:amd64=1.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-1.dsc' keyutils_1.6.3-1.dsc 2055 SHA512:2993bdabc94a91fc0bfb56c6f3091a5d5ca677a050f771fffacf3e6ce39f52343c04d3ac3ec2e863c8fd98ba592ff12259bbd3634af018beae649b3363aff279
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA512:f65965b8566037078b8eeffa66c6fdbe121c8c2bea7fa5bce04cf7ba5ccc50d5b48e51f4a67ca91e4d5d9a12469e7e3eb3036c920ab25e3feba6e93b4c149cf9
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-1.debian.tar.xz' keyutils_1.6.3-1.debian.tar.xz 13136 SHA512:3662ff7f0f6eff7aac57182e7d9a763f1be032e9bf700208754eaa96eed9aad74a757b8c63b36b352bd6bfcf29a9c4c0a702da545b13c3708e44755554a7537f
```

### `dpkg` source package: `krb5=1.20-1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.20-1`
- `libk5crypto3:amd64=1.20-1`
- `libkrb5-3:amd64=1.20-1`
- `libkrb5support0:amd64=1.20-1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.20-1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20-1.dsc' krb5_1.20-1.dsc 3150 SHA512:a42250f94d2a05926b5cbc5feca44b935fe0b82aeb350c4800fe9961a35df994296e35ffc11c36fc6b5725ab739de557a3bffeaa8a7f6492d6f68943fa61d2ad
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20.orig.tar.gz' krb5_1.20.orig.tar.gz 8660756 SHA512:9aed84a971a4d74188468870260087ec7c3a614cceb5fe32ad7da1cb8db3d66e00df801c9f900f0131ac56eb828674b8be93df474c2d13b892b70c7977388604
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20.orig.tar.gz.asc' krb5_1.20.orig.tar.gz.asc 833 SHA512:e5c75ae9a431e554c3d5e53e8d95857ae0da89153f0289c048676e048174b7b78f08b734f6c1eb8c1d043f8c98b7d6f6555f9a13329bf9e8e3a52819e8230a67
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.20-1.debian.tar.xz' krb5_1.20-1.debian.tar.xz 104112 SHA512:9bfb341aa3a50be56cb89dcc5be7bf5d3d5029ac3a2db085f7d13e15acaff13a12229114975ee9bdf0185bb761984e05c6b4743f2a4cdb3e62e22d16f7eb0816
```

### `dpkg` source package: `libassuan=2.5.5-4`

Binary Packages:

- `libassuan0:amd64=2.5.5-4`

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
$ apt-get source -qq --print-uris libassuan=2.5.5-4
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-4.dsc' libassuan_2.5.5-4.dsc 1997 SHA512:10237f984f7d00df39fcef2032721c69eee312de28b010cbfb88c78df32493a7ae3896332022faa87f757c793bf815bffa03a59d023e538513e54d4b7657633b
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2' libassuan_2.5.5.orig.tar.bz2 572263 SHA512:70117f77aa43bbbe0ed28da5ef23834c026780a74076a92ec775e30f851badb423e9a2cb9e8d142c94e4f6f8a794988c1b788fd4bd2271e562071adf0ab16403
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2.asc' libassuan_2.5.5.orig.tar.bz2.asc 228 SHA512:343336ea5dffa113cd934167f548faf4e85d31bf64a46541ee6828b4d0995a8cc9d0668995812d9c4d3ab73347d5b1bbfff0d6ed586fbf4bbc57ac42e828e8d5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-4.debian.tar.xz' libassuan_2.5.5-4.debian.tar.xz 13976 SHA512:1832515506ed3666866659dac0b5e584661836ee1c5b38d1154d8484f1505dce73a37036d2659f42686ae4ff2fca32da78c0a4bed19d227bde44fcab85570ada
```

### `dpkg` source package: `libbsd=0.11.6-1`

Binary Packages:

- `libbsd0:amd64=0.11.6-1`

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

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.11.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.6-1.dsc' libbsd_0.11.6-1.dsc 2308 SHA512:9b9b9799f4be63642063e7a7e032a26ec382fe4d25d8577630562f304e2586bfa86b61e4ade539a21d756b667397e83bda839aa3145c8ede94cd7bd374626514
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.6.orig.tar.xz' libbsd_0.11.6.orig.tar.xz 416600 SHA512:9dbbfb84340fc69f59667241701d81d176439ce168f123344805898a269f7bd0e98abf8c7fc12d9bf539d1effb19424d93b647cc9120f693327e736d339e6075
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.6.orig.tar.xz.asc' libbsd_0.11.6.orig.tar.xz.asc 833 SHA512:29d77e53d251c641b00924c9c42b69b66eeb160ef0534e84a4ad1afd9009f87bda82f1b91d271efe37c676295add3fab01ce55aa6cd96aa0c5f34f9837b870cd
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.6-1.debian.tar.xz' libbsd_0.11.6-1.debian.tar.xz 17676 SHA512:ac746879ae6b34ea4abd4ae7eb06dff600b3ee41367f58fd6c54bc2b21fb67c3999549191b432d8c8f7dc18bc49c4c82a2564fba7da143f1db247deea9382d3a
```

### `dpkg` source package: `libcap-ng=0.8.3-1`

Binary Packages:

- `libcap-ng0:amd64=0.8.3-1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1.dsc' libcap-ng_0.8.3-1.dsc 1634 SHA512:8ba169ee2ddbe63ead3c258115473a7f54dde9d110dfd6905294c7621674fbf4fd39180ef675be3312490c99691088becb49ac12594456c54e7c78e3b8409525
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3.orig.tar.gz' libcap-ng_0.8.3.orig.tar.gz 455383 SHA512:0ef9bc7bc6b7b59991f43b79aa6cde3e8d2c22c4b9ced2af8deae501e01d51e893033d109cb8aa0fdcba190140110993089245346334d7b114d18f1bb1b55b97
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.3-1.debian.tar.xz' libcap-ng_0.8.3-1.debian.tar.xz 10488 SHA512:32ee300de7c327d1c58f6a95eccda98afe522134fe7de899d074825bbe6cf7269fac1c20bb10f6d62155cb2207303b638e836870d84e5180dfb863a42575e511
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

### `dpkg` source package: `libedit=3.1-20210910-1build1`

Binary Packages:

- `libedit2:amd64=3.1-20210910-1build1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20210910-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910-1build1.dsc' libedit_3.1-20210910-1build1.dsc 2340 SHA512:67cfd7c36cfb575a49a919968710841a19a9f523c6138c3f8bc56de3e546a90adad72f25c1bb4753d83a6d09634c873b3c636613f6d223041f00c7d18ecb7790
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910.orig.tar.gz' libedit_3.1-20210910.orig.tar.gz 524722 SHA512:b7361c277f971ebe87e0e539e5e1fb01a4ca1bbab61e199eb97774d8b60dddeb9e35796faf9cc68eb86d1890e8aac11db13b44b57ccc8302d559741fbe9d979e
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20210910-1build1.debian.tar.xz' libedit_3.1-20210910-1build1.debian.tar.xz 15200 SHA512:23ca0f62bf73e9fd1537c599b689807834db6b657c8f0dc448947db49fa3fe0de498ad96ea3d24515f0875fb3f50c4839f1bba25bf9bc48fe23de5fc780f3542
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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.dsc' liberror-perl_0.17029-1.dsc 2336 SHA512:b81e1ca9f88227a083cf2b1704d8d6d6c642736ab4a355c33cd2f2a06801bd74f7163242881cdaf6579d8a5847e23ed858475a92df31b9a0763567e82022d87b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029.orig.tar.gz' liberror-perl_0.17029.orig.tar.gz 33304 SHA512:266ba1feff897c1d162e69a83e595cb40da9a6e1d8b10cc5531626eff392c6da94be03ba722c74827fc2ea0d9d1c1e62e824d9021e098b700db65dd0b3acbd0a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.debian.tar.xz' liberror-perl_0.17029-1.debian.tar.xz 4552 SHA512:1ebfa7250e0a3698e63999117079fe951d8a6286b48884260d5207367b6b8d8ca7e2a4d390d80d28d79aa579b4e61286308536f42b5b45d9f26aa64cdd447a27
```

### `dpkg` source package: `libffi=3.4.2-4`

Binary Packages:

- `libffi8:amd64=3.4.2-4`

Licenses: (parsed from: `/usr/share/doc/libffi8/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.4.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2-4.dsc' libffi_3.4.2-4.dsc 1948 SHA512:a3a3ada71f82d244f8cb54f1cac30ae6be7c4305696700fb6ffb96783f4f9f788c943bc8ba0d7474c9fd31f04453875e1da341240707711e4eff10cd8023e8d1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2.orig.tar.gz' libffi_3.4.2.orig.tar.gz 1351355 SHA512:31bad35251bf5c0adb998c88ff065085ca6105cf22071b9bd4b5d5d69db4fadf16cadeec9baca944c4bb97b619b035bb8279de8794b922531fddeb0779eb7fb1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.4.2-4.debian.tar.xz' libffi_3.4.2-4.debian.tar.xz 8164 SHA512:eecf83971847b78aae0c2cfe3b546a858c93462b7d1d2473c96f5b43de47e1d5fc4663b524e4c5792630d7a6d1796e8bdf83f55addc669d0ce3810643924a07f
```

### `dpkg` source package: `libfido2=1.11.0-1`

Binary Packages:

- `libfido2-1:amd64=1.11.0-1`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.11.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.11.0-1.dsc' libfido2_1.11.0-1.dsc 2588 SHA512:41d605b05a493a84e452f98e13243f724724ffcba8fd6201e3d4fe49268e5c7b540bc58ffbff3044259b195e27d83d3a81ee71c464608df631cd9b7020760ade
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.11.0.orig.tar.gz' libfido2_1.11.0.orig.tar.gz 624148 SHA512:d9644453d67b84ec8385dfb63796adb3eae2d7f7cb47fbb1bcf9ca7f5cce400623738cc3317d629c2f0af630424cb2788217f8c7f20d1b52b7369c729052d572
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.11.0.orig.tar.gz.asc' libfido2_1.11.0.orig.tar.gz.asc 833 SHA512:281df602dc7372d13b84d421edd52ff8103d90a90f1f9113634f26d9b523d9be393a1452fd3bac71f89c0a7f6213c900cfd347f7295c629fd0ecb36813379de4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.11.0-1.debian.tar.xz' libfido2_1.11.0-1.debian.tar.xz 52472 SHA512:5b06185a268d225dcc344bcc3d637f7fded284126d2824120152a187d5bf997d3565390a4c6db0e1d771c6a84ce7f8e62a1e0d2478438212638fd6f67daf5ff0
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

### `dpkg` source package: `libgpg-error=1.45-2`

Binary Packages:

- `libgpg-error0:amd64=1.45-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.45-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.45-2.dsc' libgpg-error_1.45-2.dsc 2273 SHA512:3f331ea6438e3f3a39ef2d7283addd63c215ac84e86ea748da1b2b7a80cb0237fcd860e31a0c142fb72714f11255950794aa2f89982b1ac95c16b8c7764dcf92
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.45.orig.tar.bz2' libgpg-error_1.45.orig.tar.bz2 1015954 SHA512:882f2dd617e89137d7a9d61b60488dac32321dd4fdb699e9687b6bd9380c056c027da502837f4482289c0fe00e7de01210e804428f05a0843ae2ca23fdcc6457
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.45.orig.tar.bz2.asc' libgpg-error_1.45.orig.tar.bz2.asc 390 SHA512:1ecdf3a41a2127ccdf214b9002274aba19301cc2ea90ea6e9acb225b5df3f791053a69541b8898a38e14146d155e8d82917ffff76c2ed1db9cb2ab71201c1d44
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.45-2.debian.tar.xz' libgpg-error_1.45-2.debian.tar.xz 18820 SHA512:2037c3127e1aa921a7f3d233dfb686ca55fb23458764692055517efe4c03449acddb96202bfff0771909986fcbdc1189e365f6f0cb46e9c88764654aafb672a2
```

### `dpkg` source package: `libidn2=2.3.3-1`

Binary Packages:

- `libidn2-0:amd64=2.3.3-1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3-1.dsc' libidn2_2.3.3-1.dsc 2206 SHA512:cd09cb217aa8f0f220f298f816e93a1c5dda9324135a3d7a7e78c1506545c05a94cb1c12909160946872e7a650adc862c62fd6a9aadb787ef8d7ab174683f505
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz' libidn2_2.3.3.orig.tar.gz 2116946 SHA512:2dd0201b5224b3eb6a5667e53c9a2beb6e6aefefab23060a70f143bb5d447029e8f4200e4e0460a4fab51767f0bdfc9583a0cc757652bee58f5593106dd18274
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3.orig.tar.gz.asc' libidn2_2.3.3.orig.tar.gz.asc 228 SHA512:bad901350e21ff39f0385685c13b3f366cd77dad59c736547773f9555531bc56022982c3fb6fffd5b82624bdd3ea8bd1806e531f80a06c77e4e46b08f18f08a9
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.3-1.debian.tar.xz' libidn2_2.3.3-1.debian.tar.xz 15964 SHA512:5f4c41e339028c894a5a4a65fa9fff0867e239ff0a5e6664568d05e5254274f2ff7e33b27619d0832c0a5a573a92bdf3a7ec31b631cf748ef940c1ef10e120d3
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

### `dpkg` source package: `libseccomp=2.5.4-1ubuntu1`

Binary Packages:

- `libseccomp2:amd64=2.5.4-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.4-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4-1ubuntu1.dsc' libseccomp_2.5.4-1ubuntu1.dsc 2491 SHA512:ebe53fcc3d488652a85ac3ef5cd2842785b7c79a707791df5c116bbb564f4f4d36ea2310a15c94939ec76cc8c16fcf69d85fb3bebf25a63103ac2d19b7646566
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz' libseccomp_2.5.4.orig.tar.gz 637228 SHA512:92650bd7d1d48b383f402a536b97a017fd0f6ad1234daf4b938d01c92e8d134a01d2f2dd45fd9e2d025d7556bd1386ec360402145a87f20580c85949d62cea0e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4.orig.tar.gz.asc' libseccomp_2.5.4.orig.tar.gz.asc 833 SHA512:10ce632da2762e3b5acb468194b2424d80bab786cc5923a8ee0b0684290282ef2f0a17192680afb36626c82e73a3ba64e73f248ed63cd3e55c3cf8cee4e1e447
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.4-1ubuntu1.debian.tar.xz' libseccomp_2.5.4-1ubuntu1.debian.tar.xz 23624 SHA512:fde9ad923675c4f39fcb28a5ec2fda28e23e747303595757a3f262b875e2a2f2f4d639a8d9317538e0da770e2d405bdc70fd188249330987e5e3d95c14d74db8
```

### `dpkg` source package: `libselinux=3.4-1`

Binary Packages:

- `libselinux1:amd64=3.4-1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4-1.dsc' libselinux_3.4-1.dsc 2534 SHA512:143779f2d377e08f93b170c9a15d77665b883e086a8c25ef1d413278bb43b218666d18c9abcaf78dd195584a423bbda2b3358aa3cd204e9abe164ed153ddd3d9
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz' libselinux_3.4.orig.tar.gz 210061 SHA512:7ffa6d2159d2333d836bde3f75dfc78a278283b66ae1e441c178371adb6f463aa6f2d62439079e2068d1135c39dd2b367b001d917c0bdc6871a73630919ef81e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4.orig.tar.gz.asc' libselinux_3.4.orig.tar.gz.asc 833 SHA512:de1e0431cbf8526c4de77e1ebe9fa40111ea4a0e71d6b0e9ec6c975b61f4090ec5df4386af362bbd5cc8faffb24c21febc13356fe081df642bbfa52010a00ba0
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.4-1.debian.tar.xz' libselinux_3.4-1.debian.tar.xz 29416 SHA512:f4cba7e3f25a07a361469cbb53867cc13909d4a5636b61fc0af753bd270d32917665f54d948deb5518f82087b730e00595c7bf04083b50b0be61c5887636e13f
```

### `dpkg` source package: `libsemanage=3.4-1`

Binary Packages:

- `libsemanage-common=3.4-1`
- `libsemanage2:amd64=3.4-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4-1.dsc' libsemanage_3.4-1.dsc 2570 SHA512:27c251f58dccb16d5f710edd63498559ac63a66f26f44a862ec1068822b093587ae15c1652432d0087073a190d29ccfb55f0afb6d0090b3711be60eb6631e7d0
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz' libsemanage_3.4.orig.tar.gz 185177 SHA512:831dc789545bb9a0b009bdb4f7fe52f6197ad8325946640f886a960d08e40b8a69eccd5a70cce51466bb5cb7f742feb78d19a9ec63383fbd03aa451508677e73
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4.orig.tar.gz.asc' libsemanage_3.4.orig.tar.gz.asc 833 SHA512:42da56fe008c7b18ea8834f6ae0535e78fb5f94a826a2beef6c8fbde480fd5d0f87a7969e98ded3281f7b76b594e71c466c7630a85536d07a6550d163390fc49
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.4-1.debian.tar.xz' libsemanage_3.4-1.debian.tar.xz 23248 SHA512:8b21195f563a9368574f0162eafbd7de881a876dfc620c28cf1cca2c55971c29831463b14332d1fd90b56f57579c7188d8c5866f3259efd5b51fb6bc8861e332
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

### `dpkg` source package: `libssh=0.9.6-2build1`

Binary Packages:

- `libssh-4:amd64=0.9.6-2build1`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.9.6-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6-2build1.dsc' libssh_0.9.6-2build1.dsc 2877 SHA512:63ea8a98ea6c1e9ca3f00fdf592cc5a7bf64d98abb167a0555bbda1ad0a185925ec8ee87f9f0ee846aff05defa1ce4b8edf4e8ae1d22ca8fd1b7c96c16d9d2cd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6.orig.tar.xz' libssh_0.9.6.orig.tar.xz 1053056 SHA512:4040ec4af937e95be2e41313ef6d4db60b46b8d4dea10c09402398127c1d1ca8843392d207088aeee3c7ef631c6ae7b66861327dcebf78ed3af0723777619fd1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6.orig.tar.xz.asc' libssh_0.9.6.orig.tar.xz.asc 833 SHA512:1b6223efe9e4ce864cd8d97d517f9f0d38c1cd502b5874fdc6a58731038c2830a72ce753f02fc062d9d4d5922107ec9a2e62fe24a704bb5dec0dcfecdb569fe6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6-2build1.debian.tar.xz' libssh_0.9.6-2build1.debian.tar.xz 27568 SHA512:5e4553884339d4457b3487cd82376262e85b14c58f488e40208db9c4e4690cf797e6f77f997f565379597aad491ad2eb631f5d19b454da54a2d8666b85aecc88
```

### `dpkg` source package: `libtasn1-6=4.18.0-4build1`

Binary Packages:

- `libtasn1-6:amd64=4.18.0-4build1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.18.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4build1.dsc' libtasn1-6_4.18.0-4build1.dsc 2794 SHA512:cb0f727f9935cdb7784451234c676f0e3544789cc01dd6786006d4662807937722437de6450f4bd24b698b621b7dfa7eaf28d607402ecbb8167315791739d570
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz' libtasn1-6_4.18.0.orig.tar.gz 1724441 SHA512:4f2f4afc7561fda7a1f1c6c525c3c3b08228a1a4aa8c3d3d5e02e993d8f83ccee1dd0f1b201cec0fbfc97043d4b1d7a95ffd34d65422a38b85b931ac7a015831
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz.asc' libtasn1-6_4.18.0.orig.tar.gz.asc 228 SHA512:8ef3918a3130f695d2d5b26dd945084b931005eff8914c50a0ac9795d4cc6ec9e9645e2941ff4235cba3b4b2987ab1c7da65225e24ce16aaab844352ecdafbf6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4build1.debian.tar.xz' libtasn1-6_4.18.0-4build1.debian.tar.xz 22112 SHA512:4c363cfa12bd27c22a32ced69ca560ed6d3af2404158dcb0c1be472c6af411931f5d807f77b9966a1fb6bc9089d3d354fc85c3144d8beaabe36036694898a82e
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

### `dpkg` source package: `libunistring=1.0-1`

Binary Packages:

- `libunistring2:amd64=1.0-1`

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
$ apt-get source -qq --print-uris libunistring=1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-1.dsc' libunistring_1.0-1.dsc 1928 SHA512:630d20ef6dd19be991147131d38acae2db15d1df34403264a15a373fcd4b661efffc1ae3916c52448f05cafb93bf1266527efa6630a02def88b86495d688a0c3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0.orig.tar.xz' libunistring_1.0.orig.tar.xz 2367800 SHA512:70d5ad82722844dbeacdfcb4d7593358e4a00a9222a98537add4b7f0bf4a2bb503dfb3cd627e52e2a5ca1d3da9e5daf38a6bd521197f92002e11e715fb1662d1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.0-1.debian.tar.xz' libunistring_1.0-1.debian.tar.xz 42004 SHA512:f9208e7ab38cc742bb46dc1a871ddb03847b99b6169e20e8d8660dd9cdf22bffb27f9b329dcbd025ad9b26aee5a2aab01337f36d8ab3020d2e752f9c2d4368ce
```

### `dpkg` source package: `libxcrypt=1:4.4.28-2`

Binary Packages:

- `libcrypt1:amd64=1:4.4.28-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.28-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.28-2.dsc' libxcrypt_4.4.28-2.dsc 1613 SHA512:cdd69e40774ab8dab9976a781f71f616bccdc2a7e94b4e59b67679576beca1dd248cc34dc075f65fe5919a396a547ee2be6439bbb8c3f9677ada4ffb82f71f19
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.28.orig.tar.xz' libxcrypt_4.4.28.orig.tar.xz 391484 SHA512:bab0028931bdbb28f5f86293c0d25454369a03c91905f70438a79ed8302784ca641500a450cdd322100bb0ec67c0de18039a6e195eda815435fa66fffab7baac
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.28-2.debian.tar.xz' libxcrypt_4.4.28-2.debian.tar.xz 8088 SHA512:dcfa31476bdbf1abe011654c76657f44ee766a73fdab45a92a2584b60e9d23e2e13971edf4b3de8e0accaf2571c312ba3d65c810ee2dd7e3ef11e44150418579
```

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

### `dpkg` source package: `lz4=1.9.3-2build2`

Binary Packages:

- `liblz4-1:amd64=1.9.3-2build2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.3-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3-2build2.dsc' lz4_1.9.3-2build2.dsc 2091 SHA512:a8f802737139536f8a9c0a3483635ff4dd8a3eba2e0d9d0d27f4f91c17592d1797929d491183dc25de4100a7aa924edefa8ca45eed4968c0e1b7e817f1ae9e1c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3.orig.tar.gz' lz4_1.9.3.orig.tar.gz 320958 SHA512:c246b0bda881ee9399fa1be490fa39f43b291bb1d9db72dba8a85db1a50aad416a97e9b300eee3d2a4203c2bd88bda2762e81bc229c3aa409ad217eb306a454c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.9.3-2build2.debian.tar.xz' lz4_1.9.3-2build2.debian.tar.xz 14088 SHA512:9f61516a672186299a96aee5b7a71d9cb1ad3db2697fa10b802fef14a63587bb3459281f7300726711a116893c10858914f558aece1d224876e287020a23dde6
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

### `dpkg` source package: `mercurial=6.2.2-1`

Binary Packages:

- `mercurial=6.2.2-1`
- `mercurial-common=6.2.2-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=6.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.2.2-1.dsc' mercurial_6.2.2-1.dsc 2799 SHA512:bf72a27b1fe5041dd53fea0d70a433dc466d5fdc74095e48a0a76bbbc735ad442a71e34db5247b75523c3189ab77f6cb3dba2a3d3774aec1c743db8cd5a68bca
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.2.2.orig.tar.gz' mercurial_6.2.2.orig.tar.gz 8057375 SHA512:b5a89588146b58c8552c20f24a472098c6fbb9863c59571d0e70b1d4cc5ea6d4a29e9660a26dfc87aa5124df9b65182a7c65b8558a21acf0164d0d90358addbd
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.2.2.orig.tar.gz.asc' mercurial_6.2.2.orig.tar.gz.asc 659 SHA512:43b7fe5ae306b4f1b14341501680d9bad631755f4b40665cfe6c065cb914f7e0d67a06f42f6cde7903effa7ef4aecbc8205713b4caa44c151104e0f3c67abe83
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_6.2.2-1.debian.tar.xz' mercurial_6.2.2-1.debian.tar.xz 70016 SHA512:ef4c6340838c053f0b2e8aa41c0d2d77c89d4139f980691026b896392f7cef6597b1e1bee6cb1c38ff29d37e51b9ca699aeda62febd794dcae0bd65d228ad1a1
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

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.3+20220423-2
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3%2b20220423-2.dsc' ncurses_6.3+20220423-2.dsc 4200 SHA512:6a7194bec8331f7e5396cc58390c6523388a08b6cfc7488dc357112163b2f55d0de7d5060d2591a33b2b074c1fd8b7acb111157c68b9f10a9ed6e21b9551c228
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3%2b20220423.orig.tar.gz' ncurses_6.3+20220423.orig.tar.gz 3611993 SHA512:350a2f36ffea4f98a346217356e2730b6ef115eecd35144b8ef741a119932ab717febb2bd16acc596364084758bd9ecc8223ffcd91e59c9e0700445cfb700284
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3%2b20220423.orig.tar.gz.asc' ncurses_6.3+20220423.orig.tar.gz.asc 729 SHA512:b933258b43863cd1a68dd0ba40d7340dbd2676586aae1409f7dcc33e86f3b0e0e6d1544430632976d96b8ec7a5b3e630c0a81cea3f7f7471eba14ac7194dac3f
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.3%2b20220423-2.debian.tar.xz' ncurses_6.3+20220423-2.debian.tar.xz 54600 SHA512:575373307127325f015df4d654037c8294d8ae07c5cd2acb8f145e35d2dfded53cc3c38776a76a4fc3783ddeff8f6f2134eefc0d7d52da456a42871094eea356
```

### `dpkg` source package: `netbase=6.3`

Binary Packages:

- `netbase=6.3`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.3
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.3.dsc' netbase_6.3.dsc 875 SHA512:e21e2c228f5963f34636c646d92280c6307527c1796f3da89a5ec9d26d4a10c08730d68f337f43ebbcd6cc22c4f8fd804673336fbcc9fd41eb1d4f0e687b2a7d
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.3.tar.xz' netbase_6.3.tar.xz 31968 SHA512:3ba7f8b28a9b6ffd89bef62a3c2629cf6ad6b0522319ae7eae46d579aac6f86079930da3b3dd55c76ae48cf6c842f8f162b24324e2f8427e3664fd0db69ed138
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

### `dpkg` source package: `nghttp2=1.49.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.49.0-1`

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
$ apt-get source -qq --print-uris nghttp2=1.49.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.49.0-1.dsc' nghttp2_1.49.0-1.dsc 2511 SHA512:895e79b3ed56a342c78628746cab2ac6b769a71e86523eea59b72fbc685c36a906e0aa9455e351a0c72c565ceb8656f072974ad342b1d0366d1603d37daff05b
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.49.0.orig.tar.bz2' nghttp2_1.49.0.orig.tar.bz2 4690333 SHA512:3a42127048f09cb3cbc49afd92790b36e10e936fe2c07bf8d02ca3f729d57df90be8bc102444146e9b4323e0ec93d69283224cccab63f49ceecf82a99cecde9a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.49.0-1.debian.tar.xz' nghttp2_1.49.0-1.debian.tar.xz 12860 SHA512:d8fc36e06e3d408f5f8b65bfc440de3c2b704b08f7f79d03be1070ce5407e3aa9be227122a314fe9d880db1804bf2d1aa6171c5da101826638372db03b4f6184
```

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

Source:

```console
$ apt-get source -qq --print-uris openldap=2.5.13+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.13%2bdfsg-1ubuntu1.dsc' openldap_2.5.13+dfsg-1ubuntu1.dsc 3458 SHA512:b9c5a65ef48018e669bf38f0ca5b0ff5d6c9322d730e196aae8a5558b3156305e693a9e6be56107e9f94d55a43608f6de4fa6a2a4b8bab3a29f0e3604cae7400
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.13%2bdfsg.orig.tar.gz' openldap_2.5.13+dfsg.orig.tar.gz 5617769 SHA512:2d781539942d5a497b1c56bdf69ed3fa39e44178716e295e37c2f10ccccb1ba39c8b27c8c3aa69da14bde98f013278e9ed9a4746ef31d96aace3a96f063e5dfe
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.13%2bdfsg-1ubuntu1.debian.tar.xz' openldap_2.5.13+dfsg-1ubuntu1.debian.tar.xz 177708 SHA512:e548569ddade30acbc621f194ffad3dab00b1af9734157bbeb3461e68ae5b39bb93a21aea51efebfbf72534f970c9b6b45cd387e94f5ea8bac9f7287099f32ff
```

### `dpkg` source package: `openssh=1:9.0p1-1ubuntu7.1`

Binary Packages:

- `openssh-client=1:9.0p1-1ubuntu7.1`

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
$ apt-get source -qq --print-uris openssh=1:9.0p1-1ubuntu7.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1-1ubuntu7.1.dsc' openssh_9.0p1-1ubuntu7.1.dsc 3347 SHA512:57c9c78334dfd5a452d5db91e7cfe53288edb57c9d213cb5242e82193c19d67bcd31182dee8d8c9e0240f951c32c3de083178ab70fd630c745549fd4fdc685c7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1.orig.tar.gz' openssh_9.0p1.orig.tar.gz 1822183 SHA512:613ae95317e734868c6a60d9cc5af47a889baa3124bbdd2b31bb51dd6b57b136f4cfcb5604cca78a03bd500baab9b9b45eaf77e038b1ed776c86dce0437449a9
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1.orig.tar.gz.asc' openssh_9.0p1.orig.tar.gz.asc 833 SHA512:7b1445764058435d2fa8a9c7553643983650d4232036c088e46e44beeb538d32cba88f775b1be9da5f21a01d6caea59b3dc4714507781e9cb946546fa54f169f
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_9.0p1-1ubuntu7.1.debian.tar.xz' openssh_9.0p1-1ubuntu7.1.debian.tar.xz 179820 SHA512:80657aa6f8744ca769529e72ff235e96e2f564f5c58f5b3fed9b4e477b954088047f6318fd59c51fda719c9596402ce38cc869893f395d534e5cc38b490d83a4
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

Source:

```console
$ apt-get source -qq --print-uris openssl=3.0.5-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.5-2ubuntu2.dsc' openssl_3.0.5-2ubuntu2.dsc 2718 SHA512:82ed8ef193549d4b10e9053ceebfe0b4c7e0f4252c53cb264743e9aaf48a298e2bdc7b1b58d5618ab83f57a5d4dc3a656749ed336bb03ae315205e7c9e8b8039
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.5.orig.tar.gz' openssl_3.0.5.orig.tar.gz 15074407 SHA512:782b0df3d0252468aa696bd74a3b661810499819c0df849aa9698ba0e06a845820dc856aac650fced4be234f1271e576d4317ac3ab1406cf0ffe087d695d20fe
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.5.orig.tar.gz.asc' openssl_3.0.5.orig.tar.gz.asc 862 SHA512:516da9ef291601400576adaba7271854af3caa23dc1d70116004360f580e4c28fe61d51e86477d341e4c5bf0ca5f98db8264581ed6cc2c8df124da83ad3e40be
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.0.5-2ubuntu2.debian.tar.xz' openssl_3.0.5-2ubuntu2.debian.tar.xz 158760 SHA512:06999d895b043e3854b6cfc7977ac304d681494db949a91202efe8b4ac3c7c72fd269dcd288bbf085249794f2152e3b3ff7a59354bff8463d42e62829a207023
```

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

### `dpkg` source package: `pam=1.5.2-2ubuntu1`

Binary Packages:

- `libpam-modules:amd64=1.5.2-2ubuntu1`
- `libpam-modules-bin=1.5.2-2ubuntu1`
- `libpam-runtime=1.5.2-2ubuntu1`
- `libpam0g:amd64=1.5.2-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.5.2-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2-2ubuntu1.dsc' pam_1.5.2-2ubuntu1.dsc 2655 SHA512:8b9e5fcd618f014f8d5b0b0569ce09311634e4c7a2921c3080fb95f7b1911fa1db59c0968c4aeaeb128774e1a9e747654c7ee13e2f20c5a1d0bccc0f3305169e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2.orig.tar.xz' pam_1.5.2.orig.tar.xz 988784 SHA512:fa16350c132d3e5fb82b60d991768fb596582639841b8ece645c684705467305ccf1302a0147ec222ab78c01b2c9114c5496dc1ca565d2b56bf315f29a815144
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.5.2-2ubuntu1.debian.tar.xz' pam_1.5.2-2ubuntu1.debian.tar.xz 166536 SHA512:dc3c1a9c0f9020a636f8b97343a8258e5deffbfca480d22c5763fa351f70616a47fddb117eea148978a58eaa940df74e968c5af409b445b7eec4e3c071dcf38a
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


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-14
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-14.dsc' pcre3_8.39-14.dsc 2226 SHA512:7d70d8acc6cfa87516f23570b9a20f080d8af660f6fa9237aa0b01cf1888217ddf9f9102ad95888126ea0d1b5c7bd3162fc5210d797c190a831e1e360156e356
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA512:8b0f14ae5947c4b2d74876a795b04e532fd71c2479a64dbe0ed817e7c7894ea3cae533413de8c17322d305cb7f4e275d72b43e4e828eaca77dc4bcaf04529cf6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-14.debian.tar.gz' pcre3_8.39-14.debian.tar.gz 27185 SHA512:e0678498cbfc9cbebdadf8591fdf58ff6a297510bb06d1f378d3c3ffb3882b9a5eca2a624ebd98e8bf175c38453141f4519612f4111eb491718daaf22b2b9202
```

### `dpkg` source package: `perl=5.34.0-5ubuntu1.1`

Binary Packages:

- `libperl5.34:amd64=5.34.0-5ubuntu1.1`
- `perl=5.34.0-5ubuntu1.1`
- `perl-base=5.34.0-5ubuntu1.1`
- `perl-modules-5.34=5.34.0-5ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libperl5.34/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.34/copyright`)

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
$ apt-get source -qq --print-uris perl=5.34.0-5ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-5ubuntu1.1.dsc' perl_5.34.0-5ubuntu1.1.dsc 2976 SHA512:c8f84ee752f27e991daa60efe9b1bf396d7e21d021853a436519afc4135e8af6376b4e4894e9f3b7b03f4ef668f9d933da9981c7a5e374774cfc72f6c10844a4
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig-regen-configure.tar.xz' perl_5.34.0.orig-regen-configure.tar.xz 415412 SHA512:2581152e0747105314c4fa4167f1f97d286436b996341b9b75e4099ba18f15eb0d2b42888622fbe9b5499d3fe304bc8aa9ad207a945f590135beccfb68ea28b0
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig.tar.xz' perl_5.34.0.orig.tar.xz 12881416 SHA512:691b4b31eacec357191fba777612b4e3eae59e946a22998a50766697c0d61db1d42a9b3bc1e41abf0d1ca1893e4a7c06d7bf3290480cf03d7f79befd7a8a3267
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-5ubuntu1.1.debian.tar.xz' perl_5.34.0-5ubuntu1.1.debian.tar.xz 192872 SHA512:bed146297942b9102accbe1eec384f138d1852f9a8a1b894d4a5c8c81bb68ec78dcc150981a391960287f48fec1bc1f653983de4621bea51afdf2b61a38117b1
```

### `dpkg` source package: `pinentry=1.2.0-2ubuntu1`

Binary Packages:

- `pinentry-curses=1.2.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.2.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.0-2ubuntu1.dsc' pinentry_1.2.0-2ubuntu1.dsc 2999 SHA512:0b8840f7b11cc6b91d027d5d3937855e67713f4078478bb33b752e8bcde59271e30148919db6d07279cea226b07c0d1a137b36d961fd632a9c80ee99432e5106
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.0.orig.tar.bz2' pinentry_1.2.0.orig.tar.bz2 498390 SHA512:19cea79aa3982d1f0d75220c8e24ca38d6c49475c6f4c5aa7101151b4690db23ed316096a4a411136e716ba4eb471f48f9b09556e5c9837533c2356b9b384b63
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.0.orig.tar.bz2.asc' pinentry_1.2.0.orig.tar.bz2.asc 228 SHA512:2548e62a7d18688c763a044e07d2e3ec52b9f57054ebd869e781aae4c64b50d36032f45931914e5e3c6645ca12c3ed8dcc285ce58f52c9770bb20ad8f895ef24
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.2.0-2ubuntu1.debian.tar.xz' pinentry_1.2.0-2ubuntu1.debian.tar.xz 19404 SHA512:cb94dd3f62624013ce36f3abef816e233d15b9257757a19d796935af0ef6f638abbefb9803605872771ebe67eb82059471cc4ce43e27eced57085709a06daf21
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

### `dpkg` source package: `python3-defaults=3.10.6-1`

Binary Packages:

- `libpython3-stdlib:amd64=3.10.6-1`
- `python3=3.10.6-1`
- `python3-minimal=3.10.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.10.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1.dsc' python3-defaults_3.10.6-1.dsc 2944 SHA512:b42b7373abdd5b8ce9765e18b70abb3df7a773654e9740bc2cb2097d07499122865096666984dd601fa4c472c3efb0f929092a631854cfc703fa03599e13c09a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1.tar.gz' python3-defaults_3.10.6-1.tar.gz 145185 SHA512:27c33e502d57d43d0ac072228487c0e1a99280d8d968c0fed9a9e7de5fa485a8a3af25d78ac106a43e9f937d71448cbeb27d9adccababee973326d257dea5f00
```

### `dpkg` source package: `python3.10=3.10.7-1ubuntu0.2`

Binary Packages:

- `libpython3.10-minimal:amd64=3.10.7-1ubuntu0.2`
- `libpython3.10-stdlib:amd64=3.10.7-1ubuntu0.2`
- `python3.10=3.10.7-1ubuntu0.2`
- `python3.10-minimal=3.10.7-1ubuntu0.2`

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
$ apt-get source -qq --print-uris python3.10=3.10.7-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.7-1ubuntu0.2.dsc' python3.10_3.10.7-1ubuntu0.2.dsc 3734 SHA512:176ba0a93bdda077fca7827a56944308195b95f18007c9dad99bc1516a1d11359217fe256f77bf457904594dd5afbccd1fa99a6743ffb9e1f2ef1b636ef6bf35
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.7.orig.tar.xz' python3.10_3.10.7.orig.tar.xz 19618696 SHA512:dc3432d72ee7382617318c9645204876d13bb61d4caf3fbbb65e6b14897261123c743049657c95e159e5566daf4dcde613d2e393f025de758f610b44eb958313
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.10/python3.10_3.10.7-1ubuntu0.2.debian.tar.xz' python3.10_3.10.7-1ubuntu0.2.debian.tar.xz 223004 SHA512:a08ef81ff7175832248af3a6f7ded6c1de3503b2dabbd83169079e225b14d61df5b4fd562b3527b09ac3802f4fcaa22dce59f74a73f58e7d7fb08cc54e54f803
```

### `dpkg` source package: `readline=8.2-1`

Binary Packages:

- `libreadline8:amd64=8.2-1`
- `readline-common=8.2-1`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-1.dsc' readline_8.2-1.dsc 2612 SHA512:3ce55f831e8a9fccc88f96734af87727c77bc8c997923700eee4c72ec3909a6633e03ed819eb578a24bb099437a4b6a7c51744d3d7e73cb6e0e94d0760963c84
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2.orig.tar.gz' readline_8.2.orig.tar.gz 3043952 SHA512:0a451d459146bfdeecc9cdd94bda6a6416d3e93abd80885a40b334312f16eb890f8618a27ca26868cebbddf1224983e631b1cbc002c1a4d1cd0d65fba9fea49a
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.2-1.debian.tar.xz' readline_8.2-1.debian.tar.xz 29136 SHA512:80bc13925227bd12b1683a2d5672eaf6856fb117c7297d3a7966a637822cb7bfb67912ef1008a8150545646c4ca254b7b5d352e1fc373333eecbc68d038fe13c
```

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

Source:

```console
$ apt-get source -qq --print-uris sed=4.8-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.dsc' sed_4.8-1ubuntu2.dsc 2217 SHA512:310ccdf0bac73d16c8898fd600acbeceb534a1be53c795fc6f6059eccb431b45ef9ebcde147c150f9fd5e0d33161269f53e191bb26a095b45339a28b1c3381b2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz' sed_4.8.orig.tar.xz 1348048 SHA512:7de25d9bc2981c63321c2223f3fbcab61d7b0df4fcf7d4394b72400b91993e1288d8bf53948ed5fffcf5a98c75265726a68ad4fb98e1d571bf768603a108c1c8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz.asc' sed_4.8.orig.tar.xz.asc 833 SHA512:9b886bdbd18ee2d60608cee3fd2b4193a1b6c3309d887ee05828c14b89b7b515dbf042a9e0ebdd13e6ccfa42e3cd217a408c796d68c4ebedaaa64f795000f095
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.debian.tar.xz' sed_4.8-1ubuntu2.debian.tar.xz 60936 SHA512:c4f0c5b3f75acbcb213e78f5696129e83bc721031be3c756150e84b7aa7e725ac0d5afacbe18e91d39bc2b7892986d92e1e21db89601ccf2bccb8ac088482180
```

### `dpkg` source package: `sensible-utils=0.0.17`

Binary Packages:

- `sensible-utils=0.0.17`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.17
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.17.dsc' sensible-utils_0.0.17.dsc 1733 SHA512:33e94cbe40fbcb083564b4e4f5947f7c4dc0da0724245d19290667cf8a56eb60ba5b94c0c85e8eee2ae7c988a25a094e7edff3159bbe4339dcf9136a6336f2f7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.17.tar.xz' sensible-utils_0.0.17.tar.xz 66648 SHA512:fb7803cacc4222f232f64850e5559aca0b56ad98b6fd31f36c89740d72f7a235e7f2934ebce1d788882bff7196d59a2ed6cc3584f31e1c1c9e3593cedca2382b
```

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


### `dpkg` source package: `sgml-base=1.30`

Binary Packages:

- `sgml-base=1.30`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.30
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.30.dsc' sgml-base_1.30.dsc 1541 SHA512:6477c8b39b10f41b2059efe28c019fb89c9b2bdd3483a15784affa15bc08fffbd0237fadfab89ea588bee43e9c22ff3898f6c5b15ddb2325478acd2ea3f66bb6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.30.tar.xz' sgml-base_1.30.tar.xz 12536 SHA512:d1453cdad1791f83b29262dd496b23d6b1a468822ae6d28afced7961a56accc5e703123fcef9b6031118623cbb3a71556bc7e56b59322773ba473bc7ba228e9f
```

### `dpkg` source package: `shadow=1:4.11.1+dfsg1-2ubuntu1.1`

Binary Packages:

- `login=1:4.11.1+dfsg1-2ubuntu1.1`
- `passwd=1:4.11.1+dfsg1-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.11.1+dfsg1-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.11.1%2bdfsg1-2ubuntu1.1.dsc' shadow_4.11.1+dfsg1-2ubuntu1.1.dsc 2235 SHA512:d811d840fc7ccb622614eda3e4185d0e504b848da95c0ae0153a267baa6eeb7d844cc49ef7f8cd468141a253984947ac424024a80a53d0600a2b1c8962785b00
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.11.1%2bdfsg1.orig.tar.xz' shadow_4.11.1+dfsg1.orig.tar.xz 1704716 SHA512:d3f03e41f395ae608e93f7216193fe607d28d9ef85acff46c1f0c828bc630884d847f2f020e497140eb03e22447090eae603ef7affa7c376b6f6b08318fde9f3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.11.1%2bdfsg1-2ubuntu1.1.debian.tar.xz' shadow_4.11.1+dfsg1-2ubuntu1.1.debian.tar.xz 98500 SHA512:8485ce36276b0337e52bc9856b0006d373d9bbd062b5900e3114c65a7cf2ad74ecda3c499cad347dba7ea0f244e7d0e6a20312b963d0f150139302c348da6191
```

### `dpkg` source package: `sqlite3=3.39.3-1`

Binary Packages:

- `libsqlite3-0:amd64=3.39.3-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.39.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.39.3-1.dsc' sqlite3_3.39.3-1.dsc 2487 SHA512:12aaf2eead02c42a29aef8bbcc420eff7cdd6fb9aa3078df58614c7129d0c38e6b604f3f1d87cd2496d999b52607e8ff338e9460afeb8bd4ad9338da2c6339f3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.39.3.orig-www.tar.xz' sqlite3_3.39.3.orig-www.tar.xz 5562996 SHA512:7a46967e5ec647c9c02183e214659422d3b6d89823bbfa458ed2637e580a6c9dea1d5d2cd2e74dfb4813d966d09953009b42193a26b23ce751d86bd34764bc93
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.39.3.orig.tar.xz' sqlite3_3.39.3.orig.tar.xz 7819740 SHA512:7c853d47d0d191d38a41280c8061e47fea49e63e00640641acd1cbdca91b2d3e308795b0f453a3303ba99127aefd99d9dd4d6f93c5a5b7d792547766b16e9de6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.39.3-1.debian.tar.xz' sqlite3_3.39.3-1.debian.tar.xz 29528 SHA512:fd1740df5d529d89f2703aa1f6e598bf9280625ce16a41213c86d0db7dc3f070fc2c0aa7e116e397c2ea16cd0a7ae8fab599de1d57926cd24399055839f3908e
```

### `dpkg` source package: `subversion=1.14.2-3`

Binary Packages:

- `libsvn1:amd64=1.14.2-3`
- `subversion=1.14.2-3`

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
$ apt-get source -qq --print-uris subversion=1.14.2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2-3.dsc' subversion_1.14.2-3.dsc 4046 SHA512:9d86b87c209baae9020923a38c00ece8429592e6a91f283653f7afcc6e4ccbd145f8077baf164c29bb9b8af121667dd03b1a20d61716f7a3e012a74cac126396
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2.orig.tar.gz' subversion_1.14.2.orig.tar.gz 11626792 SHA512:053d9d38f675f5ddd6ad9c6bd061482f5e9ec9f0cb8ea6db76a91e0646af26dfdab2a882d09395df4e073d704be909160c230251957f86a452d32408da6d7468
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2.orig.tar.gz.asc' subversion_1.14.2.orig.tar.gz.asc 3215 SHA512:e0bdc9fff6ec6a645005da9031e96c7ad5cc97b9fbac21b91be6efe91adc72d85bd4ad630b5ca28e9cf619b95ea6f6421033e2d4669473faf9ec0406fd2ed6b6
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.2-3.debian.tar.xz' subversion_1.14.2-3.debian.tar.xz 336384 SHA512:eefffea9a7c1c80e15eca8229cdaa16d66d4f849c22c8e7cecf82a7aa3ba61ed49f47ebaa7f9f3698db30305aa0c7910e6b8e220629c91705e536f68943d1dc3
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

### `dpkg` source package: `tar=1.34+dfsg-1build3`

Binary Packages:

- `tar=1.34+dfsg-1build3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.34+dfsg-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1build3.dsc' tar_1.34+dfsg-1build3.dsc 2122 SHA512:b09665298f4768ea7451ca9811f6b320fc0e70c314ab7b1e78afc0c470dc4be27153a17b39f629584b7f9489493dfe91575be3cc5d2f808e12c4bc4e645bee6e
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg.orig.tar.xz' tar_1.34+dfsg.orig.tar.xz 1981736 SHA512:ec5553c53c4a5f523f872a8095f699c17bf41400fbe2f0f8b45291ccbaf9ac51dea8445c81bd95697f8853c95dcad3250071d23dbbcab857a428ee92e647bde9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.34%2bdfsg-1build3.debian.tar.xz' tar_1.34+dfsg-1build3.debian.tar.xz 19416 SHA512:3fbe7b908963df828585139f884762b698c14a2fc37618dcf3adb90819b160c8ea7aaa2e9dc9470abf40bd5100710dd1292f666cb77865ef3c558729dd313521
```

### `dpkg` source package: `tzdata=2022f-0ubuntu0.22.10.1`

Binary Packages:

- `tzdata=2022f-0ubuntu0.22.10.1`

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

### `dpkg` source package: `usrmerge=29ubuntu2`

Binary Packages:

- `usrmerge=29ubuntu2`

Licenses: (parsed from: `/usr/share/doc/usrmerge/copyright`)

- `GPL v2`
- `GPL-2`
- `later (please see /usr/share/common-licenses/GPL-2)`

Source:

```console
$ apt-get source -qq --print-uris usrmerge=29ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_29ubuntu2.dsc' usrmerge_29ubuntu2.dsc 1674 SHA512:7b5208d6c557e3708845024cd4152ae9f1127716db533b5761b138f65b73cb32a57cbe4c0454292373582f5e9fdd09d6e7c569fae8c1c54e8e87fd54dd3c9ed3
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_29ubuntu2.tar.xz' usrmerge_29ubuntu2.tar.xz 13444 SHA512:caa4226e145fd14d773b00858546e4c4e94cfe6acb02e9e9d7e63facf35841d0bdff5c1c705b4784fe760f58f66f537b158f241d6963b6492726977337f46c26
```

### `dpkg` source package: `utf8proc=2.7.0-4`

Binary Packages:

- `libutf8proc2:amd64=2.7.0-4`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.7.0-4
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.7.0-4.dsc' utf8proc_2.7.0-4.dsc 2190 SHA512:a589b783bb39128b3c95b49277ab2fbbbc5840ac780a9708f3630f3d5a4d195b0921834642a9322ce93a83313533a5a583e62f05e287f809117524b9506c8fa0
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.7.0.orig.tar.gz' utf8proc_2.7.0.orig.tar.gz 187906 SHA512:29f7883de13302d609e8755872ed43174e70076e9681b4ac3f9b03e50295c45d9972c193bc81f94ad7e11e2d33a46cad5a30a80873173e6e1ae242101ebb3bed
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.7.0-4.debian.tar.xz' utf8proc_2.7.0-4.debian.tar.xz 36064 SHA512:b6c396ee797e20c63267f55af3981bd41111733af131e9e5cc8ddcff3de2fa265a10e99930fe3454872a2380d525647727a018d7f6b8d000b77f830028917b0a
```

### `dpkg` source package: `util-linux=2.38-4ubuntu1`

Binary Packages:

- `bsdutils=1:2.38-4ubuntu1`
- `libblkid1:amd64=2.38-4ubuntu1`
- `libmount1:amd64=2.38-4ubuntu1`
- `libsmartcols1:amd64=2.38-4ubuntu1`
- `libuuid1:amd64=2.38-4ubuntu1`
- `mount=2.38-4ubuntu1`
- `util-linux=2.38-4ubuntu1`
- `util-linux-extra=2.38-4ubuntu1`

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
$ apt-get source -qq --print-uris util-linux=2.38-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38-4ubuntu1.dsc' util-linux_2.38-4ubuntu1.dsc 4608 SHA512:0e8cec89e38428defa8545e4c56a6cb7033ab3a5460ec4c0fe43f9855a3459f07b99586cf23f6bc7e445014f21bbf53dec424b94325a21b8a55e76aa7f2778c3
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38.orig.tar.xz' util-linux_2.38.orig.tar.xz 7349140 SHA512:d0f7888f457592067938e216695871ce6475a45d83a092cc3fd72b8cf8fca145ca5f3a99122f1744ef60b4f773055cf4e178dc6c59cd30837172aee0b5597e8c
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.38-4ubuntu1.debian.tar.xz' util-linux_2.38-4ubuntu1.debian.tar.xz 100876 SHA512:d07568f442cfc467107637b555b0f785c5b18543554d3cbd991b92ed9bc729447c9ac36adc295ee018c68fb64944e40393ede0b11bfa991b7e4f573a5def49a5
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

### `dpkg` source package: `xz-utils=5.2.5-2.1`

Binary Packages:

- `liblzma5:amd64=5.2.5-2.1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.5-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2.1.dsc' xz-utils_5.2.5-2.1.dsc 2402 SHA512:2ca63eb555673c2bdd1ee56862420fb7f794fd65924d9a74eb8399f594f91eb0c1943618ffe81bbdb62b7102a23622fabb9f03ef9911b3f0f0d3d90e48dfb066
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz' xz-utils_5.2.5.orig.tar.xz 1148824 SHA512:59266068a51cb616eb31b67cd8f07ffeb2288d1391c61665ae2ec6814465afac80fec69248f6a2f2db45b44475af001296a99af6a32287226a9c41419173ccbb
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2.1.debian.tar.xz' xz-utils_5.2.5-2.1.debian.tar.xz 34916 SHA512:e9593ce4cff247ff419ba8d749d2b58f61726e413b11030e137c3fb76f6bf4a23f41c6b65406d2590e3111ea2eec5be14422e3b96aa25edfa95df9b2376f3041
```

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
