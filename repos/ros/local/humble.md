# `ros:humble-ros-base`

## Docker Metadata

- Image ID: `sha256:84cd76603187799abf0f64311e6d4612a4fce0515a3911d56d969b8711b1def5`
- Created: `2026-07-02T05:34:09.962307685Z`
- Virtual Size: ~ 756.2 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=humble`
- Labels:
  - `org.opencontainers.image.version=22.04`

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

### `dpkg` source package: `adduser=3.118ubuntu5`

Binary Packages:

- `adduser=3.118ubuntu5`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu5.dsc' adduser_3.118ubuntu5.dsc 1766 SHA512:8d6e9894549dc9dd53db8480cb18ee9b012bc70ea7b53d72b0ad8ad713a1672d2e94750e1cde44d2b8f9fd7e66b1ea7c2ad20202fc7bcd90e2fba5cee63d5b5d
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.118ubuntu5.tar.xz' adduser_3.118ubuntu5.tar.xz 222904 SHA512:ded568a5a3f5a5ac1acc2098e37160194f8c4622e90c7044d599286a321fe8fd701c8554a4517e4d72a6089b8e3b5592b92d46668032bda81de64cc736bf0a75
```

### `dpkg` source package: `ann=1.1.2+doc-7build1`

Binary Packages:

- `libann0=1.1.2+doc-7build1`

Licenses: (parsed from: `/usr/share/doc/libann0/copyright`)

- `GPL-3`
- `GPL-3.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris ann=1.1.2+doc-7build1
'http://archive.ubuntu.com/ubuntu/pool/universe/a/ann/ann_1.1.2%2bdoc-7build1.dsc' ann_1.1.2+doc-7build1.dsc 2164 SHA512:e2613d5270ab40f9139f2cfb912c466a485237ad645c0cb7075429886a351a53cc1e4c6dbdddd5ccc8397240fff17d28885675564010d7a4da0e5a9f2e0d8096
'http://archive.ubuntu.com/ubuntu/pool/universe/a/ann/ann_1.1.2%2bdoc.orig.tar.gz' ann_1.1.2+doc.orig.tar.gz 693957 SHA512:fb004a014add109d0b0949443c4c599795363d20ee65386421f898f5276b5df08714a3cd8d371d5a03417e7c3f7f3451335f90df2ca274ce95c658b958a253ae
'http://archive.ubuntu.com/ubuntu/pool/universe/a/ann/ann_1.1.2%2bdoc-7build1.debian.tar.xz' ann_1.1.2+doc-7build1.debian.tar.xz 172220 SHA512:bdea0ce4e76fe53714922c2cd33488818ad20d1f8cb5eb97c064bb9ceac10899aad2d88a0590c977cbdc698854149b715815f054efadb88b0d018be8fbe06aee
```

### `dpkg` source package: `apt=2.4.14`

Binary Packages:

- `apt=2.4.14`
- `libapt-pkg6.0:amd64=2.4.14`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.4.14
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.4.14.tar.xz' apt_2.4.14.tar.xz 2323176 SHA256:8d1b2748a6b5c99c9fd56dfadde280b85616dd67d22f7ca44f86225fa688a98c
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_2.4.14.dsc' apt_2.4.14.dsc 2801 SHA256:317040c4ab15f20cc77460126fd78745814a81d73a6c37d0559876977a7dfe35
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

### `dpkg` source package: `audit=1:3.0.7-1build1`

Binary Packages:

- `libaudit-common=1:3.0.7-1build1`
- `libaudit1:amd64=1:3.0.7-1build1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0.7-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1build1.dsc' audit_3.0.7-1build1.dsc 2771 SHA512:beb14e23239ab9c87dd4a57821d7d557a14a3e67f66306110ef87cd77cd2c07426f3bc8413d757618f886c5059e9bf624347753170708e0ad39b90f96fd51053
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7.orig.tar.gz' audit_3.0.7.orig.tar.gz 1180226 SHA512:b5662b32082fc2ac54e247aa0db5442d76afa30134ebba1d624a17004e9ccf6856bb75344af4ce9d9a0a66c03e1c6f18b7d45658d7df13ea71af0c8362e08d70
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_3.0.7-1build1.debian.tar.xz' audit_3.0.7-1build1.debian.tar.xz 17772 SHA512:cdf346fc7dc04e42b44a9089fb7c01e68ea54ccd20d3eef8100d0cd8eed8ebd0764d8fd6ceab133faa0bfeee18e3cfe7625d230600b0e34ed0c19a7b739ec783
```

### `dpkg` source package: `base-files=12ubuntu4.7`

Binary Packages:

- `base-files=12ubuntu4.7`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=12ubuntu4.7
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12ubuntu4.7.tar.xz' base-files_12ubuntu4.7.tar.xz 81888 SHA256:000a3d5f46f1e1cc5379a8cb1b6461cff55f150b4847576d4f1f6e4ad628fdce
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_12ubuntu4.7.dsc' base-files_12ubuntu4.7.dsc 1277 SHA256:cb8a669fec06f514fef89be1df6ef2e8b439197a6a962c3e1675be1fbe90dc3e
```

### `dpkg` source package: `base-passwd=3.5.52build1`

Binary Packages:

- `base-passwd=3.5.52build1`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.52build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.52build1.dsc' base-passwd_3.5.52build1.dsc 1320 SHA512:2071171adf14d276664526662fab08d34a45a259ebcdbee7ae57bb004d3d12793e629006a37b649f16c0f04856e9f7bb79fb92fe304525167f48e73dec0cc4fd
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.52build1.tar.xz' base-passwd_3.5.52build1.tar.xz 54252 SHA512:699ffe50f4a7fbdea2c0b25d3b2452d538598870cf39b84668d9b7efa20ec41284c331513e89c966e7248732b1ec1abdfdb871e31f8e9efa026c691e89236ffe
```

### `dpkg` source package: `bash=5.1-6ubuntu1.1`

Binary Packages:

- `bash=5.1-6ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.1-6ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1.orig.tar.xz' bash_5.1.orig.tar.xz 5802740 SHA256:d5eeee4f953c09826409d572e2e8996a2140d67eb8f382ce1f3a9d23883ad696
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1-6ubuntu1.1.debian.tar.xz' bash_5.1-6ubuntu1.1.debian.tar.xz 99944 SHA256:32332a77dedfbeee4deae3a435e07a9377a117d8326120abe0b26b92c60f5404
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.1-6ubuntu1.1.dsc' bash_5.1-6ubuntu1.1.dsc 2409 SHA256:5c35c7efb7cfb6cfcaaaa4825ca7227151d434b4ff18b0ca88441c9f6dc9ba4e
```

### `dpkg` source package: `binutils=2.38-4ubuntu2.12`

Binary Packages:

- `binutils=2.38-4ubuntu2.12`
- `binutils-common:amd64=2.38-4ubuntu2.12`
- `binutils-x86-64-linux-gnu=2.38-4ubuntu2.12`
- `libbinutils:amd64=2.38-4ubuntu2.12`
- `libctf-nobfd0:amd64=2.38-4ubuntu2.12`
- `libctf0:amd64=2.38-4ubuntu2.12`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.38-4ubuntu2.12
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.38.orig.tar.xz' binutils_2.38.orig.tar.xz 23651408 SHA256:e316477a914f567eccc34d5d29785b8b0f5a10208d36bbacedcc39048ecfe024
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.38-4ubuntu2.12.debian.tar.xz' binutils_2.38-4ubuntu2.12.debian.tar.xz 333584 SHA256:236544ea9c0792e548e25ca3c36a564714bd5fc8b4c86069d81832e47616f0d9
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.38-4ubuntu2.12.dsc' binutils_2.38-4ubuntu2.12.dsc 8865 SHA256:677a893b113648a45605f6847c6c7da7d2dcf6f550f6f35bf3d768a966a8f3f9
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

### `dpkg` source package: `build-essential=12.9ubuntu3`

Binary Packages:

- `build-essential=12.9ubuntu3`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.9ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.9ubuntu3.dsc' build-essential_12.9ubuntu3.dsc 2045 SHA512:32429bbff9796c9a989ed68575620a9a4239857bdee5ee2d56573c9622c1df3984e63b13ab9abbae29795cc3ca43852b3b61706b5e01f07fa00d368ba29ddbc9
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.9ubuntu3.tar.xz' build-essential_12.9ubuntu3.tar.xz 51580 SHA512:01a7e6c120b492a4223e25195a1c6d74a2a8abf4b0bc496e094509227f30824b953d64d3f2ca31493613afe17843a1c58c553998d4c491ae9244f703fe578455
```

### `dpkg` source package: `bullet=3.06+dfsg-4build2`

Binary Packages:

- `libbullet-dev:amd64=3.06+dfsg-4build2`
- `libbullet3.06:amd64=3.06+dfsg-4build2`

Licenses: (parsed from: `/usr/share/doc/libbullet-dev/copyright`, `/usr/share/doc/libbullet3.06/copyright`)

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
$ apt-get source -qq --print-uris bullet=3.06+dfsg-4build2
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.06%2bdfsg-4build2.dsc' bullet_3.06+dfsg-4build2.dsc 2441 SHA512:530f3b66690f2a1f2864a992615cff7dd3fe4e1198af17afa46c472c688f5c7d5b401c5e6535187b38161d33f592658cf9102adc62224cff483b205157af9792
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.06%2bdfsg.orig.tar.xz' bullet_3.06+dfsg.orig.tar.xz 1565000 SHA512:2e4000a0cf219d8c1a8e15c7eb43f78478d52eeb7566cd920bb43918252e47ce3df79e00d62cfe2085c9b1b9201b2c4fe9b46ff404fa4fa902971df403ca0917
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.06%2bdfsg-4build2.debian.tar.xz' bullet_3.06+dfsg-4build2.debian.tar.xz 13000 SHA512:46ce69dd833d3049d35613c80e2070c0a9604ee9546e34bcfe4cca928658bba95813e9c6e1481d9f93109e7600ad77d0522ba5dc6f07fbd78fb3447ba732bf3f
```

### `dpkg` source package: `bzip2=1.0.8-5build1`

Binary Packages:

- `bzip2=1.0.8-5build1`
- `libbz2-1.0:amd64=1.0.8-5build1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.dsc' bzip2_1.0.8-5build1.dsc 1860 SHA512:dfb9cd3a99f8c80a27e088b6ba7f06f50bc2bdbc61f574ed8f77d0fa58ff07fa1c34a060351fd4b601537181143dd934caadd7a00eb97aea5933febb7b61743d
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-5build1.debian.tar.bz2' bzip2_1.0.8-5build1.debian.tar.bz2 26870 SHA512:e030c257c3458d780fd0ffc6f328efd69d0e875e81acd7441a7c6651194ebded61017c96aad7c99061f93d50dfc33056abe98c9a599abc900f49d51c4a1eed6f
```

### `dpkg` source package: `ca-certificates=20260601~22.04.1`

Binary Packages:

- `ca-certificates=20260601~22.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601~22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e22.04.1.tar.xz' ca-certificates_20260601~22.04.1.tar.xz 266492 SHA512:a06f67c74305ad876aa84bf41d594ac902f58143d7d5998fb494630453573e6606ddae5c462ebeeb255c9c94b89fe44af79f59ddcf8b0bd369a9353bfce709d6
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e22.04.1.dsc' ca-certificates_20260601~22.04.1.dsc 1850 SHA512:af78747c137e3d0fb7ba55c278792d4c028f177b3c4af49b92c835301371477eb54c2a73120e75611f9f4b8ced331d5d6bcea37f7bba41f0b3f27fcd9871ca29
```

### `dpkg` source package: `cairo=1.16.0-5ubuntu2.1`

Binary Packages:

- `libcairo2:amd64=1.16.0-5ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.16.0-5ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0.orig.tar.xz' cairo_1.16.0.orig.tar.xz 41997432 SHA512:9eb27c4cf01c0b8b56f2e15e651f6d4e52c99d0005875546405b64f1132aed12fbf84727273f493d84056a13105e065009d89e94a8bfaf2be2649e232b82377f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0-5ubuntu2.1.debian.tar.xz' cairo_1.16.0-5ubuntu2.1.debian.tar.xz 35940 SHA512:cf90fbc96bf39e67f171e84f585b86573b8f31cd257e2f4c468d4f054512f8e1acbfd8dcee6a0735a7158e8a2a6128f79e4e96b5a64be0be99193a1c334dec54
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.16.0-5ubuntu2.1.dsc' cairo_1.16.0-5ubuntu2.1.dsc 2838 SHA512:35ebe44e8464fd64b789be309e1bf25b108878a27081f80ea74e6ace698b4876b5ab9e75f64f5bace556c9fcb20fa0839b183af53cbdd48fbcdb1ff344d0688b
```

### `dpkg` source package: `catch2=2.13.8-1`

Binary Packages:

- `catch2=2.13.8-1`

Licenses: (parsed from: `/usr/share/doc/catch2/copyright`)

- `BSD-3`
- `Boost-1.0`

Source:

```console
$ apt-get source -qq --print-uris catch2=2.13.8-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/catch2/catch2_2.13.8-1.dsc' catch2_2.13.8-1.dsc 1909 SHA512:cf8605069417c2ad6edd423bc78962923246b4945ed24038b11f8ff74cf01d84a856896ed4d96af7d7868ee168befcacf74f4daee7e33ff076a90f916903dfd4
'http://archive.ubuntu.com/ubuntu/pool/universe/c/catch2/catch2_2.13.8.orig.tar.gz' catch2_2.13.8.orig.tar.gz 661681 SHA512:21521738238cd67ebd53a9075ce5888abce10625ded19bfaf52e0ee24ace62e6e0d25f0e991731006c677e9aefd391f67c3a3d3b907a751429a2d559110f70ef
'http://archive.ubuntu.com/ubuntu/pool/universe/c/catch2/catch2_2.13.8-1.debian.tar.xz' catch2_2.13.8-1.debian.tar.xz 4616 SHA512:faa0fab432679f2cbdfabe917d7eef989a0af3dcf37936b1989a851414be868c50106f130c8e49a1cb5dd002a2932b823d762884ac1ecbd17c4160a91d392bb2
```

### `dpkg` source package: `cdebconf=0.261ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.261ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.261ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.261ubuntu1.dsc' cdebconf_0.261ubuntu1.dsc 2941 SHA512:18554e0d66831166d01e199612aa1cd43ed56e00995d62329f2c951143860bc413870acf71f4d0e72e228ce70e6a09c97d87750e5ada1a48beaf4b39d675084c
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.261ubuntu1.tar.xz' cdebconf_0.261ubuntu1.tar.xz 297016 SHA512:6c2c8e2dccdb923ae6dc6a6b3873e6a56f6bdc4a6298c0576f60cb8d5c63bd06c4b9dac4ada4abd0d672a4e54509ad558fc9d1424a8029568d8d86cb54926390
```

### `dpkg` source package: `cmake=3.22.1-1ubuntu1.22.04.2`

Binary Packages:

- `cmake=3.22.1-1ubuntu1.22.04.2`
- `cmake-data=3.22.1-1ubuntu1.22.04.2`

Licenses: (parsed from: `/usr/share/doc/cmake/copyright`, `/usr/share/doc/cmake-data/copyright`)

- `Apache-2.0`
- `BSD-0-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-Clause`
- `BSD-4-clause`
- `Expat`
- `GPL-2`
- `GPL-2+with_exception`
- `GPL-3`
- `GPL-3+with_exception`
- `ISC`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris cmake=3.22.1-1ubuntu1.22.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.22.1.orig.tar.gz' cmake_3.22.1.orig.tar.gz 9778031 SHA256:0e998229549d7b3f368703d20e248e7ee1f853910d42704aa87918c213ea82c0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.22.1-1ubuntu1.22.04.2.debian.tar.xz' cmake_3.22.1-1ubuntu1.22.04.2.debian.tar.xz 35468 SHA256:84a1d81a6cf72979a4e9c0d484384740eb4c1faf0982b36745ca7bffad8e4356
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.22.1-1ubuntu1.22.04.2.dsc' cmake_3.22.1-1ubuntu1.22.04.2.dsc 3726 SHA256:5f9c03aee91f6140b2b6345da7a23956a58510127d241a97d89342e991689cc8
```

### `dpkg` source package: `console-bridge=1.0.1+dfsg2-3`

Binary Packages:

- `libconsole-bridge-dev:amd64=1.0.1+dfsg2-3`
- `libconsole-bridge1.0:amd64=1.0.1+dfsg2-3`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge1.0/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=1.0.1+dfsg2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-3.dsc' console-bridge_1.0.1+dfsg2-3.dsc 1934 SHA512:1a8a3ec2f852acb95e6bcd15b6a225c444fdec0f3df714c1769632e6815b125e4a987997906ce1040cceb288ac6e92844f88a47698cefbd8f2f0f9136bf13de9
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2.orig.tar.xz' console-bridge_1.0.1+dfsg2.orig.tar.xz 10352 SHA512:5a6e2feaa843633143418e36d4bffb5b5b1af54d8df0db84b75088f27035e8f7dadaf52aea6c4321cd669e3d9f2f72f42fdb6e3c1ae1092ec4ec08be529beff7
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-3.debian.tar.xz' console-bridge_1.0.1+dfsg2-3.debian.tar.xz 4020 SHA512:4ddd2886430091dcb4d50a88aa58dad5317030075ef9de9e8d5368ba8c8f280ce6d6714a5b78a090a1435f9094d82e7e0a151cb3cc130cb6c51d268f6955fe91
```

### `dpkg` source package: `coreutils=8.32-4.1ubuntu1.3`

Binary Packages:

- `coreutils=8.32-4.1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.32-4.1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz' coreutils_8.32.orig.tar.xz 5547836 SHA256:4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.3.debian.tar.xz' coreutils_8.32-4.1ubuntu1.3.debian.tar.xz 45556 SHA256:5ff54161038e479c904042f8848e40b40f5330bc4e4f2df9a474974f3d466061
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1.3.dsc' coreutils_8.32-4.1ubuntu1.3.dsc 2027 SHA256:26959de3887a535d7929e5f3ac18eab6eaba5f221cdcf3b4cf7b43c68d32f92b
```

### `dpkg` source package: `cppcheck=2.7-1`

Binary Packages:

- `cppcheck=2.7-1`

Licenses: (parsed from: `/usr/share/doc/cppcheck/copyright`)

- `BSD-2`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris cppcheck=2.7-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.7-1.dsc' cppcheck_2.7-1.dsc 2186 SHA512:edb8f968e5cef167a27c9dbd140043f41a0a06cd77b7437a850216b8013c65e952ce3fbba53b44d7f33c1fec80cd8f07e54e0a1fc3e0414a455959e30b255374
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.7.orig.tar.gz' cppcheck_2.7.orig.tar.gz 3939557 SHA512:62f00957476dbb4de700550bf299fd56c23ee105846d725b78e6b61417f0ecb4283e24528b72d04fea3aed43282968902c12fdb527fdd5e07e6b05764b150e1e
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.7-1.debian.tar.xz' cppcheck_2.7-1.debian.tar.xz 11868 SHA512:302c38afba279b636be1cdc7ce2a13612fe71a9e56a2e50cf6fa86d6596de17fa0d8132752c98a3e894ea47271f6a92817433c8d432bd6486bd0a77aecbdfa2d
```

### `dpkg` source package: `curl=7.81.0-1ubuntu1.25`

Binary Packages:

- `curl=7.81.0-1ubuntu1.25`
- `libcurl3-gnutls:amd64=7.81.0-1ubuntu1.25`
- `libcurl4:amd64=7.81.0-1ubuntu1.25`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.81.0-1ubuntu1.25
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.81.0.orig.tar.gz' curl_7.81.0.orig.tar.gz 4188040 SHA512:e3084f0fa083f7f93eac923edbfdddb5fd0a372b94673ba9d4427a2b95508898c15ecdf63b99a1c1f6cf3215e27b06cbaa2b7073df038d43b362e586f92495d3
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.81.0.orig.tar.gz.asc' curl_7.81.0.orig.tar.gz.asc 488 SHA512:92bc5ede831551285d67b03abe8400c609ad31c9d33e324ee5c41b92dd5c2a0245a09a396bd76807b3e44bcfef944b1e16ac266264f7b85d27cc1c072a6e82bd
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.81.0-1ubuntu1.25.debian.tar.xz' curl_7.81.0-1ubuntu1.25.debian.tar.xz 97692 SHA512:231dd5fc4585a0160869f1e804ba8671ebd68a4fea179a6eb3b0ff9365357db99ceef5f9ac50c04e1bdad41bbb12c66e2006a5083204730250681e388f96acf1
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.81.0-1ubuntu1.25.dsc' curl_7.81.0-1ubuntu1.25.dsc 3180 SHA512:c003e2ad82a64df87bf71cd2e62dbe81beae287d7d3a9514e029a94ad4584e270a8cecc562acb3520b117eb148cdb3b0123e7ddc6ff047335cae56ab0f7f2ce7
```

### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg2-3ubuntu1.2`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg2-3ubuntu1.2`
- `libsasl2-modules-db:amd64=2.1.27+dfsg2-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-2.2-clause`
- `BSD-3-clause`
- `BSD-3-clause-JANET`
- `BSD-3-clause-PADL`
- `BSD-4-clause`
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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg2-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg2.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg2.orig.tar.xz 829892 SHA512:13337dfcc57ea8fec471ee0f2a0f6b58fb92907ad0899a4a8afaba957c5da302924e71c9fc4a61bbc913a4ee2ea74b05772cb26ed58d5724a312bb20a8b6a4cb
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg2-3ubuntu1.2.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg2-3ubuntu1.2.debian.tar.xz 98836 SHA512:91457b1c476fae1b407f82304e6f651053ceaa923059e185b59e2be680038c2a38aab7749004b640ba604f7fdf51eb87a45e91671077207b8b8b4319e1bf24fb
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg2-3ubuntu1.2.dsc' cyrus-sasl2_2.1.27+dfsg2-3ubuntu1.2.dsc 3626 SHA512:fc67304c71b6bf7e5097bdb080ef0973ab873ff7558d91153066820c2f7d5983260586564760d6abd04c3e3fe7b076b474ae44bc97907cc2fb2757d4ca3cfe56
```

### `dpkg` source package: `dash=0.5.11+git20210903+057cd650a4ed-3build1`

Binary Packages:

- `dash=0.5.11+git20210903+057cd650a4ed-3build1`

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
$ apt-get source -qq --print-uris dash=0.5.11+git20210903+057cd650a4ed-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-3build1.dsc' dash_0.5.11+git20210903+057cd650a4ed-3build1.dsc 1834 SHA512:380a677ef7fcd2060f7806e4e552891393adb43bfba82498d143cd2ed4fa0cc7681e573a27bcb0991025a8323f6eb8b113aa1519cf455645556fad968cd26232
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed.orig.tar.xz' dash_0.5.11+git20210903+057cd650a4ed.orig.tar.xz 133320 SHA512:eced6bc60ca6ba4394a2ee65d8c6b88eca729c43e47053fc01dec5500ebe002a12f536c128c3fd821a2eb61b97e92c8a0be6d4532926479ce4b7d986be109cb7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.11%2bgit20210903%2b057cd650a4ed-3build1.debian.tar.xz' dash_0.5.11+git20210903+057cd650a4ed-3build1.debian.tar.xz 42744 SHA512:7dd5b1bcaf76d8de19ad1647862e1140de59822c25d9ab1b42423f16de1e4c606ea393adac12f16a2ce9498d8f9553b8787fc31e5f93feefe36ab84b83402e1e
```

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.8ubuntu3`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.8ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.8ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8ubuntu3.dsc' db5.3_5.3.28+dfsg1-0.8ubuntu3.dsc 2875 SHA512:8743931f44f980d7be9ae77f5ce4b14ea260b780f33c8c6da66eb2fe4dba45a9c6b93237e91e2898ae0a76754ee789d67dd4efba7111f1360cb073ba633e1389
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA512:50cb87bc3f24065839ee2932e82af032b236b290ebe89983076f503c6c62c5f36ff93d7847a3f68b2b19f35088fbab5d3ac6a34553d07e8148e68e9a3f079a12
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8ubuntu3.debian.tar.xz' db5.3_5.3.28+dfsg1-0.8ubuntu3.debian.tar.xz 32028 SHA512:9034be98df6c753b5f3faee9cbd1886e3e3c3d15c5840bc1c269a5034f6bfe9c4926c20591150b543618816051be218e6f00c3602b8b4325b0fcb193ddba804c
```

### `dpkg` source package: `dbus-python=1.2.18-3build1`

Binary Packages:

- `python3-dbus=1.2.18-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-dbus/copyright`)

- `AFL-2.1`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dbus-python=1.2.18-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.2.18-3build1.dsc' dbus-python_1.2.18-3build1.dsc 3044 SHA512:70a184492fe13f2c11c65949a01a8d1887b1193361945a12e76c3d89cdb3dac6f3e0e3c02805af3043584d8f7c841dca6a60d8b43361de6995773fef1c12ac83
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.2.18.orig.tar.gz' dbus-python_1.2.18.orig.tar.gz 578204 SHA512:72f422c59637392bd78b741b66dff2afadcc706452c3e82fdc14b1dc052a0c5cb8a85e2758d18c5cbdc08004419a0b3c16b67b99688d96307084403e72585900
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.2.18.orig.tar.gz.asc' dbus-python_1.2.18.orig.tar.gz.asc 833 SHA512:5f8b0c8c1771f4e8ace9168c02f04d0e065cfa8dfdaf7e7d991232e42e0f77bef9d72c565a053ed0cee1ac75b5ab7b929fcdb88d34b21f1489107ea4847ada0a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.2.18-3build1.debian.tar.xz' dbus-python_1.2.18-3build1.debian.tar.xz 34244 SHA512:729f1f29a8b922df2b27342b6a648f161bcbfde50f3f76aa2767bf7a4344ab5b8f2d82636cf4a51b8d509719c19e78be3daaf488cc9bb97fd55447c50aa1a874
```

### `dpkg` source package: `dbus=1.12.20-2ubuntu4.1`

Binary Packages:

- `libdbus-1-3:amd64=1.12.20-2ubuntu4.1`

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
$ apt-get source -qq --print-uris dbus=1.12.20-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.20.orig.tar.gz' dbus_1.12.20.orig.tar.gz 2095511 SHA512:0964683bc6859374cc94e42e1ec0cdb542cca67971c205fcba4352500b6c0891665b0718e7d85eb060c81cb82e3346c313892bc02384da300ddd306c7eef0056
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.20-2ubuntu4.1.debian.tar.xz' dbus_1.12.20-2ubuntu4.1.debian.tar.xz 65220 SHA512:2875cc688bc37a8b5c6a4e0bbb28a0a153709d70ddf8ee264d78ba44efdd0346776df86be493e9b68526387ae97a02abc76da7672abb5ca3537891fc455d1c2f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.12.20-2ubuntu4.1.dsc' dbus_1.12.20-2ubuntu4.1.dsc 3271 SHA512:161aca34132f46355d230c9acfe4860a5a05b6c881dfedae682f6553ce6e48e9a1cffd38c2097e4e320afbc6594de3ef391caaa5e94eaec64a28cfa69c7b8798
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

### `dpkg` source package: `debianutils=5.5-1ubuntu2`

Binary Packages:

- `debianutils=5.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5-1ubuntu2.dsc' debianutils_5.5-1ubuntu2.dsc 1667 SHA512:333b9087e56e8f9a9ab95db556783a582b2855042e3dee292767decc4e4ad366bf32b4a30e60f5000a3ccced20ec613649fcd84563dae8e552a31273b42a170b
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5.orig.tar.xz' debianutils_5.5.orig.tar.xz 104448 SHA512:230310428ee7c145c74bb666ae729754352295230f38ef4e22f7566970c5186d607cd827a5603a678815bd48d4a1eb2716f55c32494ec75eb665651da6a56e6a
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.5-1ubuntu2.debian.tar.xz' debianutils_5.5-1ubuntu2.debian.tar.xz 68420 SHA512:62fca780251fdb3b434abe840683385d3187699cf0466333fc1894a225f256ab1f912e818bbb4b564b1083c2e05a7a199bb9cdcc56307e60ba68cacef72644cf
```

### `dpkg` source package: `dh-elpa=2.0.9ubuntu1`

Binary Packages:

- `dh-elpa-helper=2.0.9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dh-elpa-helper/copyright`)

- `CC0`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris dh-elpa=2.0.9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-elpa/dh-elpa_2.0.9ubuntu1.dsc' dh-elpa_2.0.9ubuntu1.dsc 1913 SHA512:f62b9edb5444fe1c2ab76f4a70842501911a34bfd2b32ab5a30fa008e145dabc699b49565fa04b4d933ba18e72743255ad441fcdf8f7f3779650c36a09ce6de3
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-elpa/dh-elpa_2.0.9ubuntu1.tar.xz' dh-elpa_2.0.9ubuntu1.tar.xz 25752 SHA512:bae62af7dfb289252a90bf5681b9f303020e794632222a92edf592cfc20be06a7dc57eb04c36c37e3dea23481a7f7419007b6d2b36ba89d6e2e435f984dd8f8a
```

### `dpkg` source package: `diffutils=1:3.8-0ubuntu2`

Binary Packages:

- `diffutils=1:3.8-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.8-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-0ubuntu2.dsc' diffutils_3.8-0ubuntu2.dsc 1821 SHA512:645b14680e3669261eb372ce523d8258ee65b010b4e290650f8a0a4c922a26f80ee381e3711b2bf01249d64e248c184f8898abc6e0e50cb9f64cbd647ab1f684
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz' diffutils_3.8.orig.tar.xz 1585120 SHA512:279441270987e70d5ecfaf84b6285a4866929c43ec877e50f154a788858d548a8a316f2fc26ad62f7348c8d289cb29a09d06dfadce1806e3d8b4ea88c8b1aa7c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8.orig.tar.xz.asc' diffutils_3.8.orig.tar.xz.asc 833 SHA512:0464ac89209411993800666b45ff90243d22fbda53bf1d71c6870d565b39cc8d9c54c141b9d297a181ce74ad8fb5313953f416bced179ff7728a52a3e9a4f5a5
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.8-0ubuntu2.debian.tar.xz' diffutils_3.8-0ubuntu2.debian.tar.xz 11692 SHA512:fab99ca407c3b1bbc427ebf14595d540e6ad2957e9b43065005efd9d5b423e6a4d6d460cccd05faf5786193a5bf1cf46721743e580161d5004167eca15fc405b
```

### `dpkg` source package: `distlib=0.3.4-1`

Binary Packages:

- `python3-distlib=0.3.4-1`

Licenses: (parsed from: `/usr/share/doc/python3-distlib/copyright`)

- `BSD-3-clause`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris distlib=0.3.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.3.4-1.dsc' distlib_0.3.4-1.dsc 1809 SHA512:9542ad50dbcf1e5129914e8704d28583f3a03ce20be3303e001ee3c68c61adcdb67733b5e439642aece760c3b58da6e6893dc0d0ff5b81fb4548e06551f7f5b9
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.3.4.orig.tar.xz' distlib_0.3.4.orig.tar.xz 342000 SHA512:dd4576d09e171d25ecf345fc202e9088052a8021025f20dff65fa5a790d66d6d2c8791fc32d2891536d60206fccd5544f3c2e07fec6dec5a99623d4dd0258fa1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.3.4-1.debian.tar.xz' distlib_0.3.4-1.debian.tar.xz 6296 SHA512:8c6d132d712b26ec79bbbaee349901456e14fc5a921e0da4dc32d98595384ce05ba78cae9450b5289cc35ea60fcd21991a6a98cb3571a7dbd8d79aae57f6f27a
```

### `dpkg` source package: `distro-info-data=0.52ubuntu0.12`

Binary Packages:

- `distro-info-data=0.52ubuntu0.12`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.52ubuntu0.12
'http://security.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.52ubuntu0.12.tar.xz' distro-info-data_0.52ubuntu0.12.tar.xz 10424 SHA512:d3877bfe0b4f5f9bc4d8f9a82b63049b4f7b25ac7258950eb88a0faefcbe6c5924fb1239fc35bc63256b1e25d1441db7377674e4afc795d64b45349508146284
'http://security.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.52ubuntu0.12.dsc' distro-info-data_0.52ubuntu0.12.dsc 1800 SHA512:4a83e96f7d04bf74f5f5098e1537f015994957f049c7316e884ee44ef90cc2eea77509c56856858174e20fb86a84f09a580c38eefd914f14c91b98cd39d61685
```

### `dpkg` source package: `dpkg=1.21.1ubuntu2.6`

Binary Packages:

- `dpkg=1.21.1ubuntu2.6`
- `dpkg-dev=1.21.1ubuntu2.6`
- `libdpkg-perl=1.21.1ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.21.1ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.1ubuntu2.6.tar.xz' dpkg_1.21.1ubuntu2.6.tar.xz 5017128 SHA256:f66de0b3430a5545699361168824976acfa85f1308f00dde5bc35f39e15e2d02
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.21.1ubuntu2.6.dsc' dpkg_1.21.1ubuntu2.6.dsc 2254 SHA256:45e8b9e16206bc27ebe1d6a0363c36135dd40c40d6105a8bb92258693f6822e8
```

### `dpkg` source package: `e2fsprogs=1.46.5-2ubuntu1.2`

Binary Packages:

- `e2fsprogs=1.46.5-2ubuntu1.2`
- `libcom-err2:amd64=1.46.5-2ubuntu1.2`
- `libext2fs2:amd64=1.46.5-2ubuntu1.2`
- `libss2:amd64=1.46.5-2ubuntu1.2`
- `logsave=1.46.5-2ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.5-2ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz' e2fsprogs_1.46.5.orig.tar.gz 9530158 SHA256:b7430d1e6b7b5817ce8e36d7c8c7c3249b3051d0808a96ffd6e5c398e4e2fbb9
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5.orig.tar.gz.asc' e2fsprogs_1.46.5.orig.tar.gz.asc 488 SHA256:b1e248ed73d4d67ac0cf7760e780e0a5cd2db85bbb9a5dcc235538b596128916
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu1.2.debian.tar.xz' e2fsprogs_1.46.5-2ubuntu1.2.debian.tar.xz 86604 SHA256:b04fad2b12787628497127e6fab76de11c54229e08a406eba126df13f5224fdf
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.46.5-2ubuntu1.2.dsc' e2fsprogs_1.46.5-2ubuntu1.2.dsc 3190 SHA256:6f41e832d3e69bff96374f20e886a286f6dd8cfff68c1f0fc902281ed365560a
```

### `dpkg` source package: `eigen3=3.4.0-2ubuntu2`

Binary Packages:

- `libeigen3-dev=3.4.0-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libeigen3-dev/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2`

Source:

```console
$ apt-get source -qq --print-uris eigen3=3.4.0-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-2ubuntu2.dsc' eigen3_3.4.0-2ubuntu2.dsc 2277 SHA512:3df6c64e7becb79056eb462357bd4b5b60dfb8748ce42b47e8c5904a4569f56785a98fca08ec665598d196b182dd49c34029961bcd7791ba0ddca90fdb900a61
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0.orig.tar.bz2' eigen3_3.4.0.orig.tar.bz2 2143091 SHA512:cc488eb111e0e248744d2bc4475b345b5fb82361dff226a5b73a33bd0388de8c219cff8cffcf8f476b672fc0e223f339e8c6a1cfb6293840a4a6abf232438a89
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-2ubuntu2.debian.tar.xz' eigen3_3.4.0-2ubuntu2.debian.tar.xz 19656 SHA512:84150ddd6e36fc49df6631b4112587f5162ae76853119afcf262f1613512d96589bfb0f72815ab772bc41b3a58708384033e5495be17a6be6b78dd88e1772953
```

### `dpkg` source package: `emacsen-common=3.0.4`

Binary Packages:

- `emacsen-common=3.0.4`

Licenses: (parsed from: `/usr/share/doc/emacsen-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris emacsen-common=3.0.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/emacsen-common/emacsen-common_3.0.4.dsc' emacsen-common_3.0.4.dsc 1463 SHA512:1c6ee66d7da5e4ff3efde5f7be797f983ec4fde72ec5c713b2af14fc7cace569bde3a1b62bd12f4ba912ea3d80055816b43e6d19f50ca377a779e3adc468fac9
'http://archive.ubuntu.com/ubuntu/pool/main/e/emacsen-common/emacsen-common_3.0.4.tar.xz' emacsen-common_3.0.4.tar.xz 16292 SHA512:0bc4eb00245c6f5ac6d26558656dbef7ad865c7612b37ad0cb0cca82236b17a4a3c0360f2042cc8700f30c955895ab09d1e79901b74a934f55578255a9989c28
```

### `dpkg` source package: `empy=3.3.4-2`

Binary Packages:

- `python3-empy=3.3.4-2`

Licenses: (parsed from: `/usr/share/doc/python3-empy/copyright`)

- `GPL-2`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris empy=3.3.4-2
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.4-2.dsc' empy_3.3.4-2.dsc 1667 SHA512:826b2b4dae78c717bd9ca41f3c13aeb259eaff690c00ad96f907c1c85084dd7dca7787b94d95955d20654f3b4e41e45411150d6c2d35a5110b5232b0752ee278
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.4.orig.tar.gz' empy_3.3.4.orig.tar.gz 63169 SHA512:1bfe1a93926ecd245ba2fbb77bcc1c9b08515260263eb4ce20701c042f5bb0d8184183c0bcfb9342355aa4baaf4439211ce6dc078818b5d434a5f46e46124f1f
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.4-2.debian.tar.xz' empy_3.3.4-2.debian.tar.xz 10056 SHA512:f154ff0e426211b664a387f8a187aff2c5fd423f65a7e7849982a8aad4e61668e70db6ef7f581fbea0a90950b217e3e3acf265c2b4ca03fa05dd78dd135ef1f6
```

### `dpkg` source package: `expat=2.4.7-1ubuntu0.7`

Binary Packages:

- `libexpat1:amd64=2.4.7-1ubuntu0.7`
- `libexpat1-dev:amd64=2.4.7-1ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.4.7-1ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.7.orig.tar.gz' expat_2.4.7.orig.tar.gz 8316374 SHA256:ddc1111651cdd4095b67c9d9ed46babfb8fb64843d89ff785399f5739b84867b
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.7-1ubuntu0.7.debian.tar.xz' expat_2.4.7-1ubuntu0.7.debian.tar.xz 37472 SHA256:20cc871a48373cafec06dd008798afcd891946f319254ac5a9f9c958456f09e6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.4.7-1ubuntu0.7.dsc' expat_2.4.7-1ubuntu0.7.dsc 1962 SHA256:b385c2614d9729d641b14b8cb3e95efb3a0a9afaa4dca23cebc75a792653c911
```

### `dpkg` source package: `findutils=4.8.0-1ubuntu3`

Binary Packages:

- `findutils=4.8.0-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.8.0-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0-1ubuntu3.dsc' findutils_4.8.0-1ubuntu3.dsc 2064 SHA512:3f0f5195138342ce515ff83f5e653457d78158c8b871ef04002adb4cc69cab6023c71f7d1032db7032d25806c22a8ad33dbf3007018d382968863521a33af2cd
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz' findutils_4.8.0.orig.tar.xz 1983096 SHA512:eaa2da304dbeb2cd659b9210ac37da1bde4cd665c12a818eca98541c5ed5cba1050641fc0c39c0a446a5a7a87a8d654df0e0e6b0cee21752ea485188c9f1071e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz.asc' findutils_4.8.0.orig.tar.xz.asc 488 SHA512:e6ea8bd9a58ac4f787a9cc7dad9f75fab9e0623e7cda463bef60651c9319574ac7c8ba06f7d33cbead0ecb8788db71eb39f50550deb066d6d6baa625b0374a45
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.8.0-1ubuntu3.debian.tar.xz' findutils_4.8.0-1ubuntu3.debian.tar.xz 27716 SHA512:f0ce8b61f4e0beabad3178424c804468dc4c57f37794887954df28c36227ce77f00383903274a1995a104f9def44270070b9e033eb46d52f5aaaedb1f5883587
```

### `dpkg` source package: `fmtlib=8.1.1+ds1-2`

Binary Packages:

- `libfmt-dev:amd64=8.1.1+ds1-2`
- `libfmt8:amd64=8.1.1+ds1-2`

Licenses: (parsed from: `/usr/share/doc/libfmt-dev/copyright`, `/usr/share/doc/libfmt8/copyright`)

- `BSD-2-Clause`
- `CC0-1.0`
- `Expat`
- `Expat with embedded exception`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris fmtlib=8.1.1+ds1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_8.1.1%2bds1-2.dsc' fmtlib_8.1.1+ds1-2.dsc 1480 SHA512:a7075ed1742ae95133647dde33f17654578858d0deafc6b259adbfaf2a81e0eea069fd4af1212d2327b92f3a5b0cfdca9654e3f0b6ab160ed0dd142cc9e21d16
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_8.1.1%2bds1.orig.tar.gz' fmtlib_8.1.1+ds1.orig.tar.gz 306710 SHA512:fa90ba870d22a8b22fd933e41fccf5b760c0095161dbe5d94e28d919a34c788f407d9502a4090f0ea36beea8529308e858c5d0d7edf59eb3166d040eebdcd5bb
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_8.1.1%2bds1-2.debian.tar.xz' fmtlib_8.1.1+ds1-2.debian.tar.xz 13240 SHA512:821f21d9d4ea403abfd202d67aa145e6ce578f7929a875b8b865219efde85ab937e46bf1dfde0544ee3467cb36343ed5ce5a0ed938022339d9950a364b65057f
```

### `dpkg` source package: `fontconfig=2.13.1-4.2ubuntu5`

Binary Packages:

- `fontconfig=2.13.1-4.2ubuntu5`
- `fontconfig-config=2.13.1-4.2ubuntu5`
- `libfontconfig1:amd64=2.13.1-4.2ubuntu5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.13.1-4.2ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1-4.2ubuntu5.dsc' fontconfig_2.13.1-4.2ubuntu5.dsc 2449 SHA512:7d56f8d3b7f211ad464d20ed07b02cf38b0c10df1aa00ca8e899a734908b3342b1d67e32107231f983e473f64366444f06adb3b9c72cc2c2693aed427dda5114
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1.orig.tar.bz2' fontconfig_2.13.1.orig.tar.bz2 1723639 SHA512:f97f2a9db294fd72d416a7d76dd7db5934ade2cf76903764b09e7decc33e0e2eed1a1d35c5f1c7fd9ea39e2c7653b9e65365f0c6205e047e95e38ba5000dd100
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.13.1-4.2ubuntu5.debian.tar.xz' fontconfig_2.13.1-4.2ubuntu5.debian.tar.xz 28084 SHA512:6321dd705cc0adb9330778675f4ee3545d7f22f1ec63439dab45592dda121c2c5f1b4aa8ae444db1151906c5e1f363f13f38075733649b543e4d5bf5222c0eed
```

### `dpkg` source package: `fonts-dejavu=2.37-2build1`

Binary Packages:

- `fonts-dejavu-core=2.37-2build1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-2build1.dsc' fonts-dejavu_2.37-2build1.dsc 2411 SHA512:7821679b0f3cabaa4929b11a1a02fff21c05cef965efc399bf8a89b8549b1ac20cdd173c2cb31c397a345683b197623b97998b412c8458a135141ccd733b50d9
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA512:e61fc8c675ef76edb49dd9a8caee62087280929bb8144b52aca2f8def30025c56246589ad8a6a806b9574e6876eedd16d57c70a6ce9c86817a2dfe39d8a2bb2b
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-2build1.debian.tar.xz' fonts-dejavu_2.37-2build1.debian.tar.xz 11468 SHA512:b3c0cb3c81b3e4e9d76eefab010f447be973fa9e310960d2e3a1a2e845f4388e0508f8d18d519c7374c68c96c2e05a75f29ccf24135f6250a82181a77d8e9741
```

### `dpkg` source package: `freetype=2.11.1+dfsg-1ubuntu0.3`

Binary Packages:

- `libfreetype6:amd64=2.11.1+dfsg-1ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

- `BSD-3-Clause`
- `BSL-1.0`
- `FSFAP`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `OpenGroup-BSD-like`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.11.1+dfsg-1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg.orig-ft2demos.tar.xz' freetype_2.11.1+dfsg.orig-ft2demos.tar.xz 257240 SHA256:c60620d49d0f16d95586eb868c01b129569409e6cfdcb87a78e0482a12604672
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.11.1+dfsg.orig-ft2demos.tar.xz.asc 195 SHA256:d911a95830c50efcf60398e51db4ec307bbf4d24168377b515aded0611e977c0
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg.orig-ft2docs.tar.xz' freetype_2.11.1+dfsg.orig-ft2docs.tar.xz 2038348 SHA256:755e29908093c19138a38775784b0accf7e838ffa28a25b8722b3dfe651d80fa
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.11.1+dfsg.orig-ft2docs.tar.xz.asc 195 SHA256:67cbc2f192460dc4d46129e7debe55b40a9fa6e224ffeed70b4cf397ebaccab5
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg.orig.tar.xz' freetype_2.11.1+dfsg.orig.tar.xz 1988020 SHA256:ef93541237834445eb7ff355e7d4139d48844f9c977a485dea1316df54994473
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg-1ubuntu0.3.debian.tar.xz' freetype_2.11.1+dfsg-1ubuntu0.3.debian.tar.xz 42292 SHA256:06de0e18b9ba09bbe576c2941784fe2c08cee498fdcc6d15b0e42eea92637e83
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.11.1%2bdfsg-1ubuntu0.3.dsc' freetype_2.11.1+dfsg-1ubuntu0.3.dsc 3791 SHA256:6048c3a9985b597d1964ca07e38deaaed6fdf743d39cf88d17887604e480dab8
```

### `dpkg` source package: `fribidi=1.0.8-2ubuntu3.1`

Binary Packages:

- `libfribidi0:amd64=1.0.8-2ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.8-2ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8.orig.tar.bz2' fribidi_1.0.8.orig.tar.bz2 2077095 SHA512:d66b1524b26d227fd6a628f438efb875c023ae3be708acaaad11f1f62d0902de0a5f57124458291ef2b0fcd89356c52ab8ae5559b0b5a93fa435b92f1d098ba2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8-2ubuntu3.1.debian.tar.xz' fribidi_1.0.8-2ubuntu3.1.debian.tar.xz 10888 SHA512:16e448db2038b60b3a086117774e734b1d3ed08ae09cfa1b591f5a95c6372778705ba8940dd464537d5a6e932528c1c1e01376670992580529090f20142d171a
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.8-2ubuntu3.1.dsc' fribidi_1.0.8-2ubuntu3.1.dsc 2442 SHA512:977cb7df4e1877f0f6d5f58620cfacbb1e25090c2bfd70c71576ada3c9f11f260ed11fb0fd64a5f5bf8cfc8c419a865e0e9b9084f224deb9dfadf1b2e3bd17e9
```

### `dpkg` source package: `gcc-11=11.4.0-1ubuntu1~22.04.3`

Binary Packages:

- `cpp-11=11.4.0-1ubuntu1~22.04.3`
- `g++-11=11.4.0-1ubuntu1~22.04.3`
- `gcc-11=11.4.0-1ubuntu1~22.04.3`
- `gcc-11-base:amd64=11.4.0-1ubuntu1~22.04.3`
- `libasan6:amd64=11.4.0-1ubuntu1~22.04.3`
- `libgcc-11-dev:amd64=11.4.0-1ubuntu1~22.04.3`
- `libstdc++-11-dev:amd64=11.4.0-1ubuntu1~22.04.3`
- `libtsan0:amd64=11.4.0-1ubuntu1~22.04.3`

Licenses: (parsed from: `/usr/share/doc/cpp-11/copyright`, `/usr/share/doc/g++-11/copyright`, `/usr/share/doc/gcc-11/copyright`, `/usr/share/doc/gcc-11-base/copyright`, `/usr/share/doc/libasan6/copyright`, `/usr/share/doc/libgcc-11-dev/copyright`, `/usr/share/doc/libstdc++-11-dev/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-11=11.4.0-1ubuntu1~22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-11/gcc-11_11.4.0.orig.tar.gz' gcc-11_11.4.0.orig.tar.gz 86949353 SHA256:b05e5fb310748c2836a60fccbfdf0f924f4dcaecb78d3b6f177e0d9270a0b8f8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-11/gcc-11_11.4.0-1ubuntu1%7e22.04.3.debian.tar.xz' gcc-11_11.4.0-1ubuntu1~22.04.3.debian.tar.xz 554748 SHA256:c56b15ffe85a584e88adca971c94fb68ef7bde016258cac942a81b4c74e4a6a3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-11/gcc-11_11.4.0-1ubuntu1%7e22.04.3.dsc' gcc-11_11.4.0-1ubuntu1~22.04.3.dsc 22819 SHA256:5b42ce66a7ec64f94a73ff07c79a2db387e7104b7eb07113f15d2cb49b681917
```

### `dpkg` source package: `gcc-12=12.3.0-1ubuntu1~22.04.3`

Binary Packages:

- `gcc-12-base:amd64=12.3.0-1ubuntu1~22.04.3`
- `libatomic1:amd64=12.3.0-1ubuntu1~22.04.3`
- `libcc1-0:amd64=12.3.0-1ubuntu1~22.04.3`
- `libgcc-s1:amd64=12.3.0-1ubuntu1~22.04.3`
- `libgfortran5:amd64=12.3.0-1ubuntu1~22.04.3`
- `libgomp1:amd64=12.3.0-1ubuntu1~22.04.3`
- `libitm1:amd64=12.3.0-1ubuntu1~22.04.3`
- `liblsan0:amd64=12.3.0-1ubuntu1~22.04.3`
- `libquadmath0:amd64=12.3.0-1ubuntu1~22.04.3`
- `libstdc++6:amd64=12.3.0-1ubuntu1~22.04.3`
- `libubsan1:amd64=12.3.0-1ubuntu1~22.04.3`

Licenses: (parsed from: `/usr/share/doc/gcc-12-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-12=12.3.0-1ubuntu1~22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0.orig.tar.gz' gcc-12_12.3.0.orig.tar.gz 91555468 SHA256:62b0fc89b6d41f9df2470d0fb4995f6ff5885f910518a2c6a44a6888ea5a9ea1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0-1ubuntu1%7e22.04.3.debian.tar.xz' gcc-12_12.3.0-1ubuntu1~22.04.3.debian.tar.xz 587456 SHA256:44074c3d5e7d97365f1f7b45291ade2ee40ed6300176530d912e7cc0ceba77ab
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-12/gcc-12_12.3.0-1ubuntu1%7e22.04.3.dsc' gcc-12_12.3.0-1ubuntu1~22.04.3.dsc 27845 SHA256:ec040a1fa94186bd53535f7156e086e67863bb55836ae7fd7fef64f1ab66b04d
```

### `dpkg` source package: `gcc-defaults=1.193ubuntu1`

Binary Packages:

- `cpp=4:11.2.0-1ubuntu1`
- `g++=4:11.2.0-1ubuntu1`
- `gcc=4:11.2.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.193ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.193ubuntu1.dsc' gcc-defaults_1.193ubuntu1.dsc 14438 SHA512:ac90c126ec51cce73c134d24517c1dfe378d214ad6ee5c3edc119fec33c52485dd880994b29e7b787b2eea1cf761564b721044c903bea7deae2edc9031d3d8ed
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.193ubuntu1.tar.xz' gcc-defaults_1.193ubuntu1.tar.xz 48128 SHA512:62cf8f5b9aa4b2200cb037d18556c532178e9698f8502b53dd5a71bc9dfdab7314bda56d5384974fa4f9c23c16567c26ee966b5c3562d819507579932fb983a3
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

### `dpkg` source package: `git=1:2.34.1-1ubuntu1.17`

Binary Packages:

- `git=1:2.34.1-1ubuntu1.17`
- `git-man=1:2.34.1-1ubuntu1.17`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-man/copyright`)

- `Apache-2.0`
- `Artistic`
- `Artistic-1`
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
$ apt-get source -qq --print-uris git=1:2.34.1-1ubuntu1.17
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.34.1.orig.tar.xz' git_2.34.1.orig.tar.xz 6623760 SHA256:3a0755dd1cfab71a24dd96df3498c29cd0acd13b04f3d08bf933e81286db802c
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.34.1-1ubuntu1.17.debian.tar.xz' git_2.34.1-1ubuntu1.17.debian.tar.xz 789788 SHA256:871b62444dd5d5433dc36e990f9e3b97161eeb734ab1afed62c141c5d9250f6c
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.34.1-1ubuntu1.17.dsc' git_2.34.1-1ubuntu1.17.dsc 2976 SHA256:675f4b310e78fdab130b12837f80858c9f41d3e5e9d6ff9870a46ecfa4821c80
```

### `dpkg` source package: `glib2.0=2.72.4-0ubuntu2.9`

Binary Packages:

- `libglib2.0-0:amd64=2.72.4-0ubuntu2.9`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.72.4-0ubuntu2.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.72.4.orig.tar.xz' glib2.0_2.72.4.orig.tar.xz 4884256 SHA256:8848aba518ba2f4217d144307a1d6cb9afcc92b54e5c13ac1f8c4d4608e96f0e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.72.4-0ubuntu2.9.debian.tar.xz' glib2.0_2.72.4-0ubuntu2.9.debian.tar.xz 162336 SHA256:0af196e7038e4f8f829dae0847fadc3213c0689a449d1e0f60ec2f44804645f1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.72.4-0ubuntu2.9.dsc' glib2.0_2.72.4-0ubuntu2.9.dsc 3670 SHA256:822aedb2617eaae1bdc7360911052d9804497ab810d1f121d2a8927492bd858e
```

### `dpkg` source package: `glibc=2.35-0ubuntu3.13`

Binary Packages:

- `libc-bin=2.35-0ubuntu3.13`
- `libc-dev-bin=2.35-0ubuntu3.13`
- `libc6:amd64=2.35-0ubuntu3.13`
- `libc6-dev:amd64=2.35-0ubuntu3.13`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GFDL-1.3`
- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gmp=2:6.2.1+dfsg-3ubuntu1`

Binary Packages:

- `libgmp10:amd64=2:6.2.1+dfsg-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg-3ubuntu1.dsc' gmp_6.2.1+dfsg-3ubuntu1.dsc 2355 SHA512:b41211a64cba1afee1ea7924d38581b26b36f0495ad42be6d25b7175d5fa1e000378a5d36dd80087b0e7d4495620edb1e7e1b32d6c1085a8cdf0a4cb460a0558
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg.orig.tar.xz' gmp_6.2.1+dfsg.orig.tar.xz 1853476 SHA512:801948b7dcf592959ea387a86bee34dfb4e02c5e93815a785fc46174899ba22129853a3e34109a6df86048a144765c5f39e65fddfcecba879cc60da62f32fea0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.2.1%2bdfsg-3ubuntu1.debian.tar.xz' gmp_6.2.1+dfsg-3ubuntu1.debian.tar.xz 40996 SHA512:d7e0a1165a42b11a26a0f9232193db41ce2e7b1f5ea50d258e156fc9d80f9a74b6739491ec73cc1e909a3d09e029f90c3be1460c993690c5081ef8c6a169a4c3
```

### `dpkg` source package: `gnupg2=2.2.27-3ubuntu2.5`

Binary Packages:

- `dirmngr=2.2.27-3ubuntu2.5`
- `gnupg=2.2.27-3ubuntu2.5`
- `gnupg-l10n=2.2.27-3ubuntu2.5`
- `gnupg-utils=2.2.27-3ubuntu2.5`
- `gnupg2=2.2.27-3ubuntu2.5`
- `gpg=2.2.27-3ubuntu2.5`
- `gpg-agent=2.2.27-3ubuntu2.5`
- `gpg-wks-client=2.2.27-3ubuntu2.5`
- `gpg-wks-server=2.2.27-3ubuntu2.5`
- `gpgconf=2.2.27-3ubuntu2.5`
- `gpgsm=2.2.27-3ubuntu2.5`
- `gpgv=2.2.27-3ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.27-3ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2' gnupg2_2.2.27.orig.tar.bz2 7191555 SHA256:34e60009014ea16402069136e0a5f63d9b65f90096244975db5cea74b3d02399
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27-3ubuntu2.5.debian.tar.xz' gnupg2_2.2.27-3ubuntu2.5.debian.tar.xz 76672 SHA256:63239842abfe155bf3b0be202446a807a202a25f85257bc0331292602eb39666
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.27-3ubuntu2.5.dsc' gnupg2_2.2.27-3ubuntu2.5.dsc 3763 SHA256:1fb5930a84f846fec8322e6c32544ebb8118d618bbb175c1d38722def6f0d461
```

### `dpkg` source package: `gnutls28=3.7.3-4ubuntu1.9`

Binary Packages:

- `libgnutls30:amd64=3.7.3-4ubuntu1.9`

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
$ apt-get source -qq --print-uris gnutls28=3.7.3-4ubuntu1.9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3.orig.tar.xz' gnutls28_3.7.3.orig.tar.xz 6119292 SHA512:3ace744affe23e284342658d6d2d2de49dd50065489cbc8be18fc7d38187253e5268ca54027ce5cd517056c249ac039a7481e4548cec04325de37ae85617d077
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3.orig.tar.xz.asc' gnutls28_3.7.3.orig.tar.xz.asc 833 SHA512:cd0d30298377deddf20a835863b71e3f119588061f659906ad2684004758943179531508b1c77c730e930e2131148095e60ad9be365353cce772472d5f5345df
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3-4ubuntu1.9.debian.tar.xz' gnutls28_3.7.3-4ubuntu1.9.debian.tar.xz 127136 SHA512:3d86d6fa9c395f41714866d621a9442af1b1b1722cf21f6d337b0eed2cd9c895eb0e9d3e8b728a0a4e1e7642dedf53a4e4f822a90bf4bd822106475b6191441d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.7.3-4ubuntu1.9.dsc' gnutls28_3.7.3-4ubuntu1.9.dsc 3575 SHA512:738492979bbcc7a424b202ce54fbec6cc974f096016f1857615fe699fdef081f670038caa8dafd51a081f1f7047c26af59818abd5970800cbd16887c94e7a26e
```

### `dpkg` source package: `googletest=1.11.0-3`

Binary Packages:

- `google-mock:amd64=1.11.0-3`
- `googletest=1.11.0-3`
- `libgtest-dev:amd64=1.11.0-3`

Licenses: (parsed from: `/usr/share/doc/google-mock/copyright`, `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `Apache`
- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.11.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.11.0-3.dsc' googletest_1.11.0-3.dsc 2212 SHA512:b3c48915e8df612563fbd032104bcddd8a474213351ce2896723617839635a4a570eaf3d0c4441e921db75ffa69037b320afa3230b0e478e01ee5be3fdb85518
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.11.0.orig.tar.gz' googletest_1.11.0.orig.tar.gz 886169 SHA512:8fe2e40add39f90b30e8eb1f6a70142966ba55c26e103eacf75bc4b8306e1065bb23adc16b1f5ae8e67a5359af4a9fdb8f413c84cf5814e9a50a186123c3da54
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.11.0-3.debian.tar.xz' googletest_1.11.0-3.debian.tar.xz 13488 SHA512:60bc6ec4b8b86f2930b44d64b20237d544e64d800e66df66fb44c1b80d89272d131112af2387615762e29ca03d4e0c9dc717fccdc6653cf3cb8a8b878801998b
```

### `dpkg` source package: `graphite2=1.3.14-1ubuntu0.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.14-1ubuntu0.1`

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
$ apt-get source -qq --print-uris graphite2=1.3.14-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14.orig.tar.gz' graphite2_1.3.14.orig.tar.gz 6629829 SHA512:49d127964d3f5c9403c7aecbfb5b18f32f25fe4919a81c49e0534e7123fe845423e16b0b8c8baaae21162b1150ab3e0f1c22c344e07d4364b6b8473c40a0822c
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-1ubuntu0.1.debian.tar.xz' graphite2_1.3.14-1ubuntu0.1.debian.tar.xz 12932 SHA512:6f627fa430a42ee0bf1a27920b3969dddf59cd0b91ff6c4e76ad0740b283c5fbe8e29d09ca1c055eb73d8c0cd8371d80317b6c04fab4cb021b134e394723861c
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-1ubuntu0.1.dsc' graphite2_1.3.14-1ubuntu0.1.dsc 2698 SHA512:1a3371cced263f1aa68f8f05a232c35f10a131724215bddb56600009f84a640c30e92abf0d9a1d87b758c5e39f9d9d5de239b07bc602d86bcb0be1cdb05e0521
```

### `dpkg` source package: `graphviz=2.42.2-6ubuntu0.1`

Binary Packages:

- `graphviz=2.42.2-6ubuntu0.1`
- `libcdt5:amd64=2.42.2-6ubuntu0.1`
- `libcgraph6:amd64=2.42.2-6ubuntu0.1`
- `libgvc6=2.42.2-6ubuntu0.1`
- `libgvpr2:amd64=2.42.2-6ubuntu0.1`
- `liblab-gamut1:amd64=2.42.2-6ubuntu0.1`
- `libpathplan4:amd64=2.42.2-6ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/graphviz/copyright`, `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/liblab-gamut1/copyright`, `/usr/share/doc/libpathplan4/copyright`)

- `EPL-1.0`
- `MIT`
- `X/MIT`
- `zlib-style`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.42.2-6ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_2.42.2.orig.tar.bz2' graphviz_2.42.2.orig.tar.bz2 30740923 SHA256:1daed697d9cdd7fac3b320336fa98dd3518dd211769301dc716869fc3d5409b1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_2.42.2-6ubuntu0.1.debian.tar.xz' graphviz_2.42.2-6ubuntu0.1.debian.tar.xz 38988 SHA256:c6940813a4945b2eb2314e885fdf7731650806b2777356e68dd42b9f14761fb0
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_2.42.2-6ubuntu0.1.dsc' graphviz_2.42.2-6ubuntu0.1.dsc 3293 SHA256:c7f2985dc49ba3da85a43c956663df0aab86f673c54623ec4a51160bb2b49e5b
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

### `dpkg` source package: `gts=0.7.6+darcs121130-5`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-5`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-5
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-5.dsc' gts_0.7.6+darcs121130-5.dsc 2109 SHA512:f21c97dde3e495778bc0a2794f5db0fba90796fbe33ba9e71326e39894a14fa6a86822e7ea690165379bbe244586eb03326d4a474e3d9adcbca12d4a4000bb8b
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA512:84c38dc345830eea75755d9d55235b6d76786a84c3b9c3b7e057437bf395a9f2687596bbf037afd601b9f31a485d425a371ca5e60680265f10cb414400db4142
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gts/gts_0.7.6%2bdarcs121130-5.debian.tar.xz' gts_0.7.6+darcs121130-5.debian.tar.xz 13344 SHA512:d1c066ff5ee677e976b9e3cbc4f68cba78a61035b562cdc6fd41ea798a069a26bffc1fa1ccd6e015df59b1a28abbe09e8bdb16529835bd7c5af30f81a7ee83a0
```

### `dpkg` source package: `gzip=1.10-4ubuntu4.1`

Binary Packages:

- `gzip=1.10-4ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `harfbuzz=2.7.4-1ubuntu3.2`

Binary Packages:

- `libharfbuzz0b:amd64=2.7.4-1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=2.7.4-1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.7.4.orig.tar.xz' harfbuzz_2.7.4.orig.tar.xz 9532468 SHA256:6ad11d653347bd25d8317589df4e431a2de372c0cf9be3543368e07ec23bb8e7
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.7.4-1ubuntu3.2.debian.tar.xz' harfbuzz_2.7.4-1ubuntu3.2.debian.tar.xz 15000 SHA256:39c75dcef97ae5b6d60fbdf2228ee040f5f7dd6fad4e18c06901cf708a1ca1cd
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_2.7.4-1ubuntu3.2.dsc' harfbuzz_2.7.4-1ubuntu3.2.dsc 2855 SHA256:6c75d24d8abd1fd901b9ffe8d4943c0837d96badd67c7c7672d5e619fc758d79
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

### `dpkg` source package: `icu=70.1-2`

Binary Packages:

- `libicu70:amd64=70.1-2`

Licenses: (parsed from: `/usr/share/doc/libicu70/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu=70.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_70.1-2.dsc' icu_70.1-2.dsc 2252 SHA512:e1bad285bb7f66be62b8b9d595b289095621a88b0c5a2141b7317473ac25ab30a4b83de38ce215d6b7e0e135b2101ed7ab7bcf6d9b3666b4a554095b0ed6d1de
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_70.1.orig.tar.gz' icu_70.1.orig.tar.gz 25449582 SHA512:0b26ae7207155cb65a8fdb25f7b2fa4431e74b12bccbed0884a17feaae3c96833d12451064dd152197fd6ea5fd3adfd95594284a463e66c82e0d860f645880c9
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_70.1.orig.tar.gz.asc' icu_70.1.orig.tar.gz.asc 659 SHA512:17f65641de023b81f18588c5b1be6f88a8d308565343b09241ecfdc6250caeeb785e666d0772b668d5cb0fb243abc88766f02d27b273946e946e8c339cbca942
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_70.1-2.debian.tar.xz' icu_70.1-2.debian.tar.xz 62440 SHA512:ca6771b09b9f232e69b3f6fd6c3445c9b27d86c918a6b52c903a2ebe658b273ea5181fcc3030aaad90450f9d86e620fdd42e710ed81c90c29d889ecfd44c6700
```

### `dpkg` source package: `init-system-helpers=1.62`

Binary Packages:

- `init-system-helpers=1.62`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.62
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.62.dsc' init-system-helpers_1.62.dsc 1993 SHA512:f706cf5841877ccabe6f5a8e62d44ce5b312c09776d7fb7fd841f39c2d841b3f7f19bcb63cf94073f853165ae44def8f171a0abce658d05c76a48bf1e91697eb
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.62.tar.xz' init-system-helpers_1.62.tar.xz 42144 SHA512:d90f12e642d086bd0d560ece87d119079c164b90ddbb77b2f804979540095b655715febbc2a5b0d50d7f94434d1ff7c0f4044d5d5411916fbca8300f3f88da7f
```

### `dpkg` source package: `isl=0.24-2build1`

Binary Packages:

- `libisl23:amd64=0.24-2build1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.24-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.24-2build1.dsc' isl_0.24-2build1.dsc 1939 SHA512:508aaf010116caea8b9c61bb9c40a3979ed73cd09369b07747b43bed169988c415771c13395e46213f4c95f363f46e055e864723a3fb775fe9d2b5bb5bf45404
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.24.orig.tar.xz' isl_0.24.orig.tar.xz 1930956 SHA512:ff6bdcff839e1cd473f2a0c1e4dd4a3612ec6fee4544ccbc62b530a7248db2cf93b4b99bf493a86ddf2aba00e768927265d5d411f92061ea85fd7929073428e8
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.24-2build1.debian.tar.xz' isl_0.24-2build1.debian.tar.xz 26628 SHA512:8aafdd03adbe32b3eb6cb9468b676c20c02377c3b45947619258cfc1c682f4e9689945f9dbc6b42fd4c1289c563e7a7bba0af4f0a58b2c7ab94c7fdb3c6c9f5f
```

### `dpkg` source package: `jbigkit=2.1-3.1ubuntu0.22.04.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1ubuntu0.22.04.1`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA512:c4127480470ef90db1ef3bd2caa444df10b50ed8df0bc9997db7612cb48b49278baf44965028f1807a21028eb965d677e015466306b44683c4ec75a23e1922cf
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.22.04.1.debian.tar.xz' jbigkit_2.1-3.1ubuntu0.22.04.1.debian.tar.xz 9912 SHA512:4c473125d8781d2b0192a8af40095e7c6e52225815a8dc7c87fe3bbb50aaeec4295438134be302fa57698d97fccd3f7d2240c74dbc57ef1089cab2ca3fc63475
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1ubuntu0.22.04.1.dsc' jbigkit_2.1-3.1ubuntu0.22.04.1.dsc 1796 SHA512:c7c726bcac2266327e373a30ec3d97f2197bc6f0f0859ffcc7d6930b94553f482f8693da95cb37ea2e8dc3ff4fdfd2a012e554b81afee0d336dab63d7869c570
```

### `dpkg` source package: `keyutils=1.6.1-2ubuntu3`

Binary Packages:

- `libkeyutils1:amd64=1.6.1-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.1-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1-2ubuntu3.dsc' keyutils_1.6.1-2ubuntu3.dsc 2203 SHA512:7e9c3266bf707b3553758ab89f815542edca6d7ed0ca069986bee3dda75b534f5b275b786e246232b3234c6ccbaf4c67ff60f68bba73b0a3e2ec1bbfa00b295e
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1.orig.tar.bz2' keyutils_1.6.1.orig.tar.bz2 97232 SHA512:ea6e20b2594234c7f51581eef2b8fd19c109fa9eacaaef8dfbb4f237bd1d6fdf071ec23b4ff334cb22a46461d09d17cf499987fd1f00e66f27506888876961e1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.1-2ubuntu3.debian.tar.xz' keyutils_1.6.1-2ubuntu3.debian.tar.xz 18936 SHA512:16f390f0fc3154a77c8ca3666d44881a6ca2f0d11cfe0398cd82b57b6f552af85c156de358d0b87e39f301331897d72de058050e3cb53720a76b5b5ebf07aa3d
```

### `dpkg` source package: `krb5=1.19.2-2ubuntu0.7`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.19.2-2ubuntu0.7`
- `libk5crypto3:amd64=1.19.2-2ubuntu0.7`
- `libkrb5-3:amd64=1.19.2-2ubuntu0.7`
- `libkrb5support0:amd64=1.19.2-2ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lapack=3.10.0-2ubuntu1`

Binary Packages:

- `libblas3:amd64=3.10.0-2ubuntu1`
- `liblapack3:amd64=3.10.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.10.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.10.0-2ubuntu1.dsc' lapack_3.10.0-2ubuntu1.dsc 3474 SHA512:2bdbf698a2ae59dc09b752a20e7b4dfe1c25bd6dc255a36e7fa763d38cb2555eb56a51317867c3a99c09438d038822eeaa933b03b37b836c63fa602a5893b8ae
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.10.0.orig.tar.gz' lapack_3.10.0.orig.tar.gz 7630775 SHA512:56055000c241bab8f318ebd79249ea012c33be0c4c3eca6a78e247f35ad9e8088f46605a0ba52fd5ad3e7898be3b7bc6c50ceb3af327c4986a266b06fe768cbf
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.10.0-2ubuntu1.debian.tar.xz' lapack_3.10.0-2ubuntu1.debian.tar.xz 29040 SHA512:192a9ec75107c5427bd6f2d35e4785034666ba635eb6129f926aaa1663939b625f2800b6acaf686faf69cf21fb8f4201733e5515511e203895300e25675afb78
```

### `dpkg` source package: `libarchive=3.6.0-1ubuntu1.7`

Binary Packages:

- `libarchive13:amd64=3.6.0-1ubuntu1.7`

Licenses: (parsed from: `/usr/share/doc/libarchive13/copyright`)

- `Apache-2.0`
- `BSD-1-clause-UCB`
- `BSD-124-clause-UCB`
- `BSD-2-clause`
- `BSD-3-clause-UCB`
- `BSD-4-clause-UCB`
- `Expat`
- `PD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libassuan=2.5.5-1build1`

Binary Packages:

- `libassuan0:amd64=2.5.5-1build1`

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
$ apt-get source -qq --print-uris libassuan=2.5.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-1build1.dsc' libassuan_2.5.5-1build1.dsc 2753 SHA512:6aa8147a85858f8e0c6ce17083c605fa92c65bcc810a0c1c5c8c5ef08332d359795ad77129bead9f7b216d7893c305e34f653ab29941b008f2bd1178e81587f5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2' libassuan_2.5.5.orig.tar.bz2 572263 SHA512:70117f77aa43bbbe0ed28da5ef23834c026780a74076a92ec775e30f851badb423e9a2cb9e8d142c94e4f6f8a794988c1b788fd4bd2271e562071adf0ab16403
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5.orig.tar.bz2.asc' libassuan_2.5.5.orig.tar.bz2.asc 228 SHA512:343336ea5dffa113cd934167f548faf4e85d31bf64a46541ee6828b4d0995a8cc9d0668995812d9c4d3ab73347d5b1bbfff0d6ed586fbf4bbc57ac42e828e8d5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.5-1build1.debian.tar.xz' libassuan_2.5.5-1build1.debian.tar.xz 14448 SHA512:590d52fa0d3e7fde9747cb164b08a60ae3372eff60ac80f4de809289f86a83c2b7361e65bbb20e1b68a27960e7478a78031b57d7e9784d6d2dc407f1c8530217
```

### `dpkg` source package: `libbsd=0.11.5-1`

Binary Packages:

- `libbsd0:amd64=0.11.5-1`

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
$ apt-get source -qq --print-uris libbsd=0.11.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5-1.dsc' libbsd_0.11.5-1.dsc 2292 SHA512:635f85618e9bcf22abbe73a6864b87d34c4e9d75bc619cab4e487d0ccbb52e1c006258cb47c8b892869adb5d645303fbff3eb57618f2dc862120f741cfbe175c
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5.orig.tar.xz' libbsd_0.11.5.orig.tar.xz 409972 SHA512:c52c19eddd53630aca14f9f6221f7b84aa9cc798b4bb91e867822b161793313aab872ac1c0350d29312a72fee6e2061f3910ff918b724ec171d8c9de5837c841
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5.orig.tar.xz.asc' libbsd_0.11.5.orig.tar.xz.asc 833 SHA512:24a3fb414a3a354284c76724d65225619820f3f6b597ed8d163ed99f19ec433465f909fe047758f83a7cd6fc8ee2676478420c77cb2f0b8b69ffa7a690c8c17f
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.11.5-1.debian.tar.xz' libbsd_0.11.5-1.debian.tar.xz 17604 SHA512:438911ae479952b00aa81cdf2f12863b82a01bc2abf3acb4bf22223f4c851504a77217087b2e2edabf6cf61187314f1c3061f2794de7a38abd953451e2f0d931
```

### `dpkg` source package: `libcap-ng=0.7.9-2.2build3`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2.2build3`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2.2build3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2build3.dsc' libcap-ng_0.7.9-2.2build3.dsc 2105 SHA512:50d7c66eea7dbadcd2314f3eb5ae9f4464e9a2a82a36004efd841bc092f6c4787dd9856aa14bef85035ae9db115b3a9aee78436b790a373e935d98f7fd761cd5
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA512:095edabaf76a943aab0645b843b14e20b1733ba1d47a8e34d82f6586ca9a1512ba2677d232b13dd3900b913837401bb58bf74481970e967ba19041959dc43259
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2build3.debian.tar.xz' libcap-ng_0.7.9-2.2build3.debian.tar.xz 6432 SHA512:9ce3f52dc0c89739f0117ba7c1b8fdfcdb51ceb7cea7c00aa55522ba733efdb7a37a7f21a9bfd106e453a8477a759af0aaf4688e4b18c3c9cc659657aeb2c0bb
```

### `dpkg` source package: `libcap2=1:2.44-1ubuntu0.22.04.3`

Binary Packages:

- `libcap2:amd64=1:2.44-1ubuntu0.22.04.3`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.44-1ubuntu0.22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44.orig.tar.xz' libcap2_2.44.orig.tar.xz 125568 SHA512:1bb323ca362923bd6bd0e2e4639cf8726975165a620a243b31e797056439eb7efb2bfbc8e5521636783a86c7415b2037b1638c98747b79183ca7d3d42a04ff20
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1ubuntu0.22.04.3.debian.tar.xz' libcap2_2.44-1ubuntu0.22.04.3.debian.tar.xz 24880 SHA512:203d0b8e88640d809d1a5436cf21781dfa12731891b6b494c83bb872df1643050a9e1205916f4125e9c3a773daaaff23b26232b1c5eecfac1105ac4e04732e21
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.44-1ubuntu0.22.04.3.dsc' libcap2_2.44-1ubuntu0.22.04.3.dsc 2318 SHA512:40430604b718fe1359a0cc1d7f880464b0d5d89b16f05be730061164f4e275f90570f281ee656b35f320b66aa43545e592c6c9f5fa569620d1da5fafefe30001
```

### `dpkg` source package: `libdatrie=0.2.13-2`

Binary Packages:

- `libdatrie1:amd64=0.2.13-2`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.13-2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13-2.dsc' libdatrie_0.2.13-2.dsc 2239 SHA512:86ebcb0343ca62b1e832210de6ca74e71786cf7c4c63eb5d1e944dc1bf900c986107c1120e798412fd9780902056fda1403c6124baef044778d479b53aeabb6d
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13.orig.tar.xz' libdatrie_0.2.13.orig.tar.xz 314072 SHA512:db3c879d825ead5871c12ef3a06bb093cb1708a6e7e20775eaf82356af9dd6ad54c6b5cabbe1773f2494d3dfa2426528fdd49441038b6294b70ccb1a3d90099a
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.13-2.debian.tar.xz' libdatrie_0.2.13-2.debian.tar.xz 9604 SHA512:032040b6f9da493b7bbc4437eb16dce9dbbf10d0d9381fbc4ec6c636e5cccaf52b14e77739d227b58fc5ba54911c2cea7f679bada7ed93acb048bd996d4ce3d9
```

### `dpkg` source package: `libdeflate=1.10-2`

Binary Packages:

- `libdeflate0:amd64=1.10-2`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.10-2.dsc' libdeflate_1.10-2.dsc 2206 SHA512:5c2fd7116bd061a5940481924c3a35e632e178050319c5e29aab2833a2ec27378444a6db767cff1bdd7b9bada10332a975e082ce02eab1fc43f8408a54dfcf52
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.10.orig.tar.gz' libdeflate_1.10.orig.tar.gz 158379 SHA512:2b59cc170c7fb3bb13bd3c6853070ea24fb9e6844dde4d08e43a8a5f8745ecbf844952390ff758070c6fc4f17d9eec8c4d2a729922bf84e2eaa9e74f1424e241
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.10-2.debian.tar.xz' libdeflate_1.10-2.debian.tar.xz 4584 SHA512:faa6fad75528e1f7fa02dd5464bf88d7921563103aee922feade71323229e0c6758cb788545ca6b627aabae58bb7f524d775431fc821f4611713dec6069571c8
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

### `dpkg` source package: `libgcrypt20=1.9.4-3ubuntu3.2`

Binary Packages:

- `libgcrypt20:amd64=1.9.4-3ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.9.4-3ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4.orig.tar.bz2' libgcrypt20_1.9.4.orig.tar.bz2 3239704 SHA512:d0e117ac73c94d70e9521ee1e6328691498cc8328f8c4e21338096908f5c04c7b838966eb63d59494565f4e19f506c07dab4f4d922150d75610d9f7b57abbf60
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4.orig.tar.bz2.asc' libgcrypt20_1.9.4.orig.tar.bz2.asc 228 SHA512:5fbc2f52ff8a9f2b254791a0d127b012a3648a03d26e043af2ab63d05f69045492581462ba485ecf005a171ea391175bdc73350aa0e76f8b5f75c64a4d685d49
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3.2.debian.tar.xz' libgcrypt20_1.9.4-3ubuntu3.2.debian.tar.xz 35680 SHA512:6c4b618df4b748e4d75958d70321b459d64c8e8337bbc37b7823bb07f032ff4b5d91e4fa89f7ad9a01cd5e6c52b37d117320f16d908570ebc5dd4281f403b1c1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3.2.dsc' libgcrypt20_1.9.4-3ubuntu3.2.dsc 2915 SHA512:110a7f5629aa506c3b48a9d4aef4e33087fd0252d01f7424b3ac582e9c7a3d4d9c5edd8bdc50897028153910ad9736fe68c4cb76a136e452789316fbe5f17186
```

### `dpkg` source package: `libgd2=2.3.0-2ubuntu2.3`

Binary Packages:

- `libgd3:amd64=2.3.0-2ubuntu2.3`

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
$ apt-get source -qq --print-uris libgd2=2.3.0-2ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.0.orig.tar.gz' libgd2_2.3.0.orig.tar.gz 3102749 SHA256:32590e361a1ea6c93915d2448ab0041792c11bae7b18ee812514fe08b2c6a342
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.0-2ubuntu2.3.debian.tar.xz' libgd2_2.3.0-2ubuntu2.3.debian.tar.xz 35264 SHA256:3f0105b5901026dde27f377bccbf56e974bb387986c452b385ccd85f23a97367
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.0-2ubuntu2.3.dsc' libgd2_2.3.0-2ubuntu2.3.dsc 2371 SHA256:20c0f60eac2b51700072bb22aee5790a9b5cac9b44859df5c70ddf90086598d4
```

### `dpkg` source package: `libgpg-error=1.43-3`

Binary Packages:

- `libgpg-error0:amd64=1.43-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.43-3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43-3.dsc' libgpg-error_1.43-3.dsc 2270 SHA512:c0cf8b16d720d89b69b5eb5cf22bf7bb0605892ba110100d3b30370fc93c167bda2f501e53e70a2599024bc40c1e509d06e39f68f3be63312967e4308249f0b8
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43.orig.tar.bz2' libgpg-error_1.43.orig.tar.bz2 999006 SHA512:36769a62d0b4b219a6d58195bed692e34d3b0313f628b1036055ca34b69332edbe6bcdace9855a60d06e7be5998dc13bf1305d0b2bb211a4d8f701e85040961c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43.orig.tar.bz2.asc' libgpg-error_1.43.orig.tar.bz2.asc 238 SHA512:1bd12acc57bb394947dec51b70fe067f717e591484be164cafff3ac47a6bacc101f7ac64fbae350233bc76a0002981fb3fbe53db73dc914db52694b8588cecc1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.43-3.debian.tar.xz' libgpg-error_1.43-3.debian.tar.xz 19264 SHA512:bbd7615b02707405efddd4bb1dee355024bb7089770453a2addf7e722c15c2cfbebc3012c9db848f3f55eb4c66f5b9487877e8d94322d8dc1d2731876b4d8281
```

### `dpkg` source package: `libice=2:1.0.10-1build2`

Binary Packages:

- `libice6:amd64=2:1.0.10-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.10-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-1build2.dsc' libice_1.0.10-1build2.dsc 2181 SHA512:ab928645b15c679673d1adcc53f23b126f4ca90accbef677c15a1bb8bd428e642db5e45ef77b255d9b0351c2501dd01eafb9108875fff7c98f4543432d7e6fbf
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10.orig.tar.gz' libice_1.0.10.orig.tar.gz 481960 SHA512:2d4757f7325eb01180b5d7433cc350eb9606bd3afe82dabc8aa164feda75ef03a0624d74786e655c536c24a80d0ccb2f1e3ecbb04d3459b23f85455006ca8a91
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.10-1build2.diff.gz' libice_1.0.10-1build2.diff.gz 11679 SHA512:dc850d9603ac04ffee3e2de1d2f9786520f6d9829f210649756fac705b6fe2797eda307d45283533342dd425317928fbb5f61d94bfe0fcadbc8f1c0c2cb02d6c
```

### `dpkg` source package: `libidn2=2.3.2-2build1`

Binary Packages:

- `libidn2-0:amd64=2.3.2-2build1`

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
$ apt-get source -qq --print-uris libidn2=2.3.2-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2-2build1.dsc' libidn2_2.3.2-2build1.dsc 2655 SHA512:bc84158420d526a0f9bca79ca2a8291c55588e2773ded66d7c4b86ad33b370f9d8723cfc3a2b278660de7060687fff5448912e802d7fb63a8ff7876b38440f32
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2.orig.tar.gz' libidn2_2.3.2.orig.tar.gz 2169556 SHA512:958dbf49a47a84c7627ac182f4cc8ea452696cec3f0d1ff102a6c48e89893e772b2aa81f75da8223dfc6326515cca3ae085268fbf997828de9330c3a351152f1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2.orig.tar.gz.asc' libidn2_2.3.2.orig.tar.gz.asc 488 SHA512:0559b51b37c7937f3e1f8bf9de9b193f137f16b79d6673f85691a4f4a12ec132568e913848a70136f8522118817f7ecaa8432d353a5eff6b99a7be8719421fe0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.2-2build1.debian.tar.xz' libidn2_2.3.2-2build1.debian.tar.xz 15972 SHA512:d5af028cc405d326c31e67e577ef16d9b8b81e433171220fda2c2a6f8fc982a63b6d1d85c6595f5ce01a5005768d935aeeaa5de8a552990f4e070bc541e78570
```

### `dpkg` source package: `libjpeg-turbo=2.1.2-0ubuntu1`

Binary Packages:

- `libjpeg-turbo8:amd64=2.1.2-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=2.1.2-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2-0ubuntu1.dsc' libjpeg-turbo_2.1.2-0ubuntu1.dsc 1690 SHA512:401a75e62575352db079bd268f00f94c8ea1e8e6c38bda852628729e6dfd3135804e3c9ee5b18b1254fed827e6073b0078553bcbc2c1df30d628bbb717a5ed47
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2.orig.tar.gz' libjpeg-turbo_2.1.2.orig.tar.gz 2257645 SHA512:172c3d8bdad62c32c4560754422fb36f0e80c8316e44d08708f0cba8ee9fd0830f5295d380de34d0f90ec07df6ab4dbe2f0c8451bc60553371c022c9077447c2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.2-0ubuntu1.debian.tar.xz' libjpeg-turbo_2.1.2-0ubuntu1.debian.tar.xz 17240 SHA512:5cfc1e73012f3251e385f0288dece2e3862977fb3975c61c344afc464a2fd329c3fa027fc07edc40097afaad052bdf6f0dad55c665c20ccdde9f2231ec191410
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu10`

Binary Packages:

- `libjpeg8:amd64=8c-2ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libjpeg8/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu10.dsc' libjpeg8-empty_8c-2ubuntu10.dsc 1655 SHA512:1085be8a159c716c4ca89e6bfb2b1a5ce7b66ad8bc8f4cf3796c2c4ac3dad5169ac5be045f2a9ce103858b42585b1ce52d6dc6986995d073785170d45fe4d29d
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu10.tar.gz' libjpeg8-empty_8c-2ubuntu10.tar.gz 1912 SHA512:1c21044013df62225f861ec6f88b2a43e0f6254522ed379ad081b92f4f89b64686d4e68d70e8384289cd8222df2288400c2d0e8b8ccae87dd079164bdc3f3cf3
```

### `dpkg` source package: `libjsoncpp=1.9.5-3`

Binary Packages:

- `libjsoncpp25:amd64=1.9.5-3`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp25/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.9.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.5-3.dsc' libjsoncpp_1.9.5-3.dsc 1955 SHA512:5155ccae080c0c52c9cffeef244c5692c265c68d676822eeeac0ef6a316df23cd694b1e380d2b2fa562333b47a39c650daee8de61b5ca501d0a784c97dbdd461
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.5.orig.tar.gz' libjsoncpp_1.9.5.orig.tar.gz 216055 SHA512:1d06e044759b1e1a4cc4960189dd7e001a0a4389d7239a6d59295af995a553518e4e0337b4b4b817e70da5d9731a4c98655af90791b6287870b5ff8d73ad8873
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.5-3.debian.tar.xz' libjsoncpp_1.9.5-3.debian.tar.xz 7268 SHA512:5a5c8370ad816b654c1341b68399b4730b7afc1a814e79c7fd3a3b04c869aa44d24167bff43a6d1022c16ccc10550f73d7163c02879555548f47f2efd62eb166
```

### `dpkg` source package: `libksba=1.6.0-2ubuntu0.2`

Binary Packages:

- `libksba8:amd64=1.6.0-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.6.0-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.0.orig.tar.bz2' libksba_1.6.0.orig.tar.bz2 662120 SHA512:a7c76d41dfd8ec6383ac2de3c53848cd9f066b538f6f3cd43175e3c8095df51b96d0a24a573481c0c4856b09b7c224e2b562d88f5c0801e7acfb582ea2739c2b
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.0.orig.tar.bz2.asc' libksba_1.6.0.orig.tar.bz2.asc 228 SHA512:fc381ea66eefdb431a5248fa3ac0751d7343d7f99cc7ebf7621b0763e6e31a80b45c5e17b09bbc7c1c1154e6a0152af1f13798f64959ac63f50b789ec046d7a3
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.0-2ubuntu0.2.debian.tar.xz' libksba_1.6.0-2ubuntu0.2.debian.tar.xz 16004 SHA512:24a609ca522b5e3a1402ff5a97ce451869bdf0960902d171a89f2190d4de7c8442403d21f938cebeeafd0ae082bf03d76c0521b26a2c153257df784cf7894b43
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.0-2ubuntu0.2.dsc' libksba_1.6.0-2ubuntu0.2.dsc 2585 SHA512:ef96729e570627b7cf38ed0dcc3338097a81f690dde041fd9ea63b3c4b55c11ccf35ab7b2bbd196af3ca7834f8e5017cbb14436a7718034608f3276ca3db9f3f
```

### `dpkg` source package: `libmd=1.0.4-1build1`

Binary Packages:

- `libmd0:amd64=1.0.4-1build1`

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
$ apt-get source -qq --print-uris libmd=1.0.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-1build1.dsc' libmd_1.0.4-1build1.dsc 2380 SHA512:778b562e6b3860fe6a6d5ddf4d7cce381126be77d151ac7c2a619d57737080f2adc07ff8e01fcafd98b3ace157fc72ab77a572362b56e79e5abb79a99fdacd6c
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz' libmd_1.0.4.orig.tar.xz 264472 SHA512:731553ecc5e0e1eb228cced8fccd531fe31fb5c7627ca30013d287e1aeb8222959cf7498fbb7414bbabb967b25d4e8b0edd54fc47f6ccf55fc91087db0725ce3
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4.orig.tar.xz.asc' libmd_1.0.4.orig.tar.xz.asc 833 SHA512:ec4b60a721da1f315fad73daa8ee620f44a53f17a30506c4d63b154b3abde19bb248b2ce6b83b989589e2a9184ebbe1b870e83181e18a4147d75617579d10504
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.0.4-1build1.debian.tar.xz' libmd_1.0.4-1build1.debian.tar.xz 10264 SHA512:0e287498326a5aa3bc95cb0c576df7d0bb289bfb9db3a1f812d0e202c61af9dc78ecfa4b6b26c2dee3c5ccbefad877919f44ec849b3300f0f30878080eb5cb13
```

### `dpkg` source package: `libnsl=1.3.0-2build2`

Binary Packages:

- `libnsl-dev:amd64=1.3.0-2build2`
- `libnsl2:amd64=1.3.0-2build2`

Licenses: (parsed from: `/usr/share/doc/libnsl-dev/copyright`, `/usr/share/doc/libnsl2/copyright`)

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

### `dpkg` source package: `libpng1.6=1.6.37-3ubuntu0.5`

Binary Packages:

- `libpng16-16:amd64=1.6.37-3ubuntu0.5`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.37-3ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37.orig.tar.gz' libpng1.6_1.6.37.orig.tar.gz 1508805 SHA512:ccb3705c23b2724e86d072e2ac8cfc380f41fadfd6977a248d588a8ad57b6abe0e4155e525243011f245e98d9b7afbe2e8cc7fd4ff7d82fcefb40c0f48f88918
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37-3ubuntu0.5.debian.tar.xz' libpng1.6_1.6.37-3ubuntu0.5.debian.tar.xz 50892 SHA512:fc9aa6035ac3e69d59fcdc58a1eef2eda4ad2f4ceba4bee2f6ff59f911f4ad4ed7b0e5ddac8c66a8abe2145305990fb7dd18f784949527c16f976f4d74405747
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.37-3ubuntu0.5.dsc' libpng1.6_1.6.37-3ubuntu0.5.dsc 2340 SHA512:ffe74706fa8dc41283f30496bc18d33d7644aa2e705efb798fedae4f27f9af3c0235e8f6f063728db32b19ff1b3603e639b67266da0dfb9f862640ca2cf49b98
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

### `dpkg` source package: `libseccomp=2.5.3-2ubuntu3~22.04.1`

Binary Packages:

- `libseccomp2:amd64=2.5.3-2ubuntu3~22.04.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.3-2ubuntu3~22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3.orig.tar.gz' libseccomp_2.5.3.orig.tar.gz 637572 SHA256:59065c8733364725e9721ba48c3a99bbc52af921daf48df4b1e012fbc7b10a76
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3.orig.tar.gz.asc' libseccomp_2.5.3.orig.tar.gz.asc 833 SHA256:cc1cbe9d9eb6a67b78de107eb37b2bc8d7599e3c1d36699ae2528db489cb5d44
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3-2ubuntu3%7e22.04.1.debian.tar.xz' libseccomp_2.5.3-2ubuntu3~22.04.1.debian.tar.xz 24328 SHA256:cd582c847ced99c97f487b3f4a851bc1f2bed9065f90729d90dc8721b6dc483e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.5.3-2ubuntu3%7e22.04.1.dsc' libseccomp_2.5.3-2ubuntu3~22.04.1.dsc 2860 SHA256:e7f514056a28794c6a7067cd0881b5bf03e918578df3418eea6752cbfa83fd13
```

### `dpkg` source package: `libselinux=3.3-1build2`

Binary Packages:

- `libselinux1:amd64=3.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3-1build2.dsc' libselinux_3.3-1build2.dsc 2644 SHA512:e6f6744aeef21f3acf9c36fc6251515e6be8caf1b4953ed20d2346897c72bc919ae7e26ab8dfd0c2cf24029bd39da073e57ea19df15af106ce86ab4537c691aa
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3.orig.tar.gz' libselinux_3.3.orig.tar.gz 206826 SHA512:9a89c05ea4b17453168a985ece93ba6d6c4127916e657c46d4135eb59a1f6408faa0802cc2e49187defbde5247d659037beee089877affbab3eab6af3433696c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.3-1build2.debian.tar.xz' libselinux_3.3-1build2.debian.tar.xz 24052 SHA512:75e344ef0d123659105774a0fe941f5821d230bd3f4db0453918407325f6c08246db2cd609ec0ba51090b2942cd1a9a1865245a18834fa1b234d730103799c0c
```

### `dpkg` source package: `libsemanage=3.3-1build2`

Binary Packages:

- `libsemanage-common=3.3-1build2`
- `libsemanage2:amd64=3.3-1build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3-1build2.dsc' libsemanage_3.3-1build2.dsc 2690 SHA512:6337e23938be6ebe18321ce9e67802ceaa2637e37bdc0940c4a4501e73f25235c662de1ec85807062327d2d5c5e7078ad0fb20d660e075710726cd0ede51e2fc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3.orig.tar.gz' libsemanage_3.3.orig.tar.gz 178890 SHA512:6026d9773c0886436ad801bc0c8beac888b6fb62034edeb863192dea4b6ef34a88e080758820fe635a20e048ac666beee505a0f946258f18571709cca5228aad
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.3-1build2.debian.tar.xz' libsemanage_3.3-1build2.debian.tar.xz 17920 SHA512:b23e000956a6fc96c7609a749d1974874834b6a463b0f5b42b3e4bde75f560789f7ef7f385a3a7297e97f7c610cd0c2899986b3a228671a57e051310441b0c90
```

### `dpkg` source package: `libsepol=3.3-1build1`

Binary Packages:

- `libsepol2:amd64=3.3-1build1`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3-1build1.dsc' libsepol_3.3-1build1.dsc 2217 SHA512:91f9c8436df88aa898f2e3ea4a8bbb0cb21de84153bc88b9fff30b2aa3f0e6b11d5b9f506b81d0266e8a4881ea86d6590abe64b8eacc2d8cdeaf1a0f5f2784bf
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3.orig.tar.gz' libsepol_3.3.orig.tar.gz 482546 SHA512:fb6bb69f8e43a911a1a9cbd791593215386e93cb9292e003f5d8efe6e86e0ce5d0287e95d52fe2fbce518a618beaf9b1135aea0d04eaebcdbd8c6d07ee67b500
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.3-1build1.debian.tar.xz' libsepol_3.3-1build1.debian.tar.xz 15068 SHA512:adb210e2dab83baa49cee624dc5ae44e9f2dff6eb4a0a7bee4b958e99871580df159d0ca339feca31d9c4cdd92d0022a841c35d615436278046379eeb766f1f2
```

### `dpkg` source package: `libsm=2:1.2.3-1build2`

Binary Packages:

- `libsm6:amd64=2:1.2.3-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1build2.dsc' libsm_1.2.3-1build2.dsc 2170 SHA512:4dc5d9445614801154fb411ae2089c80c55adaea90a9d78a958724d70fc8ea8d36c9a898a478f18a9669f3448d9d9a948c632f2a4869287d1e1f88403e304096
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3.orig.tar.gz' libsm_1.2.3.orig.tar.gz 445362 SHA512:03b77d86b33cdb3df4f9d65131a0025182f3cb0c17b33a90d236e8563b3011d225b9d006186302d07850edafa5b899aec6a086b8d437d357cd69fedd5f22d94b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.3-1build2.diff.gz' libsm_1.2.3-1build2.diff.gz 9062 SHA512:c5ddeb48fe7c846b31382a5da42a2970ae12995afb322c6291977b7ffd2251d4d9e9dc163ecb008902ae8ee3c3a44526115bddc92b402c8f4a9ea0f29f1cb037
```

### `dpkg` source package: `libssh=0.9.6-2ubuntu0.22.04.7`

Binary Packages:

- `libssh-4:amd64=0.9.6-2ubuntu0.22.04.7`

Licenses: (parsed from: `/usr/share/doc/libssh-4/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+~OpenSSL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libssh=0.9.6-2ubuntu0.22.04.7
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6.orig.tar.xz' libssh_0.9.6.orig.tar.xz 1053056 SHA256:86bcf885bd9b80466fe0e05453c58b877df61afa8ba947a58c356d7f0fab829b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6.orig.tar.xz.asc' libssh_0.9.6.orig.tar.xz.asc 833 SHA256:050d4e532a614c20b4830ebc210bb28acee2ed458e694c8aedfe2ab152688298
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6-2ubuntu0.22.04.7.debian.tar.xz' libssh_0.9.6-2ubuntu0.22.04.7.debian.tar.xz 75780 SHA256:324c4371a1c73edab635a028c0049b8e568e43014148e87c0a5b3d2e791d2295
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh/libssh_0.9.6-2ubuntu0.22.04.7.dsc' libssh_0.9.6-2ubuntu0.22.04.7.dsc 2750 SHA256:7068a71d241496023af2b737f04f435ef80d36bd45d28ab4c42b31f76c3b30fe
```

### `dpkg` source package: `libtasn1-6=4.18.0-4ubuntu0.2`

Binary Packages:

- `libtasn1-6:amd64=4.18.0-4ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.18.0-4ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz' libtasn1-6_4.18.0.orig.tar.gz 1724441 SHA256:4365c154953563d64c67a024b607d1ee75c6db76e0d0f65709ea80a334cd1898
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0.orig.tar.gz.asc' libtasn1-6_4.18.0.orig.tar.gz.asc 228 SHA256:68edccaf988071e0c0154495e82be0b783553a49762381435accc79f2fdb463d
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4ubuntu0.2.debian.tar.xz' libtasn1-6_4.18.0-4ubuntu0.2.debian.tar.xz 25324 SHA256:450340a2e588e4fcbfcbf2eece3c516a3fc25f6606e0fa341155326ab72137a0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.18.0-4ubuntu0.2.dsc' libtasn1-6_4.18.0-4ubuntu0.2.dsc 2777 SHA256:959cc5799f608a5ddc7aba7fcc765588b5dc82c7d987bd17a4274222a5171d41
```

### `dpkg` source package: `libthai=0.1.29-1build1`

Binary Packages:

- `libthai-data=0.1.29-1build1`
- `libthai0:amd64=0.1.29-1build1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.29-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29-1build1.dsc' libthai_0.1.29-1build1.dsc 2457 SHA512:d4181f56ccec5cddf5e65a01386d30b51a1e9cea2fd671577fa5cf14435ea3e9b0a6e6668f1f008a0d4180067d4498b163309f5a7a51b2f4ef64ab868439bb0c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29.orig.tar.xz' libthai_0.1.29.orig.tar.xz 417728 SHA512:0ba1261581a1705a2a2546a3071acb3c63892dbf111f0dad415667165a6b9542a5e4549061c67b11ec53de7c9e70fceb3c04d794fd12a22d991a539dbacebda1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.29-1build1.debian.tar.xz' libthai_0.1.29-1build1.debian.tar.xz 12676 SHA512:fd2032f66f172ee3e2646099205474c2bbe6a0dd0f0fd685b9e8add66017a160946d5708b4bac4ae9aa5da3062eafdc34c0228c99910b1c013aaee29b9ab9d07
```

### `dpkg` source package: `libtirpc=1.3.2-2ubuntu0.1`

Binary Packages:

- `libtirpc-common=1.3.2-2ubuntu0.1`
- `libtirpc-dev:amd64=1.3.2-2ubuntu0.1`
- `libtirpc3:amd64=1.3.2-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libtirpc-common/copyright`, `/usr/share/doc/libtirpc-dev/copyright`, `/usr/share/doc/libtirpc3/copyright`)

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
$ apt-get source -qq --print-uris libtirpc=1.3.2-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2.orig.tar.bz2' libtirpc_1.3.2.orig.tar.bz2 513151 SHA512:8664d5c4f842ee5acf83b9c1cadb7871f17b8157a7c4500e2236dcfb3a25768cab39f7c5123758dcd7381e30eb028ddfa26a28f458283f2dcea3426c9878c255
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2-2ubuntu0.1.debian.tar.xz' libtirpc_1.3.2-2ubuntu0.1.debian.tar.xz 18364 SHA512:5440c46e49837b176b8087d82762002766e48a7d487e101049079637ebb93c21fbb1dccd63a319f72ee11d7964873c00dc98a7b5b320355d640df7f9e16ab1c7
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc_1.3.2-2ubuntu0.1.dsc' libtirpc_1.3.2-2ubuntu0.1.dsc 2201 SHA512:da9e64904445de59217c2bfa55ca9739e0b08ac4693a45a813b7fc67273e106a11e7076d39d24e5f62d242af4e2eaac9e5503072b57f4cf7bdfa579a82920e77
```

### `dpkg` source package: `libtool=2.4.6-15build2`

Binary Packages:

- `libltdl7:amd64=2.4.6-15build2`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-15build2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-15build2.dsc' libtool_2.4.6-15build2.dsc 2634 SHA512:a7cdb710cae727fdb1948326fc7af9faef0634b1ebfebfcdfb94407cc2242af45e408c48bff07d075fa7f608c2f06f9257c64ec7d21341b771bf4b55f04ed5c9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA512:a6eef35f3cbccf2c9e2667f44a476ebc80ab888725eb768e91a3a6c33b8c931afc46eb23efaee76c8696d3e4eed74ab1c71157bcb924f38ee912c8a90a6521a4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA512:2f26447a837e3242b8f8f38fbab22d89df0949ee62fd966af3b5bae3aa939ba53bc4621174ee58d1c6722d569d7fe5f90097ddccffed28c3067fe5fa996fcb89
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-15build2.debian.tar.xz' libtool_2.4.6-15build2.debian.tar.xz 54076 SHA512:324a79af930a793b3b0031a1bb727b5ed16016b8e55294f24410ee9cfe2a2db75aab2d1ace8901fdaba610069f00e246d4d552faa23d583c741da0de438377cb
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

### `dpkg` source package: `libuv1=1.43.0-1ubuntu0.1`

Binary Packages:

- `libuv1:amd64=1.43.0-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libuv1/copyright`)

- `Apache-2.0`
- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `CC-BY-4.0`
- `Expat`
- `GPL3+ with autoconf exception`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.43.0-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.43.0.orig.tar.gz' libuv1_1.43.0.orig.tar.gz 1296029 SHA256:8e9b3d2b722a7e3ad1748d240f8cfd662b1be06c31ed83b5240df8a0e6ba6d9e
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.43.0-1ubuntu0.1.debian.tar.xz' libuv1_1.43.0-1ubuntu0.1.debian.tar.xz 21876 SHA256:6c6c5e8bd110be19da699d4c902537c69f8596f92226c0c9ec6dc5b5f133b685
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.43.0-1ubuntu0.1.dsc' libuv1_1.43.0-1ubuntu0.1.dsc 2112 SHA256:375d4f1c5beeff47b41a678260c57472020cccacaf9b86b4da19d148e68dabae
```

### `dpkg` source package: `libwebp=1.2.2-2ubuntu0.22.04.2`

Binary Packages:

- `libwebp7:amd64=1.2.2-2ubuntu0.22.04.2`

Licenses: (parsed from: `/usr/share/doc/libwebp7/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.2.2-2ubuntu0.22.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.2.2.orig.tar.gz' libwebp_1.2.2.orig.tar.gz 4117468 SHA256:7656532f837af5f4cec3ff6bafe552c044dc39bf453587bd5b77450802f4aee6
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.2.2-2ubuntu0.22.04.2.debian.tar.xz' libwebp_1.2.2-2ubuntu0.22.04.2.debian.tar.xz 10468 SHA256:b6d9d43c6eaa96cb3a0720819add82664d37cca2fe4fcd3245db533919e4d779
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.2.2-2ubuntu0.22.04.2.dsc' libwebp_1.2.2-2ubuntu0.22.04.2.dsc 2186 SHA256:4870b586cae8beb49c8ec15fa090ce37e2ad73a599de55b05dac4476e201b99b
```

### `dpkg` source package: `libx11=2:1.7.5-1ubuntu0.3`

Binary Packages:

- `libx11-6:amd64=2:1.7.5-1ubuntu0.3`
- `libx11-data=2:1.7.5-1ubuntu0.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.7.5-1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.7.5.orig.tar.gz' libx11_1.7.5.orig.tar.gz 3170022 SHA256:78992abcd2bfdebe657699203ad8914e7ae77025175460e04a1045387192a978
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.7.5.orig.tar.gz.asc' libx11_1.7.5.orig.tar.gz.asc 358 SHA256:8332442d1675118c43e341630bf62aeb93972254d139bb865cc047006ca7e8d6
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.7.5-1ubuntu0.3.diff.gz' libx11_1.7.5-1ubuntu0.3.diff.gz 98716 SHA256:cb704ffd480c5b895fa2eeed05dde55029d0f255d1da129a1c9208945743120f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.7.5-1ubuntu0.3.dsc' libx11_1.7.5-1ubuntu0.3.dsc 2654 SHA256:0dd283f309406a9b771d494de14edf87409e7afcbdbffb58a4f97d8ddd44c574
```

### `dpkg` source package: `libxau=1:1.0.9-1build5`

Binary Packages:

- `libxau6:amd64=1:1.0.9-1build5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.9-1build5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-1build5.dsc' libxau_1.0.9-1build5.dsc 2315 SHA512:b9a9d6888a70e8c7e8161a322a425316ed181d00ad3881caea788aeda9c4346122a70c57d30b91e7692f5c0b468da9d784c228ead5487cfb2474f4fc42b83ada
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz' libxau_1.0.9.orig.tar.gz 394068 SHA512:3b22f34a4e35d17421189df8ce3f858b0914aef0cea0b12689dd8576f14eb811e39d6e32384251573daa7e3daba400deea98e7c0e29b4105138cf82195d7f875
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz.asc' libxau_1.0.9.orig.tar.gz.asc 801 SHA512:e59b2944591499d0c0291a8d80ad8ee2cb13ee00c32b0d26c6af12a2bb96c947d4d15924ef15b377b8d7640b75b50f9b8127ba53c582090b3f73b7bcf9e00b01
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.9-1build5.diff.gz' libxau_1.0.9-1build5.diff.gz 10579 SHA512:9485f97bc34a7b348a7bd276001ff5e455a17c8d6b6d6e4382496c38f470f1650f7177103d2b123f25f21ce62899ceb3112909ee92e9a604d302d3c63cb59e8f
```

### `dpkg` source package: `libxaw=2:1.0.14-1`

Binary Packages:

- `libxaw7:amd64=2:1.0.14-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxaw=2:1.0.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.14-1.dsc' libxaw_1.0.14-1.dsc 2352 SHA512:86716dd1d303d27b00dc9a5d4023e669c45a5bd3b212d3f5d02460a2deafcb7f2a048d07b47d092353935f56fce836a7931f357278ff2906f18dafc86792acbc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.14.orig.tar.gz' libxaw_1.0.14.orig.tar.gz 886122 SHA512:1205481443627b428f6c447a3926a060af30440badc401ca8d209849faef21ce967cf7f26ab452b47a64071980f9892cce83b2d70db0c2b7d6cabf838ab93884
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.14.orig.tar.gz.asc' libxaw_1.0.14.orig.tar.gz.asc 618 SHA512:87db1130f7b69b75ec9ce91f7b3a2e8519da597c4faefb36c191555aaa35af9ac3576ae040ba4c7e74aefd8fb6bcdabd9ed1aacff13c40d1158f6003df4bf53b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxaw/libxaw_1.0.14-1.diff.gz' libxaw_1.0.14-1.diff.gz 28936 SHA512:5545c68a10e47bfa42fcaeafe285f9cea3e68d43bc5a6d1a926052cba8f008bc2e7dda047e22c31c4bff79b008d3fe3726e6af6d96c9c8dbe1a854abcd5a385a
```

### `dpkg` source package: `libxcb=1.14-3ubuntu3`

Binary Packages:

- `libxcb-render0:amd64=1.14-3ubuntu3`
- `libxcb-shm0:amd64=1.14-3ubuntu3`
- `libxcb1:amd64=1.14-3ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.14-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14-3ubuntu3.dsc' libxcb_1.14-3ubuntu3.dsc 5480 SHA512:cc563eae53e92b3f5cf700f0a61ee036fe0df9a109453dd4cd6a8107dac4a7f6d85e28810011ef74ca69ca36853a8d20e877480b94344ad5262f8fd6da299d5c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14.orig.tar.gz' libxcb_1.14.orig.tar.gz 640322 SHA512:6114d8c233b42b56604787a0475e924143aa13f1d382e6029b2150a4360c12ce78073409f754fbb1e5d9f99fc26900c0a4c59e9cfbd4c3d0a3af0c1306e62da1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.14-3ubuntu3.diff.gz' libxcb_1.14-3ubuntu3.diff.gz 27588 SHA512:228c6da2cf94e02b249ccb04f2668f45b2ab117a4c6670ac6f7ab449582e459df4fc7e1ce5ae5cd945acea6fd00b935ed6394c800ee3d92ce9a0fb6913460f86
```

### `dpkg` source package: `libxcrypt=1:4.4.27-1`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.27-1`
- `libcrypt1:amd64=1:4.4.27-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.27-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27-1.dsc' libxcrypt_4.4.27-1.dsc 1525 SHA512:1335a2ab3f7b519022af13c18dca9ea1c2de3007c07f120d53fbb7eb834ac7e0ece120681c1ee1dd92771469104dccedef3a7e85ec51fc1ca64b52c9447558c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27.orig.tar.xz' libxcrypt_4.4.27.orig.tar.xz 391772 SHA512:9d194066ab7eefd3e568b2478d58aa378da8571abf4c37ddcde2c01114a4aa69f0edfb4e3d13d951feac5955336f9b02046d9b1fd1b9fbfbc556aad31cf64d7e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.4.27-1.debian.tar.xz' libxcrypt_4.4.27-1.debian.tar.xz 7764 SHA512:02e38ba06f3555dd930fc7ed44602dc816ce48f4c29fdc085249948596d5e7e96600cb81c8c9fb2e1dc33574d5136d08feeff3eb1dd3522aa8e5cdc9037c1ae0
```

### `dpkg` source package: `libxdmcp=1:1.1.3-0ubuntu5`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.3-0ubuntu5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.3-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu5.dsc' libxdmcp_1.1.3-0ubuntu5.dsc 2252 SHA512:5b6df4dd48380acff08dbe1fe40258d33a2f431e27da076ce54e0a1714dacb1e031aa49e2ace3863dc2131de4df42aa76b423f44f520fd8b2dbb18c4bddcada1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3.orig.tar.gz' libxdmcp_1.1.3.orig.tar.gz 429668 SHA512:edd05654ad9ea893e9e08269e25ea050d10eaf9f997a08494e24127d1ba0c896cd5338b4595b155c8cbf576e1d910b76e6ad7820fee62d74644f1f276551e2f2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.3-0ubuntu5.diff.gz' libxdmcp_1.1.3-0ubuntu5.diff.gz 18395 SHA512:552a04477a7852b2a68ba268dcd19cee9dd89c2774b6c86ca8f11180f6b179cc7853348653cf3b7d3e89a0079bef91308e8da2dfd34d0f42104f352e47ea07bd
```

### `dpkg` source package: `libxext=2:1.3.4-1build1`

Binary Packages:

- `libxext6:amd64=2:1.3.4-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build1.dsc' libxext_1.3.4-1build1.dsc 2250 SHA512:d7a857fa82374d6b0f1435f55c697f82f5f17e9492d74eea29e04679eb6a5dd49aeb88abb048e904de207c57d16d5ad487067e6fb45696834ac5c934040d7e90
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA512:4eebd639fd57cb9b84a1e17e368f82fbf3d9f021eef5ad3fe31dd128500db57862a82c1e0d214d447cb7641b2be3fd7e949ee1196f2a482793c6628fb1e5cd70
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build1.diff.gz' libxext_1.3.4-1build1.diff.gz 12588 SHA512:bfcebe8e6e277dc1ea81063a4a4663e24b78f2b69439e3b8ed2209168016876f55e8e95c6a1828ab5bf7a1936ec795e14f4391b24ec8801e0102e00e953d46e4
```

### `dpkg` source package: `libxml2=2.9.13+dfsg-1ubuntu0.12`

Binary Packages:

- `libxml2:amd64=2.9.13+dfsg-1ubuntu0.12`
- `libxml2-utils=2.9.13+dfsg-1ubuntu0.12`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-utils/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.13+dfsg-1ubuntu0.12
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.13%2bdfsg.orig.tar.xz' libxml2_2.9.13+dfsg.orig.tar.xz 2351356 SHA512:6283071de4934c856c7ff5202ac1a2ed5892d7fcde82a364d40c8bc2bf3d3201fbcbb5f6983d8bf6b962026bc216b8182d71efe280f1dcef2931b277314e6e89
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.13%2bdfsg-1ubuntu0.12.debian.tar.xz' libxml2_2.9.13+dfsg-1ubuntu0.12.debian.tar.xz 60032 SHA512:e76f9d18ab57f26d73d71b47d783dd1eaee168485ccb1aeca19454c053d1389cae018851215ae1e3df42fe823cd2d0c3754ad3460e18e4e579f4d30e8c78f422
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.13%2bdfsg-1ubuntu0.12.dsc' libxml2_2.9.13+dfsg-1ubuntu0.12.dsc 3075 SHA512:b28b052bec8c1e09ed65c2f27aaadbe31d8350c08a96284b535ef65756111edc9f9915ce8ae6d8d96bb65dc40cdf92ee27bf7dc77e4a89b2486c2e582fa7349f
```

### `dpkg` source package: `libxmu=2:1.1.3-3`

Binary Packages:

- `libxmu6:amd64=2:1.1.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.3-3.dsc' libxmu_1.1.3-3.dsc 2165 SHA512:7868975bb24189125a57910121c07bfd40fcb57af86a61665d7480f34339c566f4684e1db849d4d589a0e01bb59925ee8de0089bff4df436502e714c3bcc1dec
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.3.orig.tar.gz' libxmu_1.1.3.orig.tar.gz 497343 SHA512:b92fb2e96519880e9f057ae4149bd1bd95584383c6224891f3d832d98ace9292269815fe51d06a4dfc257f51021c2f7367e2f529a7ebcc3dfc64f037720a1cb8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxmu/libxmu_1.1.3-3.diff.gz' libxmu_1.1.3-3.diff.gz 8085 SHA512:afefb6de2e65cfd1174b58a25f4598966adc375378d6525b2ddac98dce20276ae9ce03b1eb14b3a3a186e2ce00b7d68133a2578048f2582c5bb7b6be42a16fa6
```

### `dpkg` source package: `libxpm=1:3.5.12-1ubuntu0.22.04.2`

Binary Packages:

- `libxpm4:amd64=1:3.5.12-1ubuntu0.22.04.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libxrender=1:0.9.10-1build4`

Binary Packages:

- `libxrender1:amd64=1:0.9.10-1build4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1build4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1build4.dsc' libxrender_0.9.10-1build4.dsc 2196 SHA512:4e5f32bd1ea1a7c78bd3f186fff28ead08e814f25029e6d955b323998c1a64ee53e6862b89aa73a9d2f84207cef9da28127bc2a40ce74f55cff37b198979b76d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA512:7768e62b500f468460f88f27bc1130170b204b478573d9e4406867e557b5638b7c1e21d88d51f9e774ce2344780a384e3c3be51421275d2ee880f9a978a3a232
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1build4.diff.gz' libxrender_0.9.10-1build4.diff.gz 15809 SHA512:8c0fe7e340497564286087bc95c6fac4ac9130723bc7389dfc88cf4172dc77ae657e8bcb8c6a99ff53ee8aca1072ad5279e4b7588499209851059948eb2869a0
```

### `dpkg` source package: `libxslt=1.1.34-4ubuntu0.22.04.5`

Binary Packages:

- `libxslt1.1:amd64=1.1.34-4ubuntu0.22.04.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.34-4ubuntu0.22.04.5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34.orig.tar.gz' libxslt_1.1.34.orig.tar.gz 3552258 SHA256:98b1bd46d6792925ad2dfe9a87452ea2adebf69dcb9919ffd55bf926a7f93f7f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34.orig.tar.gz.asc' libxslt_1.1.34.orig.tar.gz.asc 488 SHA256:673d1477552bdd5b0cc665704e77ca70e6be5d2f257e6a5a341c846719d747cf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34-4ubuntu0.22.04.5.debian.tar.xz' libxslt_1.1.34-4ubuntu0.22.04.5.debian.tar.xz 32076 SHA256:76d7caee2003cc8a22efa91f08355eb862a61e084230f3af1174a19f5d4c766a
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.34-4ubuntu0.22.04.5.dsc' libxslt_1.1.34-4ubuntu0.22.04.5.dsc 2559 SHA256:03d304f3e4a3ea6c651054f96df1de69f7b8c77cb5f45d8b1e9204f77a80b675
```

### `dpkg` source package: `libxt=1:1.2.1-1`

Binary Packages:

- `libxt6:amd64=1:1.2.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.dsc' libxt_1.2.1-1.dsc 2312 SHA512:6176a90a0e929b22b0b2cc9e34844e904353ecac42fec4498005fb16a1c614051ad7d5dc407489316bdc7a7a7db19800ef43b06bb450961171b86200a2044b9c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA512:73c2fd8a6590ab5ee93cf646e4f41fb71d424961ecbf9bc13c68abdf539c63ab0c59a4d3b22195ba21859523f4cf0e937648424532794a1350a5891061096503
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA512:135e01b8a79beac9530087dee1a5458c359b4f1ae8346e2502f72f4fc24be400477fda90944315c585e3416e80cb74d1a140d5dfec81e854a4996199a8b221dc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.diff.gz' libxt_1.2.1-1.diff.gz 45419 SHA512:432a4911d7c6a15f87a093104c1e91df9b122410394ad242d8d5e219fe6c4d65c4ae99b82aafece96dea706f43601dab365557af18c7f332a812012eff0dabf1
```

### `dpkg` source package: `libyaml=0.2.2-1build2`

Binary Packages:

- `libyaml-0-2:amd64=0.2.2-1build2`
- `libyaml-dev:amd64=0.2.2-1build2`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.2-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2-1build2.dsc' libyaml_0.2.2-1build2.dsc 2139 SHA512:41b3ce50b076da1118a639496dcda225ed8d7534079f61a470d6d6f80b34c7f0df8e1850024e78a73b25e695c4b10049ce50b09acaca6a2c8145adbf3f41cdad
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2.orig.tar.gz' libyaml_0.2.2.orig.tar.gz 602509 SHA512:0728c89ba43af3cdec22bccaf18c9ad7b07e13cdebed9d8919e2c62cf90bb5e23d2c746fd250320b2827dfcd9f1ce442d3bf8a3fe18b61f9a8d1d7770561e610
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.2-1build2.debian.tar.xz' libyaml_0.2.2-1build2.debian.tar.xz 4284 SHA512:50eb5194764d06438ef0f1a4690a400f1d61ab311a1e72e1c004e1ad15f85de02822012936d7a3f5fc741a325fad490135f3bc14ccf6948e44faa75cabf2d70f
```

### `dpkg` source package: `libzstd=1.4.8+dfsg-3build1`

Binary Packages:

- `libzstd-dev:amd64=1.4.8+dfsg-3build1`
- `libzstd1:amd64=1.4.8+dfsg-3build1`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.4.8+dfsg-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-3build1.dsc' libzstd_1.4.8+dfsg-3build1.dsc 2398 SHA512:cdd444b0258f1effd998781dd058c8ab37fb8aabb10b94cc5741b0fd2c4c948085cd1b919533ded2f30c5a871c68a81dacef3c3d0640b8514d5d3a9d375647f6
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg.orig.tar.xz' libzstd_1.4.8+dfsg.orig.tar.xz 1331996 SHA512:07fabe431367eea4badae7b1e46ac73e0b33aad5b67361bc7b67d5f9aef249c51db5b560f1cf59233255cc49db341a8d8440fed87745026fca7a7c5c14448cd8
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-3build1.debian.tar.xz' libzstd_1.4.8+dfsg-3build1.debian.tar.xz 12316 SHA512:8123965a6e73c5ddd8d535e78ed1074e2eabd7f8ed090d215a89feedffae9391cf472d2395242d3cb0351cbf76603448dae93ad70d0989806b42b03c65b22db0
```

### `dpkg` source package: `linux=5.15.0-185.195`

Binary Packages:

- `linux-libc-dev:amd64=5.15.0-185.195`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lsb=11.1.0ubuntu4`

Binary Packages:

- `lsb-base=11.1.0ubuntu4`
- `lsb-release=11.1.0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.1.0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu4.dsc' lsb_11.1.0ubuntu4.dsc 2222 SHA512:2b5375ca5938f497f9211d9b85eaf60858c2d59c80ec40a3a04bec6ef47e6685661589f22514f8b2e4a325038feb0375d99e1f905aa93b4a13c3d474e3b86677
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_11.1.0ubuntu4.tar.xz' lsb_11.1.0ubuntu4.tar.xz 46152 SHA512:03469c3b85facd88fb4c24b85eb42d6aeab171aa6e5860147ad947e2bbc2f2fe5f78ebd4a457f6af194d33173dccec4f672d1b9d460c070765377d9456bc73da
```

### `dpkg` source package: `lto-disabled-list=24`

Binary Packages:

- `lto-disabled-list=24`

Licenses: (parsed from: `/usr/share/doc/lto-disabled-list/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lto-disabled-list=24
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_24.dsc' lto-disabled-list_24.dsc 1435 SHA512:14d46d1b6da858d12f43aa6a5d8483512de13e0f4ead44d8a15f04b5b8ebe251ccf30e1828dd23802446cf0d9ace41e3a888ccb330e46de113ebb4bca5f6b52f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_24.tar.xz' lto-disabled-list_24.tar.xz 12472 SHA512:c43407072716e18605ed0a032e40f88d8c4f3d5982bfb9cd88820713a08cff8dc1a7461a602cbcfb23362ab6904b63afe5320cfa9438494ab1e932c8e77b1471
```

### `dpkg` source package: `lxml=4.8.0-1build1`

Binary Packages:

- `python3-lxml:amd64=4.8.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-lxml/copyright`)

- `GPL`
- `GPL2`
- `later`

Source:

```console
$ apt-get source -qq --print-uris lxml=4.8.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_4.8.0-1build1.dsc' lxml_4.8.0-1build1.dsc 1934 SHA512:413769a1479a778a2baf475316cfdbedacec58ab7cd6d20fcbd8a6294383825eb0540138adaf418626aa0d3879f6f7f464d7b1a5d50d9d6e182f76b500e28c4c
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_4.8.0.orig.tar.gz' lxml_4.8.0.orig.tar.gz 3209187 SHA512:f39e1a6194eb00045002ef830da18ad1be6307004f29e5266db4fbaecdb14be9142462a39bd55a2753c5e20a59cc104a09aa40ca18b0382ee421c2e67907a154
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_4.8.0-1build1.debian.tar.xz' lxml_4.8.0-1build1.debian.tar.xz 8264 SHA512:5da040933decb50f1cf2b8dc4a7887c99963c4fdd71c768e6d674a47d7b39c7dd51e8ab81d60265682e55197312ffeec615c7436581b02fc6a0aad0968aafff0
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

### `dpkg` source package: `make-dfsg=4.3-4.1build1`

Binary Packages:

- `make=4.3-4.1build1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.3-4.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3-4.1build1.dsc' make-dfsg_4.3-4.1build1.dsc 2072 SHA512:f5580f5dc9e7d4ee3a7bfcd82a42c0615a4828cac1f84db3c720260209cee3334d0a23ea78113cd2b26eaf233d46ec59743d14a8bd05cfd225f111ff739ad57d
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3.orig.tar.gz' make-dfsg_4.3.orig.tar.gz 1845906 SHA512:bdc150f9d256145923380d6e7058ab9b2b4e43fcb1d75ab2984fa8f859eab6852a68e4ea5f626633e0bec76fbebf1477378e268e8ffdb5cb2a53b29cbc439bc1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.3-4.1build1.diff.gz' make-dfsg_4.3-4.1build1.diff.gz 50780 SHA512:258dc63a0cea09995adfe4091599664e2ef0d5f81c990f980b0ddf9e02212177c4a23fa8d82e886ecbae33c84816c61530e97fd82c5347ff25a434a3aa6732ae
```

### `dpkg` source package: `mawk=1.3.4.20200120-3`

Binary Packages:

- `mawk=1.3.4.20200120-3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.dsc' mawk_1.3.4.20200120-3.dsc 1915 SHA512:f51dae1f342769e4fc0b8d5faf4e988433a0e74912ba0777fbafdf058900c973087c267756f5c2b74298bfc31a36c8bbc99c6c0edcc850710b646d0d24fa1305
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA512:14d9a6642ce931bf6457d248fc2d6da4f0ea7541976ca282ea708b26df048f86fdf92c27f72d497501ccd43a244d1d1a606f1a2f266a7558306fea35dcc3041b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20200120-3.debian.tar.xz' mawk_1.3.4.20200120-3.debian.tar.xz 7520 SHA512:bc4f5401de313108595ba91b17f44b5c67d7650b5557eef8a6c63c75e2ccee5dfd8900576d7e81f0ab1ac2e570f64fa75f38f56f6d4535437c803029216501af
```

### `dpkg` source package: `media-types=7.0.0`

Binary Packages:

- `media-types=7.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=7.0.0
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_7.0.0.dsc' media-types_7.0.0.dsc 1620 SHA512:f5159688820b267f4349dce11a3427bb70d8185494386ec37076885c36c4dfda8de9daf82a92cd84442604b33dfb7835ae2121bead8151ae5e14ed375a9d9659
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_7.0.0.tar.xz' media-types_7.0.0.tar.xz 55660 SHA512:ce4b07388c490c7e3e1bdd1dcdd28c685eee81cb9d167cc903f427a28bf972210b8d5ad3d33af06530b4dba0ac7f2a2b6e914c1d88bc1e88db589de6b4490071
```

### `dpkg` source package: `more-itertools=8.10.0-2`

Binary Packages:

- `python3-more-itertools=8.10.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-more-itertools/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris more-itertools=8.10.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_8.10.0-2.dsc' more-itertools_8.10.0-2.dsc 2092 SHA512:fd06076c1f50b266003b908f7bd2a264ccad75d888f0a1f505ff4ba8c2246c4f18108df2a44c6f0adcc74c444275743583b8009048b59525789edad16a2aa047
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_8.10.0.orig.tar.gz' more-itertools_8.10.0.orig.tar.gz 102929 SHA512:a666710426a825e5aca10b52439a973e08ac6ec09fb5375426194d1342af055a8b6aee48b4e3fa17c4606d6d9cc3673afdd789dbbaf373258be6a71bd63178f7
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_8.10.0-2.debian.tar.xz' more-itertools_8.10.0-2.debian.tar.xz 2812 SHA512:eaf36d67901a164947cf86f84a21d296f8f9012948bde9ea70390158d4ecbfe77687c119e1e18612dadd90d2142dbb5959663ace84b103715b4e4ca20ec130f6
```

### `dpkg` source package: `mpclib3=1.2.1-2build1`

Binary Packages:

- `libmpc3:amd64=1.2.1-2build1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.2.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.2.1-2build1.dsc' mpclib3_1.2.1-2build1.dsc 1984 SHA512:5aa91f39d40bebc1f9ae03506c17687b75ea88d8129baf3a47b6d3d4fe3aba7b1aec499e219b7357747069ea40b8f593b33165c62687a4cb2fcc5e8a21428ffc
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.2.1.orig.tar.gz' mpclib3_1.2.1.orig.tar.gz 838731 SHA512:3279f813ab37f47fdcc800e4ac5f306417d07f539593ca715876e43e04896e1d5bceccfb288ef2908a3f24b760747d0dbd0392a24b9b341bc3e12082e5c836ee
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.2.1-2build1.debian.tar.xz' mpclib3_1.2.1-2build1.debian.tar.xz 4576 SHA512:0317f40da1ee5a7ad5733760226ec6ba4cddf7c4fae32b91e771f40bdb1b8a116854cb1cde85566072ef0199d7fbf046ff20fd67ef2ddb655038cb2e19e58662
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

### `dpkg` source package: `mpfr4=4.1.0-3build3`

Binary Packages:

- `libmpfr6:amd64=4.1.0-3build3`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.1.0-3build3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0-3build3.dsc' mpfr4_4.1.0-3build3.dsc 2066 SHA512:60ea156f6c4a56320ecfb2fefb226b5083363710eacbdec48f36f77bd5265c91548ef28ba775a88c7e927314e5dd757de851001bc7697f863195510047eaf0a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0.orig.tar.xz' mpfr4_4.1.0.orig.tar.xz 1525476 SHA512:1bd1c349741a6529dfa53af4f0da8d49254b164ece8a46928cdb13a99460285622d57fe6f68cef19c6727b3f9daa25ddb3d7d65c201c8f387e421c7f7bee6273
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.1.0-3build3.debian.tar.xz' mpfr4_4.1.0-3build3.debian.tar.xz 12580 SHA512:1126a59104a9556f7ebd622b050b52899bd92442673e6ecbb04e80bc873107b4b61a356373d14b1fff5681090b177e0d3a9a4f212b0f38c347d01ac408222bd0
```

### `dpkg` source package: `ncurses=6.3-2ubuntu0.1`

Binary Packages:

- `libncurses6:amd64=6.3-2ubuntu0.1`
- `libncursesw6:amd64=6.3-2ubuntu0.1`
- `libtinfo6:amd64=6.3-2ubuntu0.1`
- `ncurses-base=6.3-2ubuntu0.1`
- `ncurses-bin=6.3-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `netifaces=0.11.0-1build2`

Binary Packages:

- `python3-netifaces:amd64=0.11.0-1build2`

Licenses: (parsed from: `/usr/share/doc/python3-netifaces/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris netifaces=0.11.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.11.0-1build2.dsc' netifaces_0.11.0-1build2.dsc 2204 SHA512:57261d780baf77492d9fba50d11d4336d88e5ef978456f7bc40c3aa1d24a89b480c67d2b3fbd9514b423840c96da0354573317f9a0b61a152d56afd6d4bdd4c4
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.11.0.orig.tar.gz' netifaces_0.11.0.orig.tar.gz 30106 SHA512:a53110efb78c89c4d72d002104866253a4c085dd27ff9f41d4cfe3811cc5619e7585ceda4e91e83cdd0645c40c745c61d205708ee9a34427b35f437a48f148e5
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.11.0-1build2.debian.tar.xz' netifaces_0.11.0-1build2.debian.tar.xz 3928 SHA512:bdd4a089d39889ec18a40a3905afa17f3b9fd9808cf244406f4a17f2a0f92c8d1131c5a123b5013e369c1a808d3f5fb6e077cbac1ae33f375f8ae7a02f57de61
```

### `dpkg` source package: `nettle=3.7.3-1build2`

Binary Packages:

- `libhogweed6:amd64=3.7.3-1build2`
- `libnettle8:amd64=3.7.3-1build2`

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
$ apt-get source -qq --print-uris nettle=3.7.3-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3-1build2.dsc' nettle_3.7.3-1build2.dsc 2165 SHA512:3f774011dd48205720ac7e6aa9a44b5afa64c24fce825d6583b58c02f3c8f500ecafa265d18d5deb1ab65d6e938dd76a7917f1d5c3dab0aea28148d531fa26cd
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3.orig.tar.gz' nettle_3.7.3.orig.tar.gz 2383985 SHA512:9901eba305421adff6d551ac7f478dff3f68a339d444c776724ab0b977fe6be792b1d2950c8705acbe76bd924fd6d898a65eded546777884be3b436d0e052437
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.7.3-1build2.debian.tar.xz' nettle_3.7.3-1build2.debian.tar.xz 22100 SHA512:c1935d35e9f04798273053ab92c7405ec225a5d72ba6c2869b0f2bf54b459ac428e113bc149796e91834a8b56082f8bbfbb906a6cd6787142b8932bd1dd83cec
```

### `dpkg` source package: `nghttp2=1.43.0-1ubuntu0.3`

Binary Packages:

- `libnghttp2-14:amd64=1.43.0-1ubuntu0.3`

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


### `dpkg` source package: `node-jquery=3.6.0+dfsg+~3.5.13-1`

Binary Packages:

- `libjs-jquery=3.6.0+dfsg+~3.5.13-1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris node-jquery=3.6.0+dfsg+~3.5.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.6.0%2bdfsg%2b%7e3.5.13-1.dsc' node-jquery_3.6.0+dfsg+~3.5.13-1.dsc 2699 SHA512:44656f0d8cc8a3bc6ea06bbf8d55bf2a2fc4220ba39e170f4a80af49ee93910a5cc03fb355303c4f537d08bbcad857e5fb6e7946bffc684c2d5d5e63f23d1a70
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.6.0%2bdfsg%2b%7e3.5.13.orig-types-jquery.tar.xz' node-jquery_3.6.0+dfsg+~3.5.13.orig-types-jquery.tar.xz 84372 SHA512:4abd8cc14201ec607cc7af01147944ea18c8b125e01efa34d4ca817ed0232b2eaf6a8edb8a1a511e4d8c447d75bb566dad005391cfdc963b903143906e42388c
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.6.0%2bdfsg%2b%7e3.5.13.orig.tar.xz' node-jquery_3.6.0+dfsg+~3.5.13.orig.tar.xz 296988 SHA512:9ae8e2e726d88915de2e33530e60af4e33a9a48e9bc584fd490d8898af8260c13ba058d28375163fcbd46b96caa3e1f9bca8e4404c5b70166daed3afd440afc7
'http://archive.ubuntu.com/ubuntu/pool/main/n/node-jquery/node-jquery_3.6.0%2bdfsg%2b%7e3.5.13-1.debian.tar.xz' node-jquery_3.6.0+dfsg+~3.5.13-1.debian.tar.xz 6328 SHA512:48c5c5c31f6dbf6e20d3ac0b1c7d7ff2e63a2396d7288806b1c698261e7173219173ec410d34883c63ec17fe48c71872633bb6f9d50cf408a0cbaf3d8a5d54db
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

### `dpkg` source package: `numpy=1:1.21.5-1ubuntu22.04.1`

Binary Packages:

- `python3-numpy=1:1.21.5-1ubuntu22.04.1`

Licenses: (parsed from: `/usr/share/doc/python3-numpy/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `MIT`
- `Public-Domain`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris numpy=1:1.21.5-1ubuntu22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_1.21.5.orig.tar.xz' numpy_1.21.5.orig.tar.xz 6601692 SHA256:fc46212f9f0e6970b4e67ffaaa2fab24fdeecb9ef217d1e29860e0fb5c82505b
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_1.21.5-1ubuntu22.04.1.debian.tar.xz' numpy_1.21.5-1ubuntu22.04.1.debian.tar.xz 36252 SHA256:711eac3605b37a80ac8978eee05243cdeec7fc9e83967c6cc0e45c3aab57134e
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_1.21.5-1ubuntu22.04.1.dsc' numpy_1.21.5-1ubuntu22.04.1.dsc 2885 SHA256:66edfd0d4850da4f9c39f0a01fa4db5c2d1ab6f3332db5bcf756ad52ccc50999
```

### `dpkg` source package: `openldap=2.5.20+dfsg-0ubuntu0.22.04.1`

Binary Packages:

- `libldap-2.5-0:amd64=2.5.20+dfsg-0ubuntu0.22.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.5.20+dfsg-0ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.20%2bdfsg.orig.tar.gz' openldap_2.5.20+dfsg.orig.tar.gz 5626931 SHA256:97d81c83e9d6278aee5a923cf8cd56d5b6447d1295c4f1ef7b28c43b95740525
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.20%2bdfsg-0ubuntu0.22.04.1.debian.tar.xz' openldap_2.5.20+dfsg-0ubuntu0.22.04.1.debian.tar.xz 178364 SHA256:0b4bcc1c310064bc60c7521d9097ff0dcb80156a72aab4010c6437ee9600c57d
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.5.20%2bdfsg-0ubuntu0.22.04.1.dsc' openldap_2.5.20+dfsg-0ubuntu0.22.04.1.dsc 3473 SHA256:e9eaccd861fbbe1671f408deddf02f4658ac5c98cd04a755fcd41f9860609da0
```

### `dpkg` source package: `openssl=3.0.2-0ubuntu1.25`

Binary Packages:

- `libssl-dev:amd64=3.0.2-0ubuntu1.25`
- `libssl3:amd64=3.0.2-0ubuntu1.25`
- `openssl=3.0.2-0ubuntu1.25`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl3/copyright`, `/usr/share/doc/openssl/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `orocos-kdl=1.5.1-2build1`

Binary Packages:

- `liborocos-kdl-dev:amd64=1.5.1-2build1`
- `liborocos-kdl1.5:amd64=1.5.1-2build1`
- `python3-pykdl:amd64=1.5.1-2build1`

Licenses: (parsed from: `/usr/share/doc/liborocos-kdl-dev/copyright`, `/usr/share/doc/liborocos-kdl1.5/copyright`, `/usr/share/doc/python3-pykdl/copyright`)

- `BSD-2-clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris orocos-kdl=1.5.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.1-2build1.dsc' orocos-kdl_1.5.1-2build1.dsc 2376 SHA512:652d3fab7492dee6097670a1c838232cee25f3be24ec68b2f881207e832f1d55e44b3a6a7a062575650e84fc6569f197c148955d1109fe65c4f0b1bb42c2009d
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.1.orig.tar.gz' orocos-kdl_1.5.1.orig.tar.gz 251074 SHA512:9774b76b755ea81168390643813789783f60d0b1cdb46cd250e3e0d27f75a6cf2fd3bfd2081c04e30a14ff4fc70d0080c9b43b82ee181c2dda82f23f052b338d
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.1-2build1.debian.tar.xz' orocos-kdl_1.5.1-2build1.debian.tar.xz 7396 SHA512:e3dbca01ce695dad5bbc512a9236c2eb398d36f7c92a58bfaf864e475cab6762b824d6d3e02a669854decdbce29de46b2c318801f415269dc225562d332a4c3f
```

### `dpkg` source package: `p11-kit=0.24.0-6build1`

Binary Packages:

- `libp11-kit0:amd64=0.24.0-6build1`

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
$ apt-get source -qq --print-uris p11-kit=0.24.0-6build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0-6build1.dsc' p11-kit_0.24.0-6build1.dsc 2633 SHA512:510edf53bc83deef34737f3607995e814695930eacb2257013262023d0c21c3180ac782595bbdc530ea89e8dba567d2f44748a9c6713befb3a3e98245896f179
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0.orig.tar.xz' p11-kit_0.24.0.orig.tar.xz 834392 SHA512:48369d6fdae79b8c5a255c821fbdb982f0c649cce07c0d92f0ff0c16322fea8919faa94067cae2efede2da3646c0e69a71a3e399b769dc2327f247bcb113eb3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0.orig.tar.xz.asc' p11-kit_0.24.0.orig.tar.xz.asc 833 SHA512:f802c6f42f437d466b008d0c62aedc2f466bcf5bec93a5fbeec183057d22eacd28184198f624972d9df684a663820e77ebdc8d8c0d14533707691b9d69cb9f69
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.24.0-6build1.debian.tar.xz' p11-kit_0.24.0-6build1.debian.tar.xz 23264 SHA512:a858251688a0655411907d5ac2d122efab057c7bc28dcb3970c68412ca699b00234b74373cbd44472e21cd3f43eab239ddd8411f188e4c214c587052bebedd4c
```

### `dpkg` source package: `pam=1.4.0-11ubuntu2.6`

Binary Packages:

- `libpam-modules:amd64=1.4.0-11ubuntu2.6`
- `libpam-modules-bin=1.4.0-11ubuntu2.6`
- `libpam-runtime=1.4.0-11ubuntu2.6`
- `libpam0g:amd64=1.4.0-11ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pango1.0=1.50.6+ds-2ubuntu1`

Binary Packages:

- `libpango-1.0-0:amd64=1.50.6+ds-2ubuntu1`
- `libpangocairo-1.0-0:amd64=1.50.6+ds-2ubuntu1`
- `libpangoft2-1.0-0:amd64=1.50.6+ds-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Apache-2`
- `Apache-2.0`
- `Bitstream-Vera`
- `CC-BY-SA-3.0`
- `CC-BY-SA-3.0,`
- `CC0-1.0`
- `CC0-1.0,`
- `Chromium-BSD-style`
- `Example`
- `Expat`
- `GPL-2+`
- `GPL-2+,`
- `GPL-2.0`
- `GPL-3.0`
- `GPL-3.0+`
- `GPL-3.0+,`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2+,`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `OFL-1.1`
- `TCL`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.50.6+ds-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.50.6%2bds.orig.tar.xz' pango1.0_1.50.6+ds.orig.tar.xz 2673480 SHA256:70f0323d6270ee12e8ae14a2959b7227088e3146801d09309558bebb1f2f9df7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.50.6%2bds-2ubuntu1.debian.tar.xz' pango1.0_1.50.6+ds-2ubuntu1.debian.tar.xz 51196 SHA256:b16ad51d8b0837303fc57db029fbda8dc5d12e2fd03a1fedb647ce253a87b1f1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.50.6%2bds-2ubuntu1.dsc' pango1.0_1.50.6+ds-2ubuntu1.dsc 3878 SHA256:c757b318c7862a162830c765eb2f26ca31837ad08aa752cc2736aa05c9f4fca2
```

### `dpkg` source package: `patch=2.7.6-7build2`

Binary Packages:

- `patch=2.7.6-7build2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-7build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-7build2.dsc' patch_2.7.6-7build2.dsc 1838 SHA512:35ea8fc554a359197cc5ca13dcc3926499563e73e03d8e316d1433d01bc8066e0a138cdab0548d40ec73ee08fe719166c1959793219e798817d69afc94be7665
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA512:fcca87bdb67a88685a8a25597f9e015f5e60197b9a269fa350ae35a7991ed8da553939b4bbc7f7d3cfd863c67142af403b04165633acbce4339056a905e87fbd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-7build2.debian.tar.xz' patch_2.7.6-7build2.debian.tar.xz 15248 SHA512:fb482b8f4980bca77a7060aa54cbae01aec9536a72b1e009e9a0cb8f9a35979bf14dcd356b93a2227f18248e81a7e53aac09b7b0d4bd39021681826a9b3ba38f
```

### `dpkg` source package: `pcre2=10.39-3ubuntu0.1`

Binary Packages:

- `libpcre2-8-0:amd64=10.39-3ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.39-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39.orig.tar.gz' pcre2_10.39.orig.tar.gz 2309964 SHA512:fe17ea0191a91d4e4fe88a44a07883db594941376a6e38556e03ff3b594820596fd3e43be2d73b700ca68cd0c44e38c33cc891a57b8ed65e34cd832196bc09b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39-3ubuntu0.1.diff.gz' pcre2_10.39-3ubuntu0.1.diff.gz 11214 SHA512:7b8848adbd237351d14e68cf13d26fe0330718d2e807c69b091d2eefdd4c5f4ebde9e3b403d898b52ffcff674eb6bd0ff6995190c1fc42668e4bf8173ded7f14
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.39-3ubuntu0.1.dsc' pcre2_10.39-3ubuntu0.1.dsc 2142 SHA512:8f062a4ba129491e0ec755f945b84e6e6d252e4d87b87ae0dc46156320095557093f7c3305a31cbca9252a2cbc172d701606030ebdae147eef3fbd5616b4ed99
```

### `dpkg` source package: `pcre3=2:8.39-13ubuntu0.22.04.1`

Binary Packages:

- `libpcre3:amd64=2:8.39-13ubuntu0.22.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-13ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-13ubuntu0.22.04.1.debian.tar.gz' pcre3_8.39-13ubuntu0.22.04.1.debian.tar.gz 28251 SHA256:b6542e9adae20f212637f133e892c1d6874d9a21af928ed4cbd94fb77133916e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-13ubuntu0.22.04.1.dsc' pcre3_8.39-13ubuntu0.22.04.1.dsc 2101 SHA256:f9c1a08a5856eee3644a4f5bbffe62ff04d21940ebd7798e7b15f48463571867
```

### `dpkg` source package: `perl=5.34.0-3ubuntu1.7`

Binary Packages:

- `libperl5.34:amd64=5.34.0-3ubuntu1.7`
- `perl=5.34.0-3ubuntu1.7`
- `perl-base=5.34.0-3ubuntu1.7`
- `perl-modules-5.34=5.34.0-3ubuntu1.7`

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
$ apt-get source -qq --print-uris perl=5.34.0-3ubuntu1.7
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig-regen-configure.tar.xz' perl_5.34.0.orig-regen-configure.tar.xz 415412 SHA512:2581152e0747105314c4fa4167f1f97d286436b996341b9b75e4099ba18f15eb0d2b42888622fbe9b5499d3fe304bc8aa9ad207a945f590135beccfb68ea28b0
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0.orig.tar.xz' perl_5.34.0.orig.tar.xz 12881416 SHA512:691b4b31eacec357191fba777612b4e3eae59e946a22998a50766697c0d61db1d42a9b3bc1e41abf0d1ca1893e4a7c06d7bf3290480cf03d7f79befd7a8a3267
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-3ubuntu1.7.debian.tar.xz' perl_5.34.0-3ubuntu1.7.debian.tar.xz 202360 SHA512:113a4ac142c5d29a98aac9403e1641a27e06ab6c0472dc6d1063a5b4d643739def16bdef2b441f5d657cf54fe1c82f916034d2d75dc30849839e453540870b6c
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.34.0-3ubuntu1.7.dsc' perl_5.34.0-3ubuntu1.7.dsc 2846 SHA512:b519fc33f507a36e2ba06df6a7df4ffb28f26d8f3977b88b8dd958ac5fd9333c94fa15acfa887f73365b27abbc32caf8b2e337ec48285ac019fd575bab8b2664
```

### `dpkg` source package: `pinentry=1.1.1-1build2`

Binary Packages:

- `pinentry-curses=1.1.1-1build2`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.1-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.1-1build2.dsc' pinentry_1.1.1-1build2.dsc 2953 SHA512:d66ea2b52226887f18bab9f7ebfa65f5da95225c57362ec3be1792c261a60d7c74bb0b60d82e556f977246ef615add3d89e7137a16d73248a044e0ea752246ca
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.1.orig.tar.bz2' pinentry_1.1.1.orig.tar.bz2 515723 SHA512:d6ab5af8ac2f3c9c05e09703e95d8e2676f9b2b7ceb97f6a31d101d0e9da7a1e106a6d3eabe86cab1bb35a4b119a7cba1380ac64bf13c61af0b3c48803116c12
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.1.orig.tar.bz2.asc' pinentry_1.1.1.orig.tar.bz2.asc 390 SHA512:2b696e5a59219c6fca719d5f948d508279c483d1d2b2c99221522648fe3098da4a195aca2527fbb5b777fa2905dbda642edb5f6ac4038ed9720a5291ce282cff
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.1-1build2.debian.tar.xz' pinentry_1.1.1-1build2.debian.tar.xz 20060 SHA512:34adaf10856d36e7294fbc9841f6c1b2c9fc1d507fcff6d4c9c3f4e11d5aed9ce744d091f25e013084d56ce8ed3245fff67a7b5d799081def0c68345e921241e
```

### `dpkg` source package: `pixman=0.40.0-1ubuntu0.22.04.1`

Binary Packages:

- `libpixman-1-0:amd64=0.40.0-1ubuntu0.22.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.40.0-1ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.40.0.orig.tar.gz' pixman_0.40.0.orig.tar.gz 913976 SHA512:063776e132f5d59a6d3f94497da41d6fc1c7dca0d269149c78247f0e0d7f520a25208d908cf5e421d1564889a91da44267b12d61c0bd7934cd54261729a7de5f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.40.0-1ubuntu0.22.04.1.diff.gz' pixman_0.40.0-1ubuntu0.22.04.1.diff.gz 327740 SHA512:68949ad2589a7ae9fbe217a3d7fc58894d5a1b4bc6e219840b8620141fa2240b44e6a393bf847bfd18f5fcab2c6c6f143273936b076c29e1f979052b1275cb8e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.40.0-1ubuntu0.22.04.1.dsc' pixman_0.40.0-1ubuntu0.22.04.1.dsc 2160 SHA512:8065633dbf5f1d29da28dc2b97cdd6cb3f01a2904ecac623a8dc7d4fec0c1b15fe973edcc9d3ccc69362ce8da209325c6b522da021bf51b3a27fb10ce280b095
```

### `dpkg` source package: `pkg-config=0.29.2-1ubuntu3`

Binary Packages:

- `pkg-config=0.29.2-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.2-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.2-1ubuntu3.dsc' pkg-config_0.29.2-1ubuntu3.dsc 1910 SHA512:ebeb396389e63ec008928941d0b9b71c55e04c96dccfa799fcbc1eaf0f14003a71c96dd8a54c6e8dca9aa0072c329c1af76d1fed385e11e6c380649c2bf968a3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.2.orig.tar.gz' pkg-config_0.29.2.orig.tar.gz 2016830 SHA512:4861ec6428fead416f5cbbbb0bbad10b9152967e481d4b0ff2eb396a9f297f552984c9bb72f6864a37dcd8fca1d9ccceda3ef18d8f121938dbe4fdf2b870fe75
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.2-1ubuntu3.diff.gz' pkg-config_0.29.2-1ubuntu3.diff.gz 10134 SHA512:881ecd107c06f14b6e42a1c3e85a1233f9c92b0666dc5ad1a5fac21d4a64423dcff40c67bdff88311babde5465be82bd5eea8d863bce088468fdff828d8b98ab
```

### `dpkg` source package: `procps=2:3.3.17-6ubuntu2.1`

Binary Packages:

- `libprocps8:amd64=2:3.3.17-6ubuntu2.1`
- `procps=2:3.3.17-6ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libprocps8/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.17-6ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17.orig.tar.xz' procps_3.3.17.orig.tar.xz 1008428 SHA256:4518b3e7aafd34ec07d0063d250fd474999b20b200218c3ae56f5d2113f141b4
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-6ubuntu2.1.debian.tar.xz' procps_3.3.17-6ubuntu2.1.debian.tar.xz 35488 SHA256:7ecb85faef890f1f56c4e6d2eb73988b02283b32e6367a24cd006b91dfdb7979
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.17-6ubuntu2.1.dsc' procps_3.3.17-6ubuntu2.1.dsc 2111 SHA256:2160554b394a265e1be8fe668ea15955ccbb89c5ccf8f53ea2b3f38abb3e2d93
```

### `dpkg` source package: `pybind11=2.9.1-2`

Binary Packages:

- `pybind11-dev=2.9.1-2`

Licenses: (parsed from: `/usr/share/doc/pybind11-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `BSD-3-Clause+CLA`

Source:

```console
$ apt-get source -qq --print-uris pybind11=2.9.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pybind11/pybind11_2.9.1-2.dsc' pybind11_2.9.1-2.dsc 2629 SHA512:9ac1c494a2046ec8afe8c45dcc7a552c1ebce89282be35d09686b56074b9ab319b434f4f7f1aa795dfe57aae6ab88b3ce1466baa15b28ec2e6221392345b0f10
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pybind11/pybind11_2.9.1.orig.tar.gz' pybind11_2.9.1.orig.tar.gz 703882 SHA512:1f268cc6df1f572658bfc3e60f7f010bec9b9444d6a6d6c95f7b26f7b4b7dd42846e65ae5a611c01c0341335fdfa84b01272b5c1b2cc11a418f64fecabfa0588
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pybind11/pybind11_2.9.1-2.debian.tar.xz' pybind11_2.9.1-2.debian.tar.xz 68800 SHA512:30c476c04a5f5c06303530c9798491ebd878983bd8b6dbd7436c435eeb69a00072090fa6b79683016f797b618edf2c700d0ab182503b12a3d7c0943fd58305bb
```

### `dpkg` source package: `pycodestyle=2.8.0-2`

Binary Packages:

- `python3-pycodestyle=2.8.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-pycodestyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pycodestyle=2.8.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.8.0-2.dsc' pycodestyle_2.8.0-2.dsc 2107 SHA512:a3695577354afe0608d53182cee03d04af0957be6803f655abd6f737bfaf9e84688544f55391ca92596f62838895656e1d4185e4a49066ff2e5252310bb72171
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.8.0.orig.tar.gz' pycodestyle_2.8.0.orig.tar.gz 102299 SHA512:0098be44451bc173507e2b396aaf342ccf7f25a6a1f5d5c1f802079a76a66e6bedf9f358b5e07b27bee66e3b279c72a6b72f63e5984f58ae83b7fc5806880fc1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.8.0-2.debian.tar.xz' pycodestyle_2.8.0-2.debian.tar.xz 4396 SHA512:e4b90d970bb414c648a75b491b4cbd7768484bcaea2226f66cae2fad15409533cb74118e71807c4cb9ca57fcad4328153cb91215ee92e6e14cfff797e03b7e27
```

### `dpkg` source package: `pydocstyle=6.1.1-1`

Binary Packages:

- `pydocstyle=6.1.1-1`
- `python3-pydocstyle=6.1.1-1`

Licenses: (parsed from: `/usr/share/doc/pydocstyle/copyright`, `/usr/share/doc/python3-pydocstyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pydocstyle=6.1.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.1.1-1.dsc' pydocstyle_6.1.1-1.dsc 2218 SHA512:591881af9df84bdfe71c2743ad87b810eb08007f652a518557413afd6ab78c51e31341660093a856a3f297e575197dfc099cc1d33efbd377f7e846b9ec6fc3d1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.1.1.orig.tar.gz' pydocstyle_6.1.1.orig.tar.gz 73982 SHA512:ce4932a6601c80d05a46600f5af7df54798025a5f3dc41ab8cf1bc0d63e7f78b70cccb17dc99ddab25eda9abd639f91468fca1b1ceb4539708350212e481a156
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.1.1-1.debian.tar.xz' pydocstyle_6.1.1-1.debian.tar.xz 4364 SHA512:0b1e373513a34ece07e6a5e9a48c0ce6b6f780af6da4968361ae7f51bf864b7e7f9de955cebb1433e1409cb1025936fcc4ffff160c900558bb1a9ef61a1941fc
```

### `dpkg` source package: `pyflakes=2.4.0-2`

Binary Packages:

- `python3-pyflakes=2.4.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-pyflakes/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris pyflakes=2.4.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_2.4.0-2.dsc' pyflakes_2.4.0-2.dsc 2121 SHA512:8dcf8aafca83b10ad3efbd5b4d057e66057641b5640960ffa3cb632b8954830d297abe7f4587e2a6853de283c5a90412589d0003f219549d01650eee2abffd31
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_2.4.0.orig.tar.gz' pyflakes_2.4.0.orig.tar.gz 69101 SHA512:f4c6512eb811511c897623f52c4f88e50275a3292582d7dd34462e90e39fecce939818cb92e750eebdd66eab25b91c23540104fc4530c42621d7cfeb1d33c577
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_2.4.0-2.debian.tar.xz' pyflakes_2.4.0-2.debian.tar.xz 7748 SHA512:f692ff23a68f9e5389c1df6ed8f628159fbc7fbdd375c4ed48291271ab524a6c4d6dd2c20e0291fb81fb0cb99f63ab4f5c798cc9c6133b236e97de339e5224c6
```

### `dpkg` source package: `pygments=2.11.2+dfsg-2ubuntu0.1`

Binary Packages:

- `python3-pygments=2.11.2+dfsg-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/python3-pygments/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `ISO-1986`

Source:

```console
$ apt-get source -qq --print-uris pygments=2.11.2+dfsg-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.11.2%2bdfsg.orig.tar.gz' pygments_2.11.2+dfsg.orig.tar.gz 1380213 SHA256:625d9097060b3efc7f47261d889c1af52f74ffb4f8fb20a63e7549d2f9c32d1b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.11.2%2bdfsg-2ubuntu0.1.debian.tar.xz' pygments_2.11.2+dfsg-2ubuntu0.1.debian.tar.xz 9768 SHA256:c3b775dcebf019eeae8ed744bcc8835085ac3d53d763fda0fa5422176dc62f93
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.11.2%2bdfsg-2ubuntu0.1.dsc' pygments_2.11.2+dfsg-2ubuntu0.1.dsc 2493 SHA256:a515bfba5b135980ac16d60ff8eab83506692423b0b430f3aac5faca095c6a1f
```

### `dpkg` source package: `pyparsing=2.4.7-1`

Binary Packages:

- `python3-pyparsing=2.4.7-1`

Licenses: (parsed from: `/usr/share/doc/python3-pyparsing/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-3`
- `ellis-and-grant`
- `salvolainen`

Source:

```console
$ apt-get source -qq --print-uris pyparsing=2.4.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.4.7-1.dsc' pyparsing_2.4.7-1.dsc 2340 SHA512:6d06384fcf48257fafbaa9681faee68ba044f117fd86f2ad6c57ef8fa7186066376c5b25fc525f057cdd8fa2830289f77780c9a8f9647164596cd490b3c8014e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.4.7.orig.tar.gz' pyparsing_2.4.7.orig.tar.gz 649718 SHA512:0b9f8f18907f65cb3af1b48ed57989e183f28d71646f2b2f820e772476f596ca15ee1a689f3042f18458206457f4683d10daa6e73dfd3ae82d5e4405882f9dd2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.4.7-1.debian.tar.xz' pyparsing_2.4.7-1.debian.tar.xz 7764 SHA512:185911863111ba7c956fb1e7229046ae1516554bc253f342f070afe82c20cfd4c3e098d233c7b341f6518875e47ddcf76ded2528534a959574beebcdf531b846
```

### `dpkg` source package: `pytest=6.2.5-1ubuntu2`

Binary Packages:

- `python3-pytest=6.2.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/python3-pytest/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pytest=6.2.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_6.2.5-1ubuntu2.dsc' pytest_6.2.5-1ubuntu2.dsc 2936 SHA512:4f30f7c8f53c6d899e802992a9f248c42d4eb250509425ef40b9e2d2cbeeda5a1cc59a03be364befa2d489a2faab31cceb10b4020576d7107579bcba2e3bef5d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_6.2.5.orig.tar.xz' pytest_6.2.5.orig.tar.xz 883896 SHA512:2f7dd16cdb0e836fb06fd70b827b9616450e0ce3056b4b6deb3e5b6e1d38b99c03e87981ecb352de452c578a17d895e1df5f52c26c719952003ff3d8e1fa8308
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_6.2.5-1ubuntu2.debian.tar.xz' pytest_6.2.5-1ubuntu2.debian.tar.xz 11340 SHA512:ca468310e87ca57fddfe9199e54af29f695590e13ed259e2c04c9bc79bab173eec3e0d322962a937a119532f39d697f3a8f39954282ec8775070c0bed4c52685
```

### `dpkg` source package: `python-argcomplete=1.8.1-1.5`

Binary Packages:

- `python3-argcomplete=1.8.1-1.5`

Licenses: (parsed from: `/usr/share/doc/python3-argcomplete/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-argcomplete=1.8.1-1.5
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_1.8.1-1.5.dsc' python-argcomplete_1.8.1-1.5.dsc 2052 SHA512:c2d58d5afee56c25e44593beb84ffec2cb86d9b4e55bd121e47719b9ef14702c782bdc33bec519f867713ca336efda0949ce66e1cb62d909b50fa6df988b742d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_1.8.1.orig.tar.gz' python-argcomplete_1.8.1.orig.tar.gz 53282 SHA512:836fc44a2252c626606378a410ddad8b21ac8c09d2049cadade7edc01fa13b1b92441b783cc1f356e4bc8bbe7640cd2ca262d4396d9f088ea2c28659124e51e9
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_1.8.1-1.5.debian.tar.xz' python-argcomplete_1.8.1-1.5.debian.tar.xz 7272 SHA512:59c1d2a32d3dd4c483e7455ee9dbe67ee9f65aa87a2c09c05582da32610f2d85942dfd9bb8aa0c1e47d8162b0699a1b5e3845d00e93ddf69308a6b8ba9739acb
```

### `dpkg` source package: `python-attrs=21.2.0-1ubuntu1`

Binary Packages:

- `python3-attr=21.2.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-attr/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-attrs=21.2.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-attrs/python-attrs_21.2.0.orig.tar.gz' python-attrs_21.2.0.orig.tar.gz 177524 SHA256:12cca0d697de845fd74b6b5482218988ee1415c27d3bb31503f66c2a3592b77c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-attrs/python-attrs_21.2.0-1ubuntu1.debian.tar.xz' python-attrs_21.2.0-1ubuntu1.debian.tar.xz 6960 SHA256:2e15a9622cbd245efd2d9bbb1c70419690828839d86491c451fdc48d6b8071e5
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-attrs/python-attrs_21.2.0-1ubuntu1.dsc' python-attrs_21.2.0-1ubuntu1.dsc 2497 SHA256:af3ea15e0094d463feb3882b9840e31580d4d56797135d37aa6fcf6bb9c17a18
```

### `dpkg` source package: `python-cffi=1.15.0-1build2`

Binary Packages:

- `python3-cffi-backend:amd64=1.15.0-1build2`

Licenses: (parsed from: `/usr/share/doc/python3-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=1.15.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.15.0-1build2.dsc' python-cffi_1.15.0-1build2.dsc 2511 SHA512:71db35ef88149d65f2fb4259a93479c0ab701de18a6ceece12398079794496e4a41cef6fca24cc8f1f854e7f6ab4d2b48218d5844ca01fe200738e3664157f19
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.15.0.orig.tar.gz' python-cffi_1.15.0.orig.tar.gz 484058 SHA512:ee83efde6f77f4a0c5889088c4c208ed7b9071fe06dfc16a8d2396de07f78fe859e1e39866760198a9d700f3b7359e8715e8a3e4907feb81d3fc4b8dd0dbaca1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.15.0-1build2.debian.tar.xz' python-cffi_1.15.0-1build2.debian.tar.xz 7228 SHA512:3b41fb0bc166cb1c278f7961c6959078012dee521ffe3c73f77a2f52c0c0a5e3114a2cdbd3e724cd8a5a88266bf527358b821ce7994bb5485659abb5d767406f
```

### `dpkg` source package: `python-cryptography=3.4.8-1ubuntu2.4`

Binary Packages:

- `python3-cryptography=3.4.8-1ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/python3-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=3.4.8-1ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_3.4.8.orig.tar.gz' python-cryptography_3.4.8.orig.tar.gz 546907 SHA256:94cc5ed4ceaefcbe5bf38c8fba6a21fc1d365bb8fb826ea1688e3370b2e24a1c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_3.4.8-1ubuntu2.4.debian.tar.xz' python-cryptography_3.4.8-1ubuntu2.4.debian.tar.xz 27928 SHA256:f1dd88d357a4f8ba2538a5ff398c8b111bfcad39cb9db0f62ab62ece81dfd15a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_3.4.8-1ubuntu2.4.dsc' python-cryptography_3.4.8-1ubuntu2.4.dsc 3124 SHA256:babe1c02e925554f43895bc00437f905cd68d0b8d724c4f277b30d6a2eb3a7de
```

### `dpkg` source package: `python-dateutil=2.8.1-6`

Binary Packages:

- `python3-dateutil=2.8.1-6`

Licenses: (parsed from: `/usr/share/doc/python3-dateutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.8.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.8.1-6.dsc' python-dateutil_2.8.1-6.dsc 2129 SHA512:defe085f213b14dcb2b1bf568b092cf539fad2690f4ad1895d153c8011a4c8744f25a8710b2eea2aa9de7516f0eda06e2aade979f1c489a5bd936bdf220a0d63
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.8.1.orig.tar.gz' python-dateutil_2.8.1.orig.tar.gz 331745 SHA512:337000216e0f8ce32d6363768444144183ab9268f69082f20858f2b3322b1c449e53b2f2b5dcb3645be22294659ce7838f74ace2fd7a7c4f2adc6cf806a9fa2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.8.1-6.debian.tar.xz' python-dateutil_2.8.1-6.debian.tar.xz 11508 SHA512:f376c089d6f43f21d4cf602e251ba4537a23fb995d47b200b00158ff4c2396230fc36983e8bde1a2c5af97c1f69e769252467273a6552506832ccfcac80ffb55
```

### `dpkg` source package: `python-distro=1.7.0-1`

Binary Packages:

- `python3-distro=1.7.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-distro/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-distro=1.7.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.7.0-1.dsc' python-distro_1.7.0-1.dsc 1550 SHA512:f6e8f584ac293cdb64eddd7f05588ed2a912afd0f6bd1694268c68075a71e34e277fd649bd704df40b8249b0ad6f73d9ca3a837a3eb5ab73660e2e9b536f1879
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.7.0.orig.tar.gz' python-distro_1.7.0.orig.tar.gz 52250 SHA512:6d2e2640b5233f9503adec1290d61cfe58a75faba75b42c71c219c73cf32d7a071018543721894d2565219d3d41b616300469bac8d6d4c5a91db89120343d32e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.7.0-1.debian.tar.xz' python-distro_1.7.0-1.debian.tar.xz 3372 SHA512:5b3ad1f6d204bf3da55a10eadbb447c5fc54f50b9cfec9dd2d9b54b8c1fc24b201141e09e717ccb084f63441f44aa121f0846535565df2aebea6505164a844a5
```

### `dpkg` source package: `python-docutils=0.17.1+dfsg-2`

Binary Packages:

- `docutils-common=0.17.1+dfsg-2`
- `python3-docutils=0.17.1+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python3-docutils/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Python-2.1.1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-docutils=0.17.1+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.17.1%2bdfsg-2.dsc' python-docutils_0.17.1+dfsg-2.dsc 2399 SHA512:ed63823b3b46e5c374bbc5044a5760ce53dffeadec65ef8a99fc72030d85ba186744acc7a70cc2cac3ba1159f3826d67e9a8747016f994011c79ac9639b80d1a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.17.1%2bdfsg.orig.tar.xz' python-docutils_0.17.1+dfsg.orig.tar.xz 1504140 SHA512:90a3af02e6cd11edf07f3fe5dae06042138bf80b54bd88b22b866fa69e0ed6b3babc6bc9ba30bf2452d09fd155720c2c9ceb3e2cfe42e0a1cf10637ba09404ea
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.17.1%2bdfsg-2.debian.tar.xz' python-docutils_0.17.1+dfsg-2.debian.tar.xz 30924 SHA512:eaf37bc33b90bbd34c5e6a54ac0360442e5c3bb356f5b9546aa4bcfc6514740610674eb9d9b470b4c48e330e2d3380047b6979813f5a337974ae0b564d892253
```

### `dpkg` source package: `python-flake8=4.0.1-2`

Binary Packages:

- `python3-flake8=4.0.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-flake8/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-flake8=4.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_4.0.1-2.dsc' python-flake8_4.0.1-2.dsc 2378 SHA512:416654abcabe42dcc00824f0461c355c122f5a3af0afe7aabd4e32c6d54be623d9582ef10f65c4733127577033b25d9f9dea8cb171899d8360562aabb575c6de
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_4.0.1.orig.tar.gz' python-flake8_4.0.1.orig.tar.gz 154905 SHA512:0bdbf0218ce893df1c3e61f51cd3f371a5c72bb49ef78fec39548b1684e49b024e91cf4e3dcea60ba1efc08727985ef485814c372461e062ff4f810da99a1796
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_4.0.1-2.debian.tar.xz' python-flake8_4.0.1-2.debian.tar.xz 8452 SHA512:b6f5e0cf36138d2a74b626d8e1ed852b3f2ed9ff86654cf8a1d9f19cb103124a03ee4c39f5b0c7441c5ad52021baf6281adab61eeed0d0844711bc4c0f8d8f16
```

### `dpkg` source package: `python-importlib-metadata=4.6.4-1`

Binary Packages:

- `python3-importlib-metadata=4.6.4-1`

Licenses: (parsed from: `/usr/share/doc/python3-importlib-metadata/copyright`)

- `Apache-2`
- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-importlib-metadata=4.6.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-importlib-metadata/python-importlib-metadata_4.6.4-1.dsc' python-importlib-metadata_4.6.4-1.dsc 1778 SHA512:9e1bb973de96943416f751a15492daf43b47e684088431b4c0b2a1cdc6818c2e84bb5fdffc1104cda15d86fcf7ff4ccbe023b1609a488ec2abaf2e6ebddb6932
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-importlib-metadata/python-importlib-metadata_4.6.4.orig.tar.gz' python-importlib-metadata_4.6.4.orig.tar.gz 39881 SHA512:20aad4adbea8bc417a77cd67a6e22e690e95913ee34822d79e4bb0472f396ece2137ab4cabc455a8154251fe563ed7f56a68bdb7b08a91c8a32f735608cb4a7c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-importlib-metadata/python-importlib-metadata_4.6.4-1.debian.tar.xz' python-importlib-metadata_4.6.4-1.debian.tar.xz 3416 SHA512:39187276acd366bd3654ac41f2394dcf26580b81458e1b9d78b71f93df5c8eedc73c0c2eb21344889a900910b4849e5c8c0ffbf199c2be6d98ad74b3c76b5e92
```

### `dpkg` source package: `python-iniconfig=1.1.1-2`

Binary Packages:

- `python3-iniconfig=1.1.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-iniconfig/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-iniconfig=1.1.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_1.1.1-2.dsc' python-iniconfig_1.1.1-2.dsc 2253 SHA512:68c900ffff6c33973185fa17b45dbd0d0f5f1644d502db3616641fbeb5090e67d48504cfba79e55b2a8dccac7cb3769ad921d8fbfc2a9db4703db986ac9da958
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_1.1.1.orig.tar.gz' python-iniconfig_1.1.1.orig.tar.gz 7509 SHA512:3e86490e424adefcc36b498ed0e6c6a6d4c6a2804a95b99163cef456f303b1913e9afe34035039cf0f2e96f7624719dc85e4ab3917ccd59278b22894a00dbf26
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_1.1.1-2.debian.tar.xz' python-iniconfig_1.1.1-2.debian.tar.xz 2732 SHA512:8b05095285abb1786e8f348b43334066d76b57761b2e186962750a9d652b4885088027d1d7e5b2eaa6e0a444f19a928d3d5b5aab4eeee809751294e3e549c09c
```

### `dpkg` source package: `python-lark=1.1.1-1`

Binary Packages:

- `python3-lark=1.1.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-lark/copyright`)

- `GPL-2`
- `GPL-2+-with-bootloader-exception`
- `MIT`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-lark=1.1.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.1.1-1.dsc' python-lark_1.1.1-1.dsc 2405 SHA512:08e0c24df1ecd551e089a92d1c838ae6fe3019b8094e70c1990c7771e7b3b633a0d4a2a974f6b4e89d59125d1581b0cb31d162b7a9b87dfb6a9b7e6431fc6538
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.1.1.orig.tar.gz' python-lark_1.1.1.orig.tar.gz 405270 SHA512:8ce5f1fe97aff09f4f52c90d955b49157fc73e003f5ba0c7c9d9eae6317148fd4d4cd9eb03866e268e33a4d8a5e1dec5e4afe6ad229276ef55094c3938fb2d87
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.1.1-1.debian.tar.xz' python-lark_1.1.1-1.debian.tar.xz 5516 SHA512:ab73a3945850d2602bdccedda2ba71e394e849ee6f7cdd198dfe1e3450a5224b01fce47b1f30b37819b1c73056da63a152d2ced78bf11d3324743468fab0f219
```

### `dpkg` source package: `python-mccabe=0.6.1-3`

Binary Packages:

- `python3-mccabe=0.6.1-3`

Licenses: (parsed from: `/usr/share/doc/python3-mccabe/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-mccabe=0.6.1-3
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.6.1-3.dsc' python-mccabe_0.6.1-3.dsc 2110 SHA512:1c41ba971457f851f2657e83ad3f6b332536849924c2a979789513a89a1eef495d2c2d73271a25232d181e9e679377b0fde97a7fa94adb486e1666597242a100
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.6.1.orig.tar.gz' python-mccabe_0.6.1.orig.tar.gz 8612 SHA512:d8fc251a29790887c14c5932c5172b4cd578cd37ccf14cb96e80f0b97f27023427ea032d14e1e2a99d72627b055eb285f60db69e679ecd79d90a34b0255703d8
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.6.1-3.debian.tar.xz' python-mccabe_0.6.1-3.debian.tar.xz 2452 SHA512:7b4f629b36caf5567e6d6b649b7f0dae841a5c3132cafd4ceec69709640887579fdc5d51715ef7ed6f0c9bee22948938dc903b237dd31291619ce44a8bd2363b
```

### `dpkg` source package: `python-notify2=0.3-4`

Binary Packages:

- `python3-notify2=0.3-4`

Licenses: (parsed from: `/usr/share/doc/python3-notify2/copyright`)

- `BSD-3-Clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris python-notify2=0.3-4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3-4.dsc' python-notify2_0.3-4.dsc 2151 SHA512:a576cae8cb294f5b6a8a5f2977fec6004f468562818de3e9966173d71cae0e408455c340ef8abb23ef807748f44edbb8a643e681467047cea616d86af705c35c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.orig.tar.gz' python-notify2_0.3.orig.tar.gz 8798 SHA512:3290a5ff291d5500bcf631094fcf10302b234353eb8c26b91e7cd264238443866aadc15224d51eb6608e16b7ffbc9316d4bc551e5ad9de2a48b12a31b195739f
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3-4.debian.tar.xz' python-notify2_0.3-4.debian.tar.xz 3416 SHA512:4ce63399eb2c5e255e0d7eccb5244e9905bf921ead9b2bd23840466bb276aa496c3a903544047f6c0dfc9490fea4923cce186780fd4722d9aaa9e98071cbf815
```

### `dpkg` source package: `python-packaging=21.3-1`

Binary Packages:

- `python3-packaging=21.3-1`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=21.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_21.3-1.dsc' python-packaging_21.3-1.dsc 2034 SHA512:bca1befa4b8fd264e0ca0837bc92aa28fac3d2bded51cd83c63427c103f2a5c1add07b674be855195ddddc1f5ca83273701c612b76fcf75f620b0d6fee957923
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_21.3.orig.tar.gz' python-packaging_21.3.orig.tar.gz 84848 SHA512:2e3aa276a4229ac7dc0654d586799473ced9761a83aa4159660d37ae1a2a8f30e987248dd0e260e2834106b589f259a57ce9936eef0dcc3c430a99ac6b663e05
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_21.3-1.debian.tar.xz' python-packaging_21.3-1.debian.tar.xz 2868 SHA512:ec3a7fc0e3472721757ac4ddd59b1a1593c91a9d3471770a29a0dc842ea72af82f7cfb34c78bdfa4a1e04a5ba55721e062a18d6502efbd666e8719c73776ab14
```

### `dpkg` source package: `python-pluggy=0.13.0-7.1`

Binary Packages:

- `python3-pluggy=0.13.0-7.1`

Licenses: (parsed from: `/usr/share/doc/python3-pluggy/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-pluggy=0.13.0-7.1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_0.13.0-7.1.dsc' python-pluggy_0.13.0-7.1.dsc 1862 SHA512:cfb7467476eb73c4404c38ce3253d2e5d332c768e17cbc38e01bb64e736bf8a72c885b54355a9bc533d17a1d5ce5279c668d855d5c6fe974da951353c2427b36
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_0.13.0.orig.tar.gz' python-pluggy_0.13.0.orig.tar.gz 57726 SHA512:82cf7d8aa4a0e09f8ba5048cd7ce038f34ca1453fe0c5a7926a2113e64528d0861955f8544035b4ffd61f0227e3d30d8d4180a05bf80e0de4809546e990bd4c7
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_0.13.0-7.1.debian.tar.xz' python-pluggy_0.13.0-7.1.debian.tar.xz 3136 SHA512:650a8b78b1a12c4728bd8f77d2a59e8d3fa153562edd30e3602f1369416ab9778ed1ed6aa5591cf11a0c56c98f9eda29e7eb5b907afefb5c5027549d73a157dd
```

### `dpkg` source package: `python-psutil=5.9.0-1build1`

Binary Packages:

- `python3-psutil=5.9.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-psutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-psutil=5.9.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_5.9.0-1build1.dsc' python-psutil_5.9.0-1build1.dsc 2196 SHA512:f8b1f9231aeae762da5344fc4d1b2a57ccdd92e0ebd6c231468bbf79f80e15c0ce9832a05e5dfa510d9b986c03b1d343446f07c1f7117cd94f7a90e8f69f560d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_5.9.0.orig.tar.xz' python-psutil_5.9.0.orig.tar.xz 331792 SHA512:2d5ee8fd620175f05b2f3b1e8098d85ef1861c07a4ca59ac24c9cb2892c44b0ce008d3dd914e566435592255437b22cf22bbc60e9e67ca470ddb780e037ce7ac
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_5.9.0-1build1.debian.tar.xz' python-psutil_5.9.0-1build1.debian.tar.xz 6420 SHA512:ec22f855afa2bdd58ffffccd54a549e30332e4fee1f8713cc216bd04524a6a1756a8775bad1e08cd6dc2943b30fd43e8f9476c85e20673605b8c4d32b5c1ea16
```

### `dpkg` source package: `python-py=1.10.0-1`

Binary Packages:

- `python3-py=1.10.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-py/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-py=1.10.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-py/python-py_1.10.0-1.dsc' python-py_1.10.0-1.dsc 2086 SHA512:49fdc9d0fda37e0dff1dc707944d3c9f26d560ec4e8e28e391cd487fb426441258eb566400dd9db976386f6ac885a0425a4b8f1199c6a715c1db8114c0f6355d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-py/python-py_1.10.0.orig.tar.gz' python-py_1.10.0.orig.tar.gz 206984 SHA512:7a0eb964067bc01fa4f8ffe70b043abfd4619134fbee2935713e28382085d0b8972c319ed665a643b879b18ce662db8a9bd722937af7cf36c233214eea211dd1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-py/python-py_1.10.0-1.debian.tar.xz' python-py_1.10.0-1.debian.tar.xz 12440 SHA512:3c596bd4eff72e2aee33c5fea3f4709186cd0f7ec188a0e974a0d7cc7e3398d70299b93263ca64dcc35806c812e49ef0170272172b48359684d45de15c70ce32
```

### `dpkg` source package: `python-roman=3.3-1`

Binary Packages:

- `python3-roman=3.3-1`

Licenses: (parsed from: `/usr/share/doc/python3-roman/copyright`)

- `Python-2.1.1`
- `ZPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris python-roman=3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_3.3-1.dsc' python-roman_3.3-1.dsc 2100 SHA512:1d32743ab9a2408caf26a52b37263c7f6d7895f911ed2e8eefbc07cec275430aee3a17ea0dccb55ca39cdccb37fd2a312cec650ca9f5e5fdd4ce6aa8c74ff8f3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_3.3.orig.tar.gz' python-roman_3.3.orig.tar.gz 7174 SHA512:90aab322e4135f221f8278c61ee6ebf2c15f3e35c9eabea19af01c08b95fe01e32faf77da479f80897c7fea6d175dc004b4c72a3cf4105db9e9665c3a30d28ed
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_3.3-1.debian.tar.xz' python-roman_3.3-1.debian.tar.xz 6820 SHA512:346b0233f997b09df68a7cc13d0e00288ce69013eebff26e46ce0435f885ed2083e3ec99a2f2fb4bccc6d4749a8bd8ad1b8e9c75ce008e4e5773ff8722999463
```

### `dpkg` source package: `python-toml=0.10.2-1`

Binary Packages:

- `python3-toml=0.10.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-toml/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-toml=0.10.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-toml/python-toml_0.10.2-1.dsc' python-toml_0.10.2-1.dsc 2052 SHA512:fe84b90ad23375fbef4d5452b9cae81584f13f3e7743267c34093f79a2b9e2e30c43a4875e6d9cd4b44588d9802dde89b1cde661ce171aa389402f7f7e37aea3
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-toml/python-toml_0.10.2.orig.tar.gz' python-toml_0.10.2.orig.tar.gz 23325 SHA512:5c706a3ae336e6b29bdce9752b91c677f7610cbcc1af4169cc24779e248031406cd19ac367725b2aa7903e4b1db71fa59255238c0270b2c146fd5d7e12d9a5da
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-toml/python-toml_0.10.2-1.debian.tar.xz' python-toml_0.10.2-1.debian.tar.xz 2952 SHA512:61ac31ec1ae89325facbdc35e4252095171d30d656709174a0404b19c44481d850140e076a2c9fa8c30ad21c1245b47c26bd59f49a5e7fe2588a5691171df90b
```

### `dpkg` source package: `python-zipp=1.0.0-3ubuntu0.1`

Binary Packages:

- `python3-zipp=1.0.0-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/python3-zipp/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-zipp=1.0.0-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_1.0.0.orig.tar.gz' python-zipp_1.0.0.orig.tar.gz 10821 SHA256:d38fbe01bbf7a3593a32bc35a9c4453c32bc42b98c377f9bff7e9f8da157786c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_1.0.0-3ubuntu0.1.debian.tar.xz' python-zipp_1.0.0-3ubuntu0.1.debian.tar.xz 3884 SHA256:d169cfa3746eda53d2d16cd4ed7fb055f8dc187ca974c64e36bd754c0824a26c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_1.0.0-3ubuntu0.1.dsc' python-zipp_1.0.0-3ubuntu0.1.dsc 1619 SHA256:abb1b11d34a0aa1a0f933a661ff82c9e7e840a0b0130de6c8c69a41b68c9bdd6
```

### `dpkg` source package: `python3-catkin-pkg-modules=1.1.0-2`

Binary Packages:

- `python3-catkin-pkg-modules=1.1.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-argcomplete=0.3.3+upstream-1`

Binary Packages:

- `python3-colcon-argcomplete=0.3.3+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-bash=0.5.0-100`

Binary Packages:

- `python3-colcon-bash=0.5.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-cd=0.2.1-100`

Binary Packages:

- `python3-colcon-cd=0.2.1-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-cmake=0.2.30+upstream-1`

Binary Packages:

- `python3-colcon-cmake=0.2.30+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-common-extensions=0.3.0-100`

Binary Packages:

- `python3-colcon-common-extensions=0.3.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-core=0.21.0+upstream-1`

Binary Packages:

- `python3-colcon-core=0.21.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-defaults=0.2.9+upstream-1`

Binary Packages:

- `python3-colcon-defaults=0.2.9+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-devtools=0.3.0-100`

Binary Packages:

- `python3-colcon-devtools=0.3.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-library-path=0.2.1-100`

Binary Packages:

- `python3-colcon-library-path=0.2.1-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-metadata=0.2.5-100`

Binary Packages:

- `python3-colcon-metadata=0.2.5-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-mixin=0.2.3-100`

Binary Packages:

- `python3-colcon-mixin=0.2.3-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-notification=0.3.1+upstream-1`

Binary Packages:

- `python3-colcon-notification=0.3.1+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-output=0.2.14+upstream-1`

Binary Packages:

- `python3-colcon-output=0.2.14+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-package-information=0.4.1+upstream-1`

Binary Packages:

- `python3-colcon-package-information=0.4.1+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-package-selection=0.2.10-100`

Binary Packages:

- `python3-colcon-package-selection=0.2.10-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-parallel-executor=0.3.0-100`

Binary Packages:

- `python3-colcon-parallel-executor=0.3.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-pkg-config=0.1.0-100`

Binary Packages:

- `python3-colcon-pkg-config=0.1.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-powershell=0.5.0+upstream-1`

Binary Packages:

- `python3-colcon-powershell=0.5.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-python-setup-py=0.2.9-100`

Binary Packages:

- `python3-colcon-python-setup-py=0.2.9-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-recursive-crawl=0.2.3-100`

Binary Packages:

- `python3-colcon-recursive-crawl=0.2.3-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-ros=0.5.0+upstream-1`

Binary Packages:

- `python3-colcon-ros=0.5.0+upstream-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-test-result=0.3.8-100`

Binary Packages:

- `python3-colcon-test-result=0.3.8-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-colcon-zsh=0.5.0-100`

Binary Packages:

- `python3-colcon-zsh=0.5.0-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-defaults=3.10.6-1~22.04.1`

Binary Packages:

- `libpython3-dev:amd64=3.10.6-1~22.04.1`
- `libpython3-stdlib:amd64=3.10.6-1~22.04.1`
- `python3=3.10.6-1~22.04.1`
- `python3-dev=3.10.6-1~22.04.1`
- `python3-minimal=3.10.6-1~22.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.10.6-1~22.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1%7e22.04.1.tar.gz' python3-defaults_3.10.6-1~22.04.1.tar.gz 145962 SHA256:a714b0229377e15cd6997a73ca022b500e752085c03e0d9555088aa1aaab22b0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.10.6-1%7e22.04.1.dsc' python3-defaults_3.10.6-1~22.04.1.dsc 2951 SHA256:9b26b135cf3a801a4423b08033ea50959bcead72cc8da8dab350a8ada78d572f
```

### `dpkg` source package: `python3-rosdep-modules=0.26.0-1`

Binary Packages:

- `python3-rosdep-modules=0.26.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rosdep=0.26.0-1`

Binary Packages:

- `python3-rosdep=0.26.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rosdistro-modules=1.0.1-1`

Binary Packages:

- `python3-rosdistro-modules=1.0.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-rospkg-modules=1.6.1-1`

Binary Packages:

- `python3-rospkg-modules=1.6.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3-stdlib-extensions=3.10.8-1~22.04`

Binary Packages:

- `python3-distutils=3.10.8-1~22.04`
- `python3-lib2to3=3.10.8-1~22.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.10.8-1~22.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8.orig.tar.xz' python3-stdlib-extensions_3.10.8.orig.tar.xz 1118220 SHA512:0583a86aad9ce78df7c175c82fe09611a72e7d60567f5269843781711702c6f3ae0c209a1a8b71eb35d9c9a5e210e8fbac1c7e6302e106cde48a2db0d29dc2ad
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8-1%7e22.04.debian.tar.xz' python3-stdlib-extensions_3.10.8-1~22.04.debian.tar.xz 25884 SHA512:214b4a62091181291a22ce1a2016e5b3d8f24f62f245494f82bd3a527b46886f1537f1e33fcde5261c81cb50d6d177cdeb899955d7da7c367511594ed99825ce
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.10.8-1%7e22.04.dsc' python3-stdlib-extensions_3.10.8-1~22.04.dsc 2599 SHA512:4ff10912289f2bb26884c865c18aed3b19c310dda74d75b838575aaecb3cdc256bea1e14dad5c079bb5a3c5ec3553e136e461d0bf39af956a4e287caae8e2aa6
```

### `dpkg` source package: `python3-vcstool=0.3.0-1`

Binary Packages:

- `python3-vcstool=0.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3.10=3.10.12-1~22.04.15`

Binary Packages:

- `libpython3.10:amd64=3.10.12-1~22.04.15`
- `libpython3.10-dev:amd64=3.10.12-1~22.04.15`
- `libpython3.10-minimal:amd64=3.10.12-1~22.04.15`
- `libpython3.10-stdlib:amd64=3.10.12-1~22.04.15`
- `python3.10=3.10.12-1~22.04.15`
- `python3.10-dev=3.10.12-1~22.04.15`
- `python3.10-minimal=3.10.12-1~22.04.15`

Licenses: (parsed from: `/usr/share/doc/libpython3.10/copyright`, `/usr/share/doc/libpython3.10-dev/copyright`, `/usr/share/doc/libpython3.10-minimal/copyright`, `/usr/share/doc/libpython3.10-stdlib/copyright`, `/usr/share/doc/python3.10/copyright`, `/usr/share/doc/python3.10-dev/copyright`, `/usr/share/doc/python3.10-minimal/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pyyaml=5.4.1-1ubuntu1`

Binary Packages:

- `python3-yaml=5.4.1-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyyaml=5.4.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_5.4.1-1ubuntu1.dsc' pyyaml_5.4.1-1ubuntu1.dsc 2146 SHA512:1ac92a9ab02d920f47e29ae5ef2b83b62b757d7371945c16f581e0e8500b581229b6a6b3c17a49012d3e3e366e15065c8a51c7a9dfa228197a9cd00e17764a31
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_5.4.1.orig.tar.gz' pyyaml_5.4.1.orig.tar.gz 175147 SHA512:359c45d843fd839797572efeab121f17b1947647960dfb062f3618f25f71e1a6bc4bab14a1720b6b67f256089d5d48c452ec5419e3130222765c7ca41db11dad
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_5.4.1-1ubuntu1.debian.tar.xz' pyyaml_5.4.1-1ubuntu1.debian.tar.xz 7548 SHA512:401ea5fc96980189e681e5a096ed5bb14d02f5ee4688db424544a30c4fe3ca132264e50cd61af1bdda05576005e8b369f11f6f173e6bad1d612c77c3a2c32ecc
```

### `dpkg` source package: `readline=8.1.2-1`

Binary Packages:

- `libreadline8:amd64=8.1.2-1`
- `readline-common=8.1.2-1`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.1.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2-1.dsc' readline_8.1.2-1.dsc 2432 SHA512:3166229d2ac183a46455c7d8cf17ef1d509ca8651ffa7887f654d87bbe1d00a08f9a9f73f14e652ac067d89e5d1128998f8f09f6a1128c56049338ace65ed773
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2.orig.tar.gz' readline_8.1.2.orig.tar.gz 2993073 SHA512:b512275c8aa8b3b3178366c6d681f867676fc1c881e375134a88e9c860a448535e04ca43df727817fd0048261e48203e88bd1c086e86572022d1d65fb0350e4d
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.1.2-1.debian.tar.xz' readline_8.1.2-1.debian.tar.xz 29292 SHA512:a64621c93975bc42ba171c9298c932f9515025513911e744183092e0ef9873db474c4ec27a21f310f40e7b970ba6300edb057552f7e90fc469897ffa2eb706f0
```

### `dpkg` source package: `rhash=1.4.2-1ubuntu1`

Binary Packages:

- `librhash0:amd64=1.4.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/librhash0/copyright`)

- `0BSD`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.4.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.2-1ubuntu1.dsc' rhash_1.4.2-1ubuntu1.dsc 2410 SHA512:509b9c684cda1d91b79782e51002e5d50e08951b147d9b7a28108ec0717c277ca84ba1e881c83281d09ef7958e3267cb425cd548fd00e578950c475e7dc352c4
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.2.orig.tar.gz' rhash_1.4.2.orig.tar.gz 416853 SHA512:41df57e8b3f32c93d8e6f2ac668b32aaa23eb2eaf90a83f109e61e511404a5036ea88bcf2854e19c1ade0f61960e0d9edf01f3d82e1c645fed36579e9d7a6a25
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.2.orig.tar.gz.asc' rhash_1.4.2.orig.tar.gz.asc 833 SHA512:a61a0a10a8b5affd69b8e8b9856137eee6ce922ee369e5b5a673edec921201771646412da083679696e7732e4954f9a4205ecfbe1c09b02871de4930b68f0015
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.2-1ubuntu1.debian.tar.xz' rhash_1.4.2-1ubuntu1.debian.tar.xz 10332 SHA512:4d6bfaf2230a60ed0b1f7dab538d4e90bf40fcd35b1056e6ba386ae8d92225337fbf0c9ee4e04d8b3bcb51b702d24a4405cb1f461ca5a879943b7c772f1bc13d
```

### `dpkg` source package: `ros-apt-source=1.2.0~jammy`

Binary Packages:

- `ros2-apt-source=1.2.0~jammy`

Licenses: (parsed from: `/usr/share/doc/ros2-apt-source/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-action-msgs=1.2.2-1jammy.20260414.032330`

Binary Packages:

- `ros-humble-action-msgs=1.2.2-1jammy.20260414.032330`

Licenses: (parsed from: `/usr/share/doc/ros-humble-action-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-actionlib-msgs=4.9.1-1jammy.20260414.032337`

Binary Packages:

- `ros-humble-actionlib-msgs=4.9.1-1jammy.20260414.032337`

Licenses: (parsed from: `/usr/share/doc/ros-humble-actionlib-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-auto=1.3.14-1jammy.20260304.074922`

Binary Packages:

- `ros-humble-ament-cmake-auto=1.3.14-1jammy.20260304.074922`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-copyright=0.12.15-1jammy.20260304.195729`

Binary Packages:

- `ros-humble-ament-cmake-copyright=0.12.15-1jammy.20260304.195729`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-core=1.3.14-1jammy.20260224.185609`

Binary Packages:

- `ros-humble-ament-cmake-core=1.3.14-1jammy.20260224.185609`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-cppcheck=0.12.15-1jammy.20260304.195901`

Binary Packages:

- `ros-humble-ament-cmake-cppcheck=0.12.15-1jammy.20260304.195901`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-cpplint=0.12.15-1jammy.20260304.195910`

Binary Packages:

- `ros-humble-ament-cmake-cpplint=0.12.15-1jammy.20260304.195910`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-cpplint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-definitions=1.3.14-1jammy.20260226.010509`

Binary Packages:

- `ros-humble-ament-cmake-export-definitions=1.3.14-1jammy.20260226.010509`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-definitions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-dependencies=1.3.14-1jammy.20260226.011144`

Binary Packages:

- `ros-humble-ament-cmake-export-dependencies=1.3.14-1jammy.20260226.011144`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-include-directories=1.3.14-1jammy.20260226.010305`

Binary Packages:

- `ros-humble-ament-cmake-export-include-directories=1.3.14-1jammy.20260226.010305`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-interfaces=1.3.14-1jammy.20260226.005715`

Binary Packages:

- `ros-humble-ament-cmake-export-interfaces=1.3.14-1jammy.20260226.005715`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-libraries=1.3.14-1jammy.20260226.004939`

Binary Packages:

- `ros-humble-ament-cmake-export-libraries=1.3.14-1jammy.20260226.004939`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-link-flags=1.3.14-1jammy.20260226.010357`

Binary Packages:

- `ros-humble-ament-cmake-export-link-flags=1.3.14-1jammy.20260226.010357`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-link-flags/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-export-targets=1.3.14-1jammy.20260226.005705`

Binary Packages:

- `ros-humble-ament-cmake-export-targets=1.3.14-1jammy.20260226.005705`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-export-targets/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-flake8=0.12.15-1jammy.20260304.200009`

Binary Packages:

- `ros-humble-ament-cmake-flake8=0.12.15-1jammy.20260304.200009`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-gen-version-h=1.3.14-1jammy.20260226.034234`

Binary Packages:

- `ros-humble-ament-cmake-gen-version-h=1.3.14-1jammy.20260226.034234`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-gen-version-h/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-gmock=1.3.14-1jammy.20260226.034220`

Binary Packages:

- `ros-humble-ament-cmake-gmock=1.3.14-1jammy.20260226.034220`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-gmock/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-gtest=1.3.14-1jammy.20260226.013944`

Binary Packages:

- `ros-humble-ament-cmake-gtest=1.3.14-1jammy.20260226.013944`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-gtest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-include-directories=1.3.14-1jammy.20260226.010650`

Binary Packages:

- `ros-humble-ament-cmake-include-directories=1.3.14-1jammy.20260226.010650`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-libraries=1.3.14-1jammy.20260226.010453`

Binary Packages:

- `ros-humble-ament-cmake-libraries=1.3.14-1jammy.20260226.010453`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-lint-cmake=0.12.15-1jammy.20260304.195414`

Binary Packages:

- `ros-humble-ament-cmake-lint-cmake=0.12.15-1jammy.20260304.195414`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-pep257=0.12.15-1jammy.20260304.200058`

Binary Packages:

- `ros-humble-ament-cmake-pep257=0.12.15-1jammy.20260304.200058`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-pep257/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-pytest=1.3.14-1jammy.20260226.014042`

Binary Packages:

- `ros-humble-ament-cmake-pytest=1.3.14-1jammy.20260226.014042`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-pytest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-python=1.3.14-1jammy.20260226.005145`

Binary Packages:

- `ros-humble-ament-cmake-python=1.3.14-1jammy.20260226.005145`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-ros=0.10.0-3jammy.20260304.201222`

Binary Packages:

- `ros-humble-ament-cmake-ros=0.10.0-3jammy.20260304.201222`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-target-dependencies=1.3.14-1jammy.20260226.013622`

Binary Packages:

- `ros-humble-ament-cmake-target-dependencies=1.3.14-1jammy.20260226.013622`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-target-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-test=1.3.14-1jammy.20260226.013528`

Binary Packages:

- `ros-humble-ament-cmake-test=1.3.14-1jammy.20260226.013528`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-test/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-uncrustify=0.12.15-1jammy.20260304.195907`

Binary Packages:

- `ros-humble-ament-cmake-uncrustify=0.12.15-1jammy.20260304.195907`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-version=1.3.14-1jammy.20260226.010514`

Binary Packages:

- `ros-humble-ament-cmake-version=1.3.14-1jammy.20260226.010514`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-version/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake-xmllint=0.12.15-1jammy.20260304.200103`

Binary Packages:

- `ros-humble-ament-cmake-xmllint=0.12.15-1jammy.20260304.200103`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cmake=1.3.14-1jammy.20260226.035055`

Binary Packages:

- `ros-humble-ament-cmake=1.3.14-1jammy.20260226.035055`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-copyright=0.12.15-1jammy.20260226.034848`

Binary Packages:

- `ros-humble-ament-copyright=0.12.15-1jammy.20260226.034848`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cppcheck=0.12.15-1jammy.20260226.010724`

Binary Packages:

- `ros-humble-ament-cppcheck=0.12.15-1jammy.20260226.010724`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-cpplint=0.12.15-1jammy.20260304.090253`

Binary Packages:

- `ros-humble-ament-cpplint=0.12.15-1jammy.20260304.090253`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-cpplint/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-flake8=0.12.15-1jammy.20260226.013519`

Binary Packages:

- `ros-humble-ament-flake8=0.12.15-1jammy.20260226.013519`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-index-cpp=1.4.1-1jammy.20260304.201844`

Binary Packages:

- `ros-humble-ament-index-cpp=1.4.1-1jammy.20260304.201844`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-index-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-index-python=1.4.1-1jammy.20260304.090250`

Binary Packages:

- `ros-humble-ament-index-python=1.4.1-1jammy.20260304.090250`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-index-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-lint-auto=0.12.15-1jammy.20260226.014133`

Binary Packages:

- `ros-humble-ament-lint-auto=0.12.15-1jammy.20260226.014133`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-lint-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-lint-cmake=0.12.15-1jammy.20260304.090258`

Binary Packages:

- `ros-humble-ament-lint-cmake=0.12.15-1jammy.20260304.090258`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-lint-common=0.12.15-1jammy.20260304.201149`

Binary Packages:

- `ros-humble-ament-lint-common=0.12.15-1jammy.20260304.201149`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-lint-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-lint=0.12.15-1jammy.20260226.005140`

Binary Packages:

- `ros-humble-ament-lint=0.12.15-1jammy.20260226.005140`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-lint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-package=0.14.2-1jammy.20260213.215617`

Binary Packages:

- `ros-humble-ament-package=0.14.2-1jammy.20260213.215617`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-package/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-pep257=0.12.15-1jammy.20260226.014506`

Binary Packages:

- `ros-humble-ament-pep257=0.12.15-1jammy.20260226.014506`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-pep257/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-uncrustify=0.12.15-1jammy.20260304.195710`

Binary Packages:

- `ros-humble-ament-uncrustify=0.12.15-1jammy.20260304.195710`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ament-xmllint=0.12.15-1jammy.20260304.090301`

Binary Packages:

- `ros-humble-ament-xmllint=0.12.15-1jammy.20260304.090301`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ament-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-builtin-interfaces=1.2.2-1jammy.20260414.020126`

Binary Packages:

- `ros-humble-builtin-interfaces=1.2.2-1jammy.20260414.020126`

Licenses: (parsed from: `/usr/share/doc/ros-humble-builtin-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-class-loader=2.2.0-3jammy.20260304.204543`

Binary Packages:

- `ros-humble-class-loader=2.2.0-3jammy.20260304.204543`

Licenses: (parsed from: `/usr/share/doc/ros-humble-class-loader/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-common-interfaces=4.9.1-1jammy.20260414.140800`

Binary Packages:

- `ros-humble-common-interfaces=4.9.1-1jammy.20260414.140800`

Licenses: (parsed from: `/usr/share/doc/ros-humble-common-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-composition-interfaces=1.2.2-1jammy.20260414.021015`

Binary Packages:

- `ros-humble-composition-interfaces=1.2.2-1jammy.20260414.021015`

Licenses: (parsed from: `/usr/share/doc/ros-humble-composition-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-console-bridge-vendor=1.4.1-1jammy.20260304.202710`

Binary Packages:

- `ros-humble-console-bridge-vendor=1.4.1-1jammy.20260304.202710`

Licenses: (parsed from: `/usr/share/doc/ros-humble-console-bridge-vendor/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-diagnostic-msgs=4.9.1-1jammy.20260414.034311`

Binary Packages:

- `ros-humble-diagnostic-msgs=4.9.1-1jammy.20260414.034311`

Licenses: (parsed from: `/usr/share/doc/ros-humble-diagnostic-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-domain-coordinator=0.10.0-3jammy.20260304.090332`

Binary Packages:

- `ros-humble-domain-coordinator=0.10.0-3jammy.20260304.090332`

Licenses: (parsed from: `/usr/share/doc/ros-humble-domain-coordinator/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-eigen3-cmake-module=0.1.1-4jammy.20260304.195907`

Binary Packages:

- `ros-humble-eigen3-cmake-module=0.1.1-4jammy.20260304.195907`

Licenses: (parsed from: `/usr/share/doc/ros-humble-eigen3-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-fastcdr=1.0.29-1jammy.20260226.010952`

Binary Packages:

- `ros-humble-fastcdr=1.0.29-1jammy.20260226.010952`

Licenses: (parsed from: `/usr/share/doc/ros-humble-fastcdr/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-fastrtps-cmake-module=2.2.4-1jammy.20260304.202011`

Binary Packages:

- `ros-humble-fastrtps-cmake-module=2.2.4-1jammy.20260304.202011`

Licenses: (parsed from: `/usr/share/doc/ros-humble-fastrtps-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-fastrtps=2.6.11-1jammy.20260304.200925`

Binary Packages:

- `ros-humble-fastrtps=2.6.11-1jammy.20260304.200925`

Licenses: (parsed from: `/usr/share/doc/ros-humble-fastrtps/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-foonathan-memory-vendor=1.2.0-3jammy.20260304.200554`

Binary Packages:

- `ros-humble-foonathan-memory-vendor=1.2.0-3jammy.20260304.200554`

Licenses: (parsed from: `/usr/share/doc/ros-humble-foonathan-memory-vendor/copyright`)

- `Apache License 2.0`
- `zlib License`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-geometry-msgs=4.9.1-1jammy.20260414.033603`

Binary Packages:

- `ros-humble-geometry-msgs=4.9.1-1jammy.20260414.033603`

Licenses: (parsed from: `/usr/share/doc/ros-humble-geometry-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-geometry2=0.25.20-2jammy.20260422.091726`

Binary Packages:

- `ros-humble-geometry2=0.25.20-2jammy.20260422.091726`

Licenses: (parsed from: `/usr/share/doc/ros-humble-geometry2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-gmock-vendor=1.10.9006-1jammy.20260226.011659`

Binary Packages:

- `ros-humble-gmock-vendor=1.10.9006-1jammy.20260226.011659`

Licenses: (parsed from: `/usr/share/doc/ros-humble-gmock-vendor/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-gtest-vendor=1.10.9006-1jammy.20260226.011046`

Binary Packages:

- `ros-humble-gtest-vendor=1.10.9006-1jammy.20260226.011046`

Licenses: (parsed from: `/usr/share/doc/ros-humble-gtest-vendor/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-kdl-parser=2.6.4-1jammy.20260329.192613`

Binary Packages:

- `ros-humble-kdl-parser=2.6.4-1jammy.20260329.192613`

Licenses: (parsed from: `/usr/share/doc/ros-humble-kdl-parser/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-keyboard-handler=0.0.5-1jammy.20260304.202120`

Binary Packages:

- `ros-humble-keyboard-handler=0.0.5-1jammy.20260304.202120`

Licenses: (parsed from: `/usr/share/doc/ros-humble-keyboard-handler/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-ros=0.19.13-1jammy.20260421.071810`

Binary Packages:

- `ros-humble-launch-ros=0.19.13-1jammy.20260421.071810`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-testing-ament-cmake=1.0.14-1jammy.20260304.202633`

Binary Packages:

- `ros-humble-launch-testing-ament-cmake=1.0.14-1jammy.20260304.202633`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-testing-ament-cmake/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-testing-ros=0.19.13-1jammy.20260421.072041`

Binary Packages:

- `ros-humble-launch-testing-ros=0.19.13-1jammy.20260421.072041`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-testing-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-testing=1.0.14-1jammy.20260304.200104`

Binary Packages:

- `ros-humble-launch-testing=1.0.14-1jammy.20260304.200104`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-testing/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-xml=1.0.14-1jammy.20260304.195726`

Binary Packages:

- `ros-humble-launch-xml=1.0.14-1jammy.20260304.195726`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-xml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch-yaml=1.0.14-1jammy.20260304.195728`

Binary Packages:

- `ros-humble-launch-yaml=1.0.14-1jammy.20260304.195728`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch-yaml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-launch=1.0.14-1jammy.20260304.195519`

Binary Packages:

- `ros-humble-launch=1.0.14-1jammy.20260304.195519`

Licenses: (parsed from: `/usr/share/doc/ros-humble-launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-libstatistics-collector=1.3.4-1jammy.20260421.024132`

Binary Packages:

- `ros-humble-libstatistics-collector=1.3.4-1jammy.20260421.024132`

Licenses: (parsed from: `/usr/share/doc/ros-humble-libstatistics-collector/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-libyaml-vendor=1.2.2-2jammy.20260304.204644`

Binary Packages:

- `ros-humble-libyaml-vendor=1.2.2-2jammy.20260304.204644`

Licenses: (parsed from: `/usr/share/doc/ros-humble-libyaml-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-lifecycle-msgs=1.2.2-1jammy.20260414.020206`

Binary Packages:

- `ros-humble-lifecycle-msgs=1.2.2-1jammy.20260414.020206`

Licenses: (parsed from: `/usr/share/doc/ros-humble-lifecycle-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-message-filters=4.3.16-1jammy.20260421.070941`

Binary Packages:

- `ros-humble-message-filters=4.3.16-1jammy.20260421.070941`

Licenses: (parsed from: `/usr/share/doc/ros-humble-message-filters/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-nav-msgs=4.9.1-1jammy.20260414.034929`

Binary Packages:

- `ros-humble-nav-msgs=4.9.1-1jammy.20260414.034929`

Licenses: (parsed from: `/usr/share/doc/ros-humble-nav-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-orocos-kdl-vendor=0.2.5-1jammy.20260304.201339`

Binary Packages:

- `ros-humble-orocos-kdl-vendor=0.2.5-1jammy.20260304.201339`

Licenses: (parsed from: `/usr/share/doc/ros-humble-orocos-kdl-vendor/copyright`)

- `Apache License 2.0`
- `LGPL-2.1-or-later`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-osrf-pycommon=2.1.6-1jammy.20260226.011505`

Binary Packages:

- `ros-humble-osrf-pycommon=2.1.6-1jammy.20260226.011505`

Licenses: (parsed from: `/usr/share/doc/ros-humble-osrf-pycommon/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-pluginlib=5.1.4-1jammy.20260329.184249`

Binary Packages:

- `ros-humble-pluginlib=5.1.4-1jammy.20260329.184249`

Licenses: (parsed from: `/usr/share/doc/ros-humble-pluginlib/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-pybind11-vendor=2.4.2-1jammy.20260304.195023`

Binary Packages:

- `ros-humble-pybind11-vendor=2.4.2-1jammy.20260304.195023`

Licenses: (parsed from: `/usr/share/doc/ros-humble-pybind11-vendor/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-python-cmake-module=0.10.0-2jammy.20260304.202554`

Binary Packages:

- `ros-humble-python-cmake-module=0.10.0-2jammy.20260304.202554`

Licenses: (parsed from: `/usr/share/doc/ros-humble-python-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-python-orocos-kdl-vendor=0.2.5-1jammy.20260304.202632`

Binary Packages:

- `ros-humble-python-orocos-kdl-vendor=0.2.5-1jammy.20260304.202632`

Licenses: (parsed from: `/usr/share/doc/ros-humble-python-orocos-kdl-vendor/copyright`)

- `Apache License 2.0`
- `LGPL-2.1-or-later`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-action=5.3.13-1jammy.20260421.024133`

Binary Packages:

- `ros-humble-rcl-action=5.3.13-1jammy.20260421.024133`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-interfaces=1.2.2-1jammy.20260414.020551`

Binary Packages:

- `ros-humble-rcl-interfaces=1.2.2-1jammy.20260414.020551`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-lifecycle=5.3.13-1jammy.20260421.024128`

Binary Packages:

- `ros-humble-rcl-lifecycle=5.3.13-1jammy.20260421.024128`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-logging-interface=2.3.2-1jammy.20260304.204603`

Binary Packages:

- `ros-humble-rcl-logging-interface=2.3.2-1jammy.20260304.204603`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-logging-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-logging-spdlog=2.3.2-1jammy.20260304.204758`

Binary Packages:

- `ros-humble-rcl-logging-spdlog=2.3.2-1jammy.20260304.204758`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-logging-spdlog/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl-yaml-param-parser=5.3.13-1jammy.20260421.015301`

Binary Packages:

- `ros-humble-rcl-yaml-param-parser=5.3.13-1jammy.20260421.015301`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl-yaml-param-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcl=5.3.13-1jammy.20260421.021738`

Binary Packages:

- `ros-humble-rcl=5.3.13-1jammy.20260421.021738`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcl/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rclcpp-action=16.0.19-1jammy.20260421.045802`

Binary Packages:

- `ros-humble-rclcpp-action=16.0.19-1jammy.20260421.045802`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rclcpp-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rclcpp-components=16.0.19-1jammy.20260421.074221`

Binary Packages:

- `ros-humble-rclcpp-components=16.0.19-1jammy.20260421.074221`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rclcpp-components/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rclcpp-lifecycle=16.0.19-1jammy.20260421.045908`

Binary Packages:

- `ros-humble-rclcpp-lifecycle=16.0.19-1jammy.20260421.045908`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rclcpp-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rclcpp=16.0.19-1jammy.20260421.025847`

Binary Packages:

- `ros-humble-rclcpp=16.0.19-1jammy.20260421.025847`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rclcpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rclpy=3.3.21-1jammy.20260421.025639`

Binary Packages:

- `ros-humble-rclpy=3.3.21-1jammy.20260421.025639`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rclpy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcpputils=2.4.6-1jammy.20260304.204148`

Binary Packages:

- `ros-humble-rcpputils=2.4.6-1jammy.20260304.204148`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcpputils/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rcutils=5.1.8-1jammy.20260304.203555`

Binary Packages:

- `ros-humble-rcutils=5.1.8-1jammy.20260304.203555`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rcutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw-dds-common=1.6.0-2jammy.20260414.021257`

Binary Packages:

- `ros-humble-rmw-dds-common=1.6.0-2jammy.20260414.021257`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw-dds-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw-fastrtps-cpp=6.2.10-1jammy.20260414.141625`

Binary Packages:

- `ros-humble-rmw-fastrtps-cpp=6.2.10-1jammy.20260414.141625`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw-fastrtps-shared-cpp=6.2.10-1jammy.20260414.141110`

Binary Packages:

- `ros-humble-rmw-fastrtps-shared-cpp=6.2.10-1jammy.20260414.141110`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw-fastrtps-shared-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw-implementation-cmake=6.1.2-1jammy.20260304.202612`

Binary Packages:

- `ros-humble-rmw-implementation-cmake=6.1.2-1jammy.20260304.202612`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw-implementation-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw-implementation=2.8.5-1jammy.20260415.075542`

Binary Packages:

- `ros-humble-rmw-implementation=2.8.5-1jammy.20260415.075542`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rmw=6.1.2-1jammy.20260304.204455`

Binary Packages:

- `ros-humble-rmw=6.1.2-1jammy.20260304.204455`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rmw/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-robot-state-publisher=3.0.3-2jammy.20260422.081354`

Binary Packages:

- `ros-humble-robot-state-publisher=3.0.3-2jammy.20260422.081354`

Licenses: (parsed from: `/usr/share/doc/ros-humble-robot-state-publisher/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros-base=0.10.0-1jammy.20260423.142225`

Binary Packages:

- `ros-humble-ros-base=0.10.0-1jammy.20260423.142225`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros-base/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros-core=0.10.0-1jammy.20260423.142057`

Binary Packages:

- `ros-humble-ros-core=0.10.0-1jammy.20260423.142057`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros-environment=3.2.2-1jammy.20260226.005101`

Binary Packages:

- `ros-humble-ros-environment=3.2.2-1jammy.20260226.005101`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros-environment/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros-workspace=1.0.2-2jammy.20260224.185744`

Binary Packages:

- `ros-humble-ros-workspace=1.0.2-2jammy.20260224.185744`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros-workspace/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2action=0.18.18-1jammy.20260422.081552`

Binary Packages:

- `ros-humble-ros2action=0.18.18-1jammy.20260422.081552`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2bag=0.15.16-1jammy.20260422.101646`

Binary Packages:

- `ros-humble-ros2bag=0.15.16-1jammy.20260422.101646`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2bag/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2cli-common-extensions=0.1.2-1jammy.20260423.141638`

Binary Packages:

- `ros-humble-ros2cli-common-extensions=0.1.2-1jammy.20260423.141638`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2cli-common-extensions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2cli=0.18.18-1jammy.20260421.071921`

Binary Packages:

- `ros-humble-ros2cli=0.18.18-1jammy.20260421.071921`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2component=0.18.18-1jammy.20260422.090447`

Binary Packages:

- `ros-humble-ros2component=0.18.18-1jammy.20260422.090447`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2component/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2doctor=0.18.18-1jammy.20260422.081639`

Binary Packages:

- `ros-humble-ros2doctor=0.18.18-1jammy.20260422.081639`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2doctor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2interface=0.18.18-1jammy.20260422.081645`

Binary Packages:

- `ros-humble-ros2interface=0.18.18-1jammy.20260422.081645`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2launch=0.19.13-1jammy.20260422.085809`

Binary Packages:

- `ros-humble-ros2launch=0.19.13-1jammy.20260422.085809`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2lifecycle=0.18.18-1jammy.20260422.085843`

Binary Packages:

- `ros-humble-ros2lifecycle=0.18.18-1jammy.20260422.085843`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2multicast=0.18.18-1jammy.20260422.081645`

Binary Packages:

- `ros-humble-ros2multicast=0.18.18-1jammy.20260422.081645`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2multicast/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2node=0.18.18-1jammy.20260422.081647`

Binary Packages:

- `ros-humble-ros2node=0.18.18-1jammy.20260422.081647`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2node/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2param=0.18.18-1jammy.20260422.085910`

Binary Packages:

- `ros-humble-ros2param=0.18.18-1jammy.20260422.085910`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2param/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2pkg=0.18.18-1jammy.20260422.081656`

Binary Packages:

- `ros-humble-ros2pkg=0.18.18-1jammy.20260422.081656`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2pkg/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2plugin=5.1.4-1jammy.20260422.085811`

Binary Packages:

- `ros-humble-ros2plugin=5.1.4-1jammy.20260422.085811`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2plugin/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2run=0.18.18-1jammy.20260422.085837`

Binary Packages:

- `ros-humble-ros2run=0.18.18-1jammy.20260422.085837`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2run/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2service=0.18.18-1jammy.20260422.081752`

Binary Packages:

- `ros-humble-ros2service=0.18.18-1jammy.20260422.081752`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2service/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-ros2topic=0.18.18-1jammy.20260422.081807`

Binary Packages:

- `ros-humble-ros2topic=0.18.18-1jammy.20260422.081807`

Licenses: (parsed from: `/usr/share/doc/ros-humble-ros2topic/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-compression-zstd=0.15.16-1jammy.20260422.095132`

Binary Packages:

- `ros-humble-rosbag2-compression-zstd=0.15.16-1jammy.20260422.095132`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-compression-zstd/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-compression=0.15.16-1jammy.20260422.093351`

Binary Packages:

- `ros-humble-rosbag2-compression=0.15.16-1jammy.20260422.093351`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-compression/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-cpp=0.15.16-1jammy.20260422.081948`

Binary Packages:

- `ros-humble-rosbag2-cpp=0.15.16-1jammy.20260422.081948`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-interfaces=0.15.16-1jammy.20260414.021005`

Binary Packages:

- `ros-humble-rosbag2-interfaces=0.15.16-1jammy.20260414.021005`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-py=0.15.16-1jammy.20260422.101256`

Binary Packages:

- `ros-humble-rosbag2-py=0.15.16-1jammy.20260422.101256`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-storage-default-plugins=0.15.16-1jammy.20260415.123802`

Binary Packages:

- `ros-humble-rosbag2-storage-default-plugins=0.15.16-1jammy.20260415.123802`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-storage-default-plugins/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-storage=0.15.16-1jammy.20260415.123423`

Binary Packages:

- `ros-humble-rosbag2-storage=0.15.16-1jammy.20260415.123423`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-storage/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2-transport=0.15.16-1jammy.20260422.095413`

Binary Packages:

- `ros-humble-rosbag2-transport=0.15.16-1jammy.20260422.095413`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2-transport/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosbag2=0.15.16-1jammy.20260422.102523`

Binary Packages:

- `ros-humble-rosbag2=0.15.16-1jammy.20260422.102523`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosbag2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosgraph-msgs=1.2.2-1jammy.20260414.021041`

Binary Packages:

- `ros-humble-rosgraph-msgs=1.2.2-1jammy.20260414.021041`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosgraph-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-adapter=3.1.8-1jammy.20260304.201231`

Binary Packages:

- `ros-humble-rosidl-adapter=3.1.8-1jammy.20260304.201231`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-adapter/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-cli=3.1.8-1jammy.20260304.195449`

Binary Packages:

- `ros-humble-rosidl-cli=3.1.8-1jammy.20260304.195449`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-cmake=3.1.8-1jammy.20260304.202821`

Binary Packages:

- `ros-humble-rosidl-cmake=3.1.8-1jammy.20260304.202821`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-default-generators=1.2.1-1jammy.20260414.015818`

Binary Packages:

- `ros-humble-rosidl-default-generators=1.2.1-1jammy.20260414.015818`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-default-generators/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-default-runtime=1.2.1-1jammy.20260304.210145`

Binary Packages:

- `ros-humble-rosidl-default-runtime=1.2.1-1jammy.20260304.210145`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-default-runtime/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-generator-c=3.1.8-1jammy.20260304.204455`

Binary Packages:

- `ros-humble-rosidl-generator-c=3.1.8-1jammy.20260304.204455`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-generator-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-generator-cpp=3.1.8-1jammy.20260304.204902`

Binary Packages:

- `ros-humble-rosidl-generator-cpp=3.1.8-1jammy.20260304.204902`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-generator-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-generator-py=0.14.6-1jammy.20260304.205753`

Binary Packages:

- `ros-humble-rosidl-generator-py=0.14.6-1jammy.20260304.205753`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-generator-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-generator-rs=0.4.12-1jammy.20260414.015644`

Binary Packages:

- `ros-humble-rosidl-generator-rs=0.4.12-1jammy.20260414.015644`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-generator-rs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-parser=3.1.8-1jammy.20260304.202637`

Binary Packages:

- `ros-humble-rosidl-parser=3.1.8-1jammy.20260304.202637`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-runtime-c=3.1.8-1jammy.20260304.204205`

Binary Packages:

- `ros-humble-rosidl-runtime-c=3.1.8-1jammy.20260304.204205`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-runtime-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-runtime-cpp=3.1.8-1jammy.20260304.204656`

Binary Packages:

- `ros-humble-rosidl-runtime-cpp=3.1.8-1jammy.20260304.204656`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-runtime-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-runtime-py=0.9.3-1jammy.20260414.141026`

Binary Packages:

- `ros-humble-rosidl-runtime-py=0.9.3-1jammy.20260414.141026`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-runtime-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-c=2.0.2-1jammy.20260304.204636`

Binary Packages:

- `ros-humble-rosidl-typesupport-c=2.0.2-1jammy.20260304.204636`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-cpp=2.0.2-1jammy.20260304.205041`

Binary Packages:

- `ros-humble-rosidl-typesupport-cpp=2.0.2-1jammy.20260304.205041`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-fastrtps-c=2.2.4-1jammy.20260304.205703`

Binary Packages:

- `ros-humble-rosidl-typesupport-fastrtps-c=2.2.4-1jammy.20260304.205703`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-fastrtps-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-fastrtps-cpp=2.2.4-1jammy.20260304.205234`

Binary Packages:

- `ros-humble-rosidl-typesupport-fastrtps-cpp=2.2.4-1jammy.20260304.205234`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-interface=3.1.8-1jammy.20260304.202725`

Binary Packages:

- `ros-humble-rosidl-typesupport-interface=3.1.8-1jammy.20260304.202725`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-introspection-c=3.1.8-1jammy.20260304.204454`

Binary Packages:

- `ros-humble-rosidl-typesupport-introspection-c=3.1.8-1jammy.20260304.204454`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-introspection-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rosidl-typesupport-introspection-cpp=3.1.8-1jammy.20260304.204904`

Binary Packages:

- `ros-humble-rosidl-typesupport-introspection-cpp=3.1.8-1jammy.20260304.204904`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rosidl-typesupport-introspection-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-rpyutils=0.2.2-1jammy.20260304.195455`

Binary Packages:

- `ros-humble-rpyutils=0.2.2-1jammy.20260304.195455`

Licenses: (parsed from: `/usr/share/doc/ros-humble-rpyutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-sensor-msgs-py=4.9.1-1jammy.20260414.141436`

Binary Packages:

- `ros-humble-sensor-msgs-py=4.9.1-1jammy.20260414.141436`

Licenses: (parsed from: `/usr/share/doc/ros-humble-sensor-msgs-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-sensor-msgs=4.9.1-1jammy.20260414.035238`

Binary Packages:

- `ros-humble-sensor-msgs=4.9.1-1jammy.20260414.035238`

Licenses: (parsed from: `/usr/share/doc/ros-humble-sensor-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-shape-msgs=4.9.1-1jammy.20260414.130158`

Binary Packages:

- `ros-humble-shape-msgs=4.9.1-1jammy.20260414.130158`

Licenses: (parsed from: `/usr/share/doc/ros-humble-shape-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-shared-queues-vendor=0.15.16-1jammy.20260304.075306`

Binary Packages:

- `ros-humble-shared-queues-vendor=0.15.16-1jammy.20260304.075306`

Licenses: (parsed from: `/usr/share/doc/ros-humble-shared-queues-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-spdlog-vendor=1.3.1-1jammy.20260304.202915`

Binary Packages:

- `ros-humble-spdlog-vendor=1.3.1-1jammy.20260304.202915`

Licenses: (parsed from: `/usr/share/doc/ros-humble-spdlog-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-sqlite3-vendor=0.15.16-1jammy.20260304.195038`

Binary Packages:

- `ros-humble-sqlite3-vendor=0.15.16-1jammy.20260304.195038`

Licenses: (parsed from: `/usr/share/doc/ros-humble-sqlite3-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-sros2-cmake=0.10.9-1jammy.20260423.141638`

Binary Packages:

- `ros-humble-sros2-cmake=0.10.9-1jammy.20260423.141638`

Licenses: (parsed from: `/usr/share/doc/ros-humble-sros2-cmake/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-sros2=0.10.9-1jammy.20260423.141439`

Binary Packages:

- `ros-humble-sros2=0.10.9-1jammy.20260423.141439`

Licenses: (parsed from: `/usr/share/doc/ros-humble-sros2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-statistics-msgs=1.2.2-1jammy.20260414.021053`

Binary Packages:

- `ros-humble-statistics-msgs=1.2.2-1jammy.20260414.021053`

Licenses: (parsed from: `/usr/share/doc/ros-humble-statistics-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-std-msgs=4.9.1-1jammy.20260414.021058`

Binary Packages:

- `ros-humble-std-msgs=4.9.1-1jammy.20260414.021058`

Licenses: (parsed from: `/usr/share/doc/ros-humble-std-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-std-srvs=4.9.1-1jammy.20260414.021352`

Binary Packages:

- `ros-humble-std-srvs=4.9.1-1jammy.20260414.021352`

Licenses: (parsed from: `/usr/share/doc/ros-humble-std-srvs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-stereo-msgs=4.9.1-1jammy.20260414.125913`

Binary Packages:

- `ros-humble-stereo-msgs=4.9.1-1jammy.20260414.125913`

Licenses: (parsed from: `/usr/share/doc/ros-humble-stereo-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-bullet=0.25.20-2jammy.20260422.082433`

Binary Packages:

- `ros-humble-tf2-bullet=0.25.20-2jammy.20260422.082433`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-bullet/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-eigen-kdl=0.25.20-2jammy.20260415.070245`

Binary Packages:

- `ros-humble-tf2-eigen-kdl=0.25.20-2jammy.20260415.070245`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-eigen-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-eigen=0.25.20-2jammy.20260422.082438`

Binary Packages:

- `ros-humble-tf2-eigen=0.25.20-2jammy.20260422.082438`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-eigen/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-geometry-msgs=0.25.20-2jammy.20260422.082444`

Binary Packages:

- `ros-humble-tf2-geometry-msgs=0.25.20-2jammy.20260422.082444`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-geometry-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-kdl=0.25.20-2jammy.20260422.082450`

Binary Packages:

- `ros-humble-tf2-kdl=0.25.20-2jammy.20260422.082450`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-msgs=0.25.20-2jammy.20260414.034544`

Binary Packages:

- `ros-humble-tf2-msgs=0.25.20-2jammy.20260414.034544`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-py=0.25.20-2jammy.20260421.072000`

Binary Packages:

- `ros-humble-tf2-py=0.25.20-2jammy.20260421.072000`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-ros-py=0.25.20-2jammy.20260421.072224`

Binary Packages:

- `ros-humble-tf2-ros-py=0.25.20-2jammy.20260421.072224`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-ros-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-ros=0.25.20-2jammy.20260421.080016`

Binary Packages:

- `ros-humble-tf2-ros=0.25.20-2jammy.20260421.080016`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-ros/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-sensor-msgs=0.25.20-2jammy.20260422.082452`

Binary Packages:

- `ros-humble-tf2-sensor-msgs=0.25.20-2jammy.20260422.082452`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-sensor-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2-tools=0.25.20-2jammy.20260421.072448`

Binary Packages:

- `ros-humble-tf2-tools=0.25.20-2jammy.20260421.072448`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2-tools/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tf2=0.25.20-2jammy.20260414.140805`

Binary Packages:

- `ros-humble-tf2=0.25.20-2jammy.20260414.140805`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tf2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tinyxml-vendor=0.8.3-2jammy.20260304.195406`

Binary Packages:

- `ros-humble-tinyxml-vendor=0.8.3-2jammy.20260304.195406`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tinyxml-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tinyxml2-vendor=0.7.7-1jammy.20260304.195411`

Binary Packages:

- `ros-humble-tinyxml2-vendor=0.7.7-1jammy.20260304.195411`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tinyxml2-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-tracetools=4.1.2-1jammy.20260304.201640`

Binary Packages:

- `ros-humble-tracetools=4.1.2-1jammy.20260304.201640`

Licenses: (parsed from: `/usr/share/doc/ros-humble-tracetools/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-trajectory-msgs=4.9.1-1jammy.20260414.130526`

Binary Packages:

- `ros-humble-trajectory-msgs=4.9.1-1jammy.20260414.130526`

Licenses: (parsed from: `/usr/share/doc/ros-humble-trajectory-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-uncrustify-vendor=2.0.2-2jammy.20260304.195304`

Binary Packages:

- `ros-humble-uncrustify-vendor=2.0.2-2jammy.20260304.195304`

Licenses: (parsed from: `/usr/share/doc/ros-humble-uncrustify-vendor/copyright`)

- `Apache License 2.0`
- `GNU General Public License v2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-unique-identifier-msgs=2.2.1-3jammy.20260414.021405`

Binary Packages:

- `ros-humble-unique-identifier-msgs=2.2.1-3jammy.20260414.021405`

Licenses: (parsed from: `/usr/share/doc/ros-humble-unique-identifier-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-urdf-parser-plugin=2.6.1-1jammy.20260304.201738`

Binary Packages:

- `ros-humble-urdf-parser-plugin=2.6.1-1jammy.20260304.201738`

Licenses: (parsed from: `/usr/share/doc/ros-humble-urdf-parser-plugin/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-urdf=2.6.1-1jammy.20260329.185456`

Binary Packages:

- `ros-humble-urdf=2.6.1-1jammy.20260329.185456`

Licenses: (parsed from: `/usr/share/doc/ros-humble-urdf/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-urdfdom-headers=1.0.6-2jammy.20260226.012553`

Binary Packages:

- `ros-humble-urdfdom-headers=1.0.6-2jammy.20260226.012553`

Licenses: (parsed from: `/usr/share/doc/ros-humble-urdfdom-headers/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-urdfdom=3.0.2-2jammy.20260304.202852`

Binary Packages:

- `ros-humble-urdfdom=3.0.2-2jammy.20260304.202852`

Licenses: (parsed from: `/usr/share/doc/ros-humble-urdfdom/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-visualization-msgs=4.9.1-1jammy.20260414.125941`

Binary Packages:

- `ros-humble-visualization-msgs=4.9.1-1jammy.20260414.125941`

Licenses: (parsed from: `/usr/share/doc/ros-humble-visualization-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-yaml-cpp-vendor=8.0.2-1jammy.20260304.195332`

Binary Packages:

- `ros-humble-yaml-cpp-vendor=8.0.2-1jammy.20260304.195332`

Licenses: (parsed from: `/usr/share/doc/ros-humble-yaml-cpp-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-humble-zstd-vendor=0.15.16-1jammy.20260304.195400`

Binary Packages:

- `ros-humble-zstd-vendor=0.15.16-1jammy.20260304.195400`

Licenses: (parsed from: `/usr/share/doc/ros-humble-zstd-vendor/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rpcsvc-proto=1.4.2-0ubuntu6`

Binary Packages:

- `rpcsvc-proto=1.4.2-0ubuntu6`

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
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.2-0ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2-0ubuntu6.dsc' rpcsvc-proto_1.4.2-0ubuntu6.dsc 2113 SHA512:df8458b423e2d3f8d6da5c6fc19be2ad4ae50d7513e3fa98656b05a734fdc26b2403984ea7da8a0cb5c270f63feae7c258e1f817a3f4a27ffb25107e25f43525
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2.orig.tar.xz' rpcsvc-proto_1.4.2.orig.tar.xz 171620 SHA512:631fbfc00af94c5d7def0759f27e97dc14d400b4468c906719ae18ecef74815730798c882d1aaa4f90359224e7b829019b786baddc3097905b54f940ca85a714
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.2-0ubuntu6.debian.tar.xz' rpcsvc-proto_1.4.2-0ubuntu6.debian.tar.xz 4268 SHA512:b7ee77b3714b10471fa5be73655f6ce37bd8ca4bfdb07011ac3621723616e69a2323dea9c93ee9ac5d2e9fd0230347224eaa8ae556ec2f2d4b399ec250a5008c
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

### `dpkg` source package: `sed=4.8-1ubuntu2.1`

Binary Packages:

- `sed=4.8-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.8-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz' sed_4.8.orig.tar.xz 1348048 SHA512:7de25d9bc2981c63321c2223f3fbcab61d7b0df4fcf7d4394b72400b91993e1288d8bf53948ed5fffcf5a98c75265726a68ad4fb98e1d571bf768603a108c1c8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8.orig.tar.xz.asc' sed_4.8.orig.tar.xz.asc 833 SHA512:9b886bdbd18ee2d60608cee3fd2b4193a1b6c3309d887ee05828c14b89b7b515dbf042a9e0ebdd13e6ccfa42e3cd217a408c796d68c4ebedaaa64f795000f095
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.1.debian.tar.xz' sed_4.8-1ubuntu2.1.debian.tar.xz 61312 SHA512:f99f3eb1f1121ae234afdd189b6795c4c6e0fcd8c7c25db280f20c4e99e7dd464c6d93306d8b64e9956b03aeb653fb2a4a5d4e5548b87e3d7ec2b1ed88904502
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.8-1ubuntu2.1.dsc' sed_4.8-1ubuntu2.1.dsc 2196 SHA512:d62a76d7256b4c2a95541a3bbba904129129d33a2b70e563c98913770208bad64e056470bcda33b455439bfed1ec7bedc28e1d4d00ad9f7227b30a528920bd29
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

### `dpkg` source package: `setuptools=59.6.0-1.2ubuntu0.22.04.3`

Binary Packages:

- `python3-pkg-resources=59.6.0-1.2ubuntu0.22.04.3`
- `python3-setuptools=59.6.0-1.2ubuntu0.22.04.3`

Licenses: (parsed from: `/usr/share/doc/python3-pkg-resources/copyright`, `/usr/share/doc/python3-setuptools/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris setuptools=59.6.0-1.2ubuntu0.22.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_59.6.0.orig.tar.gz' setuptools_59.6.0.orig.tar.gz 2281973 SHA256:22c7348c6d2976a52632c67f7ab0cdf40147db7789f9aed18734643fe9cf3373
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_59.6.0-1.2ubuntu0.22.04.3.debian.tar.xz' setuptools_59.6.0-1.2ubuntu0.22.04.3.debian.tar.xz 17692 SHA256:309eedcbdaf21eb281f94c16f1a1946e424e89f12f1370fdb8b2c39ac6617a9c
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_59.6.0-1.2ubuntu0.22.04.3.dsc' setuptools_59.6.0-1.2ubuntu0.22.04.3.dsc 2318 SHA256:fe973eea693fe8a4a2caf5cc2b6e588b6016b4bd9e415bec2b1d6d69666b1659
```

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

### `dpkg` source package: `shadow=1:4.8.1-2ubuntu2.2`

Binary Packages:

- `login=1:4.8.1-2ubuntu2.2`
- `passwd=1:4.8.1-2ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.8.1-2ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1.orig.tar.xz' shadow_4.8.1.orig.tar.xz 1611196 SHA256:a3ad4630bdc41372f02a647278a8c3514844295d36eefe68ece6c3a641c1ae62
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-2ubuntu2.2.debian.tar.xz' shadow_4.8.1-2ubuntu2.2.debian.tar.xz 98488 SHA256:7ea89214714f06a15925f6fb89de4d96a61ad5fc18bbd2ed210e7c4568f63391
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.8.1-2ubuntu2.2.dsc' shadow_4.8.1-2ubuntu2.2.dsc 2060 SHA256:09708d1e384f6b9d3ff1f65aa6c05db9260050e523c9e7a99331f60a42880d61
```

### `dpkg` source package: `sip4=4.19.25+dfsg-3build1`

Binary Packages:

- `python3-sip=4.19.25+dfsg-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-sip/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `SIP`

Source:

```console
$ apt-get source -qq --print-uris sip4=4.19.25+dfsg-3build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sip4/sip4_4.19.25%2bdfsg-3build1.dsc' sip4_4.19.25+dfsg-3build1.dsc 2343 SHA512:ca315d18d912733d6be76606b12c99b833ee5327052d343a380917f69afb94c3c0cb70359882bde281e05c0e1d6ee5afa9679030fceb716df9e714959bd8a48a
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sip4/sip4_4.19.25%2bdfsg.orig.tar.xz' sip4_4.19.25+dfsg.orig.tar.xz 406980 SHA512:88fe9878e7d1f1d5d95ad0340bac79e8a33965fbd54ab7c889ab4f3e5d0bd3b0095fe784b7cc3458ef167a6eb79baded5d8682081f4b690bcb8e86765d06077c
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sip4/sip4_4.19.25%2bdfsg-3build1.debian.tar.xz' sip4_4.19.25+dfsg-3build1.debian.tar.xz 17080 SHA512:5c9d152060a6df3ad9d9d444788d96c22caa17586f9d665780294bee3551bed4e847fda3c9d01ff3bdca4367a6ebb930e4ca7794c2db3980b767119a8fe29f5f
```

### `dpkg` source package: `six=1.16.0-3ubuntu1`

Binary Packages:

- `python3-six=1.16.0-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.16.0-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.16.0-3ubuntu1.dsc' six_1.16.0-3ubuntu1.dsc 2341 SHA512:d1d67c99780bba0c6fea7346b8ce47223cdd68a531b1f8e1d639617cf48b8c6dd6eaf7c860cf0036ca2892a7853fa809527b060dec90aa509fa00cbb1050bad2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.16.0.orig.tar.gz' six_1.16.0.orig.tar.gz 34041 SHA512:076fe31c8f03b0b52ff44346759c7dc8317da0972403b84dfe5898179f55acdba6c78827e0f8a53ff20afe8b76432c6fe0d655a75c24259d9acbaa4d9e8015c0
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.16.0-3ubuntu1.debian.tar.xz' six_1.16.0-3ubuntu1.debian.tar.xz 5072 SHA512:790dfd825c173fbfe6d54bc0e6bf8f6161b065ba1da561cb4e1fc8050e629f8d344a2e84e895855b7da696cf62acb2daf92aca8548a00f12e6eb239f30057e1c
```

### `dpkg` source package: `snowball=2.2.0-1build1`

Binary Packages:

- `python3-snowballstemmer=2.2.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-snowballstemmer/copyright`)

- `BSD-3-snowball`

Source:

```console
$ apt-get source -qq --print-uris snowball=2.2.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_2.2.0-1build1.dsc' snowball_2.2.0-1build1.dsc 2343 SHA512:5b0e7dfbf0afe74232b606a333f2e41d9c59e5e19a651d0d3bca9506734cc42d468b17fcac9fa5a0f9d7a8dcfe05ae0a5f2f893c0b7f25d15f1780535358dae9
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_2.2.0.orig.tar.gz' snowball_2.2.0.orig.tar.gz 223846 SHA512:02c43313de9de2518ea51cfb11f1c29145fc046c7838329bfdefd70b604009ad44b6db8175c25b0db31f03db30a6aec5857aa35775a9c204ec976df9cae62957
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_2.2.0-1build1.debian.tar.xz' snowball_2.2.0-1build1.debian.tar.xz 8476 SHA512:dedc416ebeb548b64fc3b88b50c82736c4ad3a9b1a10d217504979d34ad2eef259ab6435d439ac88849a9d82dfbdf4811dfcbe3b6ad10814aa17c3a609e6bdc4
```

### `dpkg` source package: `spdlog=1:1.9.2+ds-0.2`

Binary Packages:

- `libspdlog-dev:amd64=1:1.9.2+ds-0.2`
- `libspdlog1:amd64=1:1.9.2+ds-0.2`

Licenses: (parsed from: `/usr/share/doc/libspdlog-dev/copyright`, `/usr/share/doc/libspdlog1/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris spdlog=1:1.9.2+ds-0.2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.9.2%2bds-0.2.dsc' spdlog_1.9.2+ds-0.2.dsc 2136 SHA512:a6819ffaa495f5d3fd111d13bdbca25d3e1ccbeab86e30ecffa9535afd66313ce3cb316ca2d5c42fa7757177fc7e3791474a4e9136aee8f40f146578fbf81399
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.9.2%2bds.orig.tar.xz' spdlog_1.9.2+ds.orig.tar.xz 163388 SHA512:c4293364a21ed90537667ace2e4c5365f332bb6a6af989c2d82a71c09ed1d41dbb5b43110f9d99d87a3090b58a98058683910cc8c4b5d18753e1af14f23947e2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.9.2%2bds-0.2.debian.tar.xz' spdlog_1.9.2+ds-0.2.debian.tar.xz 6632 SHA512:dcc82ce72334d4adbcaafeb40a6f56889bea7ed2789bfc82cd2f40c2d03c9e489fb4b8e9f89911274115b37bf4e284cc7abedd760f76565f6432830741488182
```

### `dpkg` source package: `sphinx=4.3.2-1`

Binary Packages:

- `libjs-sphinxdoc=4.3.2-1`

Licenses: (parsed from: `/usr/share/doc/libjs-sphinxdoc/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `PSF-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sphinx=4.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_4.3.2-1.dsc' sphinx_4.3.2-1.dsc 3502 SHA512:a8b619e88c4d587ca37efe962bbac451ef6d7e3c5724a29eb54dd01dd72281af775c64c7be9943e3ec6b5a35d61a3b51d8eafbbf4b2b29408b637802f8cdc6fd
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_4.3.2.orig.tar.gz' sphinx_4.3.2.orig.tar.gz 6657148 SHA512:2045e1964aef54826a2cde30e6c09b7ec35d49a45b7e449c07ee107c41304435eb51e2be307af77bed4ec50534e6e4009501d58187baa1a129134b69cdc56dff
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_4.3.2.orig.tar.gz.asc' sphinx_4.3.2.orig.tar.gz.asc 833 SHA512:3d91964c5fa07ca928f40b4c871e9e0ba08c39c47ff81b4d6a3c9fecaae703e1ec2e5d597f5a29d1dcfaca58ac6d9303b6e074de5ac8c834ed8be22d7764bb9f
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_4.3.2-1.debian.tar.xz' sphinx_4.3.2-1.debian.tar.xz 40616 SHA512:1822779642dcf9297878082abae43fd751c7a7f34f4135516f3ff4a2d970f1d7222a5006cebd2b2c726990feee4a59badee2aee71e7643b12c6f15c636185f19
```

### `dpkg` source package: `sqlite3=3.37.2-2ubuntu0.6`

Binary Packages:

- `libsqlite3-0:amd64=3.37.2-2ubuntu0.6`
- `libsqlite3-dev:amd64=3.37.2-2ubuntu0.6`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `sudo=1.9.9-1ubuntu2.6`

Binary Packages:

- `sudo=1.9.9-1ubuntu2.6`

Licenses: (parsed from: `/usr/share/doc/sudo/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `ISC`
- `Zlib`
- `other`

Source:

```console
$ apt-get source -qq --print-uris sudo=1.9.9-1ubuntu2.6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.9.orig.tar.gz' sudo_1.9.9.orig.tar.gz 4456969 SHA256:6d6ee863a3bc26c87661093a74ec63e10fd031ceba714642d21636dfe25e3e00
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.9.orig.tar.gz.asc' sudo_1.9.9.orig.tar.gz.asc 833 SHA256:799e03bdeb3d4eaaefed3cb16546bcd6cba310d573ad4dc39cf5bbf91578810c
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.9-1ubuntu2.6.debian.tar.xz' sudo_1.9.9-1ubuntu2.6.debian.tar.xz 53676 SHA256:466ff6fd38d8e3945f87f6caa98bcadb75f139f158c681e35893094e83a3876f
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.9-1ubuntu2.6.dsc' sudo_1.9.9-1ubuntu2.6.dsc 2595 SHA256:1eb62fdb5bf02d9a3efdc8105d61f490bbb236ac5f9b0cb892a66dce4e83f8a8
```

### `dpkg` source package: `systemd=249.11-0ubuntu3.21`

Binary Packages:

- `libsystemd0:amd64=249.11-0ubuntu3.21`
- `libudev1:amd64=249.11-0ubuntu3.21`

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
$ apt-get source -qq --print-uris systemd=249.11-0ubuntu3.21
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11.orig.tar.gz' systemd_249.11.orig.tar.gz 10622702 SHA512:fed7f81933648945a4bfac9fb12150ecd84d32181f79be0e14e0b3a789343a87569f868670e0b8dfc2801fab39f7490f95ee8c29ba831d7611f78c14ace5ddd8
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11-0ubuntu3.21.debian.tar.xz' systemd_249.11-0ubuntu3.21.debian.tar.xz 269776 SHA512:69037e8087700a97e6128f36c3d3c5a75a5c8ba5daea3bdcb02512c0c6bb51da65c125fe0f30a45500dea8cd8b4c626dd252123baa5b368d52322c60e27329a6
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_249.11-0ubuntu3.21.dsc' systemd_249.11-0ubuntu3.21.dsc 5907 SHA512:8aef6fd4cf395232a58ac3d29ef63ee2e3c5ead2db35831f9d410bfaab0c24235ff9a5852d1d9ffe3d093355bdd2df7846f090161b27f0f452cc71d2dac7bcb8
```

### `dpkg` source package: `sysvinit=3.01-1ubuntu1`

Binary Packages:

- `sysvinit-utils=3.01-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=3.01-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01-1ubuntu1.dsc' sysvinit_3.01-1ubuntu1.dsc 2138 SHA512:650c939b7af5189cddf6509dd2b6a995c7b389ab4ee33bdad267d8c2b5b5506716b03e512563ed3e3265b32d2d1a9119ee0193f3dc82354896029ae124d2a276
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01.orig.tar.xz' sysvinit_3.01.orig.tar.xz 126400 SHA512:d3b197fcfccfbc2ad95fe208fb37ed1fcc8173a7a0254528c0d8c6800b054d96e20b48274c55137f19305c105700c35974d454b4bbf5e51fbbf5c082d562167b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.01-1ubuntu1.debian.tar.xz' sysvinit_3.01-1ubuntu1.debian.tar.xz 131304 SHA512:4c835855b58742480284b17959d54b8ac734466fc87321ddf021b61bb3e38b58aab6d07a7f27f09c0b109b4e442c0dce4d797feccce2884f5b401e13abf73554
```

### `dpkg` source package: `tar=1.34+dfsg-1ubuntu0.1.22.04.3`

Binary Packages:

- `tar=1.34+dfsg-1ubuntu0.1.22.04.3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `tiff=4.3.0-6ubuntu0.13`

Binary Packages:

- `libtiff5:amd64=4.3.0-6ubuntu0.13`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.3.0-6ubuntu0.13
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.3.0.orig.tar.gz' tiff_4.3.0.orig.tar.gz 2808254 SHA256:0e46e5acb087ce7d1ac53cf4f56a09b221537fc86dfc5daaad1c2e89e1b37ac8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.3.0.orig.tar.gz.asc' tiff_4.3.0.orig.tar.gz.asc 488 SHA256:6e41d0a4c042d2903f28534eb696a16409ccde9aaa2d02d06b5daaabbfb94aa7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.3.0-6ubuntu0.13.debian.tar.xz' tiff_4.3.0-6ubuntu0.13.debian.tar.xz 53840 SHA256:5f73e950e9026c687f79294866d003810d7647ebefa0d4c9ba7bc34985cbdf07
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.3.0-6ubuntu0.13.dsc' tiff_4.3.0-6ubuntu0.13.dsc 2402 SHA256:9db6c768cc538e9ae1767fa2a49264d1f18750b32d72d89e4685c500da53580b
```

### `dpkg` source package: `tinyxml2=9.0.0+dfsg-3`

Binary Packages:

- `libtinyxml2-9:amd64=9.0.0+dfsg-3`
- `libtinyxml2-dev:amd64=9.0.0+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-9/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=9.0.0+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_9.0.0%2bdfsg-3.dsc' tinyxml2_9.0.0+dfsg-3.dsc 2009 SHA512:788e78a1583d6f50eb574fc5f526355a55e8f6aa669c6abfecad526556532e3223bf4151bf206af6306d5394ee1b3806b4f9f1daa8afc66f881612b71db25360
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_9.0.0%2bdfsg.orig.tar.xz' tinyxml2_9.0.0+dfsg.orig.tar.xz 336516 SHA512:2c11456769fa363d7116d4ce2e3fc2e67643beee5f3814e721b36a613e1bc5050c3b88199ca4b18342622ec493bf1171560ecb21b23d24ed49a1e01a5dd8ff2a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_9.0.0%2bdfsg-3.debian.tar.xz' tinyxml2_9.0.0+dfsg-3.debian.tar.xz 8408 SHA512:ceff569f2add4c9bc9f87ab37ddf2e19e3ebdb848dacf70475d136e0051f0992636aaabb365e5c0f0aa0cf9fc3a371aff2f7b5ee1a5575298880ffd90db875ea
```

### `dpkg` source package: `tinyxml=2.6.2-6ubuntu0.22.04.1`

Binary Packages:

- `libtinyxml-dev:amd64=2.6.2-6ubuntu0.22.04.1`
- `libtinyxml2.6.2v5:amd64=2.6.2-6ubuntu0.22.04.1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml-dev/copyright`, `/usr/share/doc/libtinyxml2.6.2v5/copyright`)

- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris tinyxml=2.6.2-6ubuntu0.22.04.1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2.orig.tar.gz' tinyxml_2.6.2.orig.tar.gz 210124 SHA256:15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-6ubuntu0.22.04.1.debian.tar.xz' tinyxml_2.6.2-6ubuntu0.22.04.1.debian.tar.xz 5644 SHA256:98bace360e88f07aabcf4a14d2952a93a1a5a325debeaf47e715ec0e8cea6a15
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml/tinyxml_2.6.2-6ubuntu0.22.04.1.dsc' tinyxml_2.6.2-6ubuntu0.22.04.1.dsc 1974 SHA256:a10826f50c41b49201b36402aeb7007e215c7f7940d348d92160b91a40f955ba
```

### `dpkg` source package: `tzdata=2026a-0ubuntu0.22.04.1`

Binary Packages:

- `tzdata=2026a-0ubuntu0.22.04.1`

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

### `dpkg` source package: `uncrustify=0.72.0+dfsg1-2`

Binary Packages:

- `uncrustify=0.72.0+dfsg1-2`

Licenses: (parsed from: `/usr/share/doc/uncrustify/copyright`)

- `Artistic`
- `GPL`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris uncrustify=0.72.0+dfsg1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.72.0%2bdfsg1-2.dsc' uncrustify_0.72.0+dfsg1-2.dsc 1594 SHA512:fc18c5a323ecc5f10d9ca5bb60f144d691557a25270e254ef08f68c722e7a4341b7d8ed1d18df1badb3c07c1a8cfc5f87231670a46a6256b9ebd00b688959b3e
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.72.0%2bdfsg1.orig.tar.xz' uncrustify_0.72.0+dfsg1.orig.tar.xz 866560 SHA512:ce8473747f2cc861dac7a6186861766b4b9061838a54a48925586f1de8f2b9c796494afe6421073758ecb31c939d97ebdb3888600bc395727a80ad941fbdfee2
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.72.0%2bdfsg1-2.debian.tar.xz' uncrustify_0.72.0+dfsg1-2.debian.tar.xz 6392 SHA512:0c015180757533c66d1d99898650919cdd3076a1361d558b75f9d599e6a8b25c8f2919b48d77240996d5482ea603a7452c3bb6cee828f2d0adc4203b6f7c3657
```

### `dpkg` source package: `underscore=1.13.2~dfsg-2`

Binary Packages:

- `libjs-underscore=1.13.2~dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libjs-underscore/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris underscore=1.13.2~dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/u/underscore/underscore_1.13.2%7edfsg-2.dsc' underscore_1.13.2~dfsg-2.dsc 2200 SHA512:452ea2d91ddbdd394c44fd18b8cab3a82ef4816787fa9a89c9f3059591d8e7c623e3ef983e26fabadf5918705ea99ef4ee6ea1a6b6f8a456590a7cc38ec85764
'http://archive.ubuntu.com/ubuntu/pool/main/u/underscore/underscore_1.13.2%7edfsg.orig.tar.xz' underscore_1.13.2~dfsg.orig.tar.xz 215248 SHA512:f13d496724e2418f177dd44ec119b5124729168aaf92b8a284ff8481a3603540f90b0e33a02d481c65225cff2972a41e671f4feb2be33e92e741caaf84c57295
'http://archive.ubuntu.com/ubuntu/pool/main/u/underscore/underscore_1.13.2%7edfsg-2.debian.tar.xz' underscore_1.13.2~dfsg-2.debian.tar.xz 8988 SHA512:4840dbbd2c73cdc284b7afe2da85dd0b14b5cc64bf7b4eeef18706c7ca6fdddc2feb0912ca5872855df07fc3981ea0720af93bbd5f85723ee1c291304a2d7fab
```

### `dpkg` source package: `usrmerge=25ubuntu2`

Binary Packages:

- `usrmerge=25ubuntu2`

Licenses: (parsed from: `/usr/share/doc/usrmerge/copyright`)

- `GPL v2`
- `GPL-2`
- `later (please see /usr/share/common-licenses/GPL-2)`

Source:

```console
$ apt-get source -qq --print-uris usrmerge=25ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_25ubuntu2.dsc' usrmerge_25ubuntu2.dsc 1614 SHA512:2f0ea8dbed8277d1fef2f2c70c0075ce509579161fe2dc3a161919d3015c67caff01aa14ba3df7fa7d6b45ce63dbad48389c418781334d83e308ee16988fa9bc
'http://archive.ubuntu.com/ubuntu/pool/main/u/usrmerge/usrmerge_25ubuntu2.tar.xz' usrmerge_25ubuntu2.tar.xz 12812 SHA512:dac8ccc7e2b75c424990713869f80d62d22e1cd86cb35c1784c7e76a12096b8c3f3000cefb406456f6f5c459d14858e710d426ee11714d1a5e342e04186f8353
```

### `dpkg` source package: `util-linux=2.37.2-4ubuntu3.5`

Binary Packages:

- `bsdutils=1:2.37.2-4ubuntu3.5`
- `libblkid1:amd64=2.37.2-4ubuntu3.5`
- `libmount1:amd64=2.37.2-4ubuntu3.5`
- `libsmartcols1:amd64=2.37.2-4ubuntu3.5`
- `libuuid1:amd64=2.37.2-4ubuntu3.5`
- `mount=2.37.2-4ubuntu3.5`
- `util-linux=2.37.2-4ubuntu3.5`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.37.2-4ubuntu3.5
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2.orig.tar.xz' util-linux_2.37.2.orig.tar.xz 5621624 SHA256:6a0764c1aae7fb607ef8a6dd2c0f6c47d5e5fd27aa08820abaad9ec14e28e9d9
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2-4ubuntu3.5.debian.tar.xz' util-linux_2.37.2-4ubuntu3.5.debian.tar.xz 115268 SHA256:fe69a2cc84ddcfb17a47f57b8c39c3919844bd92ef8868b40676656025f391c8
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.37.2-4ubuntu3.5.dsc' util-linux_2.37.2-4ubuntu3.5.dsc 4550 SHA256:024c983405cf31b5ba1230c99d27fd340552c0f59e05b4d94f222d9e399ac522
```

### `dpkg` source package: `xml-core=0.18+nmu1`

Binary Packages:

- `xml-core=0.18+nmu1`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.18+nmu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18%2bnmu1.dsc' xml-core_0.18+nmu1.dsc 1632 SHA512:1c3a335850618902a71478ee26136848e7de12f1ec090cca0598d1a2e4810f3fa5b97d65fd058752e904c1073a36785bef3b088ce34623de290e3c80c971b69b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18%2bnmu1.tar.xz' xml-core_0.18+nmu1.tar.xz 21312 SHA512:568a3e73acb64db8074e88813a6f64c9839a92e9afba6bbb90e5852e2cc6565636e380ba87fec6d29aa6b4eaa896131ef2d404ed3811443a4df1c6bdb3d1545b
```

### `dpkg` source package: `xorg=1:7.7+23ubuntu2`

Binary Packages:

- `x11-common=1:7.7+23ubuntu2`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+23ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b23ubuntu2.dsc' xorg_7.7+23ubuntu2.dsc 2095 SHA512:f4befc0dd73c66f56856f16c4dc4051f58af50bd8819469df4bb309817952e00f2f4e29776282f85eeaef18a77fdd42cb1cfcb9a69432c4680b216039b37e480
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b23ubuntu2.tar.gz' xorg_7.7+23ubuntu2.tar.gz 301762 SHA512:379e60ab57cc4f9adbf1f59295fca3930bbd638f4100d08c9f1f78bd6ef063e3396385b841e66389771c4ba5825875d738b9aa4b4dc2e3f79d0537415ac0852a
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

### `dpkg` source package: `xz-utils=5.2.5-2ubuntu1.1`

Binary Packages:

- `liblzma5:amd64=5.2.5-2ubuntu1.1`
- `xz-utils=5.2.5-2ubuntu1.1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.5-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz' xz-utils_5.2.5.orig.tar.xz 1148824 SHA512:59266068a51cb616eb31b67cd8f07ffeb2288d1391c61665ae2ec6814465afac80fec69248f6a2f2db45b44475af001296a99af6a32287226a9c41419173ccbb
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz.asc' xz-utils_5.2.5.orig.tar.xz.asc 833 SHA512:582864ae306861ede34074ebfd23ab161ad3340ab4a068f727583de2bd2058da70dfe73019f4e70b8267e0e0c62f275da1e23f47d40c0b80038449b0ac335020
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2ubuntu1.1.debian.tar.xz' xz-utils_5.2.5-2ubuntu1.1.debian.tar.xz 36020 SHA512:2baca5944d2af4f31e3f41d0e3a4c9e0fe03963210947347d0abcb28775165be1097f5b8c195162eb0c6a0a85694588ef0c7bb6a8315dc6c984f2320964c24a5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.5-2ubuntu1.1.dsc' xz-utils_5.2.5-2ubuntu1.1.dsc 2467 SHA512:ce7120ae2e0320d6ff5d13419fc8b77cd368cc6f7c258d7ffde97e4522eb1e5595f6c418efe88dff2b67ebac9976e89dccfff0961b4912ac63d129dd2bb8b47f
```

### `dpkg` source package: `yaml-cpp=0.7.0+dfsg-8build1`

Binary Packages:

- `libyaml-cpp-dev=0.7.0+dfsg-8build1`
- `libyaml-cpp0.7:amd64=0.7.0+dfsg-8build1`

Licenses: (parsed from: `/usr/share/doc/libyaml-cpp-dev/copyright`, `/usr/share/doc/libyaml-cpp0.7/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris yaml-cpp=0.7.0+dfsg-8build1
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.7.0%2bdfsg-8build1.dsc' yaml-cpp_0.7.0+dfsg-8build1.dsc 2213 SHA512:a5b80134cfc188e02593142c08d1aff0538c379a609f6d972f0af18fdf755a1c5e4543032b46253a1b6b893ec461e2b25adaa14cc90d4af5d0ad7cb3fa899906
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.7.0%2bdfsg.orig.tar.xz' yaml-cpp_0.7.0+dfsg.orig.tar.xz 103972 SHA512:8519c153edfbb2324deeb7c5586545680d31790c40849ef8dcdf03a0e6c3ed208f154639583a8140b198325f955ca407ae2812fbb1e6694b9cf646ba6a8ef2c2
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.7.0%2bdfsg-8build1.debian.tar.xz' yaml-cpp_0.7.0+dfsg-8build1.debian.tar.xz 13900 SHA512:c651cb3d3dbe5773a4132afa9ebbfb5a4a737ef0fbc8f16f9dcf20fb26ebd6aa6dbf6250519d494692a149610e31a50162ceb23e7d9bb462363a3842df499391
```

### `dpkg` source package: `z3=4.8.12-1`

Binary Packages:

- `libz3-4:amd64=4.8.12-1`

Licenses: (parsed from: `/usr/share/doc/libz3-4/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris z3=4.8.12-1
'http://archive.ubuntu.com/ubuntu/pool/universe/z/z3/z3_4.8.12-1.dsc' z3_4.8.12-1.dsc 2642 SHA512:80334728cedc76e545625685e6e75c460f5380fd633ed17a895511acd8bfc709d732da6e4c0468eef3b46d4c49fe8646c0b8e25e6bdaf4c9653b18efd5a14f25
'http://archive.ubuntu.com/ubuntu/pool/universe/z/z3/z3_4.8.12.orig.tar.gz' z3_4.8.12.orig.tar.gz 4803435 SHA512:0b377923bdaffaca1846aa2abd61003bbecadfcdfc908ed3097d0aac8f32028ac39d93fb4a9c2e2c2bfffbdbee80aa415875f17de6c2ee2ae8e2b7921f788c6e
'http://archive.ubuntu.com/ubuntu/pool/universe/z/z3/z3_4.8.12-1.debian.tar.xz' z3_4.8.12-1.debian.tar.xz 9896 SHA512:ebc23dbfdde0e254566f7d9086bddd1a4b0f9e21ee4274580e1d9e03136bb45d0fea9185035fd6db8976bc3d2194f2a29fa004bce4733fb20ad812f6f09a17cb
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-2ubuntu9.2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-2ubuntu9.2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-2ubuntu9.2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-2ubuntu9.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu9.2.debian.tar.xz' zlib_1.2.11.dfsg-2ubuntu9.2.debian.tar.xz 60140 SHA256:5678d0b3d1e609297e5a3dedfcb3474bab1cafe82c0c29aec2cef01e49a88d39
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-2ubuntu9.2.dsc' zlib_1.2.11.dfsg-2ubuntu9.2.dsc 2649 SHA256:ac50a5e5803c128eaef7eceda71fa13ffab3ed1e949008be244d8754d9c59e47
```
