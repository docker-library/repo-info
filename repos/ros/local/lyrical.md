# `ros:lyrical-ros-base`

## Docker Metadata

- Image ID: `sha256:2eeea468a4b632538a2fced270da1581024b0d353e27ab05e4cd23644193fa7f`
- Created: `2026-08-18T20:24:16.344438068Z`
- Virtual Size: ~ 1 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=lyrical`
- Labels:
  - `org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00`
  - `org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.
`
  - `org.opencontainers.image.title=ubuntu`
  - `org.opencontainers.image.version=26.04`

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.dsc' acl_2.3.2-2.dsc 2604 SHA256:1f42130ccb5442fe2db2aee1dcc03c51a31512dd2519a38e8fc9270c5abbc807
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz' acl_2.3.2.orig.tar.xz 371680 SHA256:97203a72cae99ab89a067fe2210c1cbf052bc492b479eca7d226d9830883b0bd
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2.orig.tar.xz.asc' acl_2.3.2.orig.tar.xz.asc 833 SHA256:184c6a903490885a096095db67b433a04542c6569f167cbe8115268c0f227273
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.3.2-2.debian.tar.xz' acl_2.3.2-2.debian.tar.xz 24296 SHA256:e27b6e194c0a7554595d76f96acdceb800631bdc46c36457b73bc7e4a0c5f2ee
```

### `dpkg` source package: `adduser=3.153ubuntu1`

Binary Packages:

- `adduser=3.153ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.153ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.153ubuntu1.tar.xz' adduser_3.153ubuntu1.tar.xz 339348 SHA256:bb3c29bd281f2d06183c0ab348cf37f6142741fbb2f8ee7a8d263ef3888983b1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.153ubuntu1.dsc' adduser_3.153ubuntu1.dsc 1807 SHA256:a4242f3e9dbbf4979b7960abbfcad7ff06499629eda2eb53d8c3527e95fff84c
```

### `dpkg` source package: `aom=3.13.1-2`

Binary Packages:

- `libaom3:amd64=3.13.1-2`

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
$ apt-get source -qq --print-uris aom=3.13.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1-2.dsc' aom_3.13.1-2.dsc 2402 SHA256:f55a29106fee067b34566cdaefd42e72aa7293ab26a7ab05903de05b4cb6bffc
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1.orig.tar.gz' aom_3.13.1.orig.tar.gz 6262920 SHA256:73f73d1ef94f93868edf2fae2bf80eca9c66a5813cfa63ef5e4c8d367c84e814
'http://archive.ubuntu.com/ubuntu/pool/main/a/aom/aom_3.13.1-2.debian.tar.xz' aom_3.13.1-2.debian.tar.xz 20840 SHA256:6617c623a0b4cbc3eab39a222bea3671b5e46fc8c4598b493e173f565810479e
```

### `dpkg` source package: `apparmor=5.0.2-0ubuntu1~26.04.1`

Binary Packages:

- `libapparmor1:amd64=5.0.2-0ubuntu1~26.04.1`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=5.0.2-0ubuntu1~26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2.orig.tar.gz' apparmor_5.0.2.orig.tar.gz 7613576 SHA512:e56c2a810f90541597091c44794afb316b790701df80f41047ec6bba3c1a0f2c1e01e47593e12c622262a677ca4c274cbd9800e148eb0957020a5e727a4c4f29
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2-0ubuntu1%7e26.04.1.debian.tar.xz' apparmor_5.0.2-0ubuntu1~26.04.1.debian.tar.xz 118224 SHA512:d9efce0ae0722753a77aad042a9e2b9526462c48735ada270feee8291795adb87c31f879b679f7b6be99ccf4b50690e2c5adc993ab7626d189c1460b73a720d1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_5.0.2-0ubuntu1%7e26.04.1.dsc' apparmor_5.0.2-0ubuntu1~26.04.1.dsc 3522 SHA512:d2013fbabfec519da9c3d9f7bc2e9f221f5e083ad30c66c18fe47251240a16c8256d0a232f4b5f932c0b2a70c3421604fb954409e23983bd052835c98dc1461a
```

### `dpkg` source package: `apt=3.2.0`

Binary Packages:

- `apt=3.2.0`
- `libapt-pkg7.0:amd64=3.2.0`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg7.0/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris apt=3.2.0
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.2.0.dsc' apt_3.2.0.dsc 3127 SHA512:4a4582b1949244b0f597f2c4ba09bab21f734b1c0d1168d340992821f4fb1b1e09ec8a2f9a77b9380f09b4d7cf2989acfa02d8f91601d7a210367039ed41a947
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_3.2.0.tar.xz' apt_3.2.0.tar.xz 2476660 SHA512:02a029afdbc7612d860e145120113da0e25abcb5cbef947f5838fae41d02361d3c150322ef24a0d6e675d66e45b491da53fd0e5c8311d45f017a72e8eba6e33f
```

### `dpkg` source package: `attr=1:2.5.2-4`

Binary Packages:

- `libattr1:amd64=1:2.5.2-4`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4.dsc' attr_2.5.2-4.dsc 2614 SHA256:256e36ed6f60a39813a304a11617a3e573a11019db007a891bfeff7f2dad7175
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz' attr_2.5.2.orig.tar.xz 334180 SHA256:f2e97b0ab7ce293681ab701915766190d607a1dba7fae8a718138150b700a70b
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz.asc' attr_2.5.2.orig.tar.xz.asc 833 SHA256:eeac729088d3c6379e91b7596cb3582e46b047c47f0fa3c5c77f9c9e84dc3a4c
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4.debian.tar.xz' attr_2.5.2-4.debian.tar.xz 32372 SHA256:d49f176ceaceb3679141e9bb00a7595848e91b4c4db8682f81a828109ee6e2c7
```

### `dpkg` source package: `audit=1:4.1.2-1build1`

Binary Packages:

- `libaudit-common=1:4.1.2-1build1`
- `libaudit1:amd64=1:4.1.2-1build1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.1.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2.orig.tar.gz' audit_4.1.2.orig.tar.gz 656095 SHA256:5c638bbeef9adb6c5715d3a60f0f5adb93e9b81633608af13d23c61f5e5db04d
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1build1.debian.tar.xz' audit_4.1.2-1build1.debian.tar.xz 19800 SHA256:f5448b31a499220c1e48f8eaae57306a1d76b1ca7f1534f63ce13fbcf9e60efe
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1build1.dsc' audit_4.1.2-1build1.dsc 2891 SHA256:9d273637613a8a29a29ade25bbed913362aeefd08ca5f19504d4df391ef08201
```

### `dpkg` source package: `base-files=14ubuntu6.1`

Binary Packages:

- `base-files=14ubuntu6.1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`
- `GPL-2+`
- `verbatim`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `base-passwd=3.6.8`

Binary Packages:

- `base-passwd=3.6.8`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.6.8
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.dsc' base-passwd_3.6.8.dsc 2044 SHA256:e76e572d2653f2b8eda64c662f5b4310a978ef1fdd039410ace5f6355c3af7d6
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.6.8.tar.xz' base-passwd_3.6.8.tar.xz 61840 SHA256:fab3d0e6e8b641e116bda9bd5f7a7ed24482384c1513f6a369b506327fbc8dde
```

### `dpkg` source package: `bash=5.3-2ubuntu1`

Binary Packages:

- `bash=5.3-2ubuntu1`

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
$ apt-get source -qq --print-uris bash=5.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3.orig.tar.xz' bash_5.3.orig.tar.xz 5571836 SHA256:a70de6bb41f5e192534a5a1836b1d7fad9a8d4818a6e1506d70f38441552c17a
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-2ubuntu1.debian.tar.xz' bash_5.3-2ubuntu1.debian.tar.xz 98872 SHA256:855d84044d14c7c11cd84e5aa0994961f7de72b932109bb3a18d1f809c9551d4
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_5.3-2ubuntu1.dsc' bash_5.3-2ubuntu1.dsc 2246 SHA256:a7127d8ebb439412493b10908b3b448bf0947637d0aaac88833e3572d951e62c
```

### `dpkg` source package: `binutils=2.46-3ubuntu2`

Binary Packages:

- `binutils=2.46-3ubuntu2`
- `binutils-common:amd64=2.46-3ubuntu2`
- `binutils-x86-64-linux-gnu=2.46-3ubuntu2`
- `libbinutils:amd64=2.46-3ubuntu2`
- `libctf-nobfd0:amd64=2.46-3ubuntu2`
- `libctf0:amd64=2.46-3ubuntu2`
- `libgprofng0:amd64=2.46-3ubuntu2`
- `libsframe3:amd64=2.46-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`, `/usr/share/doc/libctf-nobfd0/copyright`, `/usr/share/doc/libctf0/copyright`, `/usr/share/doc/libgprofng0/copyright`, `/usr/share/doc/libsframe3/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.46-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46.orig.tar.xz' binutils_2.46.orig.tar.xz 29830224 SHA256:a389850c2d3919f2cc96fb8b5e7711eacfc819259aaffb11615c9fb9756eaeae
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46-3ubuntu2.debian.tar.xz' binutils_2.46-3ubuntu2.debian.tar.xz 136556 SHA256:3c239143b144584a15d38f84f5f0fc7ca9ddfb930ce369cd0035466e27d4d2ec
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.46-3ubuntu2.dsc' binutils_2.46-3ubuntu2.dsc 9064 SHA256:99bb7521f86e2ab17fc7244aa084bb4ea000dbe78ef73eb1e4a1adda0b68937d
```

### `dpkg` source package: `brotli=1.2.0-3build1`

Binary Packages:

- `libbrotli1:amd64=1.2.0-3build1`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA256:eb5f7dadf215d0670665fd81566e1fe2dfdc154d983f09142de7299df4c182e6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.debian.tar.xz' brotli_1.2.0-3build1.debian.tar.xz 5976 SHA256:7ebbb009f9e33f54a7790e95da60af4667a3fc4a914b79ad49bfc06bb396d829
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.dsc' brotli_1.2.0-3build1.dsc 2281 SHA256:07c51f4299d065d4ae3cc269e9a837b9723453632fe62039cc47723a7d620eda
```

### `dpkg` source package: `build-essential=12.12ubuntu2.26.04.2`

Binary Packages:

- `build-essential=12.12ubuntu2.26.04.2`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.12ubuntu2.26.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.12ubuntu2.26.04.2.tar.xz' build-essential_12.12ubuntu2.26.04.2.tar.xz 52144 SHA512:263baf9b8b181967354c376b2f4d533a9fbb607b4245b7afc5811878b76863ab52405de834085d4ad7aa67c0468dd5880aaa4bfbadb48cb1e07b0eb8fe1ed338
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.12ubuntu2.26.04.2.dsc' build-essential_12.12ubuntu2.26.04.2.dsc 2290 SHA512:9d7cf1292916342d44a91b26aa427762e4e41f65ec6792a0a6c0c6e6ef88485ba56426df08181a22ae29d927902fe1845dc6279fc2a7fcde1ec2f7a6d783bbe1
```

### `dpkg` source package: `bullet=3.24+dfsg-5`

Binary Packages:

- `libbullet-dev:amd64=3.24+dfsg-5`
- `libbullet3.24t64:amd64=3.24+dfsg-5`

Licenses: (parsed from: `/usr/share/doc/libbullet-dev/copyright`, `/usr/share/doc/libbullet3.24t64/copyright`)

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
$ apt-get source -qq --print-uris bullet=3.24+dfsg-5
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg-5.dsc' bullet_3.24+dfsg-5.dsc 2360 SHA256:13acae792da013bc250ad415fbc0625444d8ffa75146a449f33174246a4db053
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg.orig.tar.xz' bullet_3.24+dfsg.orig.tar.xz 1581896 SHA256:43c1edae2024ba18bb5d7bfd3bb2394b066a79151a29789504a2d8efcdc333d7
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bullet/bullet_3.24%2bdfsg-5.debian.tar.xz' bullet_3.24+dfsg-5.debian.tar.xz 13228 SHA256:287ce8be87d26c087472f1d1c66998e5084ed1b20925ca40123da31d0ed1b3f2
```

### `dpkg` source package: `bzip2=1.0.8-6build2`

Binary Packages:

- `bzip2=1.0.8-6build2`
- `libbz2-1.0:amd64=1.0.8-6build2`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6build2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.debian.tar.bz2' bzip2_1.0.8-6build2.debian.tar.bz2 27136 SHA256:39576cdf8211af8b7d3fe1419245299bf4dd2d9c1ae43ffc72cbc4a8f21f2c71
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6build2.dsc' bzip2_1.0.8-6build2.dsc 2205 SHA256:61558c8f0254e5bdfc013ee538374e9ca66183d8ea6c695ab7d4f33ce169cf27
```

### `dpkg` source package: `ca-certificates=20260601~26.04.1`

Binary Packages:

- `ca-certificates=20260601~26.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260601~26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e26.04.1.tar.xz' ca-certificates_20260601~26.04.1.tar.xz 267380 SHA512:d82662a6c959c6d2cbd463a986eda6a500bd1b4ae53e904bcabc3076b33b5662f93a52e69e15371694391a5fb12c313224a5447c73ab1b921cef0317e907b2f4
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260601%7e26.04.1.dsc' ca-certificates_20260601~26.04.1.dsc 1769 SHA512:e8be457fd3aa8cacaf00e112858116c1b99f5af889f27f298a9880baea1b2a4014f07974c6bcbfa66ddf901271653daf7413b590d0bf26b6d488a6329bb92d14
```

### `dpkg` source package: `cairo=1.18.4-3`

Binary Packages:

- `libcairo2:amd64=1.18.4-3`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.18.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.dsc' cairo_1.18.4-3.dsc 2784 SHA256:5dfb99f2896a2f23810cde3e80e930bd917079b143e4e984feb44ba018590d2a
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4.orig.tar.xz' cairo_1.18.4.orig.tar.xz 32578804 SHA256:445ed8208a6e4823de1226a74ca319d3600e83f6369f99b14265006599c32ccb
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.18.4-3.debian.tar.xz' cairo_1.18.4-3.debian.tar.xz 29988 SHA256:25cb656a9c4165f36950b01710683efce6b5b0e30b80d81d519d7c3d1a2f7b2a
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
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.tar.xz' cdebconf_0.280ubuntu1.tar.xz 287352 SHA256:74601a49d86a2437131a552c577c7e15b2446f43d5112d9e32a312d5616abbd3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.280ubuntu1.dsc' cdebconf_0.280ubuntu1.dsc 2873 SHA256:8e2ae2596d7850599eb0974c9ac31380e06aaf0be5a3b86b45e48a1b5c8a4cc7
```

### `dpkg` source package: `cmake=4.2.3-2ubuntu2`

Binary Packages:

- `cmake=4.2.3-2ubuntu2`
- `cmake-data=4.2.3-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cmake/copyright`, `/usr/share/doc/cmake-data/copyright`)

- `Apache-2.0`
- `BSD-0-Clause`
- `BSD-2-Clause`
- `BSD-3-Clause`
- `BSD-3-clause`
- `BSD-4-Clause`
- `Expat`
- `FSFAP`
- `GPL-2`
- `GPL-2+ with Bison exception`
- `GPL-3`
- `GPL-3+ with Bison exception`
- `ISC`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cmake=4.2.3-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3.orig.tar.gz' cmake_4.2.3.orig.tar.gz 12345147 SHA256:7efaccde8c5a6b2968bad6ce0fe60e19b6e10701a12fce948c2bf79bac8a11e9
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3-2ubuntu2.debian.tar.xz' cmake_4.2.3-2ubuntu2.debian.tar.xz 36096 SHA256:d0999ef9347bcb505a2aecdea98c635b026f2ff1aab3b037cca63f3809b200f3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_4.2.3-2ubuntu2.dsc' cmake_4.2.3-2ubuntu2.dsc 3579 SHA256:77ae4d395392d674c8bb2f9b0e063074564aa45a2a2818e1359867b7ac10edb7
```

### `dpkg` source package: `console-bridge=1.0.1+dfsg2-4`

Binary Packages:

- `libconsole-bridge-dev:amd64=1.0.1+dfsg2-4`
- `libconsole-bridge1.0:amd64=1.0.1+dfsg2-4`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge1.0/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=1.0.1+dfsg2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-4.dsc' console-bridge_1.0.1+dfsg2-4.dsc 2397 SHA256:6789559b76e157a470a7c10b572cab347be86f4083a44c7145f3448454d701d1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2.orig.tar.xz' console-bridge_1.0.1+dfsg2.orig.tar.xz 10352 SHA256:d5ae857cd3bb3d6f6715a4d7a18ced55540ca9ad864e80a8c8258dba12ccf659
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_1.0.1%2bdfsg2-4.debian.tar.xz' console-bridge_1.0.1+dfsg2-4.debian.tar.xz 4484 SHA256:eb0cc7c036cda1f2bb233fc88e7484064586ab7f04cceb67801e7387a2630213
```

### `dpkg` source package: `coreutils-from=0.0.0~ubuntu25`

Binary Packages:

- `coreutils=9.5-1ubuntu2+0.0.0~ubuntu25`
- `coreutils-from-uutils=0.0.0~ubuntu25`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`, `/usr/share/doc/coreutils-from-uutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils-from=0.0.0~ubuntu25
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu25.tar.xz' coreutils-from_0.0.0~ubuntu25.tar.xz 7548 SHA512:11e3088d8b610ec45bcfa448fdc4a6f03acef55d1e9f6a01dc49e525ba0fefa15ebd21dc2a96686cdffcaa179bf1eb0e87aad25b3585c7c053afdb4540d881fa
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils-from/coreutils-from_0.0.0%7eubuntu25.dsc' coreutils-from_0.0.0~ubuntu25.dsc 1958 SHA512:8cb63710ed9acb7f69fd55e825a69ee9278b6190dbed219bb5d044333d2da59db4bd50f9a377300e7421efe70c3b9858b9933c6fe517433616e84ff0a9c4a252
```

### `dpkg` source package: `coreutils=9.7-3ubuntu2`

Binary Packages:

- `gnu-coreutils=9.7-3ubuntu2`

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


### `dpkg` source package: `cppcheck=2.19.0-3`

Binary Packages:

- `cppcheck=2.19.0-3`

Licenses: (parsed from: `/usr/share/doc/cppcheck/copyright`)

- `BSD-2`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris cppcheck=2.19.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0-3.dsc' cppcheck_2.19.0-3.dsc 2132 SHA256:aed65a2e6820966955c6fc6bbeff7569744ae69bfdeee148309014afe0a5bfb5
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0.orig.tar.gz' cppcheck_2.19.0.orig.tar.gz 3985155 SHA256:c6cff9d3bbcb3da941bf7f525ae974b6c7af3d610c4c5519fcd1be3f21f5ae09
'http://archive.ubuntu.com/ubuntu/pool/universe/c/cppcheck/cppcheck_2.19.0-3.debian.tar.xz' cppcheck_2.19.0-3.debian.tar.xz 12448 SHA256:4a2bf771c3693fba518082beea44ba970951e72bd35cd4a2aa485bf4258a643f
```

### `dpkg` source package: `curl=8.18.0-1ubuntu2.3`

Binary Packages:

- `curl=8.18.0-1ubuntu2.3`
- `libcurl3t64-gnutls:amd64=8.18.0-1ubuntu2.3`
- `libcurl4t64:amd64=8.18.0-1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3t64-gnutls/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.28+dfsg1-9ubuntu3`

Binary Packages:

- `libsasl2-2:amd64=2.1.28+dfsg1-9ubuntu3`
- `libsasl2-modules-db:amd64=2.1.28+dfsg1-9ubuntu3`

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
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.28+dfsg1-9ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1.orig.tar.xz' cyrus-sasl2_2.1.28+dfsg1.orig.tar.xz 794540 SHA256:e796a5d85d1a85e1b433d43504e467f9075c7ebc0b45730a3996cf11b1deada4
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9ubuntu3.debian.tar.xz' cyrus-sasl2_2.1.28+dfsg1-9ubuntu3.debian.tar.xz 99600 SHA256:1941b432c3f4ad491b4394977a3ea3994e9d248ff4b8ffa0bcc8c0bec7c5f07f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.28%2bdfsg1-9ubuntu3.dsc' cyrus-sasl2_2.1.28+dfsg1-9ubuntu3.dsc 3668 SHA256:31f3078127eb019aa785f1f32e9b0ae176738ce53e41762b18162f1d3a9d2443
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
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12.orig.tar.gz' dash_0.5.12.orig.tar.gz 246054 SHA256:6a474ac46e8b0b32916c4c60df694c82058d3297d8b385b74508030ca4a8f28a
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.debian.tar.xz' dash_0.5.12-12ubuntu3.debian.tar.xz 48112 SHA256:e738deadc72ee2f5cb2c08dd38b5ae696292051d5547e1b07846134874840377
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.12-12ubuntu3.dsc' dash_0.5.12-12ubuntu3.dsc 2060 SHA256:e08ef9207e7ccbc4384aeec972234f2fb56d8aa8d1ba6def02c88187e7c68758
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-10ubuntu1`

Binary Packages:

- `libdb5.3t64:amd64=5.3.28+dfsg2-10ubuntu1`

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.debian.tar.xz' db5.3_5.3.28+dfsg2-10ubuntu1.debian.tar.xz 36572 SHA256:d901c0a275f43ba688460c3a06865d9318774b19dadf770e03f4927acd0ad61a
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.dsc' db5.3_5.3.28+dfsg2-10ubuntu1.dsc 2484 SHA256:12c95f53a2dec9cf8dff8de23967f46f16a0c92fcc7e3ee90ebbbbbb12df4b1b
```

### `dpkg` source package: `dbus-python=1.4.0-1build2`

Binary Packages:

- `python3-dbus=1.4.0-1build2`

Licenses: (parsed from: `/usr/share/doc/python3-dbus/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dbus-python=1.4.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0.orig.tar.xz' dbus-python_1.4.0.orig.tar.xz 168268 SHA256:c36b28f10ffcc8f1f798aca973bcc132f91f33eb9b6b8904381b4077766043d5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0.orig.tar.xz.asc' dbus-python_1.4.0.orig.tar.xz.asc 833 SHA256:855c03b351e2ecbedf6d46f938bc4d9734f8573d252fd0ac496cbaeda27a2c53
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0-1build2.debian.tar.xz' dbus-python_1.4.0-1build2.debian.tar.xz 35232 SHA256:3b15008855cae6461051d5a266746ffdbfa302aa7e8b13e23f4b2ae6410fa78c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-python/dbus-python_1.4.0-1build2.dsc' dbus-python_1.4.0-1build2.dsc 2990 SHA256:6829e9059df61077c9ffc2272838bbb599dce580f951b073902a22de1d467703
```

### `dpkg` source package: `dbus=1.16.2-2ubuntu4`

Binary Packages:

- `libdbus-1-3:amd64=1.16.2-2ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.16.2-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2.orig.tar.xz' dbus_1.16.2.orig.tar.xz 1115644 SHA256:0ba2a1a4b16afe7bceb2c07e9ce99a8c2c3508e5dec290dbb643384bd6beb7e2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2-2ubuntu4.debian.tar.xz' dbus_1.16.2-2ubuntu4.debian.tar.xz 72252 SHA256:f1bccf4ec5d41440d6cb62fd0c60b02231c9b47de6a31e6a548beec1d42d6072
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.16.2-2ubuntu4.dsc' dbus_1.16.2-2ubuntu4.dsc 3470 SHA256:5092503804ba08d1c7c24b3601827fe6490ba981687f42971b1cab1e1f92d502
```

### `dpkg` source package: `debconf=1.5.92`

Binary Packages:

- `debconf=1.5.92`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.92
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.dsc' debconf_1.5.92.dsc 2202 SHA256:612d1b51713fc95b205b5f222af036b1541b13734e1f183a3f37e637eda187a9
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.92.tar.xz' debconf_1.5.92.tar.xz 610068 SHA256:72265cb0315c0cc58a0d5abf0c032ffac2d071c8ba05bf830f9e0e73ca8ab219
```

### `dpkg` source package: `debianutils=5.23.2build1`

Binary Packages:

- `debianutils=5.23.2build1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`
- `GPL-2+`
- `SMAIL-GPL`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris debianutils=5.23.2build1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.23.2build1.tar.xz' debianutils_5.23.2build1.tar.xz 82192 SHA256:72fc5deb77b6883cfd97de456e9193b421457a7271ac28d0647df56fb3b69665
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_5.23.2build1.dsc' debianutils_5.23.2build1.dsc 1663 SHA256:ab153b7c7b73834ca21c5d27b9052ab5b4815d880a2ecb4d67b2d7b7707e94bc
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.dsc' diffutils_3.12-1.dsc 1875 SHA256:eb99be6cc60e71249bd119dfb66ada6a8c0fdd2e1bb8b1325f4801b813ad820c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz' diffutils_3.12.orig.tar.xz 1938800 SHA256:7c8b7f9fc8609141fdea9cece85249d308624391ff61dedaf528fcb337727dfd
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz.asc' diffutils_3.12.orig.tar.xz.asc 833 SHA256:ad05b321b2f23441275af68072123a5907b05ad989335a9f1f6e3781cb0846a6
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1.debian.tar.xz' diffutils_3.12-1.debian.tar.xz 14752 SHA256:ffacb3eb9ad1a8cc90768e13e1d09da1b71cfab3cb99b1e0bd1f0ba26f89dd46
```

### `dpkg` source package: `distlib=0.4.0-1`

Binary Packages:

- `python3-distlib=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-distlib/copyright`)

- `BSD-3-clause`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris distlib=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0-1.dsc' distlib_0.4.0-1.dsc 1809 SHA256:9620e8cb85605fb8ff1834526f701a901c0447c9255b7c9533566d03ce82995a
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0.orig.tar.gz' distlib_0.4.0.orig.tar.gz 614605 SHA256:feec40075be03a04501a973d81f633735b4b69f98b05450592310c0f401a4e0d
'http://archive.ubuntu.com/ubuntu/pool/universe/d/distlib/distlib_0.4.0-1.debian.tar.xz' distlib_0.4.0-1.debian.tar.xz 7080 SHA256:6e313318f6362e9672c2b1919e4dc7de203eb8fc5d60fe66f5e8d54f458dd27b
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

### `dpkg` source package: `e2fsprogs=1.47.2-3ubuntu4`

Binary Packages:

- `e2fsprogs=1.47.2-3ubuntu4`
- `libcom-err2:amd64=1.47.2-3ubuntu4`
- `libext2fs2t64:amd64=1.47.2-3ubuntu4`
- `libss2:amd64=1.47.2-3ubuntu4`
- `logsave=1.47.2-3ubuntu4`

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
$ apt-get source -qq --print-uris e2fsprogs=1.47.2-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz' e2fsprogs_1.47.2.orig.tar.gz 9996725 SHA256:6dcd67ff9d8b13274ba3f088e4318be4f5b71412cd863524423fc49d39a6371f
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz.asc' e2fsprogs_1.47.2.orig.tar.gz.asc 488 SHA256:2063f62a198dd3df21f789c990c2cf9b4a5de24ed55f0b78d86e97e98daffc9d
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz' e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz 105780 SHA256:6cdbd4f59b979c6e1a75c186b5b0d02b33d35c0410ceb329fc77aba9a313d9c6
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.dsc' e2fsprogs_1.47.2-3ubuntu4.dsc 3044 SHA256:56bd049f448bc211a3a875a4baf35cf2a1eb082f13709426367d5a433166621c
```

### `dpkg` source package: `eigen3=3.4.0-5`

Binary Packages:

- `libeigen3-dev=3.4.0-5`

Licenses: (parsed from: `/usr/share/doc/libeigen3-dev/copyright`)

- `BSD-3-clause`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-2`

Source:

```console
$ apt-get source -qq --print-uris eigen3=3.4.0-5
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-5.dsc' eigen3_3.4.0-5.dsc 2196 SHA256:0c3e60694bd1f3db4430a949f7efdf71dcd9c6e6c1bf3de950d33475043e1396
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0.orig.tar.bz2' eigen3_3.4.0.orig.tar.bz2 2143091 SHA256:b4c198460eba6f28d34894e3a5710998818515104d6e74e5cc331ce31e46e626
'http://archive.ubuntu.com/ubuntu/pool/universe/e/eigen3/eigen3_3.4.0-5.debian.tar.xz' eigen3_3.4.0-5.debian.tar.xz 20776 SHA256:bce0ed717bac704f8871812b9df0b2b9fe13b290acf97b1f617b51a16d4555c6
```

### `dpkg` source package: `empy=4.2.1-1`

Binary Packages:

- `python3-empy=4.2.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-empy/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris empy=4.2.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1-1.dsc' empy_4.2.1-1.dsc 2023 SHA256:dbd6e6489e5a21ed3084c85c48e44416d7f42f9deaaa59053b514499544c1db9
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1.orig.tar.gz' empy_4.2.1.orig.tar.gz 177011 SHA256:ac00eefe9ff003719582ad88fc10f7b93064c573769b434eabb6196d52d16359
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_4.2.1-1.debian.tar.xz' empy_4.2.1-1.debian.tar.xz 12064 SHA256:008aa39c6b1d3e5f3996dd34e11323707baba2482112a40bbac0dc4166d72b77
```

### `dpkg` source package: `expat=2.7.4-1`

Binary Packages:

- `libexpat1:amd64=2.7.4-1`
- `libexpat1-dev:amd64=2.7.4-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.7.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.dsc' expat_2.7.4-1.dsc 1970 SHA256:2b8d94bbc4e830fb7268be91ff18dc24cfdc88608399311af85737cf360da3a0
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4.orig.tar.gz' expat_2.7.4.orig.tar.gz 8448897 SHA256:5b356795b889d3e5b379433ece069b8781bf0727f6959ad3bbc9da0c22164f59
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.debian.tar.xz' expat_2.7.4-1.debian.tar.xz 13420 SHA256:d58d2cb39825e385b7063eca491ce1b34299b047bce45d9ef0b42666a289a9b0
```

### `dpkg` source package: `findutils=4.10.0-3build2`

Binary Packages:

- `findutils=4.10.0-3build2`

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
$ apt-get source -qq --print-uris findutils=4.10.0-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz' findutils_4.10.0.orig.tar.xz 2240712 SHA256:1387e0b67ff247d2abde998f90dfbf70c1491391a59ddfecb8ae698789f0a4f5
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0.orig.tar.xz.asc' findutils_4.10.0.orig.tar.xz.asc 488 SHA256:7f53670eea6bd114e014571221eb652855c1129a3ed99f2a9257c2a313cc216f
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0-3build2.debian.tar.xz' findutils_4.10.0-3build2.debian.tar.xz 33524 SHA256:9cc2b136d07f4d901356c4946a63ef8b1daaefa9303737ddaf748aaf0a914d95
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.10.0-3build2.dsc' findutils_4.10.0-3build2.dsc 2315 SHA256:fe0941ee86020480e78c3a2717b0ab36746535b50d3d158d87d46cf99774a0f3
```

### `dpkg` source package: `flake8-blind-except=0.2.1-1build1`

Binary Packages:

- `python3-flake8-blind-except=0.2.1-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-blind-except/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-blind-except=0.2.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1.orig.tar.gz' flake8-blind-except_0.2.1.orig.tar.gz 3229 SHA256:d418273d9595f18d25ef8bd43af27f78aa5a29753207990854bf3ecb198cd955
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1-1build1.debian.tar.xz' flake8-blind-except_0.2.1-1build1.debian.tar.xz 2492 SHA256:cb50d191ad94fb1df5013c63f3c6b91a13578c66137923202f6387616b14c1a5
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-blind-except/flake8-blind-except_0.2.1-1build1.dsc' flake8-blind-except_0.2.1-1build1.dsc 2218 SHA256:5c05687de4d9574155f0eaf54d72c1240416abdf8ec09eda3726f42242b1cec9
```

### `dpkg` source package: `flake8-builtins=3.1.0-1`

Binary Packages:

- `python3-flake8-builtins=3.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-builtins/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris flake8-builtins=3.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0-1.dsc' flake8-builtins_3.1.0-1.dsc 2331 SHA256:4748a3743bf183bcfeebc887ec3aea68dccb6906175c6cb772d845df6be51cd6
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0.orig.tar.gz' flake8-builtins_3.1.0.orig.tar.gz 16440 SHA256:f6c4b7865f423b551ea1610b5b0a80b19d7ba221b705e4b61020d8377adfcbb3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-builtins/flake8-builtins_3.1.0-1.debian.tar.xz' flake8-builtins_3.1.0-1.debian.tar.xz 2484 SHA256:1f727f962fe86401d4807d0e8bac29532261ba7870af376c5e52a15e087bc5c5
```

### `dpkg` source package: `flake8-class-newline=1.6.0-6build1`

Binary Packages:

- `python3-flake8-class-newline=1.6.0-6build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-class-newline/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-class-newline=1.6.0-6build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0.orig.tar.gz' flake8-class-newline_1.6.0.orig.tar.gz 4672 SHA256:ebf97f562eeca28534a1d0b186f510554b50f228a6d553a1a8bc18ae3ec9545d
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0-6build1.debian.tar.xz' flake8-class-newline_1.6.0-6build1.debian.tar.xz 2964 SHA256:2aa61363c19db1a13f9b223e8bed2d02328d378318f647df2e18dd44447831e9
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-class-newline/flake8-class-newline_1.6.0-6build1.dsc' flake8-class-newline_1.6.0-6build1.dsc 2248 SHA256:04afae1c87455ede39bcc85616b7bfd274948c24738c7e0fe5845aaaa3fe8c0a
```

### `dpkg` source package: `flake8-comprehensions=3.17.0-1`

Binary Packages:

- `python3-flake8-comprehensions=3.17.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-comprehensions/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-comprehensions=3.17.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0-1.dsc' flake8-comprehensions_3.17.0-1.dsc 2304 SHA256:9017fa50641f10de7ab5bbed24ff7c534e9e20b3bee72e00a3d3c1d0aa438368
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0.orig.tar.gz' flake8-comprehensions_3.17.0.orig.tar.gz 22391 SHA256:4fb7f5b9d4333128222860d59956d14d994f6a0e32d2abb82e7b29305e50b888
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-comprehensions/flake8-comprehensions_3.17.0-1.debian.tar.xz' flake8-comprehensions_3.17.0-1.debian.tar.xz 2676 SHA256:62da08b0416e4f9633ef08222d795aa638eac7c826b4d806d182a6504064a09e
```

### `dpkg` source package: `flake8-deprecated=2.3.0-1`

Binary Packages:

- `python3-flake8-deprecated=2.3.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-deprecated/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris flake8-deprecated=2.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0-1.dsc' flake8-deprecated_2.3.0-1.dsc 2258 SHA256:03d983505d8c9e2138067bf9616f19e573d29676487d53fcdfa6ac598e088a3c
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0.orig.tar.gz' flake8-deprecated_2.3.0.orig.tar.gz 12827 SHA256:00fa7ac6a1a01af124875fb52fd751a0649e739774c8015bd9b937ae1ec145dc
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-deprecated/flake8-deprecated_2.3.0-1.debian.tar.xz' flake8-deprecated_2.3.0-1.debian.tar.xz 2052 SHA256:575e3954684e3628bf06f09679a266a044af1f19cf5fbc8d44492bcf240d584b
```

### `dpkg` source package: `flake8-import-order=0.19.2-1`

Binary Packages:

- `python3-flake8-import-order=0.19.2-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-import-order/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris flake8-import-order=0.19.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2-1.dsc' flake8-import-order_0.19.2-1.dsc 2303 SHA256:0f384c806fa21df36a38024072615d0a6d78a9a679f370dda4675ad7d1fc96e3
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2.orig.tar.gz' flake8-import-order_0.19.2.orig.tar.gz 29638 SHA256:590c57bc83cac4b99891b3f672183638b5002b75b65db9ae24776d31d7f85584
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-import-order/flake8-import-order_0.19.2-1.debian.tar.xz' flake8-import-order_0.19.2-1.debian.tar.xz 2880 SHA256:423b1bed137bd98d77a69ef091081241f6ebfc7844b1013dbeff0ce44910e922
```

### `dpkg` source package: `flake8-quotes=3.4.0-4build1`

Binary Packages:

- `python3-flake8-quotes=3.4.0-4build1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8-quotes/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris flake8-quotes=3.4.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0.orig.tar.gz' flake8-quotes_3.4.0.orig.tar.gz 12924 SHA256:0a09b7905765de92987f2184d14456f1d6b2aae26e668f4db7a933fc3c4d0cac
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0-4build1.debian.tar.xz' flake8-quotes_3.4.0-4build1.debian.tar.xz 3940 SHA256:c0348b28f8c7e00d5922628fb3d3de9d39ea82d5d41c4b2a380f25fae9be4355
'http://archive.ubuntu.com/ubuntu/pool/universe/f/flake8-quotes/flake8-quotes_3.4.0-4build1.dsc' flake8-quotes_3.4.0-4build1.dsc 2151 SHA256:4a7ab8c18f1c621a481d1126cbca7fbe58a79b53e28606595249e8e409936231
```

### `dpkg` source package: `fmtlib=10.1.1+ds1-4build1`

Binary Packages:

- `libfmt-dev:amd64=10.1.1+ds1-4build1`
- `libfmt10:amd64=10.1.1+ds1-4build1`

Licenses: (parsed from: `/usr/share/doc/libfmt-dev/copyright`, `/usr/share/doc/libfmt10/copyright`)

- `BSD-2-Clause`
- `CC0-1.0`
- `Expat`
- `Expat with embedded exception`
- `Python`

Source:

```console
$ apt-get source -qq --print-uris fmtlib=10.1.1+ds1-4build1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1.orig.tar.gz' fmtlib_10.1.1+ds1.orig.tar.gz 329952 SHA256:7000f214d2628f04174822f8048c573f1608194408d7931121595a03f1c18a17
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1-4build1.debian.tar.xz' fmtlib_10.1.1+ds1-4build1.debian.tar.xz 14476 SHA256:5b0da09beededebd484fa075cb80c5e4ce7c61ca21cc29d74251a4853d7717a2
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fmtlib/fmtlib_10.1.1%2bds1-4build1.dsc' fmtlib_10.1.1+ds1-4build1.dsc 2094 SHA256:82f9f796fbbd57c7119b6604e9fa3082de1fac1264a1b145d06165aa09accd24
```

### `dpkg` source package: `fontconfig=2.17.1-3ubuntu1`

Binary Packages:

- `fontconfig=2.17.1-3ubuntu1`
- `fontconfig-config=2.17.1-3ubuntu1`
- `libfontconfig1:amd64=2.17.1-3ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.17.1-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1.orig.tar.gz' fontconfig_2.17.1.orig.tar.gz 622045 SHA256:f07504cef87f171ee1748352e2df9b9f125352f620fa0d03a9284306ea2c40a4
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-3ubuntu1.debian.tar.xz' fontconfig_2.17.1-3ubuntu1.debian.tar.xz 31920 SHA256:3125c7ad526f1c9791ddd58b9194af84cd05154446692168cd546e9a52d955b7
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.17.1-3ubuntu1.dsc' fontconfig_2.17.1-3ubuntu1.dsc 2751 SHA256:1e0f7507102b7f8287052b0757f43017795d0e27c0b75d85cc41d9c523ff11c2
```

### `dpkg` source package: `fonts-dejavu=2.37-8build1`

Binary Packages:

- `fonts-dejavu-core=2.37-8build1`
- `fonts-dejavu-mono=2.37-8build1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`, `/usr/share/doc/fonts-dejavu-mono/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-8build1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8build1.debian.tar.xz' fonts-dejavu_2.37-8build1.debian.tar.xz 13244 SHA256:b82c68359a2aaf6830ce7689d14c030d318c24db4fe8ddc9da60ee7e972cad7f
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-8build1.dsc' fonts-dejavu_2.37-8build1.dsc 2525 SHA256:f092af264087c8c3598f8ff4fc6548d883e49cfbf4854ac33a4850eb80f99aa8
```

### `dpkg` source package: `freetype=2.14.2+dfsg-1ubuntu0.1`

Binary Packages:

- `libfreetype6:amd64=2.14.2+dfsg-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

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
$ apt-get source -qq --print-uris freetype=2.14.2+dfsg-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz 347364 SHA512:efef4187b3d9cc747daad26cef6700051388435480c60e96e371eb04be3baae1e09ac932183c3a72b7bb4db1889d2bda89a70bfb058193c73bc5a602e53a3553
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz.asc 833 SHA512:569d05266c430b7fb361a5c74198e0047f44ba24fd723d13e89de8974a6ce3fc5837bbd551e2e404926e14da5db68bd50011c6fa6fa01d92460bd3eeaacdc0f2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz 2176140 SHA512:f2794dee78a00f91ea4241722deff64e03e7c42cbd26073ed0d7a6e0ecca14c5f87cb1dbd520ccc94311a6b0f510b4462eee3f8765e8d77841176e78d8c45837
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz.asc 833 SHA512:9a42b83c2237cd04e5cea7e5389078a985d6e22f48c030d225c32b5da9230b0c1b8ae6dd213bef4ac572fec74c5d05b9acfc011c199f0db5995293800575514a
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig.tar.xz' freetype_2.14.2+dfsg.orig.tar.xz 2246044 SHA512:fa16e901edee4b578cf920eb357ec5f8aea38fe1152e7ad8562201e7edde4d763a457dfdcf69bb1b5792c0b1ba0253e6dea2b8928141e77ab53e366be1b9af65
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.1.debian.tar.xz' freetype_2.14.2+dfsg-1ubuntu0.1.debian.tar.xz 45112 SHA512:4d5be2b05ace8730454a50716f303a310aa8b363ef13467b58f39035f93228f43e95b5cd7df7837beaac80f4a10efda931de565e1d2f2a9b041bb099bb04b1cd
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.1.dsc' freetype_2.14.2+dfsg-1ubuntu0.1.dsc 4105 SHA512:818b73fce2b591edd77af51cfcf1d4853ea0064b8dc376128afb17dfadae4c6261ab21104129f0d37cac57ceab2107c5bed32dffd6cbb30c5b9fa72ce8abbe16
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
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.dsc' fribidi_1.0.16-5.dsc 2014 SHA256:bc60303e25c24c017928a8e19766a0d10c7196ddeb419a646b0781d746cba918
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16.orig.tar.xz' fribidi_1.0.16.orig.tar.xz 1098260 SHA256:1b1cde5b235d40479e91be2f0e88a309e3214c8ab470ec8a2744d82a5a9ea05c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_1.0.16-5.debian.tar.xz' fribidi_1.0.16-5.debian.tar.xz 9052 SHA256:72209d3e970d4d10d2a2c691c9177d3bfeee59d75a45bacd6ec2f004513b0283
```

### `dpkg` source package: `fzf=0.67.0-1`

Binary Packages:

- `fzf=0.67.0-1`

Licenses: (parsed from: `/usr/share/doc/fzf/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris fzf=0.67.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0-1.dsc' fzf_0.67.0-1.dsc 2281 SHA256:6c93ab96b9cc59d32106163d44f9552a1500777f04b3d61648feda331f55b388
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0.orig.tar.gz' fzf_0.67.0.orig.tar.gz 363163 SHA256:93f49e12e225ac85892fb6fb364410bc1b7bb90df53466b56a1813b07bf234c7
'http://archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.67.0-1.debian.tar.xz' fzf_0.67.0-1.debian.tar.xz 6660 SHA256:e34871e5102f4b606bea455242fbbdfad2f8ab75af0f3319655dd1ac152bdb58
```

### `dpkg` source package: `gcc-15=15.2.0-16ubuntu1`

Binary Packages:

- `cpp-15=15.2.0-16ubuntu1`
- `cpp-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `g++-15=15.2.0-16ubuntu1`
- `g++-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `gcc-15=15.2.0-16ubuntu1`
- `gcc-15-base:amd64=15.2.0-16ubuntu1`
- `gcc-15-x86-64-linux-gnu=15.2.0-16ubuntu1`
- `libgcc-15-dev:amd64=15.2.0-16ubuntu1`
- `libstdc++-15-dev:amd64=15.2.0-16ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp-15/copyright`, `/usr/share/doc/cpp-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/g++-15/copyright`, `/usr/share/doc/g++-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/gcc-15/copyright`, `/usr/share/doc/gcc-15-base/copyright`, `/usr/share/doc/gcc-15-x86-64-linux-gnu/copyright`, `/usr/share/doc/libgcc-15-dev/copyright`, `/usr/share/doc/libstdc++-15-dev/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-15=15.2.0-16ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0.orig.tar.gz' gcc-15_15.2.0.orig.tar.gz 105962230 SHA256:3063dafdeed9fb9565f099b2560379bce08dae2b461ed4e30dd8d999f5f5747c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0-16ubuntu1.debian.tar.xz' gcc-15_15.2.0-16ubuntu1.debian.tar.xz 3015048 SHA256:1c8154422ea6352d5453b1f27884a6639170d66725b7bb3e372baa1fc43b6f96
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-15/gcc-15_15.2.0-16ubuntu1.dsc' gcc-15_15.2.0-16ubuntu1.dsc 47488 SHA256:4effae608555a1ac18393b059270c1d3c27ca3d05accaa528babe40cd22c0ade
```

### `dpkg` source package: `gcc-16=16-20260322-1ubuntu1`

Binary Packages:

- `gcc-16-base:amd64=16-20260322-1ubuntu1`
- `libasan8:amd64=16-20260322-1ubuntu1`
- `libatomic1:amd64=16-20260322-1ubuntu1`
- `libcc1-0:amd64=16-20260322-1ubuntu1`
- `libgcc-s1:amd64=16-20260322-1ubuntu1`
- `libgfortran5:amd64=16-20260322-1ubuntu1`
- `libgomp1:amd64=16-20260322-1ubuntu1`
- `libhwasan0:amd64=16-20260322-1ubuntu1`
- `libitm1:amd64=16-20260322-1ubuntu1`
- `liblsan0:amd64=16-20260322-1ubuntu1`
- `libquadmath0:amd64=16-20260322-1ubuntu1`
- `libstdc++6:amd64=16-20260322-1ubuntu1`
- `libtsan2:amd64=16-20260322-1ubuntu1`
- `libubsan1:amd64=16-20260322-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Apache-2.0`
- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-16=16-20260322-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322.orig.tar.gz' gcc-16_16-20260322.orig.tar.gz 101830903 SHA256:7be0bbf2ed1797e31161993ea641331d230b9b95f1ca263e7e840a5843b61a4a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322-1ubuntu1.debian.tar.xz' gcc-16_16-20260322-1ubuntu1.debian.tar.xz 629144 SHA256:d2912b1539846a5bfbe23e22191fb510d70af5d54ec2af5a15edff9b0ab95d9b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-16/gcc-16_16-20260322-1ubuntu1.dsc' gcc-16_16-20260322-1ubuntu1.dsc 52875 SHA256:64a579a45be2dafef92bf8e0984223dd1c009df061d2890f584fd8c08f41b2f2
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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.tar.xz' gcc-defaults_1.230ubuntu1.tar.xz 58212 SHA256:3099a64a2a93d7098c34d5d9bd4210007ba52b5e04fab7a87858900a5400fb6b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.230ubuntu1.dsc' gcc-defaults_1.230ubuntu1.dsc 38421 SHA256:c139267618a70a880acfd061b8f3102f67928e7dbb84ff91700ed28207abd09d
```

### `dpkg` source package: `gdbm=1.26-1build1`

Binary Packages:

- `libgdbm-compat4t64:amd64=1.26-1build1`
- `libgdbm6t64:amd64=1.26-1build1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4t64/copyright`, `/usr/share/doc/libgdbm6t64/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.26-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26.orig.tar.gz' gdbm_1.26.orig.tar.gz 1226591 SHA256:6a24504a14de4a744103dcb936be976df6fbe88ccff26065e54c1c47946f4a5e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.debian.tar.xz' gdbm_1.26-1build1.debian.tar.xz 16896 SHA256:d7305440f777ce3f2ffe2c625685f822cc3e85e5e99bc7f6be20d88c4f135933
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.26-1build1.dsc' gdbm_1.26-1build1.dsc 2258 SHA256:ae64d944a1f2ec46d872a27714c30f6b79e68f8398628bb801f80467972fa0ac
```

### `dpkg` source package: `git=1:2.53.0-1ubuntu1`

Binary Packages:

- `git=1:2.53.0-1ubuntu1`
- `git-man=1:2.53.0-1ubuntu1`

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
- `dlmalloc`
- `mingw-runtime`

Source:

```console
$ apt-get source -qq --print-uris git=1:2.53.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0.orig.tar.xz' git_2.53.0.orig.tar.xz 7993096 SHA256:5818bd7d80b061bbbdfec8a433d609dc8818a05991f731ffc4a561e2ca18c653
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0-1ubuntu1.debian.tar.xz' git_2.53.0-1ubuntu1.debian.tar.xz 835760 SHA256:de1843ed2a314adce0111d5d7053270932c709e8a3e98752f07ec38f359ba3a3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.53.0-1ubuntu1.dsc' git_2.53.0-1ubuntu1.dsc 2656 SHA256:5725094be101993b4c03ebb8a77c0808870d639b2a7039f20063af27d7a8ebf4
```

### `dpkg` source package: `glib2.0=2.88.0-1`

Binary Packages:

- `libglib2.0-0t64:amd64=2.88.0-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0t64/copyright`)

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
$ apt-get source -qq --print-uris glib2.0=2.88.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1.dsc' glib2.0_2.88.0-1.dsc 4935 SHA256:ff592e1e093328e01b811118e8f68eec83359b71874eb320cc240da7d27e9f24
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig-unicode-data.tar.xz' glib2.0_2.88.0.orig-unicode-data.tar.xz 666552 SHA256:4b55352323696c72187f855981ed1f7d1594a53f257f7803a928749cab9f9f44
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig.tar.xz' glib2.0_2.88.0.orig.tar.xz 5788396 SHA256:3546251ccbb3744d4bc4eb48354540e1f6200846572bab68e3a2b7b2b64dfd07
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1.debian.tar.xz' glib2.0_2.88.0-1.debian.tar.xz 142452 SHA256:e988a135ff5dffd39c05f67f3c2743ca1774c144615edcb6a823d4e1d976fbd1
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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.debian.tar.xz' gmp_6.3.0+dfsg-5ubuntu2.debian.tar.xz 40328 SHA256:2eb9fc9ec44509e8c8123e28bd223b4e4efd565d48d30cc76c107ee1102d5f54
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.dsc' gmp_6.3.0+dfsg-5ubuntu2.dsc 2337 SHA256:124ecc12680fb9cef589e9c4c60abba140cb5439f2742f109500fe7214d4db18
```

### `dpkg` source package: `gnupg2=2.4.8-4ubuntu3`

Binary Packages:

- `dirmngr=2.4.8-4ubuntu3`
- `gnupg=2.4.8-4ubuntu3`
- `gnupg2=2.4.8-4ubuntu3`
- `gpg=2.4.8-4ubuntu3`
- `gpg-agent=2.4.8-4ubuntu3`
- `gpgconf=2.4.8-4ubuntu3`
- `gpgsm=2.4.8-4ubuntu3`
- `gpgv=2.4.8-4ubuntu3`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.4.8-4ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2' gnupg2_2.4.8.orig.tar.bz2 8017685 SHA256:b58c80d79b04d3243ff49c1c3fc6b5f83138eb3784689563bcdd060595318616
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2.asc' gnupg2_2.4.8.orig.tar.bz2.asc 228 SHA256:92982ed45a1ca3af60e04addd6df14569158509364b70694a53f48b6bfed025b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.debian.tar.xz' gnupg2_2.4.8-4ubuntu3.debian.tar.xz 122928 SHA256:b6071750c3663b5d21e89fee68bab55dd00dd3bb5a3a7ad0fe468bfd6e5d5783
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.dsc' gnupg2_2.4.8-4ubuntu3.dsc 4565 SHA256:8a6f37fcc6c0a044277d4937e8f9859e6928fcb7d2ac3369ada7b812901693bc
```

### `dpkg` source package: `gnutls28=3.8.12-2ubuntu1.1`

Binary Packages:

- `libgnutls30t64:amd64=3.8.12-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgnutls30t64/copyright`)

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
$ apt-get source -qq --print-uris gnutls28=3.8.12-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12.orig.tar.xz' gnutls28_3.8.12.orig.tar.xz 6949604 SHA512:332a8e5200461517c7f08515e3aaab0bec6222747422e33e9e7d25d35613e3d0695a803fce226bd6a83f723054f551328bd99dcf0573e142be777dcf358e1a3b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12.orig.tar.xz.asc' gnutls28_3.8.12.orig.tar.xz.asc 996 SHA512:a2cb8c797b1acbcc54c6249bd503a1395bc13d878048f6fff9eca54f38472cf55e04864291a49b6c649038a318d403b5a97ae7bf4ae5a3670e542557ca248a65
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12-2ubuntu1.1.debian.tar.xz' gnutls28_3.8.12-2ubuntu1.1.debian.tar.xz 192052 SHA512:2fc758f45aa139a8dbb1cb52ed9e5894878da827bda71099e9b1c821b3830931d7749463c0cb7c096aba621b54005dd969d7c4320719f3aa70da5aaf66d00dab
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.8.12-2ubuntu1.1.dsc' gnutls28_3.8.12-2ubuntu1.1.dsc 3362 SHA512:dfc18fa57bbe37f451bcd4b8cc583c9b17669ee010bb10b0be75bb8acf5f71dc37e89a58a78906efde13c454b7c2251f0ac513cfd91e2027a979fb34cec4e58a
```

### `dpkg` source package: `googletest=1.17.0-1build1`

Binary Packages:

- `googletest=1.17.0-1build1`
- `libgmock-dev:amd64=1.17.0-1build1`
- `libgtest-dev:amd64=1.17.0-1build1`

Licenses: (parsed from: `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgmock-dev/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.17.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0.orig.tar.gz' googletest_1.17.0.orig.tar.gz 885563 SHA256:3dc65ed118d82feb8276176354568e66acefee362d2b615e798bdd6c656377ff
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0-1build1.debian.tar.xz' googletest_1.17.0-1build1.debian.tar.xz 11112 SHA256:29c01740383e6b3e03e7462565bc7a7dc5f2609ca4754521480bb189a4d89a4f
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.17.0-1build1.dsc' googletest_1.17.0-1build1.dsc 2134 SHA256:74ce4c087bc2b34d77fa7e83b9d0e3ed3998a3e56c72bb0f45f1c6b959d73db6
```

### `dpkg` source package: `graphite2=1.3.14-11ubuntu1.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.14-11ubuntu1.1`

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
$ apt-get source -qq --print-uris graphite2=1.3.14-11ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14.orig.tar.gz' graphite2_1.3.14.orig.tar.gz 6629829 SHA512:49d127964d3f5c9403c7aecbfb5b18f32f25fe4919a81c49e0534e7123fe845423e16b0b8c8baaae21162b1150ab3e0f1c22c344e07d4364b6b8473c40a0822c
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-11ubuntu1.1.debian.tar.xz' graphite2_1.3.14-11ubuntu1.1.debian.tar.xz 16700 SHA512:3365688343878158bbaf4fcf509e27fffdcda37d0e4ce447846d85ff31ec2f6970eca6c8ab8edfbe443e8e6519a6afc0f8884bac0aeb2769e1898e41c3072fa4
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.14-11ubuntu1.1.dsc' graphite2_1.3.14-11ubuntu1.1.dsc 2634 SHA512:eb1e2975b47dda04a85a83b611158a84f29ed9171f49939e9c0e96e783c79dc69d78df6fadf2e37a36e9a45db646e215e097f80617f298b2fbebb1d529ffadf2
```

### `dpkg` source package: `graphviz=14.1.2-1ubuntu1`

Binary Packages:

- `graphviz=14.1.2-1ubuntu1`
- `libcdt6:amd64=14.1.2-1ubuntu1`
- `libcgraph8:amd64=14.1.2-1ubuntu1`
- `libgvc7:amd64=14.1.2-1ubuntu1`
- `libgvplugin-gd8:amd64=14.1.2-1ubuntu1`
- `libgvplugin-pango8:amd64=14.1.2-1ubuntu1`
- `libgvpr2:amd64=14.1.2-1ubuntu1`
- `libpathplan4:amd64=14.1.2-1ubuntu1`
- `libxdot4:amd64=14.1.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/graphviz/copyright`, `/usr/share/doc/libcdt6/copyright`, `/usr/share/doc/libcgraph8/copyright`, `/usr/share/doc/libgvc7/copyright`, `/usr/share/doc/libgvplugin-gd8/copyright`, `/usr/share/doc/libgvplugin-pango8/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris graphviz=14.1.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2.orig.tar.bz2' graphviz_14.1.2.orig.tar.bz2 36643570 SHA256:8ba7611c378b3e82f2a0ca5fc9dbcc5fef77c86d9fdfe3281f8f59eaab3314f6
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2-1ubuntu1.debian.tar.xz' graphviz_14.1.2-1ubuntu1.debian.tar.xz 40364 SHA256:65cd227f4823e39e6aaf9f52e1fe1b5da7fdbeb107abc18b3acfa7fc128a6f41
'http://archive.ubuntu.com/ubuntu/pool/universe/g/graphviz/graphviz_14.1.2-1ubuntu1.dsc' graphviz_14.1.2-1ubuntu1.dsc 5501 SHA256:08b2aa5e9196556ca75069b288473990f1ac85a3dbd426475f6485f100e9f14a
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
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.dsc' grep_3.12-1.dsc 1647 SHA256:ce35486482abc0591a00be0848c90a3f40ce14b62e501da637296d23bc4c29f4
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz' grep_3.12.orig.tar.xz 1918448 SHA256:2649b27c0e90e632eadcd757be06c6e9a4f48d941de51e7c0f83ff76408a07b9
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12.orig.tar.xz.asc' grep_3.12.orig.tar.xz.asc 833 SHA256:62d4867d7cfff57a364b745866d798958a90286551fdf45d08df515fa8c79c25
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.12-1.debian.tar.xz' grep_3.12-1.debian.tar.xz 24160 SHA256:5baef65e599c41285a0393c1c6845c03c9b29f14765447911a1871a50321fd42
```

### `dpkg` source package: `gzip=1.14-1~exp2ubuntu1.1`

Binary Packages:

- `gzip=1.14-1~exp2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3`
- `GFDL-1.3+-no-invariant`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.14-1~exp2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14.orig.tar.xz' gzip_1.14.orig.tar.xz 885748 SHA512:82aef53188b3e69b51b7ddab5b8c44a11a5b73c0039b22a315a0c7d244694feab0146748add4265901eb1b4c0cee8a9eb69594995f098830d964091af97079c5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu1.1.debian.tar.xz' gzip_1.14-1~exp2ubuntu1.1.debian.tar.xz 22816 SHA512:9cc7548d0f3f29e5129d2bfbb09197a0ead6f5676e3a739e14a3cc6dc422ee94bf6fe8613cb07d675a2990fcea445a2c364d40e88a64936d0cd34feee525e825
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.14-1%7eexp2ubuntu1.1.dsc' gzip_1.14-1~exp2ubuntu1.1.dsc 1961 SHA512:b468a2fd4c0ace81eb6d11ace96c3a94295772336a26c30aae0ebbb22e056b79900d691504c4de3d6aefd273fcc8485c93aead0a9dc88010d319c8fa895e71d9
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
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.dsc' harfbuzz_12.3.2-2.dsc 2573 SHA256:d6e9e342b811b32697413fb8b9ad795b01227fc5ee7cd42680aad9e4e7877b4a
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2.orig.tar.xz' harfbuzz_12.3.2.orig.tar.xz 19282952 SHA256:6f6db164359a2da5a84ef826615b448b33e6306067ad829d85d5b0bf936f1bb8
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_12.3.2-2.debian.tar.xz' harfbuzz_12.3.2-2.debian.tar.xz 19848 SHA256:e60831c79be0f1621c559e621d6149a21195731126fc7b8b71c0b7a7369cfeea
```

### `dpkg` source package: `hostname=3.25build1`

Binary Packages:

- `hostname=3.25build1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.25build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.tar.xz' hostname_3.25build1.tar.xz 12896 SHA256:8233331087d506e6a8394582dae3a03d5bd2bb6e609112b8543c9ecfc84f5acc
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.25build1.dsc' hostname_3.25build1.dsc 1543 SHA256:bd88940a19a729f44a0c5eb1b79bb2d5e0e9e76289838bc699bdd44b18c326a3
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
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.dsc' init-system-helpers_1.69.dsc 2234 SHA256:99b681c969728fba085226b1d1fd25cc37c9fe16f9eb5118e679d845b50ae7ee
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.69.tar.xz' init-system-helpers_1.69.tar.xz 45648 SHA256:e246ee7f39b110803e5307fdb25ec2fb5fe0c62dbd9274011803fef50af08100
```

### `dpkg` source package: `isl=0.27-1build1`

Binary Packages:

- `libisl23:amd64=0.27-1build1`

Licenses: (parsed from: `/usr/share/doc/libisl23/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.27-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27.orig.tar.xz' isl_0.27.orig.tar.xz 2056436 SHA256:6d8babb59e7b672e8cb7870e874f3f7b813b6e00e6af3f8b04f7579965643d5c
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27-1build1.debian.tar.xz' isl_0.27-1build1.debian.tar.xz 24944 SHA256:393307dbf03c39c394ec99f02b7c4c4d515f8b03fec7e0a637d9a5904ecdf19a
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.27-1build1.dsc' isl_0.27-1build1.dsc 1829 SHA256:ebff763009ec74912956b5dd34b3c00ec3727eee5e0a2f0e193269838f5a8069
```

### `dpkg` source package: `jansson=2.14-2build4`

Binary Packages:

- `libjansson4:amd64=2.14-2build4`

Licenses: (parsed from: `/usr/share/doc/libjansson4/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jansson=2.14-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14.orig.tar.gz' jansson_2.14.orig.tar.gz 141500 SHA256:c739578bf6b764aa0752db9a2fdadcfe921c78f1228c7ec0bb47fa804c55d17b
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build4.debian.tar.xz' jansson_2.14-2build4.debian.tar.xz 5688 SHA256:cb48a932a9a05c85adc8b816e3d3432f34d93a53c42f0235611bdac06ff35317
'http://archive.ubuntu.com/ubuntu/pool/main/j/jansson/jansson_2.14-2build4.dsc' jansson_2.14-2build4.dsc 2083 SHA256:df055a3dd0ff0eacf058a54785d2db7ec557c4669dd59cb9f3b0f07860f062b4
```

### `dpkg` source package: `jaraco.context=6.0.1-2`

Binary Packages:

- `python3-jaraco.context=6.0.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.context/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris jaraco.context=6.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1-2.dsc' jaraco.context_6.0.1-2.dsc 2184 SHA256:0df319147733ff83d940edcf0e5a3b51dc6441fbfe96b29907ddb8a2c6a1a2f4
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1.orig.tar.gz' jaraco.context_6.0.1.orig.tar.gz 11103 SHA256:96d6814d92562e3b5a84b62be77ced00a7fd4d54138ce5ee18b30d48860f4f23
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.context/jaraco.context_6.0.1-2.debian.tar.xz' jaraco.context_6.0.1-2.debian.tar.xz 6424 SHA256:c8899f6f8c645beb62eb7694fcb61edb42fa81417923eecd7e40c8122e7e4209
```

### `dpkg` source package: `jaraco.text=4.0.0-1build1`

Binary Packages:

- `python3-jaraco.text=4.0.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.text/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jaraco.text=4.0.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0.orig.tar.gz' jaraco.text_4.0.0.orig.tar.gz 14167 SHA256:d84969c483a49d8d0a6f44991307f91951a9349c277b64a13f065bd357430831
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0-1build1.debian.tar.xz' jaraco.text_4.0.0-1build1.debian.tar.xz 3856 SHA256:2c1ccafd5ebb43e5acbafc621088b1f9cbbcb8caf546a7debef19a711a5bac41
'http://archive.ubuntu.com/ubuntu/pool/main/j/jaraco.text/jaraco.text_4.0.0-1build1.dsc' jaraco.text_4.0.0-1build1.dsc 2239 SHA256:7a7328bb97ed2b01a010d1aff7840447b8bd3512200b47fce5d5738404351dca
```

### `dpkg` source package: `jbigkit=2.1-6.1ubuntu3`

Binary Packages:

- `libjbig0:amd64=2.1-6.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-6.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.debian.tar.xz' jbigkit_2.1-6.1ubuntu3.debian.tar.xz 11240 SHA256:75e61a77d5cc220601265c9a9be669ea526d197ce6178dd25209e6a3f62ea508
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-6.1ubuntu3.dsc' jbigkit_2.1-6.1ubuntu3.dsc 2170 SHA256:5e628221c5cff4b55df8134dea3396f151cb8fb86d4c9234e463a093e7382837
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
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3.orig.tar.gz' keyutils_1.6.3.orig.tar.gz 137022 SHA256:a61d5706136ae4c05bd48f86186bcfdbd88dd8bd5107e3e195c924cfc1b39bb4
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.debian.tar.xz' keyutils_1.6.3-6ubuntu3.debian.tar.xz 17552 SHA256:a25a617f1a613e08b527968d123d822a255734a9a9fe7ec5851700a96ff8bfd4
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.6.3-6ubuntu3.dsc' keyutils_1.6.3-6ubuntu3.dsc 2186 SHA256:ba44d62a5bcf68a8cbd872d8cabe7570b54a3b17101ea5ff260adf33de5c4302
```

### `dpkg` source package: `kmod=34.2-2ubuntu2`

Binary Packages:

- `libkmod2:amd64=34.2-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris kmod=34.2-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2.orig.tar.xz' kmod_34.2.orig.tar.xz 192520 SHA256:012d16e2099115486d8aa9f2c2a23d058d3d0cad83113a60512647d25d3869e8
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2-2ubuntu2.debian.tar.xz' kmod_34.2-2ubuntu2.debian.tar.xz 18028 SHA256:89e8ade01c0c76a08ea5cf2fcff9823ff89c0b7ed0981b64ea433af2b505c5e0
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_34.2-2ubuntu2.dsc' kmod_34.2-2ubuntu2.dsc 2531 SHA256:a70cb48c8df89cd532e46bf32669bdc97b60eaa631927426cce543bbc3495f23
```

### `dpkg` source package: `krb5=1.22.1-2ubuntu4.1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.22.1-2ubuntu4.1`
- `libk5crypto3:amd64=1.22.1-2ubuntu4.1`
- `libkrb5-3:amd64=1.22.1-2ubuntu4.1`
- `libkrb5support0:amd64=1.22.1-2ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.22.1-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz' krb5_1.22.1.orig.tar.gz 8747101 SHA512:c33bfada5e0c035133436031d9818ad97b0ff08578691c832b743c55751a2cf9460501d3cc658ab79655ed7a0f9f4795ba94b363d6b616795d9bdca668825c52
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.debian.tar.xz' krb5_1.22.1-2ubuntu4.1.debian.tar.xz 109240 SHA512:6b6518bd38d6e8939b8f0295f6c07a26308b50769b848bd77cc86456052a9cdf35421f56075cd97bd07aa7a1b5509dc12bd00da3a36b94f370694fb3b889277e
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.dsc' krb5_1.22.1-2ubuntu4.1.dsc 3879 SHA512:2a3e54f7a1e241eb678053b145f69161af113ab3f62a1c5cc2333098572586bcf001c98a54e246246105a269067f991ac4318a347020527a29dc56e6eee44ef8
```

### `dpkg` source package: `lapack=3.12.1-7ubuntu1`

Binary Packages:

- `libblas3:amd64=3.12.1-7ubuntu1`
- `liblapack3:amd64=3.12.1-7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.12.1-7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1.orig.tar.gz' lapack_3.12.1.orig.tar.gz 8067087 SHA256:2ca6407a001a474d4d4d35f3a61550156050c48016d949f0da0529c0aa052422
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1-7ubuntu1.debian.tar.xz' lapack_3.12.1-7ubuntu1.debian.tar.xz 28808 SHA256:836081b2da0c33a0ce7890c148730fae93fe4979d8bf392daffe0c245df94788
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.12.1-7ubuntu1.dsc' lapack_3.12.1-7ubuntu1.dsc 3496 SHA256:5db29f761caecec513b5c7a1c27096aa30d23c05686e2735f66de7075ef42952
```

### `dpkg` source package: `lerc=4.0.0+ds-5ubuntu2`

Binary Packages:

- `liblerc4:amd64=4.0.0+ds-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA256:acf855502fd3b950ee78f0b67bc9e9b39316b3526fbf6d8b8b1a9482fb756723
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.debian.tar.xz' lerc_4.0.0+ds-5ubuntu2.debian.tar.xz 8808 SHA256:f3352c0f57b0b4303719ca7e86198fc68e4a9e86cd1a747588ddff8c3622069f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.dsc' lerc_4.0.0+ds-5ubuntu2.dsc 2739 SHA256:c0263116dc87739c8070254036121f31d6494eff2494b1926ef0ef887965adc1
```

### `dpkg` source package: `libarchive=3.8.5-1ubuntu2.2`

Binary Packages:

- `libarchive13t64:amd64=3.8.5-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libarchive13t64/copyright`)

- `Apache-2.0`
- `BSD-1-clause-UCB`
- `BSD-124-clause-UCB`
- `BSD-2-clause`
- `BSD-3-clause-UCB`
- `BSD-4-clause-UCB`
- `CC0-1.0`
- `Expat`
- `OpenSSL+SSLeay`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris libarchive=3.8.5-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5.orig.tar.xz' libarchive_3.8.5.orig.tar.xz 6009124 SHA512:b050ca8488143503bdec38ffcab7a5010af61f1b93c1207a3fa006d72d643b84aa8c1ab267e890eb39966ccaedd6e18db8fe5b02f2789bbd1b318a3c4cf138f3
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5.orig.tar.xz.asc' libarchive_3.8.5.orig.tar.xz.asc 833 SHA512:80b155e86d9f93efd3f2e65655c1fe66fb0b9b937888fd5b24e65b26418f01ee6fbd66c649079b8591c15ae593980ece3de49778bb1215eaecd9af0f2823fb71
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5-1ubuntu2.2.debian.tar.xz' libarchive_3.8.5-1ubuntu2.2.debian.tar.xz 33220 SHA512:2a96dde4f51331b5e67eb50d36fb2478aa12b3cf25184173b47a95fcd9651bc388befcbf0f10f9a8f4dfb5f07ec693ac820ad7d708b2bcfc4bb5ea957b25309c
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.8.5-1ubuntu2.2.dsc' libarchive_3.8.5-1ubuntu2.2.dsc 2849 SHA512:6d429fec81cc8381dd95bcce34418c153e4b948ac8820c84d910ac341016eef4d216745e6e503e27fbe51c973312b401644ed4ebb800a857e11b2da31da5c6aa
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
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2' libassuan_3.0.2.orig.tar.bz2 593917 SHA256:d2931cdad266e633510f9970e1a2f346055e351bb19f9b78912475b8074c36f6
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2.orig.tar.bz2.asc' libassuan_3.0.2.orig.tar.bz2.asc 228 SHA256:3799b287fd7d48f750597bd9104621d2cbafd508de83303b1a5f5eef08f06072
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.debian.tar.xz' libassuan_3.0.2-2build1.debian.tar.xz 17596 SHA256:a9edacae7a9ff251093b3a7a2ab9d0f6674b2bafbe8c2ed1e60af1bd716bc98c
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_3.0.2-2build1.dsc' libassuan_3.0.2-2build1.dsc 2705 SHA256:027038c1c68f08e55a46e9a1764a7a8008cac38f8cdd02bf4aaa8a69dd0397e8
```

### `dpkg` source package: `libbsd=0.12.2-2build2`

Binary Packages:

- `libbsd0:amd64=0.12.2-2build2`

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
$ apt-get source -qq --print-uris libbsd=0.12.2-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz' libbsd_0.12.2.orig.tar.xz 446032 SHA256:b88cc9163d0c652aaf39a99991d974ddba1c3a9711db8f1b5838af2a14731014
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2.orig.tar.xz.asc' libbsd_0.12.2.orig.tar.xz.asc 833 SHA256:620dc92f158ebe0a650c0e92214a8121b927276895dc9a1dcaa38f627fa0fcb0
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-2build2.debian.tar.xz' libbsd_0.12.2-2build2.debian.tar.xz 18852 SHA256:42be939c5d55d8cfa52a36bee6a15a87a0291a513f098c20d4c9d4e309df0fc0
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.12.2-2build2.dsc' libbsd_0.12.2-2build2.dsc 2371 SHA256:f56c9da7c4ed48adae604a1cf5441c16cb50a694a5261345d884ddacd19a753c
```

### `dpkg` source package: `libcap-ng=0.8.5-4build5`

Binary Packages:

- `libcap-ng0:amd64=0.8.5-4build5`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.8.5-4build5
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5.orig.tar.gz' libcap-ng_0.8.5.orig.tar.gz 59265 SHA256:e4be07fdd234f10b866433f224d183626003c65634ed0552b02e654a380244c2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4build5.debian.tar.xz' libcap-ng_0.8.5-4build5.debian.tar.xz 8044 SHA256:3763a807fd8b323e22615a8696963c057994791fbd517d67a3078ae77e0fef94
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.8.5-4build5.dsc' libcap-ng_0.8.5-4build5.dsc 2307 SHA256:f9cbe799e173a176395d8ae4acf373480ef82d8ff67347d85713aba9ae717898
```

### `dpkg` source package: `libdatrie=0.2.14-1`

Binary Packages:

- `libdatrie1:amd64=0.2.14-1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-1.dsc' libdatrie_0.2.14-1.dsc 2236 SHA256:ae0434bcde3663feaea221c5ac6539baa19152ca02dc80d7280aef8fa839a38d
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14.orig.tar.xz' libdatrie_0.2.14.orig.tar.xz 325696 SHA256:f04095010518635b51c2313efa4f290b7db828d6273e39b2b8858f859dfe81d5
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.14-1.debian.tar.xz' libdatrie_0.2.14-1.debian.tar.xz 9792 SHA256:9cde71692c59f4b440b0524ff309c564571b0b515b0ae63b0cfc1af6d730c9c1
```

### `dpkg` source package: `libdeflate=1.23-2ubuntu1`

Binary Packages:

- `libdeflate0:amd64=1.23-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.23-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23.orig.tar.gz' libdeflate_1.23.orig.tar.gz 197519 SHA256:1ab18349b9fb0ce8a0ca4116bded725be7dcbfa709e19f6f983d99df1fb8b25f
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.debian.tar.xz' libdeflate_1.23-2ubuntu1.debian.tar.xz 6276 SHA256:c4d9487a5a5594efb43485273b7a5cd90cf0792eeaa3846fc919e9899d0f07fa
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.dsc' libdeflate_1.23-2ubuntu1.dsc 2340 SHA256:0e5b9a06532fedc044833a6c10d7973a730b1777258560a2f7910e6b84b8286b
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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.dsc' liberror-perl_0.17030-1.dsc 2337 SHA256:44590c5e4057ee2b2090b7ca661cdbead886528a2b5b5fa7ae708f8b9c1814bf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030.orig.tar.gz' liberror-perl_0.17030.orig.tar.gz 33488 SHA256:34d382276c0fb0d6b38355b94c96a30b12d834d5662eb53f088ee25e3e712924
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17030-1.debian.tar.xz' liberror-perl_0.17030-1.debian.tar.xz 4660 SHA256:6824b886f5068d9345279e2425b423fd47623c3ffe74732074b67c5863040ac7
```

### `dpkg` source package: `libffi=3.5.2-4`

Binary Packages:

- `libffi8:amd64=3.5.2-4`

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
$ apt-get source -qq --print-uris libffi=3.5.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.dsc' libffi_3.5.2-4.dsc 2093 SHA512:c42c1456aec913a0dc04ee54cbe30c4dc87b204b8d5ff550e5e4aeedb03ff1a485aef578ae2b77edc79e56b299875db60f5c74209cd6e91064c759407dffb118
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2.orig.tar.gz' libffi_3.5.2.orig.tar.gz 598870 SHA512:4579932becbe33b2cb3c7a6327a9b47fee67f225ebb4677870ed4402bb7c186966a5b8645dc8a09128af51dcba27c23537e6a34567dbea4e3dc3728cfb51e038
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.debian.tar.xz' libffi_3.5.2-4.debian.tar.xz 11000 SHA512:494381871623a692e40089be90edb2cf2a4c5045cb8f7a5bd1b75849943b7ab2d950857378a975ce15371ac821ce984cbf1b6b84b3e075b3fd8bf9a95340135b
```

### `dpkg` source package: `libgcrypt20=1.12.0-2ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.12.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libgd2=2.3.3-13ubuntu2`

Binary Packages:

- `libgd3:amd64=2.3.3-13ubuntu2`

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
$ apt-get source -qq --print-uris libgd2=2.3.3-13ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3.orig.tar.gz' libgd2_2.3.3.orig.tar.gz 3593182 SHA256:dd3f1f0bb016edcc0b2d082e8229c822ad1d02223511997c80461481759b1ed2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3-13ubuntu2.debian.tar.xz' libgd2_2.3.3-13ubuntu2.debian.tar.xz 33052 SHA256:32fbdc4c9e8e75ef43362b6176e15327051ff695394f9ce87e7cdf8288b86c22
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.3.3-13ubuntu2.dsc' libgd2_2.3.3-13ubuntu2.dsc 2298 SHA256:04dc178fdeb7e6d2df604efd5aaf51439d531b807a2505313117aecbb43ba1a4
```

### `dpkg` source package: `libgpg-error=1.58-2`

Binary Packages:

- `libgpg-error0:amd64=1.58-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.58-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58-2.dsc' libgpg-error_1.58-2.dsc 2961 SHA256:076b92cc3a6c7a8815a7772220544581e6cc79ecfd13573512403d8417f7e9b9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58.orig.tar.bz2' libgpg-error_1.58.orig.tar.bz2 1123899 SHA256:f943aea9a830a8bd938e5124b579efaece24a3225ff4c3d27611a80ce1260c27
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58.orig.tar.bz2.asc' libgpg-error_1.58.orig.tar.bz2.asc 265 SHA256:400e445b7c6c52555033805f45b11a76fe4995675fdd4b0ff41ee7799cec1c3b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.58-2.debian.tar.xz' libgpg-error_1.58-2.debian.tar.xz 19792 SHA256:2e4f501ba6b2375ce23492d65192bfaf4658b68daa9c03965720bb1bc3a52cac
```

### `dpkg` source package: `libheif=1.21.2-3ubuntu0.3`

Binary Packages:

- `libheif-plugin-aomdec:amd64=1.21.2-3ubuntu0.3`
- `libheif1:amd64=1.21.2-3ubuntu0.3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libidn2=2.3.8-4build1`

Binary Packages:

- `libidn2-0:amd64=2.3.8-4build1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

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
$ apt-get source -qq --print-uris libidn2=2.3.8-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA256:bbad1678d35d28e2c62e6a2577083829461402d9e47b908791c55314a5cb5e04
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA256:8995cab7db361d9d6989eab26d9b521c74236960a5d78250121c8d369b013bd8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.debian.tar.xz' libidn2_2.3.8-4build1.debian.tar.xz 18192 SHA256:6db2bd9e3b127c10d19ab7bf7c3ff4074c847e7c36ed3ad62fa6299017084cb1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.dsc' libidn2_2.3.8-4build1.dsc 2566 SHA256:71c5ea4ac74a90f59a6c641a03b17f140c431aa02ca861ebd5897fde84d1fbe8
```

### `dpkg` source package: `libimagequant=4.4.1-1`

Binary Packages:

- `libimagequant0:amd64=4.4.1-1`

Licenses: (parsed from: `/usr/share/doc/libimagequant0/copyright`)

- `CC0`
- `GPL-3`
- `GPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libimagequant=4.4.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1-1.dsc' libimagequant_4.4.1-1.dsc 2483 SHA256:f9abd51d553a172a2a8caff137d72788c2849c19f2a6123ef9cad2c6f7cd925a
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1.orig.tar.gz' libimagequant_4.4.1.orig.tar.gz 88873 SHA256:2464a3e922b5a220b633d674062b82f0670114f8f3dd30d1935a621c95965f1b
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libimagequant/libimagequant_4.4.1-1.debian.tar.xz' libimagequant_4.4.1-1.debian.tar.xz 4620 SHA256:71954a312667bf405cf0e4a9fe4f670d60f6aea8e7171b016b3161717301b82a
```

### `dpkg` source package: `libjpeg-turbo=2.1.5-4ubuntu4`

Binary Packages:

- `libjpeg-turbo8:amd64=2.1.5-4ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`)

- `BSD-3-clause`
- `BSD-BY-LC-NE`
- `Expat`
- `NTP`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=2.1.5-4ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5.orig.tar.gz' libjpeg-turbo_2.1.5.orig.tar.gz 2264471 SHA512:20036303fbe5703a5742dc3778cc5deb2eb98d00a9852e7e80ba73c195bba011ec206c090589c482f1153f74505c3fe06d96af00f6beaa65a7fcf7ffaf626fc2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4ubuntu4.debian.tar.xz' libjpeg-turbo_2.1.5-4ubuntu4.debian.tar.xz 109408 SHA512:fd708fe577397fca2518219ceed6bc7133112a55ff4757e2793f3676e8fe65c87dd0a163f5fce1257586a90ad2a4237afd7fcc8feb1a56388d2ddcbf4ba4c9ac
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.1.5-4ubuntu4.dsc' libjpeg-turbo_2.1.5-4ubuntu4.dsc 2523 SHA512:3a2e638e409e29976b9b2d7ce4e450ed87c7f325fc1bbedd637b9062fa3bfb9b5eb14cb8eefcfa17762ce1da94fc765cb1cab9a344b3c24841df3691c2538ac6
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu12`

Binary Packages:

- `libjpeg8:amd64=8c-2ubuntu12`

Licenses: (parsed from: `/usr/share/doc/libjpeg8/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu12
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.tar.gz' libjpeg8-empty_8c-2ubuntu12.tar.gz 2021 SHA256:71785e9a0081d45cd277426e2dc94dc45e6bcd3721199c6ae37956b4721ba3ed
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.dsc' libjpeg8-empty_8c-2ubuntu12.dsc 1579 SHA256:ef23a313872c672ff25d62bdff1707560bb1edb080fb7b764e76aae9a386d031
```

### `dpkg` source package: `libjsoncpp=1.9.6-5`

Binary Packages:

- `libjsoncpp26:amd64=1.9.6-5`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp26/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.9.6-5
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6-5.dsc' libjsoncpp_1.9.6-5.dsc 2246 SHA256:a1132210f78ac8283d27d5dc6f39841d8daa7f9dfcd319885c8dc6e654905924
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6.orig.tar.gz' libjsoncpp_1.9.6.orig.tar.gz 212682 SHA256:f93b6dd7ce796b13d02c108bc9f79812245a82e577581c4c9aabe57075c90ea2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.9.6-5.debian.tar.xz' libjsoncpp_1.9.6-5.debian.tar.xz 8584 SHA256:fce1f86060c0cb3d3f21c0b9f11543299d83afebb9946e2872b46876e863a9a4
```

### `dpkg` source package: `libksba=1.6.7-2build1`

Binary Packages:

- `libksba8:amd64=1.6.7-2build1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `FSFUL`
- `GPL-3`
- `LGPL-2.1-or-later`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.6.7-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7.orig.tar.bz2' libksba_1.6.7.orig.tar.bz2 706437 SHA256:cf72510b8ebb4eb6693eef765749d83677a03c79291a311040a5bfd79baab763
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7.orig.tar.bz2.asc' libksba_1.6.7.orig.tar.bz2.asc 228 SHA256:cd704f8100151752b12776fa87dac42a3f99334ed155bcbcbaeda8e786581316
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7-2build1.debian.tar.xz' libksba_1.6.7-2build1.debian.tar.xz 14928 SHA256:e344f55db870032948c26984b40c0d003db736e508b1355c218090df5a2bc479
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.6.7-2build1.dsc' libksba_1.6.7-2build1.dsc 2506 SHA256:f8a7f9354650608846e4f50ad1bc6f75ca15606ffb60a47ba3339b39ad4985cc
```

### `dpkg` source package: `libmd=1.1.0-2build4`

Binary Packages:

- `libmd0:amd64=1.1.0-2build4`

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
$ apt-get source -qq --print-uris libmd=1.1.0-2build4
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz' libmd_1.1.0.orig.tar.xz 271228 SHA256:1bd6aa42275313af3141c7cf2e5b964e8b1fd488025caf2f971f43b00776b332
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0.orig.tar.xz.asc' libmd_1.1.0.orig.tar.xz.asc 833 SHA256:402fd3024e43ab975733d09e661804a58ca58697194e4b15216b1217cfe1dadb
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build4.debian.tar.xz' libmd_1.1.0-2build4.debian.tar.xz 8584 SHA256:12399d03a3d06fe481c9ca6cda0ae0e815882501f010c57cb9253dae93409efa
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmd/libmd_1.1.0-2build4.dsc' libmd_1.1.0-2build4.dsc 2383 SHA256:8c735703ff1b9699379c6cf538d07199d6f532dce3bcab4a1bde0ae5f7e25a21
```

### `dpkg` source package: `libpng1.6=1.6.57-1`

Binary Packages:

- `libpng16-16t64:amd64=1.6.57-1`

Licenses: (parsed from: `/usr/share/doc/libpng16-16t64/copyright`)

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
$ apt-get source -qq --print-uris libpng1.6=1.6.57-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.dsc' libpng1.6_1.6.57-1.dsc 2306 SHA512:46588883287894dbe0c5ba77bc500df0ba8d86f14a48d6253850d4e315396aec0f9165ec8d2ee6d491fb47a753a1fd1bd3b84bd84c33bf465cdc978037b2a9c4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57.orig.tar.gz' libpng1.6_1.6.57.orig.tar.gz 1591776 SHA512:cd20c278b04ac6275cea495c66472782c175bf431eb28afd3f529d5913179ac8cbf3a306e67fe9dc3ae09c87ad67b5d937b83f427e15d8364f513d95ff8b4649
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.debian.tar.xz' libpng1.6_1.6.57-1.debian.tar.xz 33420 SHA512:c9259e36eb22c973e8a067c87d5a8d01f520ea629c158679c8666e53c79eeae2ac3769b4bdd039cdf48c3ad37effdbce0f7a76821c55dc7bacea5587d7a76ce4
```

### `dpkg` source package: `libpsl=0.21.2-1.1build2`

Binary Packages:

- `libpsl5t64:amd64=0.21.2-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libpsl5t64/copyright`)

- `Chromium`
- `MIT`
- `gnulib`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.2-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2.orig.tar.xz' libpsl_0.21.2.orig.tar.xz 1870352 SHA256:11e34380f2c81d6e72c710464aae3b680df4ddcc1007826c630fb03c7ca6aa54
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build2.debian.tar.xz' libpsl_0.21.2-1.1build2.debian.tar.xz 12292 SHA256:d0d3412418d1bb95e34650ad9cf59fd0e189e824928b45875ff42388b93bd27f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.21.2-1.1build2.dsc' libpsl_0.21.2-1.1build2.dsc 2388 SHA256:7c5b3688d51ffe733e61bb32fcfd8304acbf76583d21bce75ff5c3bf7e04042f
```

### `dpkg` source package: `libseccomp=2.6.0-2ubuntu5`

Binary Packages:

- `libseccomp2:amd64=2.6.0-2ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.6.0-2ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz' libseccomp_2.6.0.orig.tar.gz 685655 SHA256:83b6085232d1588c379dc9b9cae47bb37407cf262e6e74993c61ba72d2a784dc
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0.orig.tar.gz.asc' libseccomp_2.6.0.orig.tar.gz.asc 833 SHA256:52e338fa958128293cbd25d2be189e34da41c4f4abbb1b641cf58f373c001f94
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0-2ubuntu5.debian.tar.xz' libseccomp_2.6.0-2ubuntu5.debian.tar.xz 27908 SHA256:13076780072032031635609c1d7df63c4a4ad33a04d3f751d286c20154dbf0d1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.6.0-2ubuntu5.dsc' libseccomp_2.6.0-2ubuntu5.dsc 2745 SHA256:0c74c8329d4febd0b5c74466dc418d104a49f61fd117c3f19465fca826797529
```

### `dpkg` source package: `libselinux=3.9-4build1`

Binary Packages:

- `libselinux1:amd64=3.9-4build1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.9-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9.orig.tar.gz' libselinux_3.9.orig.tar.gz 205334 SHA256:e7ee2c01dba64a0c35c9d7c9c0e06209d8186b325b0638a0d83f915cc3c101e8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9.orig.tar.gz.asc' libselinux_3.9.orig.tar.gz.asc 833 SHA256:3529c5a905fdfa9e0a8e926ce0333f508213cccd9f6e35ca1011e37412042ca5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9-4build1.debian.tar.xz' libselinux_3.9-4build1.debian.tar.xz 38172 SHA256:7e32bfa1617f9ec5bca076d337a2495260cc56628a16813b910be7c81a4383be
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_3.9-4build1.dsc' libselinux_3.9-4build1.dsc 3079 SHA256:6649868ebdd0b235b8c50e2357055cb91da89b3c1b9805c1b7d8f345f22b3952
```

### `dpkg` source package: `libsemanage=3.9-1build1`

Binary Packages:

- `libsemanage-common=3.9-1build1`
- `libsemanage2:amd64=3.9-1build1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage2/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.9-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9.orig.tar.gz' libsemanage_3.9.orig.tar.gz 185278 SHA256:ec05850aef48bfb8e02135a7f4f3f7edba3670f63d5e67f2708d4bd80b9a4634
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9.orig.tar.gz.asc' libsemanage_3.9.orig.tar.gz.asc 833 SHA256:af7644b29d7ae1f69f89444900b2e2b0eb0b4e71f10a2667c7820d10d55fa53f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9-1build1.debian.tar.xz' libsemanage_3.9-1build1.debian.tar.xz 38084 SHA256:6c281b929712b067ec757e3859076c1d319a73cefb149345819eabec26a711e8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_3.9-1build1.dsc' libsemanage_3.9-1build1.dsc 2989 SHA256:5bdf2f5efd687142c290685dc04bf2c9f08dd8d8c805366108d40d4431d6cae7
```

### `dpkg` source package: `libsepol=3.9-2`

Binary Packages:

- `libsepol2:amd64=3.9-2`

Licenses: (parsed from: `/usr/share/doc/libsepol2/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9-2.dsc' libsepol_3.9-2.dsc 2326 SHA256:fca98e9732bd9385e689f1b3bec87517a938217d5e3bf735cd88b9ee5c971850
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9.orig.tar.gz' libsepol_3.9.orig.tar.gz 515726 SHA256:ba630b59e50c5fbf9e9dd45eb3734f373cf78d689d8c10c537114c9bd769fa2e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9.orig.tar.gz.asc' libsepol_3.9.orig.tar.gz.asc 833 SHA256:2059e9c2e195f8d4102f9868295b0a2c16e91082b236d510499dc27620b812fd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_3.9-2.debian.tar.xz' libsepol_3.9-2.debian.tar.xz 21416 SHA256:f4f7f317fccf7dac9c72f1448a335edcf10ea7894f3492c475e76d404fcfb268
```

### `dpkg` source package: `libssh2=1.11.1-1ubuntu0.26.04.3`

Binary Packages:

- `libssh2-1t64:amd64=1.11.1-1ubuntu0.26.04.3`

Licenses: (parsed from: `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libtasn1-6=4.21.0-2`

Binary Packages:

- `libtasn1-6:amd64=4.21.0-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.21.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.dsc' libtasn1-6_4.21.0-2.dsc 2665 SHA256:781fb83a70d7e0357e6a70e54e11712b471ba11804e119d621682fc741376a4a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz' libtasn1-6_4.21.0.orig.tar.gz 1816537 SHA256:1d8a444a223cc5464240777346e125de51d8e6abf0b8bac742ac84609167dc87
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz.asc' libtasn1-6_4.21.0.orig.tar.gz.asc 1223 SHA256:a81037649b953c9ecb2e8f8fa24cb5c79456fd9af31499d6b753fa6569656807
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.debian.tar.xz' libtasn1-6_4.21.0-2.debian.tar.xz 19408 SHA256:baeb1f6c25a1623e6b3834de85e2a69e81b82fdbd5bac9379fc5e699c83d9866
```

### `dpkg` source package: `libthai=0.1.30-1`

Binary Packages:

- `libthai-data=0.1.30-1`
- `libthai0:amd64=0.1.30-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.30-1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-1.dsc' libthai_0.1.30-1.dsc 2301 SHA256:dd3e8be0d6afc47875cc554be7c0afe76448555e5d1bee1cb620219427699aa0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30.orig.tar.xz' libthai_0.1.30.orig.tar.xz 436044 SHA256:ddba8b53dfe584c3253766030218a88825488a51a7deef041d096e715af64bdd
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.30-1.debian.tar.xz' libthai_0.1.30-1.debian.tar.xz 12652 SHA256:820cc8bbaf8e032393c2ff8c8422264922c384ca6a2920f00516051e3f2d9f37
```

### `dpkg` source package: `libtool=2.5.4-9`

Binary Packages:

- `libltdl7:amd64=2.5.4-9`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.5.4-9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-9.dsc' libtool_2.5.4-9.dsc 2240 SHA256:664cbebe3b144fe1d4c1d59ab85879cc567d5e1f6987c6ccfa964ee073a763c3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4.orig.tar.xz' libtool_2.5.4.orig.tar.xz 1069572 SHA256:d9189031edeaa6aa74695b2aeb80a8c26df50b29d8b72c991667e01adecea42c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.5.4-9.debian.tar.xz' libtool_2.5.4-9.debian.tar.xz 41704 SHA256:b1797d6b5d41cb13d40a3e28ce132ae8aa780d0dc7d0ff2fab06dab3122b6b4e
```

### `dpkg` source package: `libunistring=1.3-2build1`

Binary Packages:

- `libunistring5:amd64=1.3-2build1`

Licenses: (parsed from: `/usr/share/doc/libunistring5/copyright`)

- `BSD-3-clause`
- `FreeSoftware`
- `GFDL-1.2+`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-2+ with distribution exception, Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
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
$ apt-get source -qq --print-uris libunistring=1.3-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz' libunistring_1.3.orig.tar.xz 2753448 SHA256:f245786c831d25150f3dfb4317cda1acc5e3f79a5da4ad073ddca58886569527
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3.orig.tar.xz.asc' libunistring_1.3.orig.tar.xz.asc 833 SHA256:62201b5b7ce9c0b033c50cefa5d7769dff4b7cee8205572e0cf917653cae9e33
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3-2build1.debian.tar.xz' libunistring_1.3-2build1.debian.tar.xz 28548 SHA256:532952853fc91014d1946bf6620761b3f145d0db854b9cb50e9fba67ca31a31b
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_1.3-2build1.dsc' libunistring_1.3-2build1.dsc 2210 SHA256:4421618798ca69760ab82a5ad3758636ffea6ca9df61a80416114d83fd0bb9f0
```

### `dpkg` source package: `liburcu=0.15.6-1`

Binary Packages:

- `liburcu-dev:amd64=0.15.6-1`
- `liburcu8t64:amd64=0.15.6-1`

Licenses: (parsed from: `/usr/share/doc/liburcu-dev/copyright`, `/usr/share/doc/liburcu8t64/copyright`)

- `BSD-2-Clause`
- `CC-BY-4.0`
- `CC0-1.0`
- `Expat`
- `Expat~Boehm`
- `FSFAP`
- `GPL-2`
- `GPL-2 with Autoconf-data exception`
- `GPL-2+`
- `GPL-2+ with Autoconf-2.0~Archive exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf-2.0~Archive exception`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris liburcu=0.15.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6-1.dsc' liburcu_0.15.6-1.dsc 2294 SHA256:876cfdbc091513a0e663d241413e2a472d925e2dedfc77bec5f4c2bd9219df6f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6.orig.tar.bz2' liburcu_0.15.6.orig.tar.bz2 686061 SHA256:850b192096eb11ebf2c70e8f97bc7da7479ee41da1bebeb44e3986908bac414f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6.orig.tar.bz2.asc' liburcu_0.15.6.orig.tar.bz2.asc 488 SHA256:7b485bc469de21587b6b6e37b97f55c1a6405b81ded19260fce70e707db18ae9
'http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu_0.15.6-1.debian.tar.xz' liburcu_0.15.6-1.debian.tar.xz 19952 SHA256:8e0908af3a881cd2402939d0868f848ebffcd516a8ae6f0c820c0436985da918
```

### `dpkg` source package: `libuv1=1.51.0-2ubuntu1`

Binary Packages:

- `libuv1t64:amd64=1.51.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libuv1t64/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `CC-BY-4.0`
- `Expat`
- `GPL3+ with autoconf exception`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.51.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0.orig.tar.gz' libuv1_1.51.0.orig.tar.gz 1352309 SHA256:c6e84ceea0ae4e7649f8cf482280e78bbd9c2dad859b63567b9d4cc0845b88e7
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0-2ubuntu1.debian.tar.xz' libuv1_1.51.0-2ubuntu1.debian.tar.xz 23460 SHA256:817682a083e1b8389592eb6f0017a4da9acd8ee7a95ef9e2cfa9666aae7a9297
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.51.0-2ubuntu1.dsc' libuv1_1.51.0-2ubuntu1.dsc 2223 SHA256:aacd895b13f3f098f1a84db70dd2eddacae39cbfa99cf067c0f65c65dfdc1390
```

### `dpkg` source package: `libwebp=1.5.0-0.1build1`

Binary Packages:

- `libsharpyuv0:amd64=1.5.0-0.1build1`
- `libwebp7:amd64=1.5.0-0.1build1`

Licenses: (parsed from: `/usr/share/doc/libsharpyuv0/copyright`, `/usr/share/doc/libwebp7/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris libwebp=1.5.0-0.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz' libwebp_1.5.0.orig.tar.gz 4267494 SHA256:7d6fab70cf844bf6769077bd5d7a74893f8ffd4dfb42861745750c63c2a5c92c
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz.asc' libwebp_1.5.0.orig.tar.gz.asc 833 SHA256:1383ff0b093f57d65f5a902e1bc51c550795ce4713b38712c60bb9151e15dcd6
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.debian.tar.xz' libwebp_1.5.0-0.1build1.debian.tar.xz 11356 SHA256:035f119997380bb5119033270f8e6b263ddebb0bb7dd989b88870d64fbcc9814
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.dsc' libwebp_1.5.0-0.1build1.dsc 2889 SHA256:e2022160126aec63ee4c30a1616bcd8906d29f8f21d96c1e12ef3edfa84a9abe
```

### `dpkg` source package: `libx11=2:1.8.13-1`

Binary Packages:

- `libx11-6:amd64=2:1.8.13-1`
- `libx11-data=2:1.8.13-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.dsc' libx11_1.8.13-1.dsc 2490 SHA256:59a024bc689876cafcdd6532e074ae1daa7b7198e102187685224b0793696f56
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA256:acf0e7cd7541110e6330ecb539441a2d53061f386ec7be6906dfde0de2598470
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA256:391221d291778f72b600104fb7907e8fb0ee61813ca5ab443bf0a0dcc3a1ce65
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.diff.gz' libx11_1.8.13-1.diff.gz 76915 SHA256:571b7234db455a649a8ffe6599eaebb8f31e47528f21ec3caa2e255da75dd699
```

### `dpkg` source package: `libxau=1:1.0.11-1build2`

Binary Packages:

- `libxau6:amd64=1:1.0.11-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.11-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz' libxau_1.0.11.orig.tar.gz 404973 SHA256:3a321aaceb803577a4776a5efe78836eb095a9e44bbc7a465d29463e1a14f189
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11.orig.tar.gz.asc' libxau_1.0.11.orig.tar.gz.asc 358 SHA256:72320a0c036cc2d36bebdd7d279c402620e2f3553f639581dfb23736803ce258
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.diff.gz' libxau_1.0.11-1build2.diff.gz 22840 SHA256:18957318b721c1c0d82da7788452ad4c0af72d3ff38ca8646e9e8c2758fd1ec7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.11-1build2.dsc' libxau_1.0.11-1build2.dsc 2208 SHA256:d72615e4b8258d57d2a5f99c6af07e543f48ee4de352288804eb1ea12e0e2621
```

### `dpkg` source package: `libxcb=1.17.0-2ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.17.0-2ubuntu1`
- `libxcb-shm0:amd64=1.17.0-2ubuntu1`
- `libxcb1:amd64=1.17.0-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.17.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0.orig.tar.gz' libxcb_1.17.0.orig.tar.gz 661593 SHA256:2c69287424c9e2128cb47ffe92171e10417041ec2963bceafb65cb3fcf8f0b85
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.diff.gz' libxcb_1.17.0-2ubuntu1.diff.gz 28420 SHA256:46de9f8ac632740414a9ac96f4262b43bb33292cbdcc972236342ded9e025f15
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.17.0-2ubuntu1.dsc' libxcb_1.17.0-2ubuntu1.dsc 5425 SHA256:fd2bcc9d51fd2f4397f8e3940b615dab53038cab5f0b5c7ca69aeae56068061a
```

### `dpkg` source package: `libxcrypt=1:4.5.1-1`

Binary Packages:

- `libcrypt-dev:amd64=1:4.5.1-1`
- `libcrypt1:amd64=1:4.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.dsc' libxcrypt_4.5.1-1.dsc 2434 SHA256:c9051653fc74d9209e8a3f8b496c359cfecdf7992b0a73f69c090973bae90e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1.orig.tar.xz' libxcrypt_4.5.1.orig.tar.xz 433264 SHA256:bddf278d44e2ecdbf1439a52ddc0bb292921dd9f3013030a2a8461c32a45533f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcrypt/libxcrypt_4.5.1-1.debian.tar.xz' libxcrypt_4.5.1-1.debian.tar.xz 8684 SHA256:b6096f6498adf5a94d727c9065ed33b784190e8c2cd3eda5f073e435708293ae
```

### `dpkg` source package: `libxdmcp=1:1.1.5-2`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.5-2`

Licenses: (parsed from: `/usr/share/doc/libxdmcp6/copyright`)

- `OpenGroup-MIT`

Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.dsc' libxdmcp_1.1.5-2.dsc 2269 SHA256:c69bdf96d80bdaa2759bf32131e6ec60a5d3e397963f3b13370789dfe8704cdc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz' libxdmcp_1.1.5.orig.tar.gz 442597 SHA256:31a7abc4f129dcf6f27ae912c3eedcb94d25ad2e8f317f69df6eda0bc4e4f2f3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5.orig.tar.gz.asc' libxdmcp_1.1.5.orig.tar.gz.asc 833 SHA256:0c7666da02d66ab785584cd16a6f9324f0d949555734e70b3b1385e525c7860b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.5-2.diff.gz' libxdmcp_1.1.5-2.diff.gz 10201 SHA256:c64245c976c5e54214c43936aa73a7186c417f549fb0d10ee396fe34d6115196
```

### `dpkg` source package: `libxext=2:1.3.4-1build3`

Binary Packages:

- `libxext6:amd64=2:1.3.4-1build3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.4-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4.orig.tar.gz' libxext_1.3.4.orig.tar.gz 494434 SHA256:8ef0789f282826661ff40a8eef22430378516ac580167da35cc948be9041aac1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.diff.gz' libxext_1.3.4-1build3.diff.gz 12746 SHA256:3396fd89de84e412bb191029872b7142ebd25044e4ddea7597f92adec956d6a9
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.4-1build3.dsc' libxext_1.3.4-1build3.dsc 2221 SHA256:9384eeeebb3b39b130f98b75776b9cea69815f2476a032f4c3aa9ef79e9034b7
```

### `dpkg` source package: `libxml2=2.15.2+dfsg-0.1ubuntu0.1`

Binary Packages:

- `libxml2-16:amd64=2.15.2+dfsg-0.1ubuntu0.1`
- `libxml2-utils=2.15.2+dfsg-0.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libxml2-16/copyright`, `/usr/share/doc/libxml2-utils/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.15.2+dfsg-0.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg.orig.tar.xz' libxml2_2.15.2+dfsg.orig.tar.xz 2154608 SHA512:d7f79a6c9435477a6b8b85e7eab8d5c69b253e2a7fbec073418ecbbd721a2feb4ebf8e04bd21ccde499d3620238fb343789cacaa6b175d9ca64a031ae07be933
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.debian.tar.xz' libxml2_2.15.2+dfsg-0.1ubuntu0.1.debian.tar.xz 37664 SHA512:6a14210cfa15e187fcde9090a08bb7e91547d4dc1ac1e61f6455f6d0eb6ca3c52b79541db392fffda88a786886354cf356f748c49b904ddd8803b9eed20b8cb4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.dsc' libxml2_2.15.2+dfsg-0.1ubuntu0.1.dsc 3262 SHA512:988b6f5f97d8d8ed1ee55c92dc5d1b978dbd663e37655e1f29a4a50a6263e86a537dbec0edabf4964eaf212a262d4f7d49de358e1e69d063aa7fbddc6122e923
```

### `dpkg` source package: `libxpm=1:3.5.17-1ubuntu0.26.04.1`

Binary Packages:

- `libxpm4:amd64=1:3.5.17-1ubuntu0.26.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.17-1ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17.orig.tar.gz' libxpm_3.5.17.orig.tar.gz 687199 SHA512:01d1b2dcbdd0c7927add19852ec1e68575d5957f043471b0aa6e2b3deb4df397e68a616e6d257ac5a38f60a836eacaae3dc0de5c4c312050673032edbc30f077
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17.orig.tar.gz.asc' libxpm_3.5.17.orig.tar.gz.asc 833 SHA512:a14af9338551fdb37e8c6e3ac75971e173d4b6a2dbce00295e94519542063019392073d08e3f1e8105783815d9853284170bd84bb423bc40fa113f76a2b813a4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17-1ubuntu0.26.04.1.diff.gz' libxpm_3.5.17-1ubuntu0.26.04.1.diff.gz 51390 SHA512:99616c4f91c7ca937a4417b332518b212d42c6277860a0b906050c5088a0506ccdf6f0d526b46c89dbad6d02512159974524d1f7f1124aa75f6f5d649f375211
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.17-1ubuntu0.26.04.1.dsc' libxpm_3.5.17-1ubuntu0.26.04.1.dsc 2381 SHA512:fdba2da9098cacc5b05d6f53a5355ebc23d543eb03d66960c82d0ebd065bd0a2dd588339abae9f04f3feb2819395dca6a530c5ee8678c22a4c1cbeef8ef3586c
```

### `dpkg` source package: `libxrender=1:0.9.12-1build1`

Binary Packages:

- `libxrender1:amd64=1:0.9.12-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.12-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz' libxrender_0.9.12.orig.tar.gz 450034 SHA256:0fff64125819c02d1102b6236f3d7d861a07b5216d8eea336c3811d31494ecf7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12.orig.tar.gz.asc' libxrender_0.9.12.orig.tar.gz.asc 833 SHA256:0bbd310ac3974ef398cf4d8a4b362b0b4d60ceb43e6eba393c3cc740b03816fc
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.diff.gz' libxrender_0.9.12-1build1.diff.gz 21468 SHA256:473c174d5df6c9378e52d092909acf42bdbd453af419893df6414294619649ac
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.12-1build1.dsc' libxrender_0.9.12-1build1.dsc 2282 SHA256:84d74d1d04750e0742521f453635b0b092b5fb13cdf3aa00c1360c6db2d68e42
```

### `dpkg` source package: `libxslt=1.1.45-0.1`

Binary Packages:

- `libxslt1.1:amd64=1.1.45-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.45-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.dsc' libxslt_1.1.45-0.1.dsc 2181 SHA256:1a986a081fa5e01fb0033a93395cf9617a9e589f84b8894a5f15a39a398c5f49
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45.orig.tar.xz' libxslt_1.1.45.orig.tar.xz 1519992 SHA256:9acfe68419c4d06a45c550321b3212762d92f41465062ca4ea19e632ee5d216e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.45-0.1.debian.tar.xz' libxslt_1.1.45-0.1.debian.tar.xz 26428 SHA256:89a7eb1d86dad60b429c75c640197d91add0dd45acd06db485769837eee8930e
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
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5.orig.tar.gz' libyaml_0.2.5.orig.tar.gz 85055 SHA256:fa240dbf262be053f3898006d502d514936c818e422afdcf33921c63bed9bf2e
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.debian.tar.xz' libyaml_0.2.5-2build3.debian.tar.xz 5860 SHA256:d872a2fae6ffca100c7f26ea73c3350278970a9794125f40a5032848d1b54ccb
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.2.5-2build3.dsc' libyaml_0.2.5-2build3.dsc 2064 SHA256:d2465e5dfdb415835f4bdf39141630016b7e3eff63e5f30126df097c5d96bb65
```

### `dpkg` source package: `libzstd=1.5.7+dfsg-3`

Binary Packages:

- `libzstd-dev:amd64=1.5.7+dfsg-3`
- `libzstd1:amd64=1.5.7+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libzstd-dev/copyright`, `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.5.7+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.dsc' libzstd_1.5.7+dfsg-3.dsc 2490 SHA256:e32b7bb90ac7b312238add6abb77023cec6f59385b1c9a78b41b69ea2ef5001a
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg.orig.tar.xz' libzstd_1.5.7+dfsg.orig.tar.xz 1834780 SHA256:0c092ef267edce57ba7f3f2645c861f72eaf5e76273c6c3632869423464b90a5
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.5.7%2bdfsg-3.debian.tar.xz' libzstd_1.5.7+dfsg-3.debian.tar.xz 23164 SHA256:ada18b02a46878f2f0a845fd003179ab9591f7f96f0b984db06a024ab46ae81f
```

### `dpkg` source package: `linux=7.0.0-30.30`

Binary Packages:

- `linux-libc-dev:amd64=7.0.0-30.30`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris linux=7.0.0-30.30
'http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0.orig.tar.gz' linux_7.0.0.orig.tar.gz 254937830 SHA512:d7906686b560bf771c919278f44285e0d646baf20e7a794b17a1759b49c122d373bdfe2069fbe0baa5b57fe49d5b7eb534939cd3cce4ca71d975d1ed1551587a
'http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.diff.gz' linux_7.0.0-30.30.diff.gz 2015294 SHA512:3d24178c972124af3ac31b5a876668ba545cfff69bb3fcedbbf8157d30216ba7d42c5752d1a6caa2cad1e6264074b45b7010d21863614559422d235c1fc4613a
'http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.dsc' linux_7.0.0-30.30.dsc 7884 SHA512:63e23b31b4f749613f7ba3a8229540d5405eca3c0b7251950d7c0a8aa387aa6f011a145cc981d884ea1aa242d464f11909e42a417f518864fc18cc04c0ff3768
```

### `dpkg` source package: `lsb-release-minimal=12.1-2build1`

Binary Packages:

- `lsb-release=12.1-2build1`

Licenses: (parsed from: `/usr/share/doc/lsb-release/copyright`)

- `0BSD`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris lsb-release-minimal=12.1-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1.orig.tar.gz' lsb-release-minimal_12.1.orig.tar.gz 5033 SHA256:1dcf4ba318203db771bd0f2e47442f84e36241c8aa4633f1e8431a6d74a49071
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1-2build1.debian.tar.xz' lsb-release-minimal_12.1-2build1.debian.tar.xz 3648 SHA256:95c03c7d87a611a1f78cf634591e4eb4920ac51ab8fa2c4920c36439945bfaf8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb-release-minimal/lsb-release-minimal_12.1-2build1.dsc' lsb-release-minimal_12.1-2build1.dsc 2197 SHA256:da35450c05dd47adfc6463fadd3ec136e5698cc9fb6d5792572d17abfcb58970
```

### `dpkg` source package: `lto-disabled-list=79`

Binary Packages:

- `lto-disabled-list=79`

Licenses: (parsed from: `/usr/share/doc/lto-disabled-list/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lto-disabled-list=79
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_79.tar.xz' lto-disabled-list_79.tar.xz 14576 SHA512:c5c0090d27777df78ce4217be67e960068ca020b59fa5a156408131436a2732e16ff3cbfd53653e3c6867bb53bada009dfc6b6f17d6dbbf81310fd8488d7ad01
'http://archive.ubuntu.com/ubuntu/pool/main/l/lto-disabled-list/lto-disabled-list_79.dsc' lto-disabled-list_79.dsc 1441 SHA512:e116038a4f5c85e0234c86d8b6d1e7b595cd9607a77cda60bbcbb6babf8f0d3b00fb76e3c0da5671e1a8f19c8896e69249a15adb36e05ce7f70f128027231f29
```

### `dpkg` source package: `ltt-control=2.14.1-1build1`

Binary Packages:

- `liblttng-ctl0t64:amd64=2.14.1-1build1`
- `lttng-tools=2.14.1-1build1`

Licenses: (parsed from: `/usr/share/doc/liblttng-ctl0t64/copyright`, `/usr/share/doc/lttng-tools/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSL-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris ltt-control=2.14.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1.orig.tar.bz2' ltt-control_2.14.1.orig.tar.bz2 3261147 SHA256:0e68eb27923621c4bc127cfce40422d28cf7e473fedf6229ae6c32ba5c5b7c6d
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1.orig.tar.bz2.asc' ltt-control_2.14.1.orig.tar.bz2.asc 833 SHA256:46b81781ffe172860dce1ac284b51c05000e13d6db24f5637f01c01a0a3d544e
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1-1build1.debian.tar.xz' ltt-control_2.14.1-1build1.debian.tar.xz 29164 SHA256:bca63bf40a69c9ba2a1e93f5a85ad84c23e6fb8e074752103c4c692684babdd1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/ltt-control/ltt-control_2.14.1-1build1.dsc' ltt-control_2.14.1-1build1.dsc 2766 SHA256:22d31c720d3e4c0c97074298832259d924cf23f018635184c759c9cfb5e374ed
```

### `dpkg` source package: `lxml=6.0.2-1build1`

Binary Packages:

- `python3-lxml:amd64=6.0.2-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-lxml/copyright`)

- `GPL`
- `GPL2`
- `later`

Source:

```console
$ apt-get source -qq --print-uris lxml=6.0.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2.orig.tar.gz' lxml_6.0.2.orig.tar.gz 4073426 SHA256:cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2-1build1.debian.tar.xz' lxml_6.0.2-1build1.debian.tar.xz 8660 SHA256:cf022619cfadda335985045a24cae41c6f0623b60176afb2d83f5a9aee615da7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lxml/lxml_6.0.2-1build1.dsc' lxml_6.0.2-1build1.dsc 1930 SHA256:f212a6b71b855631125860706b71d79fa4d323e6873d559687a5f68dda9b59c4
```

### `dpkg` source package: `lz4=1.10.0-8`

Binary Packages:

- `liblz4-1:amd64=1.10.0-8`
- `liblz4-dev:amd64=1.10.0-8`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.10.0-8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-8.dsc' lz4_1.10.0-8.dsc 2062 SHA256:4f8a893c7aeee9516aa35a95cbaa293a867d1c57811b2e80ac9a4dd0dc0c51d7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0.orig.tar.gz' lz4_1.10.0.orig.tar.gz 387114 SHA256:537512904744b35e232912055ccf8ec66d768639ff3abe5788d90d792ec5f48b
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.10.0-8.debian.tar.xz' lz4_1.10.0-8.debian.tar.xz 9676 SHA256:66d57e79483da61dee090b37b005fe43657846472c854709220621434df8e84c
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
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.dsc' make-dfsg_4.4.1-3.dsc 1976 SHA256:731cf705bc0d727ddd3c34d717e176d8713efecea83902534502c888edb59c85
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1.orig.tar.xz' make-dfsg_4.4.1.orig.tar.xz 1125180 SHA256:3b16b00ea1079af9f8096bbc71ff7cc00c249fc6a862003da3c42308a0adb0fe
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.4.1-3.debian.tar.xz' make-dfsg_4.4.1-3.debian.tar.xz 44236 SHA256:315b591ae5ead58c9f904c532d939c7658073e38ff93f7c1694db83683796511
```

### `dpkg` source package: `mawk=1.3.4.20260129-1`

Binary Packages:

- `mawk=1.3.4.20260129-1`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `CC-BY-3.0`
- `GPL-2`
- `GPL-2.0-only`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20260129-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129-1.dsc' mawk_1.3.4.20260129-1.dsc 2969 SHA256:874701c6d96fdd5458a38a7ff532fdd299a154a67b3bdf29ea4c9648ddac2702
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129.orig.tar.gz' mawk_1.3.4.20260129.orig.tar.gz 436702 SHA256:a71fb7efea5a63770d8fb71321ef6ae7afe0592f1aa7f7e2b496c26ccbb392a4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129.orig.tar.gz.asc' mawk_1.3.4.20260129.orig.tar.gz.asc 729 SHA256:ff191391d1132f1bff2f188e376e325c81052c4d5e5657805203afc4d88a56a0
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.4.20260129-1.debian.tar.xz' mawk_1.3.4.20260129-1.debian.tar.xz 16116 SHA256:0174c58af8d10f6b985723976b49dcac07ba279fd54c358a703d464904be16c5
```

### `dpkg` source package: `media-types=14.0.0build1`

Binary Packages:

- `media-types=14.0.0build1`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=14.0.0build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.tar.xz' media-types_14.0.0build1.tar.xz 65280 SHA256:6fabdef904458a2d88a30851e9d85a0ba2302066576e10a91ec491af3ec0a24f
'http://archive.ubuntu.com/ubuntu/pool/main/m/media-types/media-types_14.0.0build1.dsc' media-types_14.0.0build1.dsc 1671 SHA256:274c82804a0267b72f2394c01d1d240fe47267350bb04adcbd4c646cd235d264
```

### `dpkg` source package: `more-itertools=10.8.0-1build1`

Binary Packages:

- `python3-more-itertools=10.8.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-more-itertools/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris more-itertools=10.8.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0.orig.tar.gz' more-itertools_10.8.0.orig.tar.gz 131587 SHA256:e273f2f096101b50f92b9107b2d3021b00ee0a3cb0a7c021f70d4ec358bb8b56
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0-1build1.debian.tar.xz' more-itertools_10.8.0-1build1.debian.tar.xz 3800 SHA256:dce36478734d89639add0d245ff602ccedff8a8a1eaf0652d0670b563caab755
'http://archive.ubuntu.com/ubuntu/pool/main/m/more-itertools/more-itertools_10.8.0-1build1.dsc' more-itertools_10.8.0-1build1.dsc 2134 SHA256:20c91eed97242a411848be298e152859641e0c78e597d135428c0a923c33500d
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

### `dpkg` source package: `mypy=1.19.1-5build1`

Binary Packages:

- `python3-mypy=1.19.1-5build1`

Licenses: (parsed from: `/usr/share/doc/python3-mypy/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris mypy=1.19.1-5build1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1.orig.tar.gz' mypy_1.19.1.orig.tar.gz 3582404 SHA256:19d88bb05303fe63f71dd2c6270daca27cb9401c4ca8255fe50d1d920e0eb9ba
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1-5build1.debian.tar.xz' mypy_1.19.1-5build1.debian.tar.xz 19880 SHA256:be5105f05819f46c95717f49c719329392282a110fc30aa93de356309d7945f4
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mypy/mypy_1.19.1-5build1.dsc' mypy_1.19.1-5build1.dsc 3147 SHA256:4321c08e71c6cf9b7440b00939e9c51776716c2eb6fa43c3bb4db01588e63d9d
```

### `dpkg` source package: `ncurses=6.6+20251231-1`

Binary Packages:

- `libncursesw6:amd64=6.6+20251231-1`
- `libtinfo6:amd64=6.6+20251231-1`
- `ncurses-base=6.6+20251231-1`
- `ncurses-bin=6.6+20251231-1`

Licenses: (parsed from: `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.6+20251231-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231-1.dsc' ncurses_6.6+20251231-1.dsc 4163 SHA256:1c7b340d53b1fc75df31bc219e6395c7d6474348b2ec968098c1a0cc7cecfe0e
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231.orig.tar.gz' ncurses_6.6+20251231.orig.tar.gz 3789898 SHA256:e280541f4f601b8586bec305976c873fd641607f9bc4254bf661034dcccac4e9
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231.orig.tar.gz.asc' ncurses_6.6+20251231.orig.tar.gz.asc 729 SHA256:ccb61134c7ffd365aa1f7f3afc3dadaadbda3a46aee463b289c9d0dddb2e9bd3
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.6%2b20251231-1.debian.tar.xz' ncurses_6.6+20251231-1.debian.tar.xz 50852 SHA256:fd4a1fd7113e034175310bda8f4589854a0f66fe70482a6bd553de73d773303c
```

### `dpkg` source package: `netbase=6.5build1`

Binary Packages:

- `netbase=6.5build1`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=6.5build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.tar.xz' netbase_6.5build1.tar.xz 32620 SHA256:72537146c8ca2f504405d49d1ec74ebbaff506a7651cf1a05f9c21167dfd71ae
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_6.5build1.dsc' netbase_6.5build1.dsc 1527 SHA256:d3dd8a1f1ad9452191dac6eeb3acb304fe21f990ba25f31d653c7bf1b2f4727c
```

### `dpkg` source package: `nettle=3.10.2-1`

Binary Packages:

- `libhogweed6t64:amd64=3.10.2-1`
- `libnettle8t64:amd64=3.10.2-1`

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
$ apt-get source -qq --print-uris nettle=3.10.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.dsc' nettle_3.10.2-1.dsc 2297 SHA256:e2f713973191da5d021759173f2176c21abb5f9420df45cd93a8ff058d62493f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz' nettle_3.10.2.orig.tar.gz 2644644 SHA256:fe9ff51cb1f2abb5e65a6b8c10a92da0ab5ab6eaf26e7fc2b675c45f1fb519b5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz.asc' nettle_3.10.2.orig.tar.gz.asc 573 SHA256:3496de6ba5685733aaab2e4e611ea5860fdd76964c56c995f5a0b4c2ec5084ae
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.debian.tar.xz' nettle_3.10.2-1.debian.tar.xz 25052 SHA256:6f5be658d8bfbc5ffd3c75bd15b8a40fd51c5dd4ae10519d7835be135944f0a7
```

### `dpkg` source package: `nghttp2=1.68.0-2ubuntu0.2`

Binary Packages:

- `libnghttp2-14:amd64=1.68.0-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.68.0-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0.orig.tar.gz' nghttp2_1.68.0.orig.tar.gz 2638098 SHA512:5f9204463b7a97060ff8ca2edbb1576ec194cb8c545bd4b90a3a35d72eb2a1c39bb588f85f7e21bfb31396552e90a47c5c8ecada5273d49b7e81b23d08eb0fa5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0.orig.tar.gz.asc' nghttp2_1.68.0.orig.tar.gz.asc 833 SHA512:93eba11415c29789dac80874b2cb4f6341195f52d2b43ab9a00542bf7bf8c96d4ed776a0f91c8803998e6dea337a0635bc0a93835a5284e921867f6de1fa2581
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0-2ubuntu0.2.debian.tar.xz' nghttp2_1.68.0-2ubuntu0.2.debian.tar.xz 18304 SHA512:005674d2bd3f4304e6e3bfc06cb3c6d4a139ff1911000b39fa82b5a5402c115fa9ebcce8619314861ca5c497624897816005705360ea44ae5acf8e4370c0783d
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.68.0-2ubuntu0.2.dsc' nghttp2_1.68.0-2ubuntu0.2.dsc 2868 SHA512:92a555c1d22c6fbf74e83f57f40238e5448759bd371a5b1fe1ae636bfdd8dda05fc2010cdf9fd0e74cbdf6dbe3c8e90f5620f66d1b4cf29251a3f3cf4cf56ffc
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
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2' npth_1.8.orig.tar.bz2 317739 SHA256:8bd24b4f23a3065d6e5b26e98aba9ce783ea4fd781069c1b35d149694e90ca3e
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8.orig.tar.bz2.asc' npth_1.8.orig.tar.bz2.asc 390 SHA256:1a2bd2f85ad832d5166e616cbf336b072c6bdc20335146c5adccd3e2795a24bc
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.debian.tar.xz' npth_1.8-3build1.debian.tar.xz 8752 SHA256:34f1190e49ce8e8038413cd5e733517bc4c8bebbbc233c6ec24c811ceedf9d05
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.8-3build1.dsc' npth_1.8-3build1.dsc 2212 SHA256:88dede80fb61ae0f6a022c6e580391c67f7bc437a2a9c12820c5c3cebef96582
```

### `dpkg` source package: `numactl=2.0.19-1build1`

Binary Packages:

- `libnuma1:amd64=2.0.19-1build1`

Licenses: (parsed from: `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.19-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19.orig.tar.gz' numactl_2.0.19.orig.tar.gz 218333 SHA256:8b84ffdebfa0d730fb2fc71bb7ec96bb2d38bf76fb67246fde416a68e04125e4
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19-1build1.debian.tar.xz' numactl_2.0.19-1build1.debian.tar.xz 7416 SHA256:b77519018f00d65440508f19d68270d8e14e35d49738d1ea27b80ab8d58f41eb
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.19-1build1.dsc' numactl_2.0.19-1build1.dsc 1966 SHA256:733d41622c512d5db709ca6a0a521b60b25d3d5e5d0ee32b8762d7ddb39a5425
```

### `dpkg` source package: `numpy=1:2.3.5+ds-3ubuntu1`

Binary Packages:

- `python3-numpy=1:2.3.5+ds-3ubuntu1`
- `python3-numpy-dev:amd64=1:2.3.5+ds-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-numpy/copyright`, `/usr/share/doc/python3-numpy-dev/copyright`)

- `Apache-2`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-clause`
- `CC0`
- `CC0-1.0`
- `Expat`
- `FSFAP`
- `ZLib`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris numpy=1:2.3.5+ds-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds.orig.tar.xz' numpy_2.3.5+ds.orig.tar.xz 15391384 SHA512:be11030f1907818e6fb7948c23d3be6a2ffca9ce33d5707ee0c0f0a8e29a5f38ea4158d5567b4b11290e710a821cff52ad911984543d18340556a0f1dc149964
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds-3ubuntu1.debian.tar.xz' numpy_2.3.5+ds-3ubuntu1.debian.tar.xz 162404 SHA512:97143e31de8a696e33fe4acdd82b14be48076ec655e7eea1ace04233b67a032b460f7b3d41eb8fcf7a7dacf0dc3c451d3836740c767d8793edf54fb4f576767a
'http://archive.ubuntu.com/ubuntu/pool/main/n/numpy/numpy_2.3.5%2bds-3ubuntu1.dsc' numpy_2.3.5+ds-3ubuntu1.dsc 3608 SHA512:fbac5c3c17a627316d267f7554fd74dc65313ca8f72bfce1e89beaaa9a28cd45f83c6e3d02c7706c9d37a3d696e7c766db95d042cb266f8633260a36edeeea60
```

### `dpkg` source package: `openldap=2.6.10+dfsg-1ubuntu5`

Binary Packages:

- `libldap-common=2.6.10+dfsg-1ubuntu5`
- `libldap2:amd64=2.6.10+dfsg-1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libldap-common/copyright`, `/usr/share/doc/libldap2/copyright`)

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
$ apt-get source -qq --print-uris openldap=2.6.10+dfsg-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg.orig.tar.xz' openldap_2.6.10+dfsg.orig.tar.xz 3754560 SHA256:e871102bda1e42155fd4d6be4825a297e1c593cb0907b84fc7dde888dc847877
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.debian.tar.xz' openldap_2.6.10+dfsg-1ubuntu5.debian.tar.xz 189056 SHA256:73927f8ff5e24076cbee78701c2ed6e5d5060b85c5f79f0341386c2790624c88
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.dsc' openldap_2.6.10+dfsg-1ubuntu5.dsc 3426 SHA256:88dcaf31dac1a493430427d7d9ff2cb5c4138b1e0ab6c53c5be7c1d9c87f403c
```

### `dpkg` source package: `openssl=3.5.5-1ubuntu3.3`

Binary Packages:

- `libssl-dev:amd64=3.5.5-1ubuntu3.3`
- `libssl3t64:amd64=3.5.5-1ubuntu3.3`
- `openssl=3.5.5-1ubuntu3.3`
- `openssl-provider-legacy=3.5.5-1ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/libssl-dev/copyright`, `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `orocos-kdl=1.5.2-1`

Binary Packages:

- `liborocos-kdl-dev:amd64=1.5.2-1`
- `liborocos-kdl1.5:amd64=1.5.2-1`
- `python3-pykdl:amd64=1.5.2-1`

Licenses: (parsed from: `/usr/share/doc/liborocos-kdl-dev/copyright`, `/usr/share/doc/liborocos-kdl1.5/copyright`, `/usr/share/doc/python3-pykdl/copyright`)

- `BSD-2-clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris orocos-kdl=1.5.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2-1.dsc' orocos-kdl_1.5.2-1.dsc 2418 SHA256:e93aa583e5978a669bb3996a538df3110e31ea4fbb53c66aa12bcd2965f83e42
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2.orig.tar.gz' orocos-kdl_1.5.2.orig.tar.gz 254754 SHA256:7336cfb4238c4143f9f8a12dbd03a36116a6942d8b01522631d0cd2c42768d98
'http://archive.ubuntu.com/ubuntu/pool/universe/o/orocos-kdl/orocos-kdl_1.5.2-1.debian.tar.xz' orocos-kdl_1.5.2-1.debian.tar.xz 7508 SHA256:071e5fe81f1bad8ce4e37f83a00bdb8b77d899734a6de63c0858df1378b2dfc8
```

### `dpkg` source package: `p11-kit=0.26.2-2`

Binary Packages:

- `libp11-kit0:amd64=0.26.2-2`

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
- `customFSFULLRWD`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.26.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2-2.dsc' p11-kit_0.26.2-2.dsc 2541 SHA256:066316279c279ca964caa83d92b0f9263914fbbe3c329419e3eec9ffb30540fb
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2.orig.tar.xz' p11-kit_0.26.2.orig.tar.xz 1069216 SHA256:09fd9f44da4813a3141e73d5e7cf7008e5660d0405f13d56c15e1da9dcecf828
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2.orig.tar.xz.asc' p11-kit_0.26.2.orig.tar.xz.asc 228 SHA256:a2c205bbac7857adc91eb2670304c2ac6649aa9eaf4aab81bf0e46e124f13d8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.26.2-2.debian.tar.xz' p11-kit_0.26.2-2.debian.tar.xz 24392 SHA256:1e0be1ac6c3f47a44305855b1c54e22064516a258eef911119c4944d5530b87f
```

### `dpkg` source package: `pam=1.7.0-5ubuntu3.1`

Binary Packages:

- `libpam-modules:amd64=1.7.0-5ubuntu3.1`
- `libpam-modules-bin=1.7.0-5ubuntu3.1`
- `libpam-runtime=1.7.0-5ubuntu3.1`
- `libpam0g:amd64=1.7.0-5ubuntu3.1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `pango1.0=1.57.0-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.57.0-1`
- `libpangocairo-1.0-0:amd64=1.57.0-1`
- `libpangoft2-1.0-0:amd64=1.57.0-1`

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
$ apt-get source -qq --print-uris pango1.0=1.57.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0-1.dsc' pango1.0_1.57.0-1.dsc 3704 SHA256:d8a6e375236a70b7a84fb96b29c5f63b26a635beaa97ba2a19ec0e0c99430482
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0.orig.tar.xz' pango1.0_1.57.0.orig.tar.xz 2566400 SHA256:890640c841dae77d3ae3d8fe8953784b930fa241b17423e6120c7bfdf8b891e7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.57.0-1.debian.tar.xz' pango1.0_1.57.0-1.debian.tar.xz 44172 SHA256:640e0f81fa5623faf64a499a64d8cca65bb0155f04d7e702466934c4b622ebca
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
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8.orig.tar.xz' patch_2.8.orig.tar.xz 907208 SHA256:f87cee69eec2b4fcbf60a396b030ad6aa3415f192aa5f7ee84cad5e11f7f5ae3
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.debian.tar.xz' patch_2.8-2build1.debian.tar.xz 9512 SHA256:8dac0e1a23863e98b5303898d574bd25a9efaeeaf1deb2ef8f877575deb333f8
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.8-2build1.dsc' patch_2.8-2build1.dsc 1713 SHA256:f54ca76cf72db489c59b385fd1a8478cee1a9b39af3f425c146bb52393ec18fd
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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46.orig.tar.gz' pcre2_10.46.orig.tar.gz 2718545 SHA256:8d28d7f2c3b970c3a4bf3776bcbb5adfc923183ce74bc8df1ebaad8c1985bd07
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.diff.gz' pcre2_10.46-1build1.diff.gz 8804 SHA256:3534c69dec410207e74bf9fd6ed334ad5827fb6de1d0715175b7a14257c5bc72
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre2/pcre2_10.46-1build1.dsc' pcre2_10.46-1build1.dsc 2221 SHA256:0e10c366d10e72b6940fcf37b61c2309d0136e05edff7adb1843030c0765f155
```

### `dpkg` source package: `perl=5.40.1-7ubuntu0.1`

Binary Packages:

- `libperl5.40:amd64=5.40.1-7ubuntu0.1`
- `perl=5.40.1-7ubuntu0.1`
- `perl-base=5.40.1-7ubuntu0.1`
- `perl-modules-5.40=5.40.1-7ubuntu0.1`

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
$ apt-get source -qq --print-uris perl=5.40.1-7ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA512:933261779f476b0edda581270949c92e8e7dbe4bcaf1417398e708a321cdb748fe329acb703b2e74446cdfb03c20cefcab1eb972b852418ed3ea9b870db1fa86
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA512:3ff16b3462ce43ff38dab21b3dfc20f81772b8c9eac19ab96ba2d5e6cbb390e2302fa76c4879f915249357cd11c7ec0d548bcbf3ab2c156df1b9fca95da3f545
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.1.debian.tar.xz' perl_5.40.1-7ubuntu0.1.debian.tar.xz 174800 SHA512:6e7c2f3a580366b9303161465fdb9ad2cbf58bc602ab9d86fd9aad454d3d3b1ff312912e3bf694b36d23309492bdc2013a3c6e092d6cae3c4accf0e6cafa8c8f
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.1.dsc' perl_5.40.1-7ubuntu0.1.dsc 2893 SHA512:c4822a4d84cab4fe29b6b4c7e881fb985eea1cff87ae133848df58f1af07de8d4fdd6a86f0e3bcacc5631c46e650a38feabf03b06453c4368c3e89004d5e4f7d
```

### `dpkg` source package: `pinentry=1.3.2-3ubuntu1`

Binary Packages:

- `pinentry-curses=1.3.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.3.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2.orig.tar.bz2' pinentry_1.3.2.orig.tar.bz2 612858 SHA256:8e986ed88561b4da6e9efe0c54fa4ca8923035c99264df0b0464497c5fb94e9e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2.orig.tar.bz2.asc' pinentry_1.3.2.orig.tar.bz2.asc 427 SHA256:b95fc1c5ed983ca6c3376477d328010dce4a494fce491be02d4c5a1e018a516f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2-3ubuntu1.debian.tar.xz' pinentry_1.3.2-3ubuntu1.debian.tar.xz 20348 SHA256:ea01fa08cdaca07e00210d0eca2cd11c173abde31c6084274483e9d93c4b4be4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.3.2-3ubuntu1.dsc' pinentry_1.3.2-3ubuntu1.dsc 3373 SHA256:f5f582130fbf76f55019dfc07f0d6e4d127ec33c1bab12617a3fd766b3242a86
```

### `dpkg` source package: `pixman=0.46.4-1`

Binary Packages:

- `libpixman-1-0:amd64=0.46.4-1`

Licenses: (parsed from: `/usr/share/doc/libpixman-1-0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pixman=0.46.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.dsc' pixman_0.46.4-1.dsc 2019 SHA256:cb83e2f57bff31103db1d6248cacf07862cf060fcbd651b03bdd4cafb61df62c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4.orig.tar.gz' pixman_0.46.4.orig.tar.gz 827198 SHA256:d09c44ebc3bd5bee7021c79f922fe8fb2fb57f7320f55e97ff9914d2346a591c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.46.4-1.diff.gz' pixman_0.46.4-1.diff.gz 9639 SHA256:6e642aa9ca3c9e36d66ac3680a7b63daa73991f8e04429be45841109ddd996b4
```

### `dpkg` source package: `pkgconf=2.5.1-4`

Binary Packages:

- `libpkgconf7:amd64=2.5.1-4`
- `pkg-config:amd64=2.5.1-4`
- `pkgconf:amd64=2.5.1-4`
- `pkgconf-bin=2.5.1-4`

Licenses: (parsed from: `/usr/share/doc/libpkgconf7/copyright`, `/usr/share/doc/pkg-config/copyright`, `/usr/share/doc/pkgconf/copyright`, `/usr/share/doc/pkgconf-bin/copyright`)

- `BSD-2`
- `BSD-4`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pkgconf=2.5.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.dsc' pkgconf_2.5.1-4.dsc 1772 SHA256:8c5d2e4fed77764804cd20309bb9f8589bb39b52d215e3318e2e2c0dffd7982f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1.orig.tar.xz' pkgconf_2.5.1.orig.tar.xz 328064 SHA256:cd05c9589b9f86ecf044c10a2269822bc9eb001eced2582cfffd658b0a50c243
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.debian.tar.xz' pkgconf_2.5.1-4.debian.tar.xz 11116 SHA256:8bcd8fcbcfaceeb7ae2519247dfab0b4f422b56782b48060ec39085abc93eeef
```

### `dpkg` source package: `popt=1.19+dfsg-2build1`

Binary Packages:

- `libpopt0:amd64=1.19+dfsg-2build1`

Licenses: (parsed from: `/usr/share/doc/libpopt0/copyright`)

- `GPL-2`
- `GPL-2+`
- `expat`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris popt=1.19+dfsg-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg.orig.tar.xz' popt_1.19+dfsg.orig.tar.xz 353032 SHA256:4cd0cd2963d0c4078f65949599d97135c15ee6c09cf3a36a9a1b2753025bb06b
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg-2build1.debian.tar.xz' popt_1.19+dfsg-2build1.debian.tar.xz 12376 SHA256:da7cc022ba36984beaf61cf8af9a95cceba069c6eb7de804204cee173736cd17
'http://archive.ubuntu.com/ubuntu/pool/main/p/popt/popt_1.19%2bdfsg-2build1.dsc' popt_1.19+dfsg-2build1.dsc 2084 SHA256:ef57ca18061956b0f184ee90f8dddfd47e9c1f77c438e67b787e60830e14466b
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

Source:

```console
$ apt-get source -qq --print-uris procps=2:4.0.4-9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4.orig.tar.xz' procps_4.0.4.orig.tar.xz 1401540 SHA256:22870d6feb2478adb617ce4f09a787addaf2d260c5a8aa7b17d889a962c5e42e
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-9ubuntu1.debian.tar.xz' procps_4.0.4-9ubuntu1.debian.tar.xz 62072 SHA256:19855f80f8e98f98ef503a6412df0cea6a13cb39052daa81621965221a80f419
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_4.0.4-9ubuntu1.dsc' procps_4.0.4-9ubuntu1.dsc 2247 SHA256:02942f7296bb9f0db5177ee4d88909583b0eeb751b2ef9a675116c09d2ef176b
```

### `dpkg` source package: `pycodestyle=2.14.0-1`

Binary Packages:

- `python3-pycodestyle=2.14.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-pycodestyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pycodestyle=2.14.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0-1.dsc' pycodestyle_2.14.0-1.dsc 2512 SHA256:45532a665e6e23d970556509c3314df68760a67010847c170e68e4651a7f9b9a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0.orig.tar.gz' pycodestyle_2.14.0.orig.tar.gz 81116 SHA256:ef1b128ca60d19a255a75e64294ca941ddca7aa79784a4a9d9bc08a923b94f56
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pycodestyle/pycodestyle_2.14.0-1.debian.tar.xz' pycodestyle_2.14.0-1.debian.tar.xz 5900 SHA256:151787b0e893231f78e3bec36d32762228f3762374ef3c00df58e5b16ab7e9fc
```

### `dpkg` source package: `pydocstyle=6.3.0-3`

Binary Packages:

- `pydocstyle=6.3.0-3`
- `python3-pydocstyle=6.3.0-3`

Licenses: (parsed from: `/usr/share/doc/pydocstyle/copyright`, `/usr/share/doc/python3-pydocstyle/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pydocstyle=6.3.0-3
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0-3.dsc' pydocstyle_6.3.0-3.dsc 1661 SHA256:c4dfbadf874d4309436cc400260c756f6aaf0043094874edfce6eb81c784f967
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0.orig.tar.gz' pydocstyle_6.3.0.orig.tar.gz 78058 SHA256:29ed0e8b1abe5f4590132f456b6f9cbf0866b89fabf836bc9474fde706e2e13e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pydocstyle/pydocstyle_6.3.0-3.debian.tar.xz' pydocstyle_6.3.0-3.debian.tar.xz 6504 SHA256:950dfa653d7786b7ad5a14bd6308fb3b03a67ccd943a6c79a7bf92ebe7b77513
```

### `dpkg` source package: `pyflakes=3.4.0-1`

Binary Packages:

- `python3-pyflakes=3.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-pyflakes/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris pyflakes=3.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0-1.dsc' pyflakes_3.4.0-1.dsc 2277 SHA256:4a1bdfe65f8efd49f8a73ea384f0fb66d4dc6ff5b817fffcf946c1a676c5c7cb
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0.orig.tar.gz' pyflakes_3.4.0.orig.tar.gz 64669 SHA256:b24f96fafb7d2ab0ec5075b7350b3d2d2218eab42003821c06344973d3ea2f58
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pyflakes/pyflakes_3.4.0-1.debian.tar.xz' pyflakes_3.4.0-1.debian.tar.xz 8120 SHA256:feb1e7d68748274815aaad3c6de174cb95d94c146f4ae8927c5a11a2df8dffb0
```

### `dpkg` source package: `pygments=2.19.2+dfsg-1`

Binary Packages:

- `python3-pygments=2.19.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/python3-pygments/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `ISO-1986`

Source:

```console
$ apt-get source -qq --print-uris pygments=2.19.2+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg-1.dsc' pygments_2.19.2+dfsg-1.dsc 2486 SHA256:e1c0ef835cb5a54eaf2e56e3a68226aaf04660f3c645926369a55307d90fe003
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg.orig.tar.xz' pygments_2.19.2+dfsg.orig.tar.xz 1272792 SHA256:dddfbe504bfd50914f77ba7fa6ceb34e5f7716c19de9a3d5ca640e8ba688bf5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pygments/pygments_2.19.2%2bdfsg-1.debian.tar.xz' pygments_2.19.2+dfsg-1.debian.tar.xz 10396 SHA256:111314af1ec694fe2b603831cc3e64be085d3881eae356950724492615ee9714
```

### `dpkg` source package: `pyparsing=3.3.2-2`

Binary Packages:

- `python3-pyparsing=3.3.2-2`

Licenses: (parsed from: `/usr/share/doc/python3-pyparsing/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `MIT/X11`
- `ellis-and-grant`
- `salvolainen`

Source:

```console
$ apt-get source -qq --print-uris pyparsing=3.3.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2-2.dsc' pyparsing_3.3.2-2.dsc 2335 SHA256:48db3dea6b12c08057910605067f87011460b58ec85c13cf7c81c7f7e043b4e9
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2.orig.tar.gz' pyparsing_3.3.2.orig.tar.gz 6851574 SHA256:c777f4d763f140633dcb6d8a3eda953bf7a214dc4eff598413c070bcdc117cbc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_3.3.2-2.debian.tar.xz' pyparsing_3.3.2-2.debian.tar.xz 8648 SHA256:4cc104baa5dd432a12a16904a02faae255e1e195feea9cc46782eae08fd1a139
```

### `dpkg` source package: `pytest=9.0.2-4`

Binary Packages:

- `python3-pytest=9.0.2-4`

Licenses: (parsed from: `/usr/share/doc/python3-pytest/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pytest=9.0.2-4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2-4.dsc' pytest_9.0.2-4.dsc 2844 SHA256:58cd909aea6141a7887555d368906515341689ce15f40decccf9e375f31b0cd6
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2.orig.tar.gz' pytest_9.0.2.orig.tar.gz 1568901 SHA256:75186651a92bd89611d1d9fc20f0b4345fd827c41ccd5c299a868a05d70edf11
'http://archive.ubuntu.com/ubuntu/pool/universe/p/pytest/pytest_9.0.2-4.debian.tar.xz' pytest_9.0.2-4.debian.tar.xz 12156 SHA256:5793dd4bc6c4ae2527da6696ff6de00e5a028c57611d83a2c61f9b6c436c506e
```

### `dpkg` source package: `python-argcomplete=3.6.3-1`

Binary Packages:

- `python3-argcomplete=3.6.3-1`

Licenses: (parsed from: `/usr/share/doc/python3-argcomplete/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-argcomplete=3.6.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3-1.dsc' python-argcomplete_3.6.3-1.dsc 2429 SHA256:30e0e4a994e1947f4c097eb21b09a61a4f8fcfe253eb8c0620f15680f596483a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3.orig.tar.gz' python-argcomplete_3.6.3.orig.tar.gz 73754 SHA256:62e8ed4fd6a45864acc8235409461b72c9a28ee785a2011cc5eb78318786c89c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-argcomplete/python-argcomplete_3.6.3-1.debian.tar.xz' python-argcomplete_3.6.3-1.debian.tar.xz 7452 SHA256:c28fb424663529d43551d3b055bd834ee39b04c873ffafc4f76a00e81aaec3c1
```

### `dpkg` source package: `python-autocommand=2.2.2-4`

Binary Packages:

- `python3-autocommand=2.2.2-4`

Licenses: (parsed from: `/usr/share/doc/python3-autocommand/copyright`)

- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris python-autocommand=2.2.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2-4.dsc' python-autocommand_2.2.2-4.dsc 2101 SHA256:882f1150d5233025750db18ab7d2451cd74d97ccfe583f567f5184aa9eb2de3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2.orig.tar.gz' python-autocommand_2.2.2.orig.tar.gz 22188 SHA256:44da8e23d4ddef4c8dd8f3e8a9566c7e3365f8961ada3ce164ec0418fe107bb9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-autocommand/python-autocommand_2.2.2-4.debian.tar.xz' python-autocommand_2.2.2-4.debian.tar.xz 2752 SHA256:2b4f34c39f97b2b948b42c5ac66532e20e3fbb1ab6ef98fffa7fa77f61185003
```

### `dpkg` source package: `python-bcrypt=5.0.0-3build1`

Binary Packages:

- `python3-bcrypt=5.0.0-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-bcrypt/copyright`)

- `Apache-2.0`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris python-bcrypt=5.0.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0.orig.tar.xz' python-bcrypt_5.0.0.orig.tar.xz 16336 SHA256:a5f8f26c89c360ed8076e639f3a42ac3a402870f0b476856e1a471657708644d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0-3build1.debian.tar.xz' python-bcrypt_5.0.0-3build1.debian.tar.xz 12440 SHA256:f75adde10c39ac282111cac241eadc6f413a2484a2cef38f2ed41f94718cf3f9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-bcrypt/python-bcrypt_5.0.0-3build1.dsc' python-bcrypt_5.0.0-3build1.dsc 2372 SHA256:662ec7cc295b724971c815e5a8558e8fd65860f9c4bb2e26c2004774f2505db1
```

### `dpkg` source package: `python-cffi=2.0.0-3build1`

Binary Packages:

- `python3-cffi-backend:amd64=2.0.0-3build1`

Licenses: (parsed from: `/usr/share/doc/python3-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=2.0.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0.orig.tar.gz' python-cffi_2.0.0.orig.tar.gz 523588 SHA256:44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0-3build1.debian.tar.xz' python-cffi_2.0.0-3build1.debian.tar.xz 9464 SHA256:816fc99349e60a18c58025ac45cbad305729d381ef4daaf94cc7cf4ef87de8ce
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_2.0.0-3build1.dsc' python-cffi_2.0.0-3build1.dsc 2589 SHA256:74d9e2d022e44088b3cf6e0081dacb2c62b8380d912cab3c62f46c7000c7675b
```

### `dpkg` source package: `python-cryptography=46.0.5-1ubuntu2`

Binary Packages:

- `python3-cryptography=46.0.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/python3-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=46.0.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5.orig-rust-vendor.tar.xz' python-cryptography_46.0.5.orig-rust-vendor.tar.xz 2294960 SHA512:fe8f2cc5175af3f01838750694a91af0ef30670bdbbf521d9ef61df707ce5ab64b577245d0fb5a65616d4a789ed4d198cac8f90d0cca2c910d8c2973331be3e5
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5.orig.tar.gz' python-cryptography_46.0.5.orig.tar.gz 750064 SHA512:5bc5ea5b85c600504c46e2376a45cee749f41e2b4a6eb639b05d289370dcdc82b2ace423532f5591da16ca56ea32919e47ec154cb72bf7e1f5f3f923c744a185
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5-1ubuntu2.debian.tar.xz' python-cryptography_46.0.5-1ubuntu2.debian.tar.xz 16044 SHA512:3c1124116966f324801ab1856d00e927fdea27d3a9f658ace750a4b0b1de2328a80956bd1535a04a15e3292995c3382b643a33827b8c7098ba768d7f90cae6ca
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_46.0.5-1ubuntu2.dsc' python-cryptography_46.0.5-1ubuntu2.dsc 3927 SHA512:80b2095b38a71b4a4737f658d9f7007b89c79ff16f80572289df8db1b3b5b1877f703b757e3c44c88e9095bf939061f91816ad1024a56deefa8c9518504d7040
```

### `dpkg` source package: `python-dateutil=2.9.0-4build1`

Binary Packages:

- `python3-dateutil=2.9.0-4build1`

Licenses: (parsed from: `/usr/share/doc/python3-dateutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.9.0-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0.orig.tar.gz' python-dateutil_2.9.0.orig.tar.gz 342990 SHA256:78e73e19c63f5b20ffa567001531680d939dc042bf7850431877645523c66709
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0-4build1.debian.tar.xz' python-dateutil_2.9.0-4build1.debian.tar.xz 12408 SHA256:493f699926331d64928ad44afb562c1cddb1d95caf76a2000c7c363b4e05a5c8
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.9.0-4build1.dsc' python-dateutil_2.9.0-4build1.dsc 2296 SHA256:c829fddd28930c77f16b7b6e53ac217fdee7db5ec0083d043df5b5a94e647c72
```

### `dpkg` source package: `python-distro=1.9.0-1build1`

Binary Packages:

- `python3-distro=1.9.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-distro/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-distro=1.9.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0.orig.tar.gz' python-distro_1.9.0.orig.tar.gz 54793 SHA256:6ede051357868ed427ea71d16fc27f4d63cc0d9c8a32788aa11c450ecefcc76f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0-1build1.debian.tar.xz' python-distro_1.9.0-1build1.debian.tar.xz 3532 SHA256:0aeae9c138c9b0202c978d0edf06aa8f00eccd68c2ce322806c12eb586946c29
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-distro/python-distro_1.9.0-1build1.dsc' python-distro_1.9.0-1build1.dsc 2198 SHA256:e74be629c502f15fbf33034b39c35f152a349572bf08cd650a2382fd26399726
```

### `dpkg` source package: `python-docutils=0.22.4+dfsg-1`

Binary Packages:

- `docutils-common=0.22.4+dfsg-1`
- `python3-docutils=0.22.4+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python3-docutils/copyright`)

- `0BSD`
- `BSD-2-clause`
- `BSD-3-clause`
- `CC0-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-docutils=0.22.4+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg-1.dsc' python-docutils_0.22.4+dfsg-1.dsc 2397 SHA256:7516a49834b862a9e642fa066514943d74f29c695bc5d24889db88449a9a7b68
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg.orig.tar.xz' python-docutils_0.22.4+dfsg.orig.tar.xz 1679608 SHA256:409e1db46b932a4e440fa42666bfb3c9549325d47d4a3c96af13893b65566bdc
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.22.4%2bdfsg-1.debian.tar.xz' python-docutils_0.22.4+dfsg-1.debian.tar.xz 30716 SHA256:d494a895a2736421f1f3c0cbe9c8889ed014749b6d80d6876d95c178a11eaaae
```

### `dpkg` source package: `python-flake8=7.3.0-1`

Binary Packages:

- `python3-flake8=7.3.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-flake8/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-flake8=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0-1.dsc' python-flake8_7.3.0-1.dsc 2519 SHA256:5e471e1dbb469876590a2ae9b598144a55588aedbcb945678529e1a8910cccfb
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0.orig.tar.gz' python-flake8_7.3.0.orig.tar.gz 139551 SHA256:6ec337dc5f2d3d607c384a46fc414f1ba778ee725437775ac2f5b3cd63268654
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-flake8/python-flake8_7.3.0-1.debian.tar.xz' python-flake8_7.3.0-1.debian.tar.xz 8900 SHA256:94c10a136d473bae828f56375299eb148edf53fca519347982364505710d47ae
```

### `dpkg` source package: `python-inflect=7.5.0-1build1`

Binary Packages:

- `python3-inflect=7.5.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-inflect/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-inflect=7.5.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0.orig.tar.gz' python-inflect_7.5.0.orig.tar.gz 73751 SHA256:faf19801c3742ed5a05a8ce388e0d8fe1a07f8d095c82201eb904f5d27ad571f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0-1build1.debian.tar.xz' python-inflect_7.5.0-1build1.debian.tar.xz 3044 SHA256:eba173b8fcc97b8ed4f09dc9be931f62a56a1edff92ecfe062bc6fe10533f835
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-inflect/python-inflect_7.5.0-1build1.dsc' python-inflect_7.5.0-1build1.dsc 2189 SHA256:9fff270e33b9d4efec144ab2197b020f0e1723c2c84b6769f87355b746147d4a
```

### `dpkg` source package: `python-iniconfig=2.1.0-2`

Binary Packages:

- `python3-iniconfig=2.1.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-iniconfig/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-iniconfig=2.1.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0-2.dsc' python-iniconfig_2.1.0-2.dsc 2234 SHA256:df2de7e7fe81a332d670a685413cb7a85d23e20500683de681fe1c8d59a96e5e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0.orig.tar.gz' python-iniconfig_2.1.0.orig.tar.gz 8195 SHA256:8bbd2d27f7fc26cb01bf52bc99e7efd56a5a3f4e62c551aed2c9fb0cf4226153
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-iniconfig/python-iniconfig_2.1.0-2.debian.tar.xz' python-iniconfig_2.1.0-2.debian.tar.xz 2904 SHA256:24b1db411e4185390ed24eb9c17459ea491e2d8f394ab4c1156403347019a484
```

### `dpkg` source package: `python-jaraco.functools=4.1.0-1build1`

Binary Packages:

- `python3-jaraco.functools=4.1.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-jaraco.functools/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris python-jaraco.functools=4.1.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0.orig.tar.gz' python-jaraco.functools_4.1.0.orig.tar.gz 16421 SHA256:b3c6c10eca73c1f1b7d110a4340f1e0359f78734c610da1472b485260b5f2da0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0-1build1.debian.tar.xz' python-jaraco.functools_4.1.0-1build1.debian.tar.xz 3540 SHA256:f5945e8875408c997521d6ddfdb29fd807cd9e2ef537117f1e7df110bd137af7
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-jaraco.functools/python-jaraco.functools_4.1.0-1build1.dsc' python-jaraco.functools_4.1.0-1build1.dsc 2212 SHA256:f831834cf00ba9efd5a5560c0e4de040bc921cb20289415256100be89f37a4f4
```

### `dpkg` source package: `python-lark=1.3.1-1`

Binary Packages:

- `python3-lark=1.3.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-lark/copyright`)

- `GPL-2`
- `GPL-2+-with-bootloader-exception`
- `MIT`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-lark=1.3.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1-1.dsc' python-lark_1.3.1-1.dsc 2430 SHA256:baac8a848ec87c819757b93f1da4349c7a932835c43737023a8f51ee3023fd53
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1.orig.tar.gz' python-lark_1.3.1.orig.tar.gz 420060 SHA256:409a50fec2e0dee15f6527526d3c5474847d8aeb631f32cc36ff5eb912f386e4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-lark/python-lark_1.3.1-1.debian.tar.xz' python-lark_1.3.1-1.debian.tar.xz 6004 SHA256:2f38a9eed8711c58edd57657d2303c0e144922de2d72cf5b765ecb9f32c9ba21
```

### `dpkg` source package: `python-librt=0.7.3-1build1`

Binary Packages:

- `python3-librt=0.7.3-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-librt/copyright`)

- `0BSD`
- `BSD-2-clause`
- `Python`
- `expat`

Source:

```console
$ apt-get source -qq --print-uris python-librt=0.7.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3.orig.tar.gz' python-librt_0.7.3.orig.tar.gz 144549 SHA256:3ec50cf65235ff5c02c5b747748d9222e564ad48597122a361269dd3aa808798
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3-1build1.debian.tar.xz' python-librt_0.7.3-1build1.debian.tar.xz 5780 SHA256:64b9d82ec53eca3a8089995b150739f952141deb8c9f84a4d19a1c874723bd5e
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-librt/python-librt_0.7.3-1build1.dsc' python-librt_0.7.3-1build1.dsc 2166 SHA256:b3447ec229a0a0c3a33f249f56dcd6da948aebac9b9312ee115aa1fbd03ad954
```

### `dpkg` source package: `python-mccabe=0.7.0-1build1`

Binary Packages:

- `python3-mccabe=0.7.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-mccabe/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-mccabe=0.7.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0.orig.tar.gz' python-mccabe_0.7.0.orig.tar.gz 9326 SHA256:f4f7fa5ed8b7f77601fea3e748d6238928323a291fcde0fddbbe6cb2d0cb2da2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0-1build1.debian.tar.xz' python-mccabe_0.7.0-1build1.debian.tar.xz 5776 SHA256:193c1f082be801172097473f787e925585db5eee15bb6a145be8e539a33586d4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mccabe/python-mccabe_0.7.0-1build1.dsc' python-mccabe_0.7.0-1build1.dsc 2175 SHA256:882f58c2ac169b42f0bb13f405aadb5ce106d152051e8950b80ed7102257ceef
```

### `dpkg` source package: `python-mypy-extensions=1.1.0-1`

Binary Packages:

- `python3-mypy-extensions=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-mypy-extensions/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-mypy-extensions=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0-1.dsc' python-mypy-extensions_1.1.0-1.dsc 2505 SHA256:f861c09df7ad47616860353208016896a44299c228b2c221fb3454ad11817bcc
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0.orig.tar.xz' python-mypy-extensions_1.1.0.orig.tar.xz 6056 SHA256:f18961538512fae3cc364f14e0f21208c0522bcb1cd3f9a824d9f1995509f1c8
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-mypy-extensions/python-mypy-extensions_1.1.0-1.debian.tar.xz' python-mypy-extensions_1.1.0-1.debian.tar.xz 2872 SHA256:16eb0d055f702f77c3620a811c6573139efe47054526daba45eb556d31373175
```

### `dpkg` source package: `python-notify2=0.3.1-2`

Binary Packages:

- `python3-notify2=0.3.1-2`

Licenses: (parsed from: `/usr/share/doc/python3-notify2/copyright`)

- `BSD-3-Clause`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris python-notify2=0.3.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1-2.dsc' python-notify2_0.3.1-2.dsc 2448 SHA256:b269848461962970a23c46a574e7afbc6a24252c6c035318ec12767c3f8ac82a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1.orig.tar.gz' python-notify2_0.3.1.orig.tar.gz 17792 SHA256:33fa108d50c42f3cd3407cc437518ad3f6225d1bb237011f16393c9dd3ce197d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-notify2/python-notify2_0.3.1-2.debian.tar.xz' python-notify2_0.3.1-2.debian.tar.xz 3696 SHA256:03b1cce7e7a612dbd27a9acaddba40618048828f26fd617e28dae66878c864b1
```

### `dpkg` source package: `python-packaging=26.0-1`

Binary Packages:

- `python3-packaging=26.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-packaging/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-packaging=26.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0-1.dsc' python-packaging_26.0-1.dsc 2372 SHA256:4257ec9305aa4157e5e38b6290b22d99e4ad1dfcee3c1e317b60430dc2605717
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0.orig.tar.gz' python-packaging_26.0.orig.tar.gz 143416 SHA256:00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-packaging/python-packaging_26.0-1.debian.tar.xz' python-packaging_26.0-1.debian.tar.xz 4264 SHA256:1c840e26f4d52565544130629668090c058c904c00f03cb626d28b47a0089b0e
```

### `dpkg` source package: `python-pathspec=1.0.4-1`

Binary Packages:

- `python3-pathspec=1.0.4-1`

Licenses: (parsed from: `/usr/share/doc/python3-pathspec/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris python-pathspec=1.0.4-1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4-1.dsc' python-pathspec_1.0.4-1.dsc 2181 SHA256:7f9374f2717f0de47fe63a1bf9108c171eb9d6ece327f610efee3bd72fdb279d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4.orig.tar.gz' python-pathspec_1.0.4.orig.tar.gz 131200 SHA256:0210e2ae8a21a9137c0d470578cb0e595af87edaa6ebf12ff176f14a02e0e645
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pathspec/python-pathspec_1.0.4-1.debian.tar.xz' python-pathspec_1.0.4-1.debian.tar.xz 2716 SHA256:3ed6a0e62ecd2195eb843d543652ccb9aa3be831550fd55c4158b557b7bc8f44
```

### `dpkg` source package: `python-pluggy=1.6.0-2`

Binary Packages:

- `python3-pluggy=1.6.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-pluggy/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-pluggy=1.6.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0-2.dsc' python-pluggy_1.6.0-2.dsc 3007 SHA256:f62c832bad85a5228c85168b6061dfa0a73f7a615253a9dc935526ef1f16ff10
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0.orig.tar.gz' python-pluggy_1.6.0.orig.tar.gz 64449 SHA256:d35ec78be56dae9fd736e1378a2c3c176fd2aefd9daefc209abeab569c2732ee
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pluggy/python-pluggy_1.6.0-2.debian.tar.xz' python-pluggy_1.6.0-2.debian.tar.xz 3952 SHA256:abc86a1f94f473be8301681d768c7c1656da508d598027d231aa9da8a1599926
```

### `dpkg` source package: `python-psutil=7.1.0-1ubuntu1`

Binary Packages:

- `python3-psutil=7.1.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python3-psutil/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris python-psutil=7.1.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0.orig.tar.xz' python-psutil_7.1.0.orig.tar.xz 1856752 SHA256:2b801aa6b37123fe6a22eef88728eed9b34153d4974e67c49fcb79f0360adf9a
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0-1ubuntu1.debian.tar.xz' python-psutil_7.1.0-1ubuntu1.debian.tar.xz 7340 SHA256:33f872bce56578af0e5239259b9b3fc88207a2c96b9ef4f7f18323875fd58c46
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-psutil/python-psutil_7.1.0-1ubuntu1.dsc' python-psutil_7.1.0-1ubuntu1.dsc 2226 SHA256:ea39b208ba4fe31a5aa80c00024ab1a8db4c6cbca4317992b93dbdbd86249f78
```

### `dpkg` source package: `python-typeguard=4.4.4-2`

Binary Packages:

- `python3-typeguard=4.4.4-2`

Licenses: (parsed from: `/usr/share/doc/python3-typeguard/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-typeguard=4.4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4-2.dsc' python-typeguard_4.4.4-2.dsc 2478 SHA256:7179175870199c689c6229f1fda08a754157603380636f776ddd8ff49f8ba469
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4.orig.tar.gz' python-typeguard_4.4.4.orig.tar.gz 71834 SHA256:97e071dea3507d41f10d6254ee41893c3e5e264570f0dc860a3dde95763dee97
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typeguard/python-typeguard_4.4.4-2.debian.tar.xz' python-typeguard_4.4.4-2.debian.tar.xz 2920 SHA256:e357892890d3009b1b0865bdc64978bb36e085ce3f658994453169b9c0292f2c
```

### `dpkg` source package: `python-typing-extensions=4.15.0-2`

Binary Packages:

- `python3-typing-extensions=4.15.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-typing-extensions/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-typing-extensions=4.15.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0-2.dsc' python-typing-extensions_4.15.0-2.dsc 2567 SHA256:f3cb4cfd2cc58a2739735d140063e71554926f0a7b27280c92d4408dabe0f836
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0.orig.tar.gz' python-typing-extensions_4.15.0.orig.tar.gz 109391 SHA256:0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-typing-extensions/python-typing-extensions_4.15.0-2.debian.tar.xz' python-typing-extensions_4.15.0-2.debian.tar.xz 5144 SHA256:745b4e675eecf758929ac570599422eeb0f1546536f82f486b4193523e8043da
```

### `dpkg` source package: `python-zipp=3.23.0-1build1`

Binary Packages:

- `python3-zipp=3.23.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-zipp/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-zipp=3.23.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0.orig.tar.gz' python-zipp_3.23.0.orig.tar.gz 25547 SHA256:a07157588a12518c9d4034df3fbbee09c814741a33ff63c05fa29d26a2404166
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0-1build1.debian.tar.xz' python-zipp_3.23.0-1build1.debian.tar.xz 3752 SHA256:72e86f140b988daadd5309093721fdced6c269f2f821feafaaaa3d2f055b09f6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-zipp/python-zipp_3.23.0-1build1.dsc' python-zipp_3.23.0-1build1.dsc 2198 SHA256:f2a4f78b7aff75ac5c894c341ca2990b326c5db66544b3af11922151724ae0e1
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


### `dpkg` source package: `python3-defaults=3.14.3-0ubuntu2`

Binary Packages:

- `libpython3-dev:amd64=3.14.3-0ubuntu2`
- `libpython3-stdlib:amd64=3.14.3-0ubuntu2`
- `python3=3.14.3-0ubuntu2`
- `python3-dev=3.14.3-0ubuntu2`
- `python3-minimal=3.14.3-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.14.3-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.tar.gz' python3-defaults_3.14.3-0ubuntu2.tar.gz 147194 SHA256:8d2534456e1b1abb062222a11700b4a6a9a16d2980f803ddac1a6abaca9a3d83
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.dsc' python3-defaults_3.14.3-0ubuntu2.dsc 3081 SHA256:9049cdf51732dd772dd84eb6b632bef12fee4328f6329407df514121386818ad
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


### `dpkg` source package: `python3-vcstool=0.3.0-1`

Binary Packages:

- `python3-vcstool=0.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python3.14=3.14.4-1ubuntu0.1`

Binary Packages:

- `libpython3.14:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-dev:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-minimal:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-stdlib:amd64=3.14.4-1ubuntu0.1`
- `python3.14=3.14.4-1ubuntu0.1`
- `python3.14-dev=3.14.4-1ubuntu0.1`
- `python3.14-minimal=3.14.4-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libpython3.14/copyright`, `/usr/share/doc/libpython3.14-dev/copyright`, `/usr/share/doc/libpython3.14-minimal/copyright`, `/usr/share/doc/libpython3.14-stdlib/copyright`, `/usr/share/doc/python3.14/copyright`, `/usr/share/doc/python3.14-dev/copyright`, `/usr/share/doc/python3.14-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.14=3.14.4-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4.orig.tar.xz' python3.14_3.14.4.orig.tar.xz 23855332 SHA512:89a7f8b8a31f48d150badb4751df137d47d9014c9c422649a1a55aef5618aa7f0259dd18c151e6804fa8312c6a21544332a9f630ee81150dc00505637e62bb8c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.debian.tar.xz' python3.14_3.14.4-1ubuntu0.1.debian.tar.xz 237260 SHA512:6c64ab7d1c35046d7d2bbb447d0ab020ebc3d7345939f2b2760357f8e70ef3a06c5b038227c3371af70d126676a067d998d6adfbddbc1daa47d65f1bc1356a13
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.dsc' python3.14_3.14.4-1ubuntu0.1.dsc 4189 SHA512:85aeeb6ad31d1706e851f96b74de676cf4b954cc38c3ed80f41b04a07cbb0d5459bd9aa5df6341bbbc1d1d7be1abbc1ac4cdc09b4b71aa4eb788feacdc8b1359
```

### `dpkg` source package: `pyyaml=6.0.3-1build1`

Binary Packages:

- `python3-yaml=6.0.3-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-yaml/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris pyyaml=6.0.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3.orig.tar.gz' pyyaml_6.0.3.orig.tar.gz 130960 SHA256:d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3-1build1.debian.tar.xz' pyyaml_6.0.3-1build1.debian.tar.xz 7824 SHA256:1e1d06a59006388427476394a2556100bd6e599c34a32c02304af7a8b3fceff6
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_6.0.3-1build1.dsc' pyyaml_6.0.3-1build1.dsc 2130 SHA256:07f232d47bc5c2ae76988f8fbbbd2cf1f2c048501b709dee45a89c2b9c1a879d
```

### `dpkg` source package: `readline=8.3-4`

Binary Packages:

- `libreadline8t64:amd64=8.3-4`
- `readline-common=8.3-4`

Licenses: (parsed from: `/usr/share/doc/libreadline8t64/copyright`, `/usr/share/doc/readline-common/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.dsc' readline_8.3-4.dsc 2957 SHA256:fce5107e62911aa84c18d6049469cb34c31db7fd35ab9f8182e4da7fb6959527
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3.orig.tar.gz' readline_8.3.orig.tar.gz 3419642 SHA256:fe5383204467828cd495ee8d1d3c037a7eba1389c22bc6a041f627976f9061cc
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.debian.tar.xz' readline_8.3-4.debian.tar.xz 28644 SHA256:506ec377afd3688752554271e6d9a69c12a4d19ec1c002116fc70967ca6a5bdf
```

### `dpkg` source package: `rhash=1.4.6-1.1`

Binary Packages:

- `librhash1:amd64=1.4.6-1.1`

Licenses: (parsed from: `/usr/share/doc/librhash1/copyright`)

- `0BSD`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.4.6-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6-1.1.dsc' rhash_1.4.6-1.1.dsc 2289 SHA256:a82cf404f096943b1d13010dc9b7f5c4c73b01e350abe17561852a69bb61c625
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6.orig.tar.gz' rhash_1.4.6.orig.tar.gz 465103 SHA256:a72b92ef5b7941d96c7a2d66e6e3b618bfd8c452e20b0fdaaa6988defca7e9bf
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6.orig.tar.gz.asc' rhash_1.4.6.orig.tar.gz.asc 833 SHA256:cbd73b528320e233d9afa752406a47d8344beb8cb5fbb94db75a939319a28a4c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.4.6-1.1.debian.tar.xz' rhash_1.4.6-1.1.debian.tar.xz 10516 SHA256:d295fd94007805e5f10f1fd31529a05a45104aa67a0fc75aa46c190847a71e39
```

### `dpkg` source package: `roman-numerals=4.1.0-1`

Binary Packages:

- `python3-roman-numerals=4.1.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-roman-numerals/copyright`)

- `0BSD`
- `CC0-1.0`

Source:

```console
$ apt-get source -qq --print-uris roman-numerals=4.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0-1.dsc' roman-numerals_4.1.0-1.dsc 2226 SHA256:42871fea60cc6324b794d22112f212c8e5c17880e09182e6edcf360f4b8fce66
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0.orig.tar.gz' roman-numerals_4.1.0.orig.tar.gz 19658 SHA256:c12d098de0c0befa3de91be3f456f272978f481411fb22441a6b9fe386c24f80
'http://archive.ubuntu.com/ubuntu/pool/main/r/roman-numerals/roman-numerals_4.1.0-1.debian.tar.xz' roman-numerals_4.1.0-1.debian.tar.xz 4736 SHA256:2d5f2ce66ad500cd63b74bfa52533516e1863a7c8778594cfd1e2b5acc59360b
```

### `dpkg` source package: `ros-apt-source=1.2.0~resolute`

Binary Packages:

- `ros2-apt-source=1.2.0~resolute`

Licenses: (parsed from: `/usr/share/doc/ros2-apt-source/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-action-msgs=2.4.5-1resolute.20260728.213744`

Binary Packages:

- `ros-lyrical-action-msgs=2.4.5-1resolute.20260728.213744`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-action-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-auto=2.8.8-1resolute.20260728.210738`

Binary Packages:

- `ros-lyrical-ament-cmake-auto=2.8.8-1resolute.20260728.210738`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-copyright=0.20.6-1resolute.20260728.204014`

Binary Packages:

- `ros-lyrical-ament-cmake-copyright=0.20.6-1resolute.20260728.204014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-core=2.8.8-1resolute.20260728.162608`

Binary Packages:

- `ros-lyrical-ament-cmake-core=2.8.8-1resolute.20260728.162608`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-cppcheck=0.20.6-1resolute.20260728.204151`

Binary Packages:

- `ros-lyrical-ament-cmake-cppcheck=0.20.6-1resolute.20260728.204151`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-cpplint=0.20.6-1resolute.20260728.204159`

Binary Packages:

- `ros-lyrical-ament-cmake-cpplint=0.20.6-1resolute.20260728.204159`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-cpplint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-definitions=2.8.8-1resolute.20260728.173325`

Binary Packages:

- `ros-lyrical-ament-cmake-export-definitions=2.8.8-1resolute.20260728.173325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-definitions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-dependencies=2.8.8-1resolute.20260728.173500`

Binary Packages:

- `ros-lyrical-ament-cmake-export-dependencies=2.8.8-1resolute.20260728.173500`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-include-directories=2.8.8-1resolute.20260728.172444`

Binary Packages:

- `ros-lyrical-ament-cmake-export-include-directories=2.8.8-1resolute.20260728.172444`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-libraries=2.8.8-1resolute.20260728.173328`

Binary Packages:

- `ros-lyrical-ament-cmake-export-libraries=2.8.8-1resolute.20260728.173328`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-link-flags=2.8.8-1resolute.20260728.173334`

Binary Packages:

- `ros-lyrical-ament-cmake-export-link-flags=2.8.8-1resolute.20260728.173334`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-link-flags/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-export-targets=2.8.8-1resolute.20260728.173432`

Binary Packages:

- `ros-lyrical-ament-cmake-export-targets=2.8.8-1resolute.20260728.173432`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-export-targets/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-flake8=0.20.6-1resolute.20260728.204007`

Binary Packages:

- `ros-lyrical-ament-cmake-flake8=0.20.6-1resolute.20260728.204007`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gen-version-h=2.8.8-1resolute.20260728.173325`

Binary Packages:

- `ros-lyrical-ament-cmake-gen-version-h=2.8.8-1resolute.20260728.173325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gen-version-h/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gmock=2.8.8-1resolute.20260728.175747`

Binary Packages:

- `ros-lyrical-ament-cmake-gmock=2.8.8-1resolute.20260728.175747`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gmock/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-gtest=2.8.8-1resolute.20260728.175609`

Binary Packages:

- `ros-lyrical-ament-cmake-gtest=2.8.8-1resolute.20260728.175609`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-gtest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-include-directories=2.8.8-1resolute.20260728.173227`

Binary Packages:

- `ros-lyrical-ament-cmake-include-directories=2.8.8-1resolute.20260728.173227`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-include-directories/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-libraries=2.8.8-1resolute.20260728.173352`

Binary Packages:

- `ros-lyrical-ament-cmake-libraries=2.8.8-1resolute.20260728.173352`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-libraries/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-lint-cmake=0.20.6-1resolute.20260728.204241`

Binary Packages:

- `ros-lyrical-ament-cmake-lint-cmake=0.20.6-1resolute.20260728.204241`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-mypy=0.20.6-1resolute.20260728.204152`

Binary Packages:

- `ros-lyrical-ament-cmake-mypy=0.20.6-1resolute.20260728.204152`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-mypy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-pep257=0.20.6-1resolute.20260728.204012`

Binary Packages:

- `ros-lyrical-ament-cmake-pep257=0.20.6-1resolute.20260728.204012`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-pep257/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-pytest=2.8.8-1resolute.20260728.175653`

Binary Packages:

- `ros-lyrical-ament-cmake-pytest=2.8.8-1resolute.20260728.175653`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-pytest/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-python=2.8.8-1resolute.20260728.173021`

Binary Packages:

- `ros-lyrical-ament-cmake-python=2.8.8-1resolute.20260728.173021`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-ros-core=0.15.8-1resolute.20260728.173607`

Binary Packages:

- `ros-lyrical-ament-cmake-ros-core=0.15.8-1resolute.20260728.173607`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-ros-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-ros=0.15.8-1resolute.20260730.180608`

Binary Packages:

- `ros-lyrical-ament-cmake-ros=0.15.8-1resolute.20260730.180608`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-target-dependencies=2.8.8-1resolute.20260728.173503`

Binary Packages:

- `ros-lyrical-ament-cmake-target-dependencies=2.8.8-1resolute.20260728.173503`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-target-dependencies/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-test=2.8.8-1resolute.20260728.175319`

Binary Packages:

- `ros-lyrical-ament-cmake-test=2.8.8-1resolute.20260728.175319`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-test/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-uncrustify=0.20.6-1resolute.20260728.210813`

Binary Packages:

- `ros-lyrical-ament-cmake-uncrustify=0.20.6-1resolute.20260728.210813`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-version=2.8.8-1resolute.20260728.173013`

Binary Packages:

- `ros-lyrical-ament-cmake-version=2.8.8-1resolute.20260728.173013`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-version/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake-xmllint=0.20.6-1resolute.20260728.204019`

Binary Packages:

- `ros-lyrical-ament-cmake-xmllint=0.20.6-1resolute.20260728.204019`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cmake=2.8.8-1resolute.20260728.175713`

Binary Packages:

- `ros-lyrical-ament-cmake=2.8.8-1resolute.20260728.175713`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-copyright=0.20.6-1resolute.20260728.172704`

Binary Packages:

- `ros-lyrical-ament-copyright=0.20.6-1resolute.20260728.172704`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-copyright/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cppcheck=0.20.6-1resolute.20260728.173125`

Binary Packages:

- `ros-lyrical-ament-cppcheck=0.20.6-1resolute.20260728.173125`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cppcheck/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-cpplint=0.20.6-1resolute.20260728.173508`

Binary Packages:

- `ros-lyrical-ament-cpplint=0.20.6-1resolute.20260728.173508`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-cpplint/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-flake8=0.20.6-1resolute.20260728.172702`

Binary Packages:

- `ros-lyrical-ament-flake8=0.20.6-1resolute.20260728.172702`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-flake8/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-index-cpp=1.13.3-3resolute.20260728.204744`

Binary Packages:

- `ros-lyrical-ament-index-cpp=1.13.3-3resolute.20260728.204744`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-index-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-index-python=1.13.3-3resolute.20260728.172618`

Binary Packages:

- `ros-lyrical-ament-index-python=1.13.3-3resolute.20260728.172618`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-index-python/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-auto=0.20.6-1resolute.20260728.204247`

Binary Packages:

- `ros-lyrical-ament-lint-auto=0.20.6-1resolute.20260728.204247`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-auto/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-cmake=0.20.6-1resolute.20260728.173508`

Binary Packages:

- `ros-lyrical-ament-lint-cmake=0.20.6-1resolute.20260728.173508`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint-common=0.20.6-1resolute.20260728.211054`

Binary Packages:

- `ros-lyrical-ament-lint-common=0.20.6-1resolute.20260728.211054`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-lint=0.20.6-1resolute.20260728.172451`

Binary Packages:

- `ros-lyrical-ament-lint=0.20.6-1resolute.20260728.172451`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-lint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-mypy=0.20.6-1resolute.20260728.173532`

Binary Packages:

- `ros-lyrical-ament-mypy=0.20.6-1resolute.20260728.173532`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-mypy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-package=0.18.3-3resolute.20260430.010336`

Binary Packages:

- `ros-lyrical-ament-package=0.18.3-3resolute.20260430.010336`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-package/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-pep257=0.20.6-1resolute.20260728.172706`

Binary Packages:

- `ros-lyrical-ament-pep257=0.20.6-1resolute.20260728.172706`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-pep257/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-uncrustify=0.20.6-1resolute.20260728.210701`

Binary Packages:

- `ros-lyrical-ament-uncrustify=0.20.6-1resolute.20260728.210701`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-uncrustify/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ament-xmllint=0.20.6-1resolute.20260728.172708`

Binary Packages:

- `ros-lyrical-ament-xmllint=0.20.6-1resolute.20260728.172708`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ament-xmllint/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-builtin-interfaces=2.4.5-1resolute.20260728.212832`

Binary Packages:

- `ros-lyrical-builtin-interfaces=2.4.5-1resolute.20260728.212832`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-builtin-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-class-loader=2.9.4-3resolute.20260728.211940`

Binary Packages:

- `ros-lyrical-class-loader=2.9.4-3resolute.20260728.211940`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-class-loader/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-common-interfaces=5.9.3-1resolute.20260729.000033`

Binary Packages:

- `ros-lyrical-common-interfaces=5.9.3-1resolute.20260729.000033`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-common-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-composition-interfaces=2.4.5-1resolute.20260728.225733`

Binary Packages:

- `ros-lyrical-composition-interfaces=2.4.5-1resolute.20260728.225733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-composition-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-console-bridge-vendor=1.9.1-3resolute.20260728.205113`

Binary Packages:

- `ros-lyrical-console-bridge-vendor=1.9.1-3resolute.20260728.205113`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-console-bridge-vendor/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-diagnostic-msgs=5.9.3-1resolute.20260728.232313`

Binary Packages:

- `ros-lyrical-diagnostic-msgs=5.9.3-1resolute.20260728.232313`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-diagnostic-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-eigen3-cmake-module=0.5.1-3resolute.20260728.205221`

Binary Packages:

- `ros-lyrical-eigen3-cmake-module=0.5.1-3resolute.20260728.205221`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-eigen3-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-fastcdr=2.3.6-1resolute.20260728.172850`

Binary Packages:

- `ros-lyrical-fastcdr=2.3.6-1resolute.20260728.172850`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-fastcdr/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-fastdds=3.6.2-1resolute.20260728.174239`

Binary Packages:

- `ros-lyrical-fastdds=3.6.2-1resolute.20260728.174239`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-fastdds/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-foonathan-memory-vendor=1.4.1-1resolute.20260728.173726`

Binary Packages:

- `ros-lyrical-foonathan-memory-vendor=1.4.1-1resolute.20260728.173726`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-foonathan-memory-vendor/copyright`)

- `Apache License 2.0`
- `zlib License`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-geometry-msgs=5.9.3-1resolute.20260728.231241`

Binary Packages:

- `ros-lyrical-geometry-msgs=5.9.3-1resolute.20260728.231241`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-geometry-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-geometry2=0.45.9-1resolute.20260805.065025`

Binary Packages:

- `ros-lyrical-geometry2=0.45.9-1resolute.20260805.065025`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-geometry2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-kdl-parser=3.0.1-3resolute.20260730.201826`

Binary Packages:

- `ros-lyrical-kdl-parser=3.0.1-3resolute.20260730.201826`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-kdl-parser/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-keyboard-handler=0.5.1-1resolute.20260728.205547`

Binary Packages:

- `ros-lyrical-keyboard-handler=0.5.1-1resolute.20260728.205547`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-keyboard-handler/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-ros=0.29.9-1resolute.20260730.202345`

Binary Packages:

- `ros-lyrical-launch-ros=0.29.9-1resolute.20260730.202345`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing-ament-cmake=3.9.8-1resolute.20260728.205136`

Binary Packages:

- `ros-lyrical-launch-testing-ament-cmake=3.9.8-1resolute.20260728.205136`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing-ament-cmake/copyright`)

- `Apache License 2.0`
- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing-ros=0.29.9-1resolute.20260730.202453`

Binary Packages:

- `ros-lyrical-launch-testing-ros=0.29.9-1resolute.20260730.202453`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing-ros/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-testing=3.9.8-1resolute.20260728.175423`

Binary Packages:

- `ros-lyrical-launch-testing=3.9.8-1resolute.20260728.175423`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-testing/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-xml=3.9.8-1resolute.20260728.175211`

Binary Packages:

- `ros-lyrical-launch-xml=3.9.8-1resolute.20260728.175211`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-xml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch-yaml=3.9.8-1resolute.20260728.172929`

Binary Packages:

- `ros-lyrical-launch-yaml=3.9.8-1resolute.20260728.172929`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch-yaml/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-launch=3.9.8-1resolute.20260728.172811`

Binary Packages:

- `ros-lyrical-launch=3.9.8-1resolute.20260728.172811`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-libstatistics-collector=2.1.2-1resolute.20260730.191931`

Binary Packages:

- `ros-lyrical-libstatistics-collector=2.1.2-1resolute.20260730.191931`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-libstatistics-collector/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-libyaml-vendor=1.8.1-3resolute.20260728.205613`

Binary Packages:

- `ros-lyrical-libyaml-vendor=1.8.1-3resolute.20260728.205613`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-libyaml-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-lifecycle-msgs=2.4.5-1resolute.20260728.225031`

Binary Packages:

- `ros-lyrical-lifecycle-msgs=2.4.5-1resolute.20260728.225031`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-lifecycle-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-lz4-cmake-module=0.33.3-1resolute.20260728.205656`

Binary Packages:

- `ros-lyrical-lz4-cmake-module=0.33.3-1resolute.20260728.205656`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-lz4-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-mcap-vendor=0.33.3-1resolute.20260728.210724`

Binary Packages:

- `ros-lyrical-mcap-vendor=0.33.3-1resolute.20260728.210724`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-mcap-vendor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-message-filters=7.4.2-1resolute.20260730.203000`

Binary Packages:

- `ros-lyrical-message-filters=7.4.2-1resolute.20260730.203000`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-message-filters/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-nav-msgs=5.9.3-1resolute.20260728.232559`

Binary Packages:

- `ros-lyrical-nav-msgs=5.9.3-1resolute.20260728.232559`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-nav-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-pluginlib=5.8.4-3resolute.20260728.212925`

Binary Packages:

- `ros-lyrical-pluginlib=5.8.4-3resolute.20260728.212925`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-pluginlib/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-action=10.4.4-1resolute.20260730.191914`

Binary Packages:

- `ros-lyrical-rcl-action=10.4.4-1resolute.20260730.191914`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-interfaces=2.4.5-1resolute.20260728.225214`

Binary Packages:

- `ros-lyrical-rcl-interfaces=2.4.5-1resolute.20260728.225214`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-lifecycle=10.4.4-1resolute.20260730.192251`

Binary Packages:

- `ros-lyrical-rcl-lifecycle=10.4.4-1resolute.20260730.192251`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-implementation=3.4.1-3resolute.20260730.191158`

Binary Packages:

- `ros-lyrical-rcl-logging-implementation=3.4.1-3resolute.20260730.191158`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-interface=3.4.1-3resolute.20260730.181332`

Binary Packages:

- `ros-lyrical-rcl-logging-interface=3.4.1-3resolute.20260730.181332`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-logging-spdlog=3.4.1-3resolute.20260730.190853`

Binary Packages:

- `ros-lyrical-rcl-logging-spdlog=3.4.1-3resolute.20260730.190853`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-logging-spdlog/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl-yaml-param-parser=10.4.4-1resolute.20260730.190918`

Binary Packages:

- `ros-lyrical-rcl-yaml-param-parser=10.4.4-1resolute.20260730.190918`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl-yaml-param-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcl=10.4.4-1resolute.20260730.191417`

Binary Packages:

- `ros-lyrical-rcl=10.4.4-1resolute.20260730.191417`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcl/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-action=32.0.2-1resolute.20260730.202907`

Binary Packages:

- `ros-lyrical-rclcpp-action=32.0.2-1resolute.20260730.202907`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-components=32.0.2-1resolute.20260730.203016`

Binary Packages:

- `ros-lyrical-rclcpp-components=32.0.2-1resolute.20260730.203016`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-components/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp-lifecycle=32.0.2-1resolute.20260804.070252`

Binary Packages:

- `ros-lyrical-rclcpp-lifecycle=32.0.2-1resolute.20260804.070252`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp-lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclcpp=32.0.2-1resolute.20260730.192517`

Binary Packages:

- `ros-lyrical-rclcpp=32.0.2-1resolute.20260730.192517`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclcpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rclpy=10.0.10-1resolute.20260730.192836`

Binary Packages:

- `ros-lyrical-rclpy=10.0.10-1resolute.20260730.192836`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rclpy/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcpputils=2.14.5-1resolute.20260728.210316`

Binary Packages:

- `ros-lyrical-rcpputils=2.14.5-1resolute.20260728.210316`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcpputils/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rcutils=7.1.2-1resolute.20260728.210016`

Binary Packages:

- `ros-lyrical-rcutils=7.1.2-1resolute.20260728.210016`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rcutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-dds-common=6.0.0-3resolute.20260728.222534`

Binary Packages:

- `ros-lyrical-rmw-dds-common=6.0.0-3resolute.20260728.222534`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-dds-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-fastrtps-cpp=9.4.9-1resolute.20260730.174616`

Binary Packages:

- `ros-lyrical-rmw-fastrtps-cpp=9.4.9-1resolute.20260730.174616`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-fastrtps-shared-cpp=9.4.9-1resolute.20260730.173726`

Binary Packages:

- `ros-lyrical-rmw-fastrtps-shared-cpp=9.4.9-1resolute.20260730.173726`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-fastrtps-shared-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-implementation-cmake=7.10.1-5resolute.20260728.210014`

Binary Packages:

- `ros-lyrical-rmw-implementation-cmake=7.10.1-5resolute.20260728.210014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-implementation-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-implementation=3.1.6-1resolute.20260730.175459`

Binary Packages:

- `ros-lyrical-rmw-implementation=3.1.6-1resolute.20260730.175459`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-security-common=7.10.1-5resolute.20260728.211356`

Binary Packages:

- `ros-lyrical-rmw-security-common=7.10.1-5resolute.20260728.211356`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-security-common/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-test-fixture-implementation=0.15.8-1resolute.20260730.180217`

Binary Packages:

- `ros-lyrical-rmw-test-fixture-implementation=0.15.8-1resolute.20260730.180217`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-test-fixture-implementation/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw-test-fixture=0.15.8-1resolute.20260728.211417`

Binary Packages:

- `ros-lyrical-rmw-test-fixture=0.15.8-1resolute.20260728.211417`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw-test-fixture/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rmw=7.10.1-5resolute.20260728.210946`

Binary Packages:

- `ros-lyrical-rmw=7.10.1-5resolute.20260728.210946`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rmw/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-robot-state-publisher=3.5.5-3resolute.20260804.070441`

Binary Packages:

- `ros-lyrical-robot-state-publisher=3.5.5-3resolute.20260804.070441`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-robot-state-publisher/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-base=0.13.0-3resolute.20260805.075139`

Binary Packages:

- `ros-lyrical-ros-base=0.13.0-3resolute.20260805.075139`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-base/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-core=0.13.0-3resolute.20260804.073816`

Binary Packages:

- `ros-lyrical-ros-core=0.13.0-3resolute.20260804.073816`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-core/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-environment=4.5.1-1resolute.20260728.172811`

Binary Packages:

- `ros-lyrical-ros-environment=4.5.1-1resolute.20260728.172811`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-environment/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros-workspace=1.0.3-9resolute.20260728.162902`

Binary Packages:

- `ros-lyrical-ros-workspace=1.0.3-9resolute.20260728.162902`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros-workspace/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2action=0.40.8-1resolute.20260730.202751`

Binary Packages:

- `ros-lyrical-ros2action=0.40.8-1resolute.20260730.202751`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2action/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2bag=0.33.3-1resolute.20260805.074823`

Binary Packages:

- `ros-lyrical-ros2bag=0.33.3-1resolute.20260805.074823`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2bag/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2cli-common-extensions=0.5.2-3resolute.20260804.073555`

Binary Packages:

- `ros-lyrical-ros2cli-common-extensions=0.5.2-3resolute.20260804.073555`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2cli-common-extensions/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2cli=0.40.8-1resolute.20260730.202602`

Binary Packages:

- `ros-lyrical-ros2cli=0.40.8-1resolute.20260730.202602`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2component=0.40.8-1resolute.20260804.073324`

Binary Packages:

- `ros-lyrical-ros2component=0.40.8-1resolute.20260804.073324`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2component/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2doctor=0.40.8-1resolute.20260730.202847`

Binary Packages:

- `ros-lyrical-ros2doctor=0.40.8-1resolute.20260730.202847`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2doctor/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2interface=0.40.8-1resolute.20260804.070528`

Binary Packages:

- `ros-lyrical-ros2interface=0.40.8-1resolute.20260804.070528`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2launch=0.29.9-1resolute.20260804.073318`

Binary Packages:

- `ros-lyrical-ros2launch=0.29.9-1resolute.20260804.073318`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2launch/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2lifecycle=0.40.8-1resolute.20260730.202924`

Binary Packages:

- `ros-lyrical-ros2lifecycle=0.40.8-1resolute.20260730.202924`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2lifecycle/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2multicast=0.40.8-1resolute.20260804.070659`

Binary Packages:

- `ros-lyrical-ros2multicast=0.40.8-1resolute.20260804.070659`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2multicast/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2node=0.40.8-1resolute.20260730.202822`

Binary Packages:

- `ros-lyrical-ros2node=0.40.8-1resolute.20260730.202822`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2node/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2param=0.40.8-1resolute.20260730.202934`

Binary Packages:

- `ros-lyrical-ros2param=0.40.8-1resolute.20260730.202934`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2param/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2pkg=0.40.8-1resolute.20260804.070707`

Binary Packages:

- `ros-lyrical-ros2pkg=0.40.8-1resolute.20260804.070707`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2pkg/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2plugin=5.8.4-3resolute.20260804.073335`

Binary Packages:

- `ros-lyrical-ros2plugin=5.8.4-3resolute.20260804.073335`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2plugin/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2run=0.40.8-1resolute.20260804.073346`

Binary Packages:

- `ros-lyrical-ros2run=0.40.8-1resolute.20260804.073346`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2run/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2service=0.40.8-1resolute.20260730.202815`

Binary Packages:

- `ros-lyrical-ros2service=0.40.8-1resolute.20260730.202815`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2service/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-ros2topic=0.40.8-1resolute.20260730.202809`

Binary Packages:

- `ros-lyrical-ros2topic=0.40.8-1resolute.20260730.202809`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-ros2topic/copyright`)

- `Apache License 2.0`
- `BSD-3-Clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-compression-zstd=0.33.3-1resolute.20260805.073553`

Binary Packages:

- `ros-lyrical-rosbag2-compression-zstd=0.33.3-1resolute.20260805.073553`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-compression-zstd/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-compression=0.33.3-1resolute.20260805.072712`

Binary Packages:

- `ros-lyrical-rosbag2-compression=0.33.3-1resolute.20260805.072712`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-compression/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-cpp=0.33.3-1resolute.20260805.070730`

Binary Packages:

- `ros-lyrical-rosbag2-cpp=0.33.3-1resolute.20260805.070730`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-interfaces=0.33.3-1resolute.20260728.225544`

Binary Packages:

- `ros-lyrical-rosbag2-interfaces=0.33.3-1resolute.20260728.225544`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-py=0.33.3-1resolute.20260805.073943`

Binary Packages:

- `ros-lyrical-rosbag2-py=0.33.3-1resolute.20260805.073943`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-default-plugins=0.33.3-1resolute.20260805.072538`

Binary Packages:

- `ros-lyrical-rosbag2-storage-default-plugins=0.33.3-1resolute.20260805.072538`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-default-plugins/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-mcap=0.33.3-1resolute.20260804.073759`

Binary Packages:

- `ros-lyrical-rosbag2-storage-mcap=0.33.3-1resolute.20260804.073759`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-mcap/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage-sqlite3=0.33.3-1resolute.20260805.070729`

Binary Packages:

- `ros-lyrical-rosbag2-storage-sqlite3=0.33.3-1resolute.20260805.070729`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage-sqlite3/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-storage=0.33.3-1resolute.20260804.070717`

Binary Packages:

- `ros-lyrical-rosbag2-storage=0.33.3-1resolute.20260804.070717`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-storage/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2-transport=0.33.3-1resolute.20260805.073129`

Binary Packages:

- `ros-lyrical-rosbag2-transport=0.33.3-1resolute.20260805.073129`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2-transport/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosbag2=0.33.3-1resolute.20260805.075033`

Binary Packages:

- `ros-lyrical-rosbag2=0.33.3-1resolute.20260805.075033`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosbag2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosgraph-msgs=2.4.5-1resolute.20260728.225747`

Binary Packages:

- `ros-lyrical-rosgraph-msgs=2.4.5-1resolute.20260728.225747`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosgraph-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-adapter=5.2.1-1resolute.20260728.204010`

Binary Packages:

- `ros-lyrical-rosidl-adapter=5.2.1-1resolute.20260728.204010`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-adapter/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-backend-registry=5.2.1-1resolute.20260728.213234`

Binary Packages:

- `ros-lyrical-rosidl-buffer-backend-registry=5.2.1-1resolute.20260728.213234`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-backend-registry/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-backend=5.2.1-1resolute.20260728.211422`

Binary Packages:

- `ros-lyrical-rosidl-buffer-backend=5.2.1-1resolute.20260728.211422`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-backend/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer-py=5.2.1-1resolute.20260728.210209`

Binary Packages:

- `ros-lyrical-rosidl-buffer-py=5.2.1-1resolute.20260728.210209`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-buffer=5.2.1-1resolute.20260728.210115`

Binary Packages:

- `ros-lyrical-rosidl-buffer=5.2.1-1resolute.20260728.210115`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-buffer/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-cli=5.2.1-1resolute.20260728.173046`

Binary Packages:

- `ros-lyrical-rosidl-cli=5.2.1-1resolute.20260728.173046`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-cli/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-cmake=5.2.1-1resolute.20260728.210427`

Binary Packages:

- `ros-lyrical-rosidl-cmake=5.2.1-1resolute.20260728.210427`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-cmake/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-core-generators=0.4.3-3resolute.20260728.212256`

Binary Packages:

- `ros-lyrical-rosidl-core-generators=0.4.3-3resolute.20260728.212256`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-core-generators/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-core-runtime=0.4.3-3resolute.20260728.212309`

Binary Packages:

- `ros-lyrical-rosidl-core-runtime=0.4.3-3resolute.20260728.212309`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-core-runtime/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-default-generators=1.8.1-3resolute.20260728.214153`

Binary Packages:

- `ros-lyrical-rosidl-default-generators=1.8.1-3resolute.20260728.214153`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-default-generators/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-default-runtime=1.8.1-3resolute.20260728.214245`

Binary Packages:

- `ros-lyrical-rosidl-default-runtime=1.8.1-3resolute.20260728.214245`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-default-runtime/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-dynamic-typesupport-fastrtps=0.5.1-3resolute.20260728.210954`

Binary Packages:

- `ros-lyrical-rosidl-dynamic-typesupport-fastrtps=0.5.1-3resolute.20260728.210954`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-dynamic-typesupport-fastrtps/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-dynamic-typesupport=0.4.1-3resolute.20260728.210642`

Binary Packages:

- `ros-lyrical-rosidl-dynamic-typesupport=0.4.1-3resolute.20260728.210642`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-dynamic-typesupport/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-c=5.2.1-1resolute.20260728.210700`

Binary Packages:

- `ros-lyrical-rosidl-generator-c=5.2.1-1resolute.20260728.210700`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-cpp=5.2.1-1resolute.20260728.210943`

Binary Packages:

- `ros-lyrical-rosidl-generator-cpp=5.2.1-1resolute.20260728.210943`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-py=0.27.2-3resolute.20260728.211553`

Binary Packages:

- `ros-lyrical-rosidl-generator-py=0.27.2-3resolute.20260728.211553`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-rs=0.4.12-3resolute.20260728.211549`

Binary Packages:

- `ros-lyrical-rosidl-generator-rs=0.4.12-3resolute.20260728.211549`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-rs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-generator-type-description=5.2.1-1resolute.20260728.210206`

Binary Packages:

- `ros-lyrical-rosidl-generator-type-description=5.2.1-1resolute.20260728.210206`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-generator-type-description/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-parser=5.2.1-1resolute.20260728.210114`

Binary Packages:

- `ros-lyrical-rosidl-parser=5.2.1-1resolute.20260728.210114`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-parser/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-pycommon=5.2.1-1resolute.20260728.210228`

Binary Packages:

- `ros-lyrical-rosidl-pycommon=5.2.1-1resolute.20260728.210228`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-pycommon/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-c=5.2.1-1resolute.20260728.210328`

Binary Packages:

- `ros-lyrical-rosidl-runtime-c=5.2.1-1resolute.20260728.210328`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-cpp=5.2.1-1resolute.20260728.210648`

Binary Packages:

- `ros-lyrical-rosidl-runtime-cpp=5.2.1-1resolute.20260728.210648`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-runtime-py=0.15.2-3resolute.20260728.210536`

Binary Packages:

- `ros-lyrical-rosidl-runtime-py=0.15.2-3resolute.20260728.210536`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-runtime-py/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-c=3.4.2-3resolute.20260728.211303`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-c=3.4.2-3resolute.20260728.211303`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-cpp=3.4.2-3resolute.20260728.211628`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-cpp=3.4.2-3resolute.20260728.211628`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-fastrtps-c=3.9.5-3resolute.20260728.211956`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-fastrtps-c=3.9.5-3resolute.20260728.211956`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-fastrtps-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-fastrtps-cpp=3.9.5-3resolute.20260728.211709`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-fastrtps-cpp=3.9.5-3resolute.20260728.211709`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-fastrtps-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-interface=5.2.1-1resolute.20260728.210128`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-interface=5.2.1-1resolute.20260728.210128`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-interface/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-introspection-c=5.2.1-1resolute.20260728.210952`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-introspection-c=5.2.1-1resolute.20260728.210952`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-introspection-c/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rosidl-typesupport-introspection-cpp=5.2.1-1resolute.20260728.211325`

Binary Packages:

- `ros-lyrical-rosidl-typesupport-introspection-cpp=5.2.1-1resolute.20260728.211325`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rosidl-typesupport-introspection-cpp/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-rpyutils=0.7.2-3resolute.20260728.174949`

Binary Packages:

- `ros-lyrical-rpyutils=0.7.2-3resolute.20260728.174949`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-rpyutils/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sensor-msgs-py=5.9.3-1resolute.20260728.235031`

Binary Packages:

- `ros-lyrical-sensor-msgs-py=5.9.3-1resolute.20260728.235031`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sensor-msgs-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sensor-msgs=5.9.3-1resolute.20260728.232831`

Binary Packages:

- `ros-lyrical-sensor-msgs=5.9.3-1resolute.20260728.232831`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sensor-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-service-msgs=2.4.5-1resolute.20260728.213336`

Binary Packages:

- `ros-lyrical-service-msgs=2.4.5-1resolute.20260728.213336`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-service-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-shape-msgs=5.9.3-1resolute.20260728.232846`

Binary Packages:

- `ros-lyrical-shape-msgs=5.9.3-1resolute.20260728.232846`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-shape-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-spdlog-vendor=1.8.0-3resolute.20260728.210243`

Binary Packages:

- `ros-lyrical-spdlog-vendor=1.8.0-3resolute.20260728.210243`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-spdlog-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sros2-cmake=0.16.6-1resolute.20260804.071151`

Binary Packages:

- `ros-lyrical-sros2-cmake=0.16.6-1resolute.20260804.071151`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sros2-cmake/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-sros2=0.16.6-1resolute.20260730.202813`

Binary Packages:

- `ros-lyrical-sros2=0.16.6-1resolute.20260730.202813`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-sros2/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-statistics-msgs=2.4.5-1resolute.20260728.225733`

Binary Packages:

- `ros-lyrical-statistics-msgs=2.4.5-1resolute.20260728.225733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-statistics-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-std-msgs=5.9.3-1resolute.20260728.225720`

Binary Packages:

- `ros-lyrical-std-msgs=5.9.3-1resolute.20260728.225720`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-std-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-std-srvs=5.9.3-1resolute.20260728.225742`

Binary Packages:

- `ros-lyrical-std-srvs=5.9.3-1resolute.20260728.225742`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-std-srvs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-stereo-msgs=5.9.3-1resolute.20260728.235052`

Binary Packages:

- `ros-lyrical-stereo-msgs=5.9.3-1resolute.20260728.235052`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-stereo-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-bullet=0.45.9-1resolute.20260730.204907`

Binary Packages:

- `ros-lyrical-tf2-bullet=0.45.9-1resolute.20260730.204907`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-bullet/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-eigen-kdl=0.45.9-1resolute.20260730.192632`

Binary Packages:

- `ros-lyrical-tf2-eigen-kdl=0.45.9-1resolute.20260730.192632`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-eigen-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-eigen=0.45.9-1resolute.20260730.205014`

Binary Packages:

- `ros-lyrical-tf2-eigen=0.45.9-1resolute.20260730.205014`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-eigen/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-geometry-msgs=0.45.9-1resolute.20260802.062345`

Binary Packages:

- `ros-lyrical-tf2-geometry-msgs=0.45.9-1resolute.20260802.062345`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-geometry-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-kdl=0.45.9-1resolute.20260804.071222`

Binary Packages:

- `ros-lyrical-tf2-kdl=0.45.9-1resolute.20260804.071222`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-kdl/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-msgs=0.45.9-1resolute.20260728.233007`

Binary Packages:

- `ros-lyrical-tf2-msgs=0.45.9-1resolute.20260728.233007`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-py=0.45.9-1resolute.20260730.193951`

Binary Packages:

- `ros-lyrical-tf2-py=0.45.9-1resolute.20260730.193951`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-ros-py=0.45.9-1resolute.20260730.202704`

Binary Packages:

- `ros-lyrical-tf2-ros-py=0.45.9-1resolute.20260730.202704`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-ros-py/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-ros=0.45.9-1resolute.20260730.204143`

Binary Packages:

- `ros-lyrical-tf2-ros=0.45.9-1resolute.20260730.204143`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-ros/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-sensor-msgs=0.45.9-1resolute.20260804.071233`

Binary Packages:

- `ros-lyrical-tf2-sensor-msgs=0.45.9-1resolute.20260804.071233`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-sensor-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2-tools=0.45.9-1resolute.20260730.202825`

Binary Packages:

- `ros-lyrical-tf2-tools=0.45.9-1resolute.20260730.202825`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2-tools/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tf2=0.45.9-1resolute.20260730.181029`

Binary Packages:

- `ros-lyrical-tf2=0.45.9-1resolute.20260730.181029`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tf2/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-tracetools=8.10.2-1resolute.20260728.204752`

Binary Packages:

- `ros-lyrical-tracetools=8.10.2-1resolute.20260728.204752`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-tracetools/copyright`)

- `Apache 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-trajectory-msgs=5.9.3-1resolute.20260728.233011`

Binary Packages:

- `ros-lyrical-trajectory-msgs=5.9.3-1resolute.20260728.233011`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-trajectory-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-type-description-interfaces=2.4.5-1resolute.20260728.213733`

Binary Packages:

- `ros-lyrical-type-description-interfaces=2.4.5-1resolute.20260728.213733`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-type-description-interfaces/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-uncrustify-vendor=3.2.0-3resolute.20260728.210418`

Binary Packages:

- `ros-lyrical-uncrustify-vendor=3.2.0-3resolute.20260728.210418`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-uncrustify-vendor/copyright`)

- `Apache License 2.0`
- `GNU General Public License v2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-unique-identifier-msgs=2.8.1-3resolute.20260728.212814`

Binary Packages:

- `ros-lyrical-unique-identifier-msgs=2.8.1-3resolute.20260728.212814`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-unique-identifier-msgs/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdf-parser-plugin=2.13.2-3resolute.20260730.191125`

Binary Packages:

- `ros-lyrical-urdf-parser-plugin=2.13.2-3resolute.20260730.191125`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdf-parser-plugin/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdf=2.13.2-3resolute.20260730.191422`

Binary Packages:

- `ros-lyrical-urdf=2.13.2-3resolute.20260730.191422`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdf/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdfdom-headers=3.0.0-3resolute.20260728.173048`

Binary Packages:

- `ros-lyrical-urdfdom-headers=3.0.0-3resolute.20260728.173048`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdfdom-headers/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-urdfdom=6.0.0-3resolute.20260728.205537`

Binary Packages:

- `ros-lyrical-urdfdom=6.0.0-3resolute.20260728.205537`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-urdfdom/copyright`)

- `BSD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-visualization-msgs=5.9.3-1resolute.20260728.235214`

Binary Packages:

- `ros-lyrical-visualization-msgs=5.9.3-1resolute.20260728.235214`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-visualization-msgs/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-yaml-cpp-vendor=9.2.1-3resolute.20260728.210605`

Binary Packages:

- `ros-lyrical-yaml-cpp-vendor=9.2.1-3resolute.20260728.210605`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-yaml-cpp-vendor/copyright`)

- `Apache License 2.0`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lyrical-zstd-cmake-module=0.33.3-1resolute.20260728.210616`

Binary Packages:

- `ros-lyrical-zstd-cmake-module=0.33.3-1resolute.20260728.210616`

Licenses: (parsed from: `/usr/share/doc/ros-lyrical-zstd-cmake-module/copyright`)

- `Apache License 2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-osrf-pycommon=2.1.7-1`

Binary Packages:

- `python3-osrf-pycommon=2.1.7-1`

Licenses: (parsed from: `/usr/share/doc/python3-osrf-pycommon/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`

Source:

```console
$ apt-get source -qq --print-uris ros-osrf-pycommon=2.1.7-1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7-1.dsc' ros-osrf-pycommon_2.1.7-1.dsc 2435 SHA256:b678edaa638e0a0b4ab13e883be8cff3cea948216821c35763e9f9ca08a9682d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7.orig.tar.gz' ros-osrf-pycommon_2.1.7.orig.tar.gz 47418 SHA256:441afd5c3476474a1e5760070fec18860992a4659e84a6a4b59e49217d7cc6af
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros-osrf-pycommon/ros-osrf-pycommon_2.1.7-1.debian.tar.xz' ros-osrf-pycommon_2.1.7-1.debian.tar.xz 3004 SHA256:a50d34563dfc7fb2d20b5c1c3c0eff5fdfef91129a096a8df033470c62abb534
```

### `dpkg` source package: `ros2-colcon-cd=0.2.1-1build1`

Binary Packages:

- `python3-colcon-cd=0.2.1-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-cd/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-cd=0.2.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1.orig.tar.gz' ros2-colcon-cd_0.2.1.orig.tar.gz 9906 SHA256:91f14108b6f9db780fc5a579b9c809e9a8c62b688e81f2267788fd0e12f178dc
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1-1build1.debian.tar.xz' ros2-colcon-cd_0.2.1-1build1.debian.tar.xz 2612 SHA256:582eb557d0538367b8dc4d8ae33d825994e641952396811ac8d06a1944755e90
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-cd/ros2-colcon-cd_0.2.1-1build1.dsc' ros2-colcon-cd_0.2.1-1build1.dsc 2154 SHA256:b4d95e0e0faf300c59244b3c3a373ee5a4d4ef981da22314329e871ce6eb4587
```

### `dpkg` source package: `ros2-colcon-devtools=0.3.0-1build1`

Binary Packages:

- `python3-colcon-devtools=0.3.0-1build1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-devtools/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-devtools=0.3.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0.orig.tar.gz' ros2-colcon-devtools_0.3.0.orig.tar.gz 9267 SHA256:8363080c03e41c1fe4c884955e32a5dbc2be34269d838a97146042b3af91a53d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0-1build1.debian.tar.xz' ros2-colcon-devtools_0.3.0-1build1.debian.tar.xz 2184 SHA256:05e53b9fd30e30cdcfc7a206cb5f24ecd4f358d3037fbd7b83512ed1111ec67d
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-devtools/ros2-colcon-devtools_0.3.0-1build1.dsc' ros2-colcon-devtools_0.3.0-1build1.dsc 2817 SHA256:1d37d5f7823af6b61b1ad261cca247b29a0a2e3ad7838b4c2b9295c04fc83b17
```

### `dpkg` source package: `ros2-colcon-parallel-executor=0.4.0-1`

Binary Packages:

- `python3-colcon-parallel-executor=0.4.0-1`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-parallel-executor/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-parallel-executor=0.4.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0-1.dsc' ros2-colcon-parallel-executor_0.4.0-1.dsc 3052 SHA256:56f7b719c3e972a8727f5ad45267a416005a6a76a28a1df1ef75b77d6025eb9a
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0.orig.tar.gz' ros2-colcon-parallel-executor_0.4.0.orig.tar.gz 11658 SHA256:28981dcbc72193ace62952431e8963656d708f93b86c43a4bb55f454cdeff860
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-parallel-executor/ros2-colcon-parallel-executor_0.4.0-1.debian.tar.xz' ros2-colcon-parallel-executor_0.4.0-1.debian.tar.xz 2168 SHA256:c4f500eda4072b77bb932fd718ec7b0cc9042200c89a594dc697673e728958e3
```

### `dpkg` source package: `ros2-colcon-python-setup-py=0.2.9-2`

Binary Packages:

- `python3-colcon-python-setup-py=0.2.9-2`

Licenses: (parsed from: `/usr/share/doc/python3-colcon-python-setup-py/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris ros2-colcon-python-setup-py=0.2.9-2
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9-2.dsc' ros2-colcon-python-setup-py_0.2.9-2.dsc 2605 SHA256:dd794338b74b59a5c7eb21e7cd20103bb55e430219b7e12b27133d045e9db7b0
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9.orig.tar.gz' ros2-colcon-python-setup-py_0.2.9.orig.tar.gz 11632 SHA256:7c944d9d2b688f14c4ef1b1d962dbaabd53dc05e3a04a89da62e2eece6a2ad5a
'http://archive.ubuntu.com/ubuntu/pool/universe/r/ros2-colcon-python-setup-py/ros2-colcon-python-setup-py_0.2.9-2.debian.tar.xz' ros2-colcon-python-setup-py_0.2.9-2.debian.tar.xz 2124 SHA256:fd91476e66b41f6f1543faa9c5b94d49ef823d3b563fcc3f40a1990cbfba3068
```

### `dpkg` source package: `rpcsvc-proto=1.4.3-1build1`

Binary Packages:

- `rpcsvc-proto=1.4.3-1build1`

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
$ apt-get source -qq --print-uris rpcsvc-proto=1.4.3-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3.orig.tar.xz' rpcsvc-proto_1.4.3.orig.tar.xz 167964 SHA256:69315e94430f4e79c74d43422f4a36e6259e97e67e2677b2c7d7060436bd99b1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1build1.debian.tar.xz' rpcsvc-proto_1.4.3-1build1.debian.tar.xz 4320 SHA256:6d047d3dfdebfe1030e7f27f52fc2ef0c28ce4e89a98b8ca5c2c927af26a015b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rpcsvc-proto/rpcsvc-proto_1.4.3-1build1.dsc' rpcsvc-proto_1.4.3-1build1.dsc 2023 SHA256:ddfea3fbaadb6718a8d0fac4bd437831c09f7a1ec9144d0ebc112bc83bc2d77d
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-3`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-3`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-3.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-3.dsc 2295 SHA256:8a593a016f6c816dac66ba78a49915af645056acf424146c3488edd27c52075c
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-3.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-3.debian.tar.xz 8180 SHA256:8b1d25a5942e762d792ea1beacb0fda0f9761331fd46ce3874fe24c2360485e2
```

### `dpkg` source package: `rust-coreutils=0.8.0-0ubuntu3`

Binary Packages:

- `rust-coreutils=0.8.0-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/rust-coreutils/copyright`)

- `Apache-2.0`
- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris rust-coreutils=0.8.0-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig-l10n.tar.gz' rust-coreutils_0.8.0.orig-l10n.tar.gz 740364 SHA512:f322d1b77ff6ef0945b08aa4237dd0b1db8da5c3e32de5e86bd22a60b5a56dd6f4828c90a4758c562ca560e6588b6e61af4507e0b6c6d8bde7d8e587010ca1e3
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig-rust-vendor.tar.xz' rust-coreutils_0.8.0.orig-rust-vendor.tar.xz 13213352 SHA512:a66ba2f98a544fea37ace0774244dda1a7b2477536df90301765819b9bb9f0f27831df2349b7fc1cbf712ba5b9bd8c7cc9a9e900714e51b6c226f0fc2d50b250
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0.orig.tar.gz' rust-coreutils_0.8.0.orig.tar.gz 3189640 SHA512:0c35cfb31d7810701cf5c639cbafb2be3870f4abd0f08fbade291d2534f576e067599e1b53ff228d9d2bd126210225d09bcd559761623f645883d4dd68e8f39b
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0-0ubuntu3.debian.tar.xz' rust-coreutils_0.8.0-0ubuntu3.debian.tar.xz 22812 SHA512:4058834e3899825b60f5db483f532e72f85b27f2bcb7bc2f2680f45d82c19b3d2d414e99bf17d5f7f0509d404819c28e16686fd6283db253ae841b23effcdb07
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.8.0-0ubuntu3.dsc' rust-coreutils_0.8.0-0ubuntu3.dsc 8878 SHA512:2c91bd122fa1c56c387f5e1133b508667568afee17e598ac3c1dfbea8327012bbf7115b323f77166dc5bbb36415a1aa98960c639d504d1b0026c79e40c31e295
```

### `dpkg` source package: `sed=4.9-2ubuntu1`

Binary Packages:

- `sed=4.9-2ubuntu1`

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
$ apt-get source -qq --print-uris sed=4.9-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9.orig.tar.xz' sed_4.9.orig.tar.xz 1397092 SHA512:36157a4b4a2430cf421b7bd07f1675d680d9f1616be96cf6ad6ee74a9ec0fe695f8d0b1e1f0b008bbb33cc7fcde5e1c456359bbbc63f8aebdd4fedc3982cf6dc
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu1.debian.tar.xz' sed_4.9-2ubuntu1.debian.tar.xz 63408 SHA512:2c3bfcea14e891805776280476bad1007bccb92b1e0ce1a2cfd009517a0de9da67f6ada6cdf9ecd78e892ebf9e49f2d69ac7ef4c93f29f6e4fcde2e95bad4914
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.9-2ubuntu1.dsc' sed_4.9-2ubuntu1.dsc 1967 SHA512:75262a520fb9e17b65a98b87d8316d2ef533979ba454d8046557ad51be76420a6e87e34329db346ea2a8bc4b99e865ce3e7957b7332be615300e16915b319520
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
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.tar.xz' sensible-utils_0.0.26build1.tar.xz 76808 SHA256:41f0e2b45ec42c61f2c2a8244ea3749f103341246bd004571b03e5f060390765
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.26build1.dsc' sensible-utils_0.0.26build1.dsc 1730 SHA256:1740891cfa69aa344c6ce951be7421bffe6743190880e1a48a0c4b40fc841144
```

### `dpkg` source package: `setuptools=78.1.1-0.1build1`

Binary Packages:

- `python3-pkg-resources=78.1.1-0.1build1`
- `python3-setuptools=78.1.1-0.1build1`

Licenses: (parsed from: `/usr/share/doc/python3-pkg-resources/copyright`, `/usr/share/doc/python3-setuptools/copyright`)

- `Apache-2.0`
- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris setuptools=78.1.1-0.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1.orig.tar.gz' setuptools_78.1.1.orig.tar.gz 1368163 SHA256:fcc17fd9cd898242f6b4adfaca46137a9edef687f43e6f78469692a5e70d851d
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1-0.1build1.debian.tar.xz' setuptools_78.1.1-0.1build1.debian.tar.xz 15608 SHA256:e7122ec5ff1edffb08ae63af88ceb9e4181cfd48380342e5f6ab3f5f1f149548
'http://archive.ubuntu.com/ubuntu/pool/main/s/setuptools/setuptools_78.1.1-0.1build1.dsc' setuptools_78.1.1-0.1build1.dsc 2172 SHA256:a3d60566ce2c43c67e0e95f9bf0ffdd4bd3da911b2a51770d1e653d05e1e533f
```

### `dpkg` source package: `sgml-base=1.31+nmu1build1`

Binary Packages:

- `sgml-base=1.31+nmu1build1`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.31+nmu1build1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.31%2bnmu1build1.tar.xz' sgml-base_1.31+nmu1build1.tar.xz 12848 SHA256:facf70694bf8db759e0cee9d0ad2d4e6e38fe88267ff8d4660ccf25ba551c6df
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.31%2bnmu1build1.dsc' sgml-base_1.31+nmu1build1.dsc 1585 SHA256:23d5f7f279495033acdd54f7c33e4d2d9e840a9c19751f180d8189fc50c16dee
```

### `dpkg` source package: `shadow=1:4.17.4-2ubuntu3`

Binary Packages:

- `login.defs=1:4.17.4-2ubuntu3`
- `passwd=1:4.17.4-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/login.defs/copyright`, `/usr/share/doc/passwd/copyright`)

- `BSD-3-clause`
- `GPL-1`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.17.4-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz' shadow_4.17.4.orig.tar.xz 2326584 SHA256:554801054694ff7d8a7abdf0d6ece34e2f16e111673cc01b8c9ee1278451181e
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4.orig.tar.xz.asc' shadow_4.17.4.orig.tar.xz.asc 488 SHA256:82437d2b54790b3a6734c526b757e693cd0c734ec6afd69f9a9cf0eb1dad8dc4
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4-2ubuntu3.debian.tar.xz' shadow_4.17.4-2ubuntu3.debian.tar.xz 181748 SHA256:43373dc0d4f9728185723dfeb798c6cda06221bd9f5d653af4c0349e225eeb22
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.17.4-2ubuntu3.dsc' shadow_4.17.4-2ubuntu3.dsc 2991 SHA256:5c7ebf6e7e9894c91df3474212a6e21bc5b6da82bbcef760bad495a0b5f48c87
```

### `dpkg` source package: `snowball=3.0.1-1`

Binary Packages:

- `python3-snowballstemmer=3.0.1-1`

Licenses: (parsed from: `/usr/share/doc/python3-snowballstemmer/copyright`)

- `BSD-3-snowball`

Source:

```console
$ apt-get source -qq --print-uris snowball=3.0.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1-1.dsc' snowball_3.0.1-1.dsc 1645 SHA256:865035c6f24fecde57d17910d369cf9f3026d8bdc50e088d0389d711723913b1
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1.orig.tar.gz' snowball_3.0.1.orig.tar.gz 256065 SHA256:80ac10ce40dc4fcfbfed8d085c457b5613da0e86a73611a3d5527d044a142d60
'http://archive.ubuntu.com/ubuntu/pool/main/s/snowball/snowball_3.0.1-1.debian.tar.xz' snowball_3.0.1-1.debian.tar.xz 8632 SHA256:a574b0c7e34eafb333ee592c17cb6672be6f612eac717e58eb8e6329909f3bd2
```

### `dpkg` source package: `spdlog=1:1.15.3+ds-1build1`

Binary Packages:

- `libspdlog-dev:amd64=1:1.15.3+ds-1build1`
- `libspdlog1.15:amd64=1:1.15.3+ds-1build1`

Licenses: (parsed from: `/usr/share/doc/libspdlog-dev/copyright`, `/usr/share/doc/libspdlog1.15/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris spdlog=1:1.15.3+ds-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds.orig.tar.xz' spdlog_1.15.3+ds.orig.tar.xz 106804 SHA256:f41541b61f6b3a78afeb2b355596a75fdb267e8caa2dba3906459fbde5e081dc
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds-1build1.debian.tar.xz' spdlog_1.15.3+ds-1build1.debian.tar.xz 7740 SHA256:2c4585dbe532b14510e1fa78caa5217b2afc38bbc916d716a30e66ad50c9943a
'http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/spdlog_1.15.3%2bds-1build1.dsc' spdlog_1.15.3+ds-1build1.dsc 2254 SHA256:adb6c3ba3c2821b5b463ade94237edd2889e99f9401bbc6abab69ef1c7a9542e
```

### `dpkg` source package: `sphinx=8.2.3-12`

Binary Packages:

- `libjs-sphinxdoc=8.2.3-12`

Licenses: (parsed from: `/usr/share/doc/libjs-sphinxdoc/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris sphinx=8.2.3-12
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3-12.dsc' sphinx_8.2.3-12.dsc 3874 SHA256:a9cb79690afc59527136d61f30049a16b42074e2e8227e7b429be5ff99134886
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3.orig.tar.gz' sphinx_8.2.3.orig.tar.gz 8321876 SHA256:398ad29dee7f63a75888314e9424d40f52ce5a6a87ae88e7071e80af296ec348
'http://archive.ubuntu.com/ubuntu/pool/main/s/sphinx/sphinx_8.2.3-12.debian.tar.xz' sphinx_8.2.3-12.debian.tar.xz 39400 SHA256:44f0e218adbec64ed0e3ec0e688587f899f571a43dcb908c9e52b71bd183c663
```

### `dpkg` source package: `sqlite3=3.46.1-9ubuntu0.2`

Binary Packages:

- `libsqlite3-0:amd64=3.46.1-9ubuntu0.2`
- `libsqlite3-dev:amd64=3.46.1-9ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.46.1-9ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig-www.tar.xz' sqlite3_3.46.1.orig-www.tar.xz 5861820 SHA512:a5ec0f57d014b2f33d679cfbae0ca1935eb84871376b29216ffcc286a92a363a823ca0ec729a000d702054ee90b2fcc1887c1fb4bebfabcd14894f8ef91b7ad6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig.tar.xz' sqlite3_3.46.1.orig.tar.xz 8456776 SHA512:47d3c900d95641c89d5d807881e20e97f3b7889cf44c76d48715066ba5c1860defcd17498440d79bcc49b15c2ea28e81ed4b5b159f9e947941e5c1ee27de06ba
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.2.debian.tar.xz' sqlite3_3.46.1-9ubuntu0.2.debian.tar.xz 37792 SHA512:0883f1c15042ccab5035ebcbf992c3f40bfdfbd082756cd2dd913d882efab7ac6fc37093ff7cc3d7d7cb8c2e7a0af509d0f85570269a0f601b760431a62ce600
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.2.dsc' sqlite3_3.46.1-9ubuntu0.2.dsc 2756 SHA512:e2cd292f2acd4f990292436e9985b5ee9c3c9500c85a599d9bd8983cadc0b33da8f375db79e5be5ed8b2e4096244f45bded91e82283041ae943ae558255c39d0
```

### `dpkg` source package: `sudo-common=1.2ubuntu`

Binary Packages:

- `sudo-common=1.2ubuntu`

Licenses: (parsed from: `/usr/share/doc/sudo-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris sudo-common=1.2ubuntu
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo-common/sudo-common_1.2ubuntu.tar.xz' sudo-common_1.2ubuntu.tar.xz 3684 SHA256:64dec6d95d2d75624a60a668f5bd748b44f5107cfd74d41ce0a49e6859bd7f7a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo-common/sudo-common_1.2ubuntu.dsc' sudo-common_1.2ubuntu.dsc 1566 SHA256:db86d809fb3e9824364d4fea473e896080a01539a8017b85f87a2705abac2cf3
```

### `dpkg` source package: `sudo=1.9.17p2-1ubuntu3`

Binary Packages:

- `sudo=1.9.17p2-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/sudo/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `Zlib`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sudo=1.9.17p2-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2.orig.tar.gz' sudo_1.9.17p2.orig.tar.gz 5451682 SHA256:4a38a1ab3adb1199257edc2a7c4a2bd714665eb605b04368843b06dada2cfcfb
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2.orig.tar.gz.asc' sudo_1.9.17p2.orig.tar.gz.asc 566 SHA256:4605f51763a083ab1732da1ae8b28a28ddf8007f4d79d0de51b691a9fe4195ec
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2-1ubuntu3.debian.tar.xz' sudo_1.9.17p2-1ubuntu3.debian.tar.xz 58952 SHA256:bc0a69796de7e23fa27bcaf1e810ca653e345c1d7627787e55ae12ca0ef15eea
'http://archive.ubuntu.com/ubuntu/pool/main/s/sudo/sudo_1.9.17p2-1ubuntu3.dsc' sudo_1.9.17p2-1ubuntu3.dsc 2727 SHA256:c213d0bfa2d87c0aecaaf193ae3e98f413a03661351e46f60cf9916ef0cd6950
```

### `dpkg` source package: `systemd=259.5-0ubuntu3.4`

Binary Packages:

- `libsystemd0:amd64=259.5-0ubuntu3.4`
- `libudev1:amd64=259.5-0ubuntu3.4`

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
$ apt-get source -qq --print-uris systemd=259.5-0ubuntu3.4
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5.orig.tar.gz' systemd_259.5.orig.tar.gz 17336729 SHA512:cb76b3a11b400fea94de2be74bcd9178b2e986c1965cbc19824114fe14fdd9b6aed43ae325cf5bc505efa1333adc71e131e0a8b54519e6741baa090392bf0a98
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5-0ubuntu3.4.debian.tar.xz' systemd_259.5-0ubuntu3.4.debian.tar.xz 267032 SHA512:8b446ab051d47ae14e3633bfe388fd309dc96c438db5ac568ac7c68da4cd258eeaeaf231c41f9b5b55ce16445f7164e47887cbe53755af470415cbff2196e358
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.5-0ubuntu3.4.dsc' systemd_259.5-0ubuntu3.4.dsc 8779 SHA512:92ab82be5174bb0b79bb2c25cfb400b23c817edf662c4c34f6e7b68bef308b6815ffb86d21439ccf27a83eec19854b90537119628ecb3ebafa205759cd9927ea
```

### `dpkg` source package: `sysvinit=3.15-5ubuntu1`

Binary Packages:

- `sysvinit-utils=3.15-5ubuntu1`

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
$ apt-get source -qq --print-uris sysvinit=3.15-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15.orig.tar.gz' sysvinit_3.15.orig.tar.gz 516469 SHA256:0979dd582056130a45bf70738260fb7f3da5cca989509b1e37ad5ad1d4cbe0bf
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15-5ubuntu1.debian.tar.xz' sysvinit_3.15-5ubuntu1.debian.tar.xz 124244 SHA256:fc3930cc9515c174927b4b63150b8cd2b48fd156e033dcd80238f67e157681fd
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_3.15-5ubuntu1.dsc' sysvinit_3.15-5ubuntu1.dsc 2489 SHA256:48e604576ae74c4c66e7c23992f0a6a89cdaa86b475d3c64da985506a5ad5e88
```

### `dpkg` source package: `tar=1.35+dfsg-4ubuntu0.4`

Binary Packages:

- `tar=1.35+dfsg-4ubuntu0.4`

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
$ apt-get source -qq --print-uris tar=1.35+dfsg-4ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg.orig.tar.xz' tar_1.35+dfsg.orig.tar.xz 2111608 SHA512:3aea32b5c8de229131308420d8a7aa57f7fd1b376980456dd1aa66f97509572750c3833ab9cc2edc6fdea51f802033598c83a0d6e7f18680b1638996f0acaae7
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4ubuntu0.4.debian.tar.xz' tar_1.35+dfsg-4ubuntu0.4.debian.tar.xz 52824 SHA512:44493db9d25f2bebf7c65c7e44eedec35efcc7e07c41f0c45833b4f11d9712b64002f8d611fe5390d03f4a436142b18fe769d6f8d8da7c289e0cd5724fbdb280
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.35%2bdfsg-4ubuntu0.4.dsc' tar_1.35+dfsg-4ubuntu0.4.dsc 2124 SHA512:e07a3f1d08e737f295ab61ae81e3e80fd26b14ca7e809d321a2df037a8498f36fa230017f3db395cbeeac112a482550242310f69c9b40695c8bd467584e57d60
```

### `dpkg` source package: `tiff=4.7.0-3ubuntu4`

Binary Packages:

- `libtiff6:amd64=4.7.0-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libtiff6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.0-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0.orig.tar.bz2' tiff_4.7.0.orig.tar.bz2 2111254 SHA256:2b8b5c4e79cb2a4651796602e45d6179b7f18bc283feab417b8e881ef7e81862
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.debian.tar.xz' tiff_4.7.0-3ubuntu4.debian.tar.xz 27680 SHA256:11ccad8fdc7a0113357c926d1c03d36e2ffcbb226e35a03bd8a27adc75a442f0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.dsc' tiff_4.7.0-3ubuntu4.dsc 2368 SHA256:7f2fb0aaa616ca4362119acaa7798d053617aaf03aef3c9757aac70d0978f8d8
```

### `dpkg` source package: `tinyxml2=11.0.0+dfsg-1build1`

Binary Packages:

- `libtinyxml2-11:amd64=11.0.0+dfsg-1build1`
- `libtinyxml2-dev:amd64=11.0.0+dfsg-1build1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-11/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=11.0.0+dfsg-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg.orig.tar.xz' tinyxml2_11.0.0+dfsg.orig.tar.xz 336092 SHA256:1346241d0891464c44ce6838527bdc616f96da308d128d6e9a6ec6987db2ac8a
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg-1build1.debian.tar.xz' tinyxml2_11.0.0+dfsg-1build1.debian.tar.xz 9240 SHA256:cbf47fe68eeef3d4c0670618de5fc43d243bfc8a68d9c2c98b77575369a1b977
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_11.0.0%2bdfsg-1build1.dsc' tinyxml2_11.0.0+dfsg-1build1.dsc 2021 SHA256:ef20aeca3e2efc4082364238d1cdb2d419fcd9792365a44c8b90a5f9a37691d1
```

### `dpkg` source package: `tzdata=2026c-0ubuntu0.26.04.1`

Binary Packages:

- `tzdata=2026c-0ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026c-0ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz' tzdata_2026c.orig.tar.gz 475694 SHA512:e0b4b7044b66fbc27bc21d13d18063abcdf78ab58d5ba5fd64bd1a88d86e9d495f45add4d8e65bb6c40249f9c94ca29b72c8ebba8d0e4c468f2965ac77932ef0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c.orig.tar.gz.asc' tzdata_2026c.orig.tar.gz.asc 833 SHA512:e1d44216608666bfb8a1855caacc9e6d30a1576f302c4db59faf8ec6aa2f7d5ae299c4c9b17b255b9612c30582358ca2a48f5fea82ab9b7d77d030e713c9010d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.26.04.1.debian.tar.xz' tzdata_2026c-0ubuntu0.26.04.1.debian.tar.xz 189872 SHA512:21685b2bcc0620c6743ec618b1367162dc726a0a36157db4e57145ab3be85187f52868a1936c6150e0bef4beaf50e2703d3250aa61089b114e02556eebc056fe
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026c-0ubuntu0.26.04.1.dsc' tzdata_2026c-0ubuntu0.26.04.1.dsc 2712 SHA512:635f4cf83acfb7d30c5f356587d9cfe5465619c760e486f9a55a5a394d750d53ffe9195fad62063fc3c7d2565bf21f7d52e1eb42c23fe463c2cabab91255169d
```

### `dpkg` source package: `ubuntu-keyring=2023.11.28.1build1`

Binary Packages:

- `ubuntu-keyring=2023.11.28.1build1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2023.11.28.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1build1.tar.xz' ubuntu-keyring_2023.11.28.1build1.tar.xz 20300 SHA256:8b65bbb2a7aeb35c7fa6db11bf814ae42873cc6ee6f28e468885c0f8596ad6fb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2023.11.28.1build1.dsc' ubuntu-keyring_2023.11.28.1build1.dsc 1896 SHA256:eb90085feabf493676a7d42900581691ab179f048c746b38e940dd6f0f27b29b
```

### `dpkg` source package: `uncrustify=0.78.1+dfsg1-1build1`

Binary Packages:

- `uncrustify=0.78.1+dfsg1-1build1`

Licenses: (parsed from: `/usr/share/doc/uncrustify/copyright`)

- `Artistic`
- `GPL`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris uncrustify=0.78.1+dfsg1-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1.orig.tar.xz' uncrustify_0.78.1+dfsg1.orig.tar.xz 1008184 SHA256:23694024d80fa2b56abc3d164d9ee8bb095fda4f51b397412e3a29715e2a2f59
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1-1build1.debian.tar.xz' uncrustify_0.78.1+dfsg1-1build1.debian.tar.xz 5600 SHA256:a57053ef6af8e4e806772aabe33a412fd15351811b4ae2108c1fb435b937c325
'http://archive.ubuntu.com/ubuntu/pool/universe/u/uncrustify/uncrustify_0.78.1%2bdfsg1-1build1.dsc' uncrustify_0.78.1+dfsg1-1build1.dsc 1946 SHA256:fb9a4b151837bc9dd67adfcd28c5fb31124c5159ad0c2fa756e969af98eda713
```

### `dpkg` source package: `ust=2.14.0-1.1`

Binary Packages:

- `liblttng-ust-common1t64:amd64=2.14.0-1.1`
- `liblttng-ust-ctl6:amd64=2.14.0-1.1`
- `liblttng-ust-dev:amd64=2.14.0-1.1`
- `liblttng-ust-python-agent1t64:amd64=2.14.0-1.1`
- `liblttng-ust1t64:amd64=2.14.0-1.1`

Licenses: (parsed from: `/usr/share/doc/liblttng-ust-common1t64/copyright`, `/usr/share/doc/liblttng-ust-ctl6/copyright`, `/usr/share/doc/liblttng-ust-dev/copyright`, `/usr/share/doc/liblttng-ust-python-agent1t64/copyright`, `/usr/share/doc/liblttng-ust1t64/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `CC-BY-4.0`
- `Expat`
- `FSFAP`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris ust=2.14.0-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0-1.1.dsc' ust_2.14.0-1.1.dsc 3198 SHA256:c20f1121edb6d217defc0bd8cd3c17f0d19178dcb890a74cfa3d7c12d1682b7c
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0.orig.tar.bz2' ust_2.14.0.orig.tar.bz2 1391236 SHA256:82cdfd304bbb2b2b7d17cc951a6756b37a9f73868ec0ba7db448a0d5ca51b763
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0.orig.tar.bz2.asc' ust_2.14.0.orig.tar.bz2.asc 488 SHA256:0651fbf2b10c8f69ef3ca3adb7cbc457e4a1327de4b3fc79861d46849f6b042a
'http://archive.ubuntu.com/ubuntu/pool/main/u/ust/ust_2.14.0-1.1.debian.tar.xz' ust_2.14.0-1.1.debian.tar.xz 24692 SHA256:dabeafc8da5721b3a3e5b75e1bff8e1bd7e75f3a34b94c4ebcf4b15c88198441
```

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
- `uuid-dev:amd64=2.41.3-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/login/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA256:3330d873f0fceb5560b89a7dc14e4f3288bbd880e96903ed9b50ec2b5799e58b
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.debian.tar.xz 116776 SHA256:d6a1d3b69f716f5aed7366d12d903dec20e0f98744e87cb41488944cb7bb4247
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.dsc' util-linux_2.41.3-3ubuntu2.dsc 5439 SHA256:4b87e555cfa77a3301e0fc92b77f2f2fc119d7ff27b229af259793103e7674e2
```

### `dpkg` source package: `xml-core=0.19build1`

Binary Packages:

- `xml-core=0.19build1`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.19build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.19build1.tar.xz' xml-core_0.19build1.tar.xz 24136 SHA256:bdc3dfab9e92fbd3afe4c510e94f2e13ec6b32c84d22f4d11b987fa102a46929
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.19build1.dsc' xml-core_0.19build1.dsc 1574 SHA256:04f46bc7a67a7385698ae51528dbd4c58e6b42a82f74a3929cb075b8d958345d
```

### `dpkg` source package: `xxhash=0.8.3-2build1`

Binary Packages:

- `libxxhash-dev:amd64=0.8.3-2build1`
- `libxxhash0:amd64=0.8.3-2build1`

Licenses: (parsed from: `/usr/share/doc/libxxhash-dev/copyright`, `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.3-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3.orig.tar.gz' xxhash_0.8.3.orig.tar.gz 1147630 SHA256:aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.debian.tar.xz' xxhash_0.8.3-2build1.debian.tar.xz 5224 SHA256:98c020a7627a93090c72dece774b1fff0cee76e4f59a65dbd1facb266431fcc5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.dsc' xxhash_0.8.3-2build1.dsc 1968 SHA256:2428b6123da0fa2e2b948474faa829657dc682d741d10a341c9c348c09ea720a
```

### `dpkg` source package: `xz-utils=5.8.3-1`

Binary Packages:

- `liblzma5:amd64=5.8.3-1`
- `xz-utils=5.8.3-1`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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

### `dpkg` source package: `yaml-cpp=0.8.0+dfsg-9`

Binary Packages:

- `libyaml-cpp-dev:amd64=0.8.0+dfsg-9`
- `libyaml-cpp0.8:amd64=0.8.0+dfsg-9`

Licenses: (parsed from: `/usr/share/doc/libyaml-cpp-dev/copyright`, `/usr/share/doc/libyaml-cpp0.8/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris yaml-cpp=0.8.0+dfsg-9
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg-9.dsc' yaml-cpp_0.8.0+dfsg-9.dsc 2081 SHA256:5c6317cd044f0ad57be89506f5615eee84b23d1cb256a7c1c7eb3f5a4e44d72b
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg.orig.tar.xz' yaml-cpp_0.8.0+dfsg.orig.tar.xz 106072 SHA256:32c85a5f36633a9005b20261b35fccb0d8ec69e9ef16c67de7d5d007944e3709
'http://archive.ubuntu.com/ubuntu/pool/main/y/yaml-cpp/yaml-cpp_0.8.0%2bdfsg-9.debian.tar.xz' yaml-cpp_0.8.0+dfsg-9.debian.tar.xz 14864 SHA256:75f6510b1c10761ef4996cd8171e6c6ad5fe3d05228a225cff3cfa51abfb5604
```

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.1-1ubuntu3`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.1-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1.orig.tar.gz' zlib_1.3.dfsg+really1.3.1.orig.tar.gz 1325737 SHA256:60dd315c07f616887caa029408308a018ace66e3d142726a97db164b3b8f69fb
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.debian.tar.xz' zlib_1.3.dfsg+really1.3.1-1ubuntu3.debian.tar.xz 59872 SHA256:a6423c4aef541dece2df954808b99aa6736a2df63b8a5f5102678afe88c15ddb
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.dsc' zlib_1.3.dfsg+really1.3.1-1ubuntu3.dsc 3167 SHA256:eb49c63c462dff1aae7a52badf30ea09777bed4478317240a17cf6c586cbc607
```
