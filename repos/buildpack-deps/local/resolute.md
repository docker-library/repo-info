# `buildpack-deps:resolute`

## Docker Metadata

- Image ID: `sha256:47478c55a296d2739c86ada7aefb5c98d57936e9c04fcf78bafdee0e4334342a`
- Created: `2026-08-18T21:15:25.911131753Z`
- Virtual Size: ~ 796.06 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
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

### `dpkg` source package: `apr-util=1.6.3-3ubuntu3`

Binary Packages:

- `libaprutil1t64:amd64=1.6.3-3ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libaprutil1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.3-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3.orig.tar.bz2' apr-util_1.6.3.orig.tar.bz2 432692 SHA256:a41076e3710746326c3945042994ad9a4fcac0ce0277dd8fea076fec3c9772b5
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3-3ubuntu3.debian.tar.xz' apr-util_1.6.3-3ubuntu3.debian.tar.xz 342676 SHA256:3f0e2f88c7cf4caf3363b0e9e86fdba8f5fe8d10a9b03123ea3ced85de707ebb
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.3-3ubuntu3.dsc' apr-util_1.6.3-3ubuntu3.dsc 2647 SHA256:402f1a0e2b5c608d436c04dfdbbe4a421b2020414cb3d2d603ce287502840f6f
```

### `dpkg` source package: `apr=1.7.6-3`

Binary Packages:

- `libapr1t64:amd64=1.7.6-3`

Licenses: (parsed from: `/usr/share/doc/libapr1t64/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6-3.dsc' apr_1.7.6-3.dsc 2402 SHA256:8a2947b338a2247bc6b58146c57a8d3db3253cffb9a63b62360e164ea4c7a37d
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6.orig.tar.bz2' apr_1.7.6.orig.tar.bz2 899670 SHA256:49030d92d2575da735791b496dc322f3ce5cff9494779ba8cc28c7f46c5deb32
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6.orig.tar.bz2.asc' apr_1.7.6.orig.tar.bz2.asc 898 SHA256:24c2f1ab9c7b9cc9410f44ddd7a659316993685fd9c4f8c4b7bc67eb3e83e331
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.7.6-3.debian.tar.xz' apr_1.7.6-3.debian.tar.xz 42384 SHA256:62e334f0ffc583a3328e28e5749249fdaa56f1ee31208f80b869757192901034
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

### `dpkg` source package: `architecture-properties=0.2.6build1`

Binary Packages:

- `native-architecture=0.2.6build1`

Licenses: (parsed from: `/usr/share/doc/native-architecture/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris architecture-properties=0.2.6build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/architecture-properties/architecture-properties_0.2.6build1.tar.xz' architecture-properties_0.2.6build1.tar.xz 5480 SHA256:5fe2b1d6daca5a6bc0fb68c71b9c0cf665e3e3343bd14812fdb4a732dbad14df
'http://archive.ubuntu.com/ubuntu/pool/main/a/architecture-properties/architecture-properties_0.2.6build1.dsc' architecture-properties_0.2.6build1.dsc 2021 SHA256:083be7ff0743d622bcc5b9bd6060ebb02d27142c89fa63caece2e6dcb58862e9
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

### `dpkg` source package: `autoconf=2.72-3.1ubuntu2`

Binary Packages:

- `autoconf=2.72-3.1ubuntu2`

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
$ apt-get source -qq --print-uris autoconf=2.72-3.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72.orig.tar.xz' autoconf_2.72.orig.tar.xz 1389680 SHA256:ba885c1319578d6c94d46e9b0dceb4014caafe2490e437a0dbca3f270a223f5a
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72-3.1ubuntu2.debian.tar.xz' autoconf_2.72-3.1ubuntu2.debian.tar.xz 27464 SHA256:1eeebbff91013c8846533b5f528c73bbe93455fa3420f06cd465ba03387a750e
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.72-3.1ubuntu2.dsc' autoconf_2.72-3.1ubuntu2.dsc 2174 SHA256:919a232b01553c8352e0cd4f86ee95979725f5f0bfbc34128a259fbbac237d6c
```

### `dpkg` source package: `automake=1:1.18.1-3build1`

Binary Packages:

- `automake=1:1.18.1-3build1`

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
$ apt-get source -qq --print-uris automake=1:1.18.1-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz' automake_1.18.1.orig.tar.xz 1652392 SHA256:168aa363278351b89af56684448f525a5bce5079d0b6842bd910fdd3f1646887
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1.orig.tar.xz.asc' automake_1.18.1.orig.tar.xz.asc 488 SHA256:728ce05b02f123ea360ab9d168111bc98470afc7568253e93ee2a7582ef5ddb4
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-3build1.debian.tar.xz' automake_1.18.1-3build1.debian.tar.xz 22812 SHA256:1923654f311910c01b906b86fbf3c731aef4537bbca100946e54853c4ea3eedb
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake/automake_1.18.1-3build1.dsc' automake_1.18.1-3build1.dsc 2507 SHA256:7fe3f7597bd650e5906591550c075c4761d1be6c75c77359b5affb16436b8b4a
```

### `dpkg` source package: `autotools-dev=20240727.1build1`

Binary Packages:

- `autotools-dev=20240727.1build1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20240727.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1build1.tar.xz' autotools-dev_20240727.1build1.tar.xz 99820 SHA256:286daf1aee119fd797bbf1d876d1195b45865ba1893ece91e4e802f77fba2f36
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20240727.1build1.dsc' autotools-dev_20240727.1build1.dsc 1685 SHA256:1806daf2c205c1ac79e170c7e22c59751872631498131031e9075777e88b62b2
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

- `libbrotli-dev:amd64=1.2.0-3build1`
- `libbrotli1:amd64=1.2.0-3build1`

Licenses: (parsed from: `/usr/share/doc/libbrotli-dev/copyright`, `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA256:eb5f7dadf215d0670665fd81566e1fe2dfdc154d983f09142de7299df4c182e6
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.debian.tar.xz' brotli_1.2.0-3build1.debian.tar.xz 5976 SHA256:7ebbb009f9e33f54a7790e95da60af4667a3fc4a914b79ad49bfc06bb396d829
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3build1.dsc' brotli_1.2.0-3build1.dsc 2281 SHA256:07c51f4299d065d4ae3cc269e9a837b9723453632fe62039cc47723a7d620eda
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


### `dpkg` source package: `curl=8.18.0-1ubuntu2.3`

Binary Packages:

- `curl=8.18.0-1ubuntu2.3`
- `libcurl3t64-gnutls:amd64=8.18.0-1ubuntu2.3`
- `libcurl4-openssl-dev:amd64=8.18.0-1ubuntu2.3`
- `libcurl4t64:amd64=8.18.0-1ubuntu2.3`

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

### `dpkg` source package: `db-defaults=1:5.3.21ubuntu4`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu4.tar.xz' db-defaults_5.3.21ubuntu4.tar.xz 2896 SHA256:067d364edd7dc0ea081e8659d2ce8a35ca1a27ce5d6c5869a44d2e0b6add599e
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21ubuntu4.dsc' db-defaults_5.3.21ubuntu4.dsc 1619 SHA256:1f92fb3ad5eb689b332e52c2097f6d85a9ab63a99c49a731a3628a6cc4daf728
```

### `dpkg` source package: `db5.3=5.3.28+dfsg2-10ubuntu1`

Binary Packages:

- `libdb5.3-dev=5.3.28+dfsg2-10ubuntu1`
- `libdb5.3t64:amd64=5.3.28+dfsg2-10ubuntu1`

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
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg2-10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2.orig.tar.xz' db5.3_5.3.28+dfsg2.orig.tar.xz 21287688 SHA256:ad41b507415dec8316e828b2230242af2251d2c86eefa3c7aa9ef47c5239ef33
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.debian.tar.xz' db5.3_5.3.28+dfsg2-10ubuntu1.debian.tar.xz 36572 SHA256:d901c0a275f43ba688460c3a06865d9318774b19dadf770e03f4927acd0ad61a
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg2-10ubuntu1.dsc' db5.3_5.3.28+dfsg2-10ubuntu1.dsc 2484 SHA256:12c95f53a2dec9cf8dff8de23967f46f16a0c92fcc7e3ee90ebbbbbb12df4b1b
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

### `dpkg` source package: `djvulibre=3.5.29-1`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.29-1`
- `libdjvulibre-text=3.5.29-1`
- `libdjvulibre21:amd64=3.5.29-1`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.29-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.29-1.dsc' djvulibre_3.5.29-1.dsc 2389 SHA256:1e23e59e76eda81be8ad8afeab6f04374701767817fbdedd2162f5d5ee7ca3fe
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.29.orig.tar.xz' djvulibre_3.5.29.orig.tar.xz 3214548 SHA256:d7e310cecde583aa532f373f45a37a1803d60eafad1f4511f0c42682579b9a23
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.29-1.debian.tar.xz' djvulibre_3.5.29-1.debian.tar.xz 16780 SHA256:eef6290ebe8fe9f2a563f3412ac2feb044854aae85eb41828ea9ed1422d91a04
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

- `comerr-dev:amd64=2.1-1.47.2-3ubuntu4`
- `e2fsprogs=1.47.2-3ubuntu4`
- `libcom-err2:amd64=1.47.2-3ubuntu4`
- `libext2fs2t64:amd64=1.47.2-3ubuntu4`
- `libss2:amd64=1.47.2-3ubuntu4`
- `logsave=1.47.2-3ubuntu4`

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
$ apt-get source -qq --print-uris e2fsprogs=1.47.2-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz' e2fsprogs_1.47.2.orig.tar.gz 9996725 SHA256:6dcd67ff9d8b13274ba3f088e4318be4f5b71412cd863524423fc49d39a6371f
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2.orig.tar.gz.asc' e2fsprogs_1.47.2.orig.tar.gz.asc 488 SHA256:2063f62a198dd3df21f789c990c2cf9b4a5de24ed55f0b78d86e97e98daffc9d
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz' e2fsprogs_1.47.2-3ubuntu4.debian.tar.xz 105780 SHA256:6cdbd4f59b979c6e1a75c186b5b0d02b33d35c0410ceb329fc77aba9a313d9c6
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.47.2-3ubuntu4.dsc' e2fsprogs_1.47.2-3ubuntu4.dsc 3044 SHA256:56bd049f448bc211a3a875a4baf35cf2a1eb082f13709426367d5a433166621c
```

### `dpkg` source package: `elfutils=0.194-4`

Binary Packages:

- `libelf1t64:amd64=0.194-4`

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
$ apt-get source -qq --print-uris elfutils=0.194-4
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194-4.dsc' elfutils_0.194-4.dsc 3416 SHA256:4b427b9efe2c894f965d8b944f4e886606c36517da20a36bdc08584e497561f7
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194.orig.tar.bz2' elfutils_0.194.orig.tar.bz2 12003321 SHA256:09e2ff033d39baa8b388a2d7fbc5390bfde99ae3b7c67c7daaf7433fbcf0f01e
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.194-4.debian.tar.xz' elfutils_0.194-4.debian.tar.xz 51088 SHA256:5b04e6da3cd52819fc5eb09fce5705a7251f6f37b50faa1c61644f5de2f30a3f
```

### `dpkg` source package: `expat=2.7.4-1`

Binary Packages:

- `libexpat1:amd64=2.7.4-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.7.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.dsc' expat_2.7.4-1.dsc 1970 SHA256:2b8d94bbc4e830fb7268be91ff18dc24cfdc88608399311af85737cf360da3a0
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4.orig.tar.gz' expat_2.7.4.orig.tar.gz 8448897 SHA256:5b356795b889d3e5b379433ece069b8781bf0727f6959ad3bbc9da0c22164f59
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1.debian.tar.xz' expat_2.7.4-1.debian.tar.xz 13420 SHA256:d58d2cb39825e385b7063eca491ce1b34299b047bce45d9ef0b42666a289a9b0
```

### `dpkg` source package: `fftw3=3.3.10-2fakesync1build3`

Binary Packages:

- `libfftw3-bin=3.3.10-2fakesync1build3`
- `libfftw3-dev:amd64=3.3.10-2fakesync1build3`
- `libfftw3-double3:amd64=3.3.10-2fakesync1build3`
- `libfftw3-long3:amd64=3.3.10-2fakesync1build3`
- `libfftw3-quad3:amd64=3.3.10-2fakesync1build3`
- `libfftw3-single3:amd64=3.3.10-2fakesync1build3`

Licenses: (parsed from: `/usr/share/doc/libfftw3-bin/copyright`, `/usr/share/doc/libfftw3-dev/copyright`, `/usr/share/doc/libfftw3-double3/copyright`, `/usr/share/doc/libfftw3-long3/copyright`, `/usr/share/doc/libfftw3-quad3/copyright`, `/usr/share/doc/libfftw3-single3/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.10-2fakesync1build3
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10.orig.tar.gz' fftw3_3.3.10.orig.tar.gz 4262403 SHA256:5499874012aa6ea6c597b8c3807494e271ab2426a889e95d5cc4d154b825e8a0
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10-2fakesync1build3.debian.tar.xz' fftw3_3.3.10-2fakesync1build3.debian.tar.xz 14896 SHA256:13968a263db24bd87d5f8c613d8fc9b6a2660e41cb731758e19941b2c466c107
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.10-2fakesync1build3.dsc' fftw3_3.3.10-2fakesync1build3.dsc 2893 SHA256:b819e925fd8675b16b447caef66e24bf61fda926bfce5921bfc8e524e94f060f
```

### `dpkg` source package: `file=1:5.46-5build2`

Binary Packages:

- `file=1:5.46-5build2`
- `libmagic-mgc=1:5.46-5build2`
- `libmagic1t64:amd64=1:5.46-5build2`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1t64/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.46-5build2
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.46.orig.tar.gz' file_5.46.orig.tar.gz 1312892 SHA256:c9cc77c7c560c543135edc555af609d5619dbef011997e988ce40a3d75d86088
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.46.orig.tar.gz.asc' file_5.46.orig.tar.gz.asc 201 SHA256:01e43559e64e173c9c9f02714fb48cf631ee810def768507f077ff1309c8badc
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.46-5build2.debian.tar.xz' file_5.46-5build2.debian.tar.xz 37172 SHA256:7f3057b237da9c76c41574a5da958fb1d85839e1835db298fcdec18bd5c083b2
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.46-5build2.dsc' file_5.46-5build2.dsc 2292 SHA256:50dec093652e31afa06fec38fbc7e5507fd265136ff95fa19d682724adbe0c7f
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

- `libfreetype-dev:amd64=2.14.2+dfsg-1ubuntu0.1`
- `libfreetype6:amd64=2.14.2+dfsg-1ubuntu0.1`

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
- `libgomp1:amd64=16-20260322-1ubuntu1`
- `libhwasan0:amd64=16-20260322-1ubuntu1`
- `libitm1:amd64=16-20260322-1ubuntu1`
- `liblsan0:amd64=16-20260322-1ubuntu1`
- `libquadmath0:amd64=16-20260322-1ubuntu1`
- `libstdc++6:amd64=16-20260322-1ubuntu1`
- `libtsan2:amd64=16-20260322-1ubuntu1`
- `libubsan1:amd64=16-20260322-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libasan8/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libhwasan0/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan2/copyright`, `/usr/share/doc/libubsan1/copyright`)

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

- `girepository-tools:amd64=2.88.0-1`
- `libgio-2.0-dev:amd64=2.88.0-1`
- `libgio-2.0-dev-bin=2.88.0-1`
- `libgirepository-2.0-0:amd64=2.88.0-1`
- `libglib2.0-0t64:amd64=2.88.0-1`
- `libglib2.0-bin=2.88.0-1`
- `libglib2.0-data=2.88.0-1`
- `libglib2.0-dev:amd64=2.88.0-1`
- `libglib2.0-dev-bin=2.88.0-1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg.orig.tar.xz' gmp_6.3.0+dfsg.orig.tar.xz 1870556 SHA256:bd2966e6d277f79328e894a5a9f3ba3fbf2ed2be81def5f48623e30c23fb1572
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.debian.tar.xz' gmp_6.3.0+dfsg-5ubuntu2.debian.tar.xz 40328 SHA256:2eb9fc9ec44509e8c8123e28bd223b4e4efd565d48d30cc76c107ee1102d5f54
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.3.0%2bdfsg-5ubuntu2.dsc' gmp_6.3.0+dfsg-5ubuntu2.dsc 2337 SHA256:124ecc12680fb9cef589e9c4c60abba140cb5439f2742f109500fe7214d4db18
```

### `dpkg` source package: `gnupg2=2.4.8-4ubuntu3`

Binary Packages:

- `dirmngr=2.4.8-4ubuntu3`
- `gnupg=2.4.8-4ubuntu3`
- `gpg=2.4.8-4ubuntu3`
- `gpg-agent=2.4.8-4ubuntu3`
- `gpgconf=2.4.8-4ubuntu3`
- `gpgsm=2.4.8-4ubuntu3`
- `gpgv=2.4.8-4ubuntu3`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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

- `libgnutls-dane0t64:amd64=3.8.12-2ubuntu1.1`
- `libgnutls-openssl27t64:amd64=3.8.12-2ubuntu1.1`
- `libgnutls28-dev:amd64=3.8.12-2ubuntu1.1`
- `libgnutls30t64:amd64=3.8.12-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgnutls-dane0t64/copyright`, `/usr/share/doc/libgnutls-openssl27t64/copyright`, `/usr/share/doc/libgnutls28-dev/copyright`, `/usr/share/doc/libgnutls30t64/copyright`)

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

### `dpkg` source package: `hicolor-icon-theme=0.18-2build1`

Binary Packages:

- `hicolor-icon-theme=0.18-2build1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.18-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz' hicolor-icon-theme_0.18.orig.tar.xz 29624 SHA256:db0e50a80aa3bf64bb45cbca5cf9f75efd9348cf2ac690b907435238c3cf81d7
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18.orig.tar.xz.asc' hicolor-icon-theme_0.18.orig.tar.xz.asc 833 SHA256:0fe29ecd5d445805e33b33d7ff35813eabab2100806c06dd002efd35b37fb855
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.debian.tar.xz' hicolor-icon-theme_0.18-2build1.debian.tar.xz 9232 SHA256:2682ac16041f6089c3263ecfc04bef64a6196d705bf07ba33b68b19e50c64503
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.18-2build1.dsc' hicolor-icon-theme_0.18-2build1.dsc 2349 SHA256:3b2d42a5eb5ed623e3f24e45f0681ce04c1a04c4c7f9ae3dcf4259347390fce0
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

### `dpkg` source package: `imagemagick=8:7.1.2.18+dfsg1-1`

Binary Packages:

- `imagemagick=8:7.1.2.18+dfsg1-1`
- `imagemagick-7-common=8:7.1.2.18+dfsg1-1`
- `imagemagick-7.q16=8:7.1.2.18+dfsg1-1`
- `libmagickcore-7-arch-config:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickcore-7-headers=8:7.1.2.18+dfsg1-1`
- `libmagickcore-7.q16-10:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickcore-7.q16-10-extra:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickcore-7.q16-dev:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickcore-dev=8:7.1.2.18+dfsg1-1`
- `libmagickwand-7-headers=8:7.1.2.18+dfsg1-1`
- `libmagickwand-7.q16-10:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickwand-7.q16-dev:amd64=8:7.1.2.18+dfsg1-1`
- `libmagickwand-dev=8:7.1.2.18+dfsg1-1`

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
$ apt-get source -qq --print-uris imagemagick=8:7.1.2.18+dfsg1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.18%2bdfsg1-1.dsc' imagemagick_7.1.2.18+dfsg1-1.dsc 5202 SHA512:4b028784fb63e6680bc1e9c4edac26ad5d4431b5297465731e5244d26888c2a048d58f37fcd6bfc29c34035189fc5e2e33eaa7f3ed99bade73709e62bb37d06f
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.18%2bdfsg1.orig.tar.xz' imagemagick_7.1.2.18+dfsg1.orig.tar.xz 10531512 SHA512:e25e6783e110a84aa5a0f2fdbc4837dc8d449f36efa4125f9d49ff50fb029221ea90812e78eef75cdd512596c9bc793dbdbec2c6b76e799e686ec9a7dfbb977c
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imagemagick/imagemagick_7.1.2.18%2bdfsg1-1.debian.tar.xz' imagemagick_7.1.2.18+dfsg1-1.debian.tar.xz 271492 SHA512:971e8c86e48453f24b4496daf137c839cf1c87068ea64e3faa705fb2dece12fb0e6672cc2c131026e72c4f2b4d7b14a1b5ae1bc55317f435002cc91db338372e
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
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz' imath_3.1.12.orig.tar.gz 604232 SHA256:8a1bc258f3149b5729c2f4f8ffd337c0e57f09096e4ba9784329f40c4a9035da
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12.orig.tar.gz.asc' imath_3.1.12.orig.tar.gz.asc 287 SHA256:a2c4ac5151789903ca8ab3093a2798491463ccf2abfd003a20f96453e505dd5f
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.debian.tar.xz' imath_3.1.12-1ubuntu5.debian.tar.xz 10260 SHA256:bbd06a3587784b51831c906c679ef42abec4528b6bd7289d3d0be61f7d4feada
'http://archive.ubuntu.com/ubuntu/pool/universe/i/imath/imath_3.1.12-1ubuntu5.dsc' imath_3.1.12-1ubuntu5.dsc 2728 SHA256:09821b1692d95be6f6c5f104b51263d92d4adbacd6930d72539cf395cad6fdea
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

### `dpkg` source package: `krb5=1.22.1-2ubuntu4.1`

Binary Packages:

- `krb5-multidev:amd64=1.22.1-2ubuntu4.1`
- `libgssapi-krb5-2:amd64=1.22.1-2ubuntu4.1`
- `libgssrpc4t64:amd64=1.22.1-2ubuntu4.1`
- `libk5crypto3:amd64=1.22.1-2ubuntu4.1`
- `libkadm5clnt-mit12:amd64=1.22.1-2ubuntu4.1`
- `libkadm5srv-mit12:amd64=1.22.1-2ubuntu4.1`
- `libkdb5-10t64:amd64=1.22.1-2ubuntu4.1`
- `libkrb5-3:amd64=1.22.1-2ubuntu4.1`
- `libkrb5-dev:amd64=1.22.1-2ubuntu4.1`
- `libkrb5support0:amd64=1.22.1-2ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4t64/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit12/copyright`, `/usr/share/doc/libkadm5srv-mit12/copyright`, `/usr/share/doc/libkdb5-10t64/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.22.1-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1.orig.tar.gz' krb5_1.22.1.orig.tar.gz 8747101 SHA512:c33bfada5e0c035133436031d9818ad97b0ff08578691c832b743c55751a2cf9460501d3cc658ab79655ed7a0f9f4795ba94b363d6b616795d9bdca668825c52
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.debian.tar.xz' krb5_1.22.1-2ubuntu4.1.debian.tar.xz 109240 SHA512:6b6518bd38d6e8939b8f0295f6c07a26308b50769b848bd77cc86456052a9cdf35421f56075cd97bd07aa7a1b5509dc12bd00da3a36b94f370694fb3b889277e
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.22.1-2ubuntu4.1.dsc' krb5_1.22.1-2ubuntu4.1.dsc 3879 SHA512:2a3e54f7a1e241eb678053b145f69161af113ab3f62a1c5cc2333098572586bcf001c98a54e246246105a269067f991ac4318a347020527a29dc56e6eee44ef8
```

### `dpkg` source package: `lcms2=2.17-1ubuntu0.2`

Binary Packages:

- `liblcms2-2:amd64=2.17-1ubuntu0.2`
- `liblcms2-dev:amd64=2.17-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `IJG`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.17-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17.orig.tar.gz' lcms2_2.17.orig.tar.gz 5245319 SHA512:81885c70fb26a9b7d37a398f43ccb0d1d3ab8f43de7da8f760b26d053a0d7e0543e7d3b0cdcaf9b3b681a1b88f032134c5a3c1a6774a9abc66a8a3f10ba64398
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17-1ubuntu0.2.debian.tar.xz' lcms2_2.17-1ubuntu0.2.debian.tar.xz 12912 SHA512:76adda53e5c67924cdd9bbbb4dad62efc93ff00d72dbf17b4fcb29c169c954526a0e9d4815e630fde45b7a7fe7af3ee3b79888e2b50d380f88596a745b932f53
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.17-1ubuntu0.2.dsc' lcms2_2.17-1ubuntu0.2.dsc 2158 SHA512:09c51008ab8d96e828203ec25c635b3c5335819da7c02249b94c9c1e4661748ea4024b7b0fe34c1e5ffef60997a9328ee40884f2299aa2de04ef04f0e525f6be
```

### `dpkg` source package: `lerc=4.0.0+ds-5ubuntu2`

Binary Packages:

- `liblerc-dev:amd64=4.0.0+ds-5ubuntu2`
- `liblerc4:amd64=4.0.0+ds-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblerc-dev/copyright`, `/usr/share/doc/liblerc4/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris lerc=4.0.0+ds-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds.orig.tar.xz' lerc_4.0.0+ds.orig.tar.xz 348140 SHA256:acf855502fd3b950ee78f0b67bc9e9b39316b3526fbf6d8b8b1a9482fb756723
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.debian.tar.xz' lerc_4.0.0+ds-5ubuntu2.debian.tar.xz 8808 SHA256:f3352c0f57b0b4303719ca7e86198fc68e4a9e86cd1a747588ddff8c3622069f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lerc/lerc_4.0.0%2bds-5ubuntu2.dsc' lerc_4.0.0+ds-5ubuntu2.dsc 2739 SHA256:c0263116dc87739c8070254036121f31d6494eff2494b1926ef0ef887965adc1
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

### `dpkg` source package: `libcbor=0.10.2-2ubuntu3`

Binary Packages:

- `libcbor0.10:amd64=0.10.2-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libcbor0.10/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.10.2-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2.orig.tar.gz' libcbor_0.10.2.orig.tar.gz 289450 SHA512:23c6177443778d4b4833ec7ed0d0e639a0d4863372e3a38d772fdce2673eae6d5cb2a31a2a021d1a699082ea53494977c907fd0e94149b97cb23a4b6d039228a
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2ubuntu3.debian.tar.xz' libcbor_0.10.2-2ubuntu3.debian.tar.xz 7772 SHA512:814e6926305a70078c3783e8ad93defbeadb5e9e681e0869d2c7b1555f0658093f69b5b819fefe7ca3f121373d0dffdee469865bd40680e364c90ae7bc9806ee
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcbor/libcbor_0.10.2-2ubuntu3.dsc' libcbor_0.10.2-2ubuntu3.dsc 2238 SHA512:22053c29acc1d5bf7928fa2982eb94d0f9b57f8088a88d36ba263f296131c2ab6b14f73e378bf46b4205a65ca22fc9b31036b58dfe7e086c7040b3490f8cbcc7
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

- `libdeflate-dev:amd64=1.23-2ubuntu1`
- `libdeflate0:amd64=1.23-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdeflate-dev/copyright`, `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.23-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23.orig.tar.gz' libdeflate_1.23.orig.tar.gz 197519 SHA256:1ab18349b9fb0ce8a0ca4116bded725be7dcbfa709e19f6f983d99df1fb8b25f
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.debian.tar.xz' libdeflate_1.23-2ubuntu1.debian.tar.xz 6276 SHA256:c4d9487a5a5594efb43485273b7a5cd90cf0792eeaa3846fc919e9899d0f07fa
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdeflate/libdeflate_1.23-2ubuntu1.dsc' libdeflate_1.23-2ubuntu1.dsc 2340 SHA256:0e5b9a06532fedc044833a6c10d7973a730b1777258560a2f7910e6b84b8286b
```

### `dpkg` source package: `libedit=3.1-20251016-1`

Binary Packages:

- `libedit2:amd64=3.1-20251016-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20251016-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016-1.dsc' libedit_3.1-20251016-1.dsc 2264 SHA256:82f4a6ba02d58128414520489537cd73d765c2ed3fb636cc6708f1c576f51bfe
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016.orig.tar.gz' libedit_3.1-20251016.orig.tar.gz 549005 SHA256:21362b00653bbfc1c71f71a7578da66b5b5203559d43134d2dd7719e313ce041
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20251016-1.debian.tar.xz' libedit_3.1-20251016-1.debian.tar.xz 16716 SHA256:f4044457a9648f00ea77e79069e0569f47d48c00b310150dcd070de689e4d8ed
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

### `dpkg` source package: `libevent=2.1.12-stable-10build2`

Binary Packages:

- `libevent-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-core-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-dev=2.1.12-stable-10build2`
- `libevent-extra-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-openssl-2.1-7t64:amd64=2.1.12-stable-10build2`
- `libevent-pthreads-2.1-7t64:amd64=2.1.12-stable-10build2`

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
$ apt-get source -qq --print-uris libevent=2.1.12-stable-10build2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable.orig.tar.gz' libevent_2.1.12-stable.orig.tar.gz 1100847 SHA256:92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-10build2.debian.tar.xz' libevent_2.1.12-stable-10build2.debian.tar.xz 18060 SHA256:840c7d725ba9897f7d6008cf67e45710fbba448dca1ccb34650f448b70e52621
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.12-stable-10build2.dsc' libevent_2.1.12-stable-10build2.dsc 2436 SHA256:f97bd6eb793f5ab34f929e712215b6803f0e29d855cf50c5c43a6d031d51fa7c
```

### `dpkg` source package: `libexif=0.6.25-2ubuntu0.1`

Binary Packages:

- `libexif-dev:amd64=0.6.25-2ubuntu0.1`
- `libexif12:amd64=0.6.25-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-3-Clause`
- `CC0-1.0`
- `GPL-2`
- `GPL-2.0`
- `LGPL-2.1`
- `LGPL-2.1-or-later`
- `LicenseRef-Wrobel`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.25-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25.orig.tar.gz' libexif_0.6.25.orig.tar.gz 1253324 SHA512:9e42af0d898a9d832d7b146a2085fb08eafdbb5ae476184aee1b495632172749d910f581246d22a0c68382ea9d969de54bd9539d4d877ad4dd6ca989e1b6d8db
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25-2ubuntu0.1.debian.tar.xz' libexif_0.6.25-2ubuntu0.1.debian.tar.xz 14292 SHA512:ce04d6aa8423dcf921036d8b679e7b9c292e51f5a2d0a887449a0eb9348ea1d41692673bc80e56eeb6aaef3620eb54438b3d54bcea1944e824f7927360ee5de6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.25-2ubuntu0.1.dsc' libexif_0.6.25-2ubuntu0.1.dsc 2432 SHA512:d34afc3424f9bfd11d98de48cf28d718392e3a1dc4f4b448fc188b3b747269920280189020f3e559ec2a4e01aecc09792470483775c4fd4af5f50d2e5e29a926
```

### `dpkg` source package: `libffi=3.5.2-4`

Binary Packages:

- `libffi-dev:amd64=3.5.2-4`
- `libffi8:amd64=3.5.2-4`

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
$ apt-get source -qq --print-uris libffi=3.5.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.dsc' libffi_3.5.2-4.dsc 2093 SHA512:c42c1456aec913a0dc04ee54cbe30c4dc87b204b8d5ff550e5e4aeedb03ff1a485aef578ae2b77edc79e56b299875db60f5c74209cd6e91064c759407dffb118
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2.orig.tar.gz' libffi_3.5.2.orig.tar.gz 598870 SHA512:4579932becbe33b2cb3c7a6327a9b47fee67f225ebb4677870ed4402bb7c186966a5b8645dc8a09128af51dcba27c23537e6a34567dbea4e3dc3728cfb51e038
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.5.2-4.debian.tar.xz' libffi_3.5.2-4.debian.tar.xz 11000 SHA512:494381871623a692e40089be90edb2cf2a4c5045cb8f7a5bd1b75849943b7ab2d950857378a975ce15371ac821ce984cbf1b6b84b3e075b3fd8bf9a95340135b
```

### `dpkg` source package: `libfido2=1.16.0-2build1`

Binary Packages:

- `libfido2-1:amd64=1.16.0-2build1`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.16.0-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0.orig.tar.xz' libfido2_1.16.0.orig.tar.xz 599884 SHA256:6a213ed99860107e457be476795df9589445d0be0741b17e7932e92768ee5813
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0-2build1.debian.tar.xz' libfido2_1.16.0-2build1.debian.tar.xz 65876 SHA256:495e0101deb0d06a5c589ed937b47daff556f595c0ab9e2ab5395b73a04e1c68
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfido2/libfido2_1.16.0-2build1.dsc' libfido2_1.16.0-2build1.dsc 2246 SHA256:685405b7a6a363de7b60b74a970af62f7a9eb1fe5324aa9ae67696636ea84150
```

### `dpkg` source package: `libgcrypt20=1.12.0-2ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.12.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.12.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2' libgcrypt20_1.12.0.orig.tar.bz2 4438947 SHA512:9421461297bd79b14f94d1ab275c3ed93b5d433531915c5cc7a718a94d32978a46feccb7a33fe63a60780ff00d465fbe1fe9ada5c250cf6d10a525c246c63d1c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2.asc' libgcrypt20_1.12.0.orig.tar.bz2.asc 265 SHA512:9861910a5a955e37b5c90dbb01e1fcf35cd573801004d3cf762fc33180b9bfed1db229827395b54fdb1c499004daece4b6201ec83e9ca214fff79855b691e9a9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.debian.tar.xz' libgcrypt20_1.12.0-2ubuntu1.debian.tar.xz 46836 SHA512:aba5ad42c5f8be7ef8e86cb9cb56320ece65f4064475564be1905588fcf372d288ce4c753cb3582e5b59a759189bd5ea9cef57028686ba526afe9669bc29b446
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.dsc' libgcrypt20_1.12.0-2ubuntu1.dsc 3106 SHA512:02754ddea2e5519ec068b82b355aaddbbd3edec1931d1115d22563da271eb7d82c8f075c521d63df4153059edc1594f0d5000b46c300b37185c3f069025b92af
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


### `dpkg` source package: `libice=2:1.1.1-1build1`

Binary Packages:

- `libice-dev:amd64=2:1.1.1-1build1`
- `libice6:amd64=2:1.1.1-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.1.1-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1.orig.tar.gz' libice_1.1.1.orig.tar.gz 489944 SHA256:04fbd34a11ba08b9df2e3cdb2055c2e3c1c51b3257f683d7fcf42dabcf8e1210
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.diff.gz' libice_1.1.1-1build1.diff.gz 7407 SHA256:1e60fbbf8a7aaf66c08251608ae8203a6c7e9709e97bb37aa24e40d7a541ca18
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.1.1-1build1.dsc' libice_1.1.1-1build1.dsc 2016 SHA256:962a510fab962b042108aa853090239bb09f3803b6b4609dd9d84b348923affa
```

### `dpkg` source package: `libidn2=2.3.8-4build1`

Binary Packages:

- `libidn2-0:amd64=2.3.8-4build1`
- `libidn2-dev:amd64=2.3.8-4build1`

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
$ apt-get source -qq --print-uris libidn2=2.3.8-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz' libidn2_2.3.8.orig.tar.gz 718637 SHA256:bbad1678d35d28e2c62e6a2577083829461402d9e47b908791c55314a5cb5e04
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8.orig.tar.gz.asc' libidn2_2.3.8.orig.tar.gz.asc 1223 SHA256:8995cab7db361d9d6989eab26d9b521c74236960a5d78250121c8d369b013bd8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.debian.tar.xz' libidn2_2.3.8-4build1.debian.tar.xz 18192 SHA256:6db2bd9e3b127c10d19ab7bf7c3ff4074c847e7c36ed3ad62fa6299017084cb1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.3.8-4build1.dsc' libidn2_2.3.8-4build1.dsc 2566 SHA256:71c5ea4ac74a90f59a6c641a03b17f140c431aa02ca861ebd5897fde84d1fbe8
```

### `dpkg` source package: `libjpeg-turbo=2.1.5-4ubuntu4`

Binary Packages:

- `libjpeg-turbo8:amd64=2.1.5-4ubuntu4`
- `libjpeg-turbo8-dev:amd64=2.1.5-4ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

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

- `libjpeg-dev:amd64=8c-2ubuntu12`
- `libjpeg8:amd64=8c-2ubuntu12`
- `libjpeg8-dev:amd64=8c-2ubuntu12`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu12
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.tar.gz' libjpeg8-empty_8c-2ubuntu12.tar.gz 2021 SHA256:71785e9a0081d45cd277426e2dc94dc45e6bcd3721199c6ae37956b4721ba3ed
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu12.dsc' libjpeg8-empty_8c-2ubuntu12.dsc 1579 SHA256:ef23a313872c672ff25d62bdff1707560bb1edb080fb7b764e76aae9a386d031
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
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.2.dsc' liblqr_0.4.2-2.2.dsc 1953 SHA256:c56881b7708688812d7b6103e7b6103e9c2108d0e778c4e6f07ef713111549f9
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblqr/liblqr_0.4.2-2.2.debian.tar.xz' liblqr_0.4.2-2.2.debian.tar.xz 5788 SHA256:26525ba92ad5e37df54aac6ca14548ae9729b251c1525294ed388d47260d967a
```

### `dpkg` source package: `libmaxminddb=1.12.2-1build2`

Binary Packages:

- `libmaxminddb-dev:amd64=1.12.2-1build2`
- `libmaxminddb0:amd64=1.12.2-1build2`

Licenses: (parsed from: `/usr/share/doc/libmaxminddb-dev/copyright`, `/usr/share/doc/libmaxminddb0/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `LGPL-3`
- `LGPL-3.0+`

Source:

```console
$ apt-get source -qq --print-uris libmaxminddb=1.12.2-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.12.2.orig.tar.gz' libmaxminddb_1.12.2.orig.tar.gz 369848 SHA256:c0b20260a54cf4cebd3b879ac8e487cf2eac218fe6a5f64f1e2c3032b564fdd8
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.12.2-1build2.debian.tar.xz' libmaxminddb_1.12.2-1build2.debian.tar.xz 7056 SHA256:cac19487cf9fea012e04a7c513094753befe1762ac12b99e5f4622911791316e
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmaxminddb/libmaxminddb_1.12.2-1build2.dsc' libmaxminddb_1.12.2-1build2.dsc 2259 SHA256:8a17170e8a719080f1890343d3ca82d74d8bb01686761a233d4af2342254e27b
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

- `libpng-dev:amd64=1.6.57-1`
- `libpng16-16t64:amd64=1.6.57-1`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.57-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.dsc' libpng1.6_1.6.57-1.dsc 2306 SHA512:46588883287894dbe0c5ba77bc500df0ba8d86f14a48d6253850d4e315396aec0f9165ec8d2ee6d491fb47a753a1fd1bd3b84bd84c33bf465cdc978037b2a9c4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57.orig.tar.gz' libpng1.6_1.6.57.orig.tar.gz 1591776 SHA512:cd20c278b04ac6275cea495c66472782c175bf431eb28afd3f529d5913179ac8cbf3a306e67fe9dc3ae09c87ad67b5d937b83f427e15d8364f513d95ff8b4649
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1.debian.tar.xz' libpng1.6_1.6.57-1.debian.tar.xz 33420 SHA512:c9259e36eb22c973e8a067c87d5a8d01f520ea629c158679c8666e53c79eeae2ac3769b4bdd039cdf48c3ad37effdbce0f7a76821c55dc7bacea5587d7a76ce4
```

### `dpkg` source package: `libpsl=0.21.2-1.1build2`

Binary Packages:

- `libpsl-dev:amd64=0.21.2-1.1build2`
- `libpsl5t64:amd64=0.21.2-1.1build2`

Licenses: (parsed from: `/usr/share/doc/libpsl-dev/copyright`, `/usr/share/doc/libpsl5t64/copyright`)

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

### `dpkg` source package: `libraw=0.21.5b-1ubuntu1.1`

Binary Packages:

- `libraw23t64:amd64=0.21.5b-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libraw23t64/copyright`)

- `CC-BY-SA-3.0`
- `CDDL-1.0`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libraw=0.21.5b-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.5b.orig.tar.gz' libraw_0.21.5b.orig.tar.gz 566951 SHA512:09168e2ed9e5e0edff1371758433ad492a0ad50d62157b2b12cf78295f5653658b660248e0cad235c3a8bbe4fd733c0133592745d0cb1b7b6397735853fd6e9c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.5b-1ubuntu1.1.debian.tar.xz' libraw_0.21.5b-1ubuntu1.1.debian.tar.xz 25848 SHA512:a5152eb6b28c9d5ac454d7443cc68c7b0c85118e8bfd70d3dd6bc073f6a3bf4ab57402f296c1ee5f69e2c802c3d06d3151e1a812dec842dc9c97398cac122e41
'http://archive.ubuntu.com/ubuntu/pool/main/libr/libraw/libraw_0.21.5b-1ubuntu1.1.dsc' libraw_0.21.5b-1ubuntu1.1.dsc 2343 SHA512:cc3b28371ce9cf3d64f8af23e474cf9ae5a5939949af23f8ec6b4fcf8352c3c2156b0b09dc9a2eb9311901895aa28a6d64fde3f64d0f6536a34d93103aff6f66
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

- `libselinux-dev:amd64=3.9-4build1`
- `libselinux1:amd64=3.9-4build1`

Licenses: (parsed from: `/usr/share/doc/libselinux-dev/copyright`, `/usr/share/doc/libselinux1/copyright`)

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

- `libsepol-dev:amd64=3.9-2`
- `libsepol2:amd64=3.9-2`

Licenses: (parsed from: `/usr/share/doc/libsepol-dev/copyright`, `/usr/share/doc/libsepol2/copyright`)

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

### `dpkg` source package: `libsm=2:1.2.6-1build1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.6-1build1`
- `libsm6:amd64=2:1.2.6-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.6-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz' libsm_1.2.6.orig.tar.gz 467497 SHA256:166b4b50d606cdd83f1ddc61b5b9162600034f848b3e32ccbb0e63536b7d6cdd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6.orig.tar.gz.asc' libsm_1.2.6.orig.tar.gz.asc 833 SHA256:b5e59abae8a79ae9901e73178dacf5af9d7c3b91704fd86de85d305fd7a17a7f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.diff.gz' libsm_1.2.6-1build1.diff.gz 13398 SHA256:17234fdf77977bf1b07e469325a93df33f3ddbb4a8218307a1bd2cbb28f14539
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.6-1build1.dsc' libsm_1.2.6-1build1.dsc 2326 SHA256:b0f8ce6dd7c8c80730bbdfcc380944d47b2541eaa9fc8387073f4ec2cf97529c
```

### `dpkg` source package: `libssh2=1.11.1-1ubuntu0.26.04.3`

Binary Packages:

- `libssh2-1-dev:amd64=1.11.1-1ubuntu0.26.04.3`
- `libssh2-1t64:amd64=1.11.1-1ubuntu0.26.04.3`

Licenses: (parsed from: `/usr/share/doc/libssh2-1-dev/copyright`, `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.11.1-1ubuntu0.26.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz' libssh2_1.11.1.orig.tar.gz 1093012 SHA512:8703636fc28f0b12c8171712f3d605e0466a5bb9ba06e136c3203548fc3408ab07defd71dc801d7009a337e1e02fd60e8933a2a526d5ef0ce53153058d201233
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz.asc' libssh2_1.11.1.orig.tar.gz.asc 488 SHA512:83e600ddd676013932297c4f3d2cf2e65b5308f7700d818b34f30d760c7495180e6d8dae70579c8bea95ea2d7ccb12fc42641e545e11ec4b6630a0e6b350b282
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.3.debian.tar.xz' libssh2_1.11.1-1ubuntu0.26.04.3.debian.tar.xz 24644 SHA512:de5ae68866c5c6e075042ab3662cdfcb81d7aa10049f4de01914d528181f47c713c376e2f438c131eb19971af7b1cfdebdd00d7fa1f4b7ebc14bfc62496ae646
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.3.dsc' libssh2_1.11.1-1ubuntu0.26.04.3.dsc 2458 SHA512:cd85bc67ae7eb526593205a93bb1a416923f3027101f33f320f3b6e885e87cae5c3084e81af896b6caa8b53be6933dc213b9d9e982f89233551df399030db5b2
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.dsc' libtasn1-6_4.21.0-2.dsc 2665 SHA256:781fb83a70d7e0357e6a70e54e11712b471ba11804e119d621682fc741376a4a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz' libtasn1-6_4.21.0.orig.tar.gz 1816537 SHA256:1d8a444a223cc5464240777346e125de51d8e6abf0b8bac742ac84609167dc87
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0.orig.tar.gz.asc' libtasn1-6_4.21.0.orig.tar.gz.asc 1223 SHA256:a81037649b953c9ecb2e8f8fa24cb5c79456fd9af31499d6b753fa6569656807
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.21.0-2.debian.tar.xz' libtasn1-6_4.21.0-2.debian.tar.xz 19408 SHA256:baeb1f6c25a1623e6b3834de85e2a69e81b82fdbd5bac9379fc5e699c83d9866
```

### `dpkg` source package: `libtext-charwidth-perl=0.04-11build4`

Binary Packages:

- `libtext-charwidth-perl:amd64=0.04-11build4`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-11build4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA256:2990c13c3f4a5479d7dbc5a94b86c23798cf0dc7df54ffe54e065f072558b6ed
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-11build4.debian.tar.xz' libtext-charwidth-perl_0.04-11build4.debian.tar.xz 3228 SHA256:f51c5c1ac0ba62392a11bc1042a13a319511e5a1982fc71cec5b8ebe2d9588be
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-11build4.dsc' libtext-charwidth-perl_0.04-11build4.dsc 2265 SHA256:8614770519e9c4f89c1512c23b8a8be17a304fa0d7b7cce3d80556a77991f03c
```

### `dpkg` source package: `libtext-wrapi18n-perl=0.06-10`

Binary Packages:

- `libtext-wrapi18n-perl=0.06-10`

Licenses: (parsed from: `/usr/share/doc/libtext-wrapi18n-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtext-wrapi18n-perl=0.06-10
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-10.dsc' libtext-wrapi18n-perl_0.06-10.dsc 1829 SHA256:726c08c23af488c28b70600a5c1632468f1535cb50dcd5255cc153a4f8558ed9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA256:432c2a801efe9f12d631124c1163439eac4c99449ba13d80133c45ecacc627f5
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-10.debian.tar.xz' libtext-wrapi18n-perl_0.06-10.debian.tar.xz 3452 SHA256:751073476ee62cc3430ff0afcab74a4e02b432199d7612e1fd63105fc89ec378
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

- `libltdl-dev:amd64=2.5.4-9`
- `libltdl7:amd64=2.5.4-9`
- `libtool=2.5.4-9`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz' libwebp_1.5.0.orig.tar.gz 4267494 SHA256:7d6fab70cf844bf6769077bd5d7a74893f8ffd4dfb42861745750c63c2a5c92c
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0.orig.tar.gz.asc' libwebp_1.5.0.orig.tar.gz.asc 833 SHA256:1383ff0b093f57d65f5a902e1bc51c550795ce4713b38712c60bb9151e15dcd6
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.debian.tar.xz' libwebp_1.5.0-0.1build1.debian.tar.xz 11356 SHA256:035f119997380bb5119033270f8e6b263ddebb0bb7dd989b88870d64fbcc9814
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_1.5.0-0.1build1.dsc' libwebp_1.5.0-0.1build1.dsc 2889 SHA256:e2022160126aec63ee4c30a1616bcd8906d29f8f21d96c1e12ef3edfa84a9abe
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
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14-1.dsc' libwmf_0.2.14-1.dsc 2368 SHA256:832d1ee81021cfea0f99c3e8a4e6848a1357c4f32827bc719abb901ba6845632
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14.orig.tar.gz' libwmf_0.2.14.orig.tar.gz 2628359 SHA256:1754bb4816d892fdd217909fd8f1d3b45adf4cc3c0f28aba46ebb3d09021374b
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.14-1.debian.tar.xz' libwmf_0.2.14-1.debian.tar.xz 25496 SHA256:bd492645a1c94fadb26e7bf61c26a4e601cec9699607b3ca4b644834f3e056a3
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
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.dsc' libx11_1.8.13-1.dsc 2490 SHA256:59a024bc689876cafcdd6532e074ae1daa7b7198e102187685224b0793696f56
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA256:acf0e7cd7541110e6330ecb539441a2d53061f386ec7be6906dfde0de2598470
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA256:391221d291778f72b600104fb7907e8fb0ee61813ca5ab443bf0a0dcc3a1ce65
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1.diff.gz' libx11_1.8.13-1.diff.gz 76915 SHA256:571b7234db455a649a8ffe6599eaebb8f31e47528f21ec3caa2e255da75dd699
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
- `libxcb1-dev:amd64=1.17.0-2ubuntu1`

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

- `libxdmcp-dev:amd64=1:1.1.5-2`
- `libxdmcp6:amd64=1:1.1.5-2`

Licenses: (parsed from: `/usr/share/doc/libxdmcp-dev/copyright`, `/usr/share/doc/libxdmcp6/copyright`)

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

- `libxext-dev:amd64=2:1.3.4-1build3`
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
- `libxml2-dev:amd64=2.15.2+dfsg-0.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libxml2-16/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.15.2+dfsg-0.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg.orig.tar.xz' libxml2_2.15.2+dfsg.orig.tar.xz 2154608 SHA512:d7f79a6c9435477a6b8b85e7eab8d5c69b253e2a7fbec073418ecbbd721a2feb4ebf8e04bd21ccde499d3620238fb343789cacaa6b175d9ca64a031ae07be933
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.debian.tar.xz' libxml2_2.15.2+dfsg-0.1ubuntu0.1.debian.tar.xz 37664 SHA512:6a14210cfa15e187fcde9090a08bb7e91547d4dc1ac1e61f6455f6d0eb6ca3c52b79541db392fffda88a786886354cf356f748c49b904ddd8803b9eed20b8cb4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.1.dsc' libxml2_2.15.2+dfsg-0.1ubuntu0.1.dsc 3262 SHA512:988b6f5f97d8d8ed1ee55c92dc5d1b978dbd663e37655e1f29a4a50a6263e86a537dbec0edabf4964eaf212a262d4f7d49de358e1e69d063aa7fbddc6122e923
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

- `libxslt1-dev:amd64=1.1.45-0.1`
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

### `dpkg` source package: `libxt=1:1.2.1-1.3build1`

Binary Packages:

- `libxt-dev:amd64=1:1.2.1-1.3build1`
- `libxt6t64:amd64=1:1.2.1-1.3build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.2.1-1.3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz' libxt_1.2.1.orig.tar.gz 1024473 SHA256:6da1bfa9dd0ed87430a5ce95b129485086394df308998ebe34d98e378e3dfb33
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1.orig.tar.gz.asc' libxt_1.2.1.orig.tar.gz.asc 358 SHA256:da406cc94c25ca6773bb37c2055e2eb5665491f7ca6dfc9ea04f0f30ea3fd098
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.diff.gz' libxt_1.2.1-1.3build1.diff.gz 46528 SHA256:0f06ed1421b13a868e11aff64e54ab2b50c60ab8c46e729fada99ec9d7d5b04d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.2.1-1.3build1.dsc' libxt_1.2.1-1.3build1.dsc 2383 SHA256:84f556ef23caa97914ac7b10e2bade0dc81a017b169d72f438fd9d023a670d4e
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
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0.orig.tar.gz' linux_7.0.0.orig.tar.gz 254937830 SHA512:d7906686b560bf771c919278f44285e0d646baf20e7a794b17a1759b49c122d373bdfe2069fbe0baa5b57fe49d5b7eb534939cd3cce4ca71d975d1ed1551587a
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.diff.gz' linux_7.0.0-30.30.diff.gz 2015294 SHA512:3d24178c972124af3ac31b5a876668ba545cfff69bb3fcedbbf8157d30216ba7d42c5752d1a6caa2cad1e6264074b45b7010d21863614559422d235c1fc4613a
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-30.30.dsc' linux_7.0.0-30.30.dsc 7884 SHA512:63e23b31b4f749613f7ba3a8229540d5405eca3c0b7251950d7c0a8aa387aa6f011a145cc981d884ea1aa242d464f11909e42a417f518864fc18cc04c0ff3768
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

### `dpkg` source package: `lz4=1.10.0-8`

Binary Packages:

- `liblz4-1:amd64=1.10.0-8`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

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

### `dpkg` source package: `m4=1.4.21-1`

Binary Packages:

- `m4=1.4.21-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.21-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.dsc' m4_1.4.21-1.dsc 1783 SHA256:b2fcae1991d63b8cfd32f20937b0c2f956702e673b405f7c9fa46b8320b921ff
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz' m4_1.4.21.orig.tar.xz 2080016 SHA256:f25c6ab51548a73a75558742fb031e0625d6485fe5f9155949d6486a2408ab66
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21.orig.tar.xz.asc' m4_1.4.21.orig.tar.xz.asc 488 SHA256:e8c5fb8a54f98c9f9504423ce99279a4e4365e30010a67e13e099a3e8242b8f2
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.21-1.debian.tar.xz' m4_1.4.21-1.debian.tar.xz 17296 SHA256:000df03068f06b7a475b4c2652bbd73a54b5df371687567d19b8a3728de726cd
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
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2.orig.tar.gz' mercurial_7.2.orig.tar.gz 9244423 SHA256:a250227eba47c6ad5aa32b9a72281343762f5d274ff38c53c2f43df5c63af3ec
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2.orig.tar.gz.asc' mercurial_7.2.orig.tar.gz.asc 659 SHA256:d39f1ba5defb6b24305af2956361fbca6ace286085f223197b96710bdc2a3b73
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2-3build1.debian.tar.xz' mercurial_7.2-3build1.debian.tar.xz 54944 SHA256:4a4b16d050720b63fee028e1de88a9607a2684a6f94a32aa702dfddfd997f913
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_7.2-3build1.dsc' mercurial_7.2-3build1.dsc 2856 SHA256:684976f890aca7d0f89bd0f720b8f58257d2635062b50193a25d694064b250de
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

### `dpkg` source package: `mysql-8.4=8.4.10-0ubuntu0.26.04.1`

Binary Packages:

- `libmysqlclient-dev=8.4.10-0ubuntu0.26.04.1`
- `libmysqlclient24:amd64=8.4.10-0ubuntu0.26.04.1`

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
$ apt-get source -qq --print-uris mysql-8.4=8.4.10-0ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10.orig.tar.gz' mysql-8.4_8.4.10.orig.tar.gz 479076067 SHA512:0e85b84bee32414959755a1f59c997bc4a7c81fe3a12267a7963cd2c6607ebccfd49ab23c872a429a80e319c65ba92c104f0b4445494e90c4aacab32b6cc6d9e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10.orig.tar.gz.asc' mysql-8.4_8.4.10.orig.tar.gz.asc 833 SHA512:ac206858786943bbe32b9f07bd893ae8d5d4a7528039aa0f0f2b17a1cc01a791c9fcadc1ad0626f26951e59b57a87431c6cce91a0496b629b9b10e1a0261b2ee
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10-0ubuntu0.26.04.1.debian.tar.xz' mysql-8.4_8.4.10-0ubuntu0.26.04.1.debian.tar.xz 135996 SHA512:dd03a90f78f60b324f6581058951b5054e98248ce992bdce85dbbc980285008320877a1a47028e513cf03223a5495152f1ae7d2fe67424af22a9ed1a4c04db8e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-8.4/mysql-8.4_8.4.10-0ubuntu0.26.04.1.dsc' mysql-8.4_8.4.10-0ubuntu0.26.04.1.dsc 3806 SHA512:080c9dfe7949344ab922089a79aaeec0e03b0a169a1f84a1252bd782ff9b620fb98b9dd67809c98fd92254a0a38e6c9b26b7e5f2211d02a8e72de84b49b68125
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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.tar.xz' mysql-defaults_1.1.1ubuntu2.tar.xz 7628 SHA256:df9cf9688888108320dda922aa598fadfca98f687c5353e78ec5e573c03fbc11
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.1.1ubuntu2.dsc' mysql-defaults_1.1.1ubuntu2.dsc 2309 SHA256:efe3d252d4481270f485ac155b0312bfab41b43f589991db8fe381caecc787ac
```

### `dpkg` source package: `ncurses=6.6+20251231-1`

Binary Packages:

- `libncurses-dev:amd64=6.6+20251231-1`
- `libncurses6:amd64=6.6+20251231-1`
- `libncursesw6:amd64=6.6+20251231-1`
- `libtinfo6:amd64=6.6+20251231-1`
- `ncurses-base=6.6+20251231-1`
- `ncurses-bin=6.6+20251231-1`

Licenses: (parsed from: `/usr/share/doc/libncurses-dev/copyright`, `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.dsc' nettle_3.10.2-1.dsc 2297 SHA256:e2f713973191da5d021759173f2176c21abb5f9420df45cd93a8ff058d62493f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz' nettle_3.10.2.orig.tar.gz 2644644 SHA256:fe9ff51cb1f2abb5e65a6b8c10a92da0ab5ab6eaf26e7fc2b675c45f1fb519b5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2.orig.tar.gz.asc' nettle_3.10.2.orig.tar.gz.asc 573 SHA256:3496de6ba5685733aaab2e4e611ea5860fdd76964c56c995f5a0b4c2ec5084ae
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.10.2-1.debian.tar.xz' nettle_3.10.2-1.debian.tar.xz 25052 SHA256:6f5be658d8bfbc5ffd3c75bd15b8a40fd51c5dd4ae10519d7835be135944f0a7
```

### `dpkg` source package: `nghttp2=1.68.0-2ubuntu0.2`

Binary Packages:

- `libnghttp2-14:amd64=1.68.0-2ubuntu0.2`
- `libnghttp2-dev:amd64=1.68.0-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`, `/usr/share/doc/libnghttp2-dev/copyright`)

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

### `dpkg` source package: `openexr=3.1.13-2build1`

Binary Packages:

- `libopenexr-3-1-30:amd64=3.1.13-2build1`
- `libopenexr-dev=3.1.13-2build1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-3-1-30/copyright`, `/usr/share/doc/libopenexr-dev/copyright`)

- `BSD-3-clause`
- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=3.1.13-2build1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13.orig.tar.gz' openexr_3.1.13.orig.tar.gz 20542408 SHA256:26d265d8cf8df4dad115b066ba209118ca8832cda076ec704ce1a57f827c75c6
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13-2build1.debian.tar.xz' openexr_3.1.13-2build1.debian.tar.xz 19348 SHA256:da9265fd3973e9a68493090cb6c7c7b1dc2af4a5d41f952391733d482e0c3ca5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openexr/openexr_3.1.13-2build1.dsc' openexr_3.1.13-2build1.dsc 2317 SHA256:1b424ad120c1fab9a1f758e649c35ff4777a68e8f66ac3abb1e8128fdc66124a
```

### `dpkg` source package: `openjpeg2=2.5.4-1ubuntu0.1`

Binary Packages:

- `libopenjp2-7:amd64=2.5.4-1ubuntu0.1`
- `libopenjp2-7-dev:amd64=2.5.4-1ubuntu0.1`

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
$ apt-get source -qq --print-uris openjpeg2=2.5.4-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4.orig.tar.xz' openjpeg2_2.5.4.orig.tar.xz 1395184 SHA512:343594a672429833389e2826456dd9800bb0118618ec9e84ea10f3846736bb32b46baa95a702e69b84c93cff70ddc7fa1baec78ae6a801c01b9cc723f072233b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1ubuntu0.1.debian.tar.xz' openjpeg2_2.5.4-1ubuntu0.1.debian.tar.xz 16224 SHA512:c608f06a67b2440b133a6aef3aed7bd797ff905faa0f26efbbdc48a9058b77f4f0187918518925706cc6509ea28d30d76ac1c89bdae7cbf5cc14d44d4e1820c8
'http://archive.ubuntu.com/ubuntu/pool/main/o/openjpeg2/openjpeg2_2.5.4-1ubuntu0.1.dsc' openjpeg2_2.5.4-1ubuntu0.1.dsc 2713 SHA512:d32b6f85f9f9739dfeb1cd916ce2067e7ff964bfa67008bb41c41287cd602f8aa1788ff0dc646bf6f9911f21359187ee4ab57b7f92d4106a353f39be8732979f
```

### `dpkg` source package: `openldap=2.6.10+dfsg-1ubuntu5`

Binary Packages:

- `libldap-common=2.6.10+dfsg-1ubuntu5`
- `libldap-dev:amd64=2.6.10+dfsg-1ubuntu5`
- `libldap2:amd64=2.6.10+dfsg-1ubuntu5`

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
$ apt-get source -qq --print-uris openldap=2.6.10+dfsg-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg.orig.tar.xz' openldap_2.6.10+dfsg.orig.tar.xz 3754560 SHA256:e871102bda1e42155fd4d6be4825a297e1c593cb0907b84fc7dde888dc847877
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.debian.tar.xz' openldap_2.6.10+dfsg-1ubuntu5.debian.tar.xz 189056 SHA256:73927f8ff5e24076cbee78701c2ed6e5d5060b85c5f79f0341386c2790624c88
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.6.10%2bdfsg-1ubuntu5.dsc' openldap_2.6.10+dfsg-1ubuntu5.dsc 3426 SHA256:88dcaf31dac1a493430427d7d9ff2cb5c4138b1e0ab6c53c5be7c1d9c87f403c
```

### `dpkg` source package: `openssh=1:10.2p1-2ubuntu3.5`

Binary Packages:

- `openssh-client=1:10.2p1-2ubuntu3.5`

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
$ apt-get source -qq --print-uris openssh=1:10.2p1-2ubuntu3.5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1.orig.tar.gz' openssh_10.2p1.orig.tar.gz 1974519 SHA512:66f3dd646179e71aaf41c33b6f14a207dc873d71d24f11c130a89dee317ee45398b818e5b94887b5913240964a38630d7bca3e481e0f1eff2e41d9e1cfdbdfc5
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1-2ubuntu3.5.debian.tar.xz' openssh_10.2p1-2ubuntu3.5.debian.tar.xz 224828 SHA512:f21564a11fd58ad95032e6d3a40444f2860672eb244981d812c7563577543f4915c6125fd5f4dffb266f64c06845b3479e026bd2fd426339326ee224e9308ca0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_10.2p1-2ubuntu3.5.dsc' openssh_10.2p1-2ubuntu3.5.dsc 3328 SHA512:3a1b4eaf110844e665f5723d93560473f47b5355060bbd5ff16cb134924883e1cb452866b28e3909f44ebbadc5db5e6941dad835ad2a9dc6e198799ef63f6b0a
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


### `dpkg` source package: `p11-kit=0.26.2-2`

Binary Packages:

- `libp11-kit-dev:amd64=0.26.2-2`
- `libp11-kit0:amd64=0.26.2-2`

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

Source:

```console
$ apt-get source -qq --print-uris pam=1.7.0-5ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA512:ab5cadb0eb5e95e36146fdbbc77eef4e5e0f38aeee4e819b080a1316f69969c3c33e4a2daf3246ded4c2e58ce517d7f1acb0d8de02a4898ff753f4c3aeec51cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA512:573bef1d63c0ce4efb5d1efd71a582f6ff679f2e278c326f66e142175cf67e42404453d41b92c5ce201b7d41db7b0617695f0d0972a812f0ab19553dec37192e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.1.debian.tar.xz' pam_1.7.0-5ubuntu3.1.debian.tar.xz 195564 SHA512:7ed3d2ab8a17940da7af912fed3b3feb2df7acf00e5106b51f800805911466fd36e145e6c557a11f9d91bf88845b85c6e461a08c963c6e99ceb9f62b45458ac0
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.1.dsc' pam_1.7.0-5ubuntu3.1.dsc 2934 SHA512:fbfa3baae8b3e9096a48bba9f092e58102c794cdd88d5df63dadc4b5029eec96eada3a404ac78dd105430a2294e2a2b0958ce7f1d718fdcc2d14c72347cef5e3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.dsc' pkgconf_2.5.1-4.dsc 1772 SHA256:8c5d2e4fed77764804cd20309bb9f8589bb39b52d215e3318e2e2c0dffd7982f
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1.orig.tar.xz' pkgconf_2.5.1.orig.tar.xz 328064 SHA256:cd05c9589b9f86ecf044c10a2269822bc9eb001eced2582cfffd658b0a50c243
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkgconf/pkgconf_2.5.1-4.debian.tar.xz' pkgconf_2.5.1-4.debian.tar.xz 11116 SHA256:8bcd8fcbcfaceeb7ae2519247dfab0b4f422b56782b48060ec39085abc93eeef
```

### `dpkg` source package: `postgresql-18=18.4-0ubuntu0.26.04.1`

Binary Packages:

- `libpq-dev=18.4-0ubuntu0.26.04.1`
- `libpq5:amd64=18.4-0ubuntu0.26.04.1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.tar.gz' python3-defaults_3.14.3-0ubuntu2.tar.gz 147194 SHA256:8d2534456e1b1abb062222a11700b4a6a9a16d2980f803ddac1a6abaca9a3d83
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.14.3-0ubuntu2.dsc' python3-defaults_3.14.3-0ubuntu2.dsc 3081 SHA256:9049cdf51732dd772dd84eb6b632bef12fee4328f6329407df514121386818ad
```

### `dpkg` source package: `python3.14=3.14.4-1ubuntu0.1`

Binary Packages:

- `libpython3.14-minimal:amd64=3.14.4-1ubuntu0.1`
- `libpython3.14-stdlib:amd64=3.14.4-1ubuntu0.1`
- `python3.14=3.14.4-1ubuntu0.1`
- `python3.14-minimal=3.14.4-1ubuntu0.1`

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
$ apt-get source -qq --print-uris python3.14=3.14.4-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4.orig.tar.xz' python3.14_3.14.4.orig.tar.xz 23855332 SHA512:89a7f8b8a31f48d150badb4751df137d47d9014c9c422649a1a55aef5618aa7f0259dd18c151e6804fa8312c6a21544332a9f630ee81150dc00505637e62bb8c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.debian.tar.xz' python3.14_3.14.4-1ubuntu0.1.debian.tar.xz 237260 SHA512:6c64ab7d1c35046d7d2bbb447d0ab020ebc3d7345939f2b2760357f8e70ef3a06c5b038227c3371af70d126676a067d998d6adfbddbc1daa47d65f1bc1356a13
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.14/python3.14_3.14.4-1ubuntu0.1.dsc' python3.14_3.14.4-1ubuntu0.1.dsc 4189 SHA512:85aeeb6ad31d1706e851f96b74de676cf4b954cc38c3ed80f41b04a07cbb0d5459bd9aa5df6341bbbc1d1d7be1abbc1ac4cdc09b4b71aa4eb788feacdc8b1359
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
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.dsc' readline_8.3-4.dsc 2957 SHA256:fce5107e62911aa84c18d6049469cb34c31db7fd35ab9f8182e4da7fb6959527
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3.orig.tar.gz' readline_8.3.orig.tar.gz 3419642 SHA256:fe5383204467828cd495ee8d1d3c037a7eba1389c22bc6a041f627976f9061cc
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_8.3-4.debian.tar.xz' readline_8.3-4.debian.tar.xz 28644 SHA256:506ec377afd3688752554271e6d9a69c12a4d19ec1c002116fc70967ca6a5bdf
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

- `librtmp-dev:amd64=2.4+20151223.gitfa8646d.1-3`
- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-3`

Licenses: (parsed from: `/usr/share/doc/librtmp-dev/copyright`, `/usr/share/doc/librtmp1/copyright`)

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

### `dpkg` source package: `rust-sequoia-sq=1.3.1-6`

Binary Packages:

- `sq=1.3.1-6`

Licenses: (parsed from: `/usr/share/doc/sq/copyright`)

- `GPL-2`
- `GPL-2.0-or-later`
- `LGPL-2`
- `LGPL-2.0-or-later`

Source:

```console
$ apt-get source -qq --print-uris rust-sequoia-sq=1.3.1-6
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-6.dsc' rust-sequoia-sq_1.3.1-6.dsc 4451 SHA256:6e4d681b6eeb3392e051b47e12575129f095c93b7d914f1bf535bf2678fbb6ec
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1.orig.tar.gz' rust-sequoia-sq_1.3.1.orig.tar.gz 740320 SHA256:5c04b662da1c207e79beaeff6e5ab2d713ab10c1263f64c367f8489aac815705
'http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-sequoia-sq/rust-sequoia-sq_1.3.1-6.debian.tar.xz' rust-sequoia-sq_1.3.1-6.debian.tar.xz 5480 SHA256:769cbf93d0af13390c70bd8edfdd0d4625e68a4ec3f18623b074847049a19a13
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

### `dpkg` source package: `serf=1.3.10-3ubuntu2`

Binary Packages:

- `libserf-1-1:amd64=1.3.10-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5.orig.tar.gz' subversion_1.14.5.orig.tar.gz 11645728 SHA256:cd143fe8fdb1cd506c438eef1c772a2e87e1519e6b0be3fcd54a8c59e9022390
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5.orig.tar.gz.asc' subversion_1.14.5.orig.tar.gz.asc 2382 SHA256:91384669ad9125c6919b0b2ab0c345e6de3cd0f89affe04ab66dfe9c5e19d673
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5-6build1.debian.tar.xz' subversion_1.14.5-6build1.debian.tar.xz 300712 SHA256:d80c2a40ab8000ec9453d342b7f184937b5896f12425f9e5407816956c459171
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.14.5-6build1.dsc' subversion_1.14.5-6build1.dsc 3720 SHA256:c185b30768ab7c8e671d765d6fd190c1f25f3eccf661db24f65c84670d4330d2
```

### `dpkg` source package: `sysprof=50.0-1`

Binary Packages:

- `libsysprof-capture-4-dev:amd64=50.0-1`

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
$ apt-get source -qq --print-uris sysprof=50.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0-1.dsc' sysprof_50.0-1.dsc 3561 SHA256:a29097ffa62856c8b1058f0adbe38825f473f250628e3582e17040a725f4d598
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0.orig.tar.xz' sysprof_50.0.orig.tar.xz 1289588 SHA256:aace44e90e90f6c34bb2fbec8ccb47b8f81103080978d65759287843c329d53a
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysprof/sysprof_50.0-1.debian.tar.xz' sysprof_50.0-1.debian.tar.xz 16956 SHA256:9c169a74720a9d48fae705cefcc7baef42ede0dc7044073fce510833dabc18ca
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

- `libtiff-dev:amd64=4.7.0-3ubuntu4`
- `libtiff6:amd64=4.7.0-3ubuntu4`
- `libtiffxx6:amd64=4.7.0-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff6/copyright`, `/usr/share/doc/libtiffxx6/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.7.0-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0.orig.tar.bz2' tiff_4.7.0.orig.tar.bz2 2111254 SHA256:2b8b5c4e79cb2a4651796602e45d6179b7f18bc283feab417b8e881ef7e81862
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.debian.tar.xz' tiff_4.7.0-3ubuntu4.debian.tar.xz 27680 SHA256:11ccad8fdc7a0113357c926d1c03d36e2ffcbb226e35a03bd8a27adc75a442f0
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.7.0-3ubuntu4.dsc' tiff_4.7.0-3ubuntu4.dsc 2368 SHA256:7f2fb0aaa616ca4362119acaa7798d053617aaf03aef3c9757aac70d0978f8d8
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

### `dpkg` source package: `ucf=3.0052ubuntu1`

Binary Packages:

- `ucf=3.0052ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0052ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0052ubuntu1.tar.xz' ucf_3.0052ubuntu1.tar.xz 71700 SHA256:19318c7516ead8d43b4c6ed8b61c1654db4f9d342d1144a14f671219f9d1d45a
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0052ubuntu1.dsc' ucf_3.0052ubuntu1.dsc 1619 SHA256:6ecac6dbf6cfae9b8329a6dcfd5bf9543477ed169e18d9a671e16d1612910eff
```

### `dpkg` source package: `unbound=1.24.2-1ubuntu2.1`

Binary Packages:

- `libunbound8:amd64=1.24.2-1ubuntu2.1`

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
$ apt-get source -qq --print-uris unbound=1.24.2-1ubuntu2.1
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2.orig.tar.gz' unbound_1.24.2.orig.tar.gz 6905018 SHA512:655d63ec5305323e84d82691425d74d98c332d0028517bd729d191e5f968ce9481b49ec7447d4c4906dce7997a998a115db36e911a59d2d877da5840c2080261
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2-1ubuntu2.1.debian.tar.xz' unbound_1.24.2-1ubuntu2.1.debian.tar.xz 45564 SHA512:8cf71f548cc249bc431af02b5a0caad4ecaef7cf2ad6b0f2b11eb4e2cb1f5863a2451501ab0d4b8f6fbdbc943082d3ca32e319c83e47aa1e1165f83e5f2ccc4a
'http://security.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.24.2-1ubuntu2.1.dsc' unbound_1.24.2-1ubuntu2.1.dsc 3171 SHA512:2cfec04923a6ed767246fa1cbfb594f12a2db557bca3a1a16dd382c7ff5b03cea07f1dd9b3db489d848fb5952783baa179fbc1443877c4473c00b094a7339222
```

### `dpkg` source package: `unzip=6.0-29ubuntu1`

Binary Packages:

- `unzip=6.0-29ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-29ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-29ubuntu1.debian.tar.xz' unzip_6.0-29ubuntu1.debian.tar.xz 48040 SHA256:dfb7ec244ef99e7d60f30bc365dbec9abd22121615d467340380dc35982dfd6a
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-29ubuntu1.dsc' unzip_6.0-29ubuntu1.dsc 1987 SHA256:4a15fca196a73c0fccb7653bbdcb020d277cf5ecd7b75a550705ab08a90b7f13
```

### `dpkg` source package: `utf8proc=2.10.0-2`

Binary Packages:

- `libutf8proc3:amd64=2.10.0-2`

Licenses: (parsed from: `/usr/share/doc/libutf8proc3/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.10.0-2
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.10.0-2.dsc' utf8proc_2.10.0-2.dsc 1404 SHA256:f7d091e401488ea559d9fcce0e1c5dc5a03e69c0734729855fcd9579b460b56a
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.10.0.orig.tar.gz' utf8proc_2.10.0.orig.tar.gz 199045 SHA256:6f4f1b639daa6dca9f80bc5db1233e9cbaa31a67790887106160b33ef743f136
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.10.0-2.debian.tar.xz' utf8proc_2.10.0-2.debian.tar.xz 6088 SHA256:960ae565fb31c9e297d9bf4fa9cb732aa46c679ea7ecde2b0ce31df8fa48c9fe
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
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA256:3330d873f0fceb5560b89a7dc14e4f3288bbd880e96903ed9b50ec2b5799e58b
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.debian.tar.xz 116776 SHA256:d6a1d3b69f716f5aed7366d12d903dec20e0f98744e87cb41488944cb7bb4247
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.dsc' util-linux_2.41.3-3ubuntu2.dsc 5439 SHA256:4b87e555cfa77a3301e0fc92b77f2f2fc119d7ff27b229af259793103e7674e2
```

### `dpkg` source package: `wget=1.25.0-2ubuntu4.3`

Binary Packages:

- `wget=1.25.0-2ubuntu4.3`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1.1build1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1.1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1.1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1build1.diff.gz' xorg-sgml-doctools_1.11-1.1build1.diff.gz 3420 SHA256:190365efab38ac0376f5bbd92dcd088d58ef694fc264b50f2fb4fad8db5a4a0b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.1build1.dsc' xorg-sgml-doctools_1.11-1.1build1.dsc 2011 SHA256:3ea355f7a9ee1a3f8329e163cccc6abaf2cc0610606b49824ea6c50e572d9bed
```

### `dpkg` source package: `xorg=1:7.7+26ubuntu1`

Binary Packages:

- `x11-common=1:7.7+26ubuntu1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+26ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.tar.xz' xorg_7.7+26ubuntu1.tar.xz 241928 SHA256:d717a18530248d8d90e1ac850a8d39d2e1ba6eded0cc1288f74fa606ffd929d1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg/xorg_7.7%2b26ubuntu1.dsc' xorg_7.7+26ubuntu1.dsc 2047 SHA256:988f673a4ca56463796a3b31ec9a3c11b9eeae1c38a1e31d51f171168c4d3abe
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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.dsc' xorgproto_2025.1-1.dsc 3336 SHA256:4cca414a1b9ba8d6e04c2ca8182b0157a0667de0387057e62dd847f57b7f1fd2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz' xorgproto_2025.1.orig.tar.gz 1127613 SHA256:d6f89f65bafb8c9b735e0515882b8a1511e8e864dde5e9513e191629369f2256
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1.orig.tar.gz.asc' xorgproto_2025.1.orig.tar.gz.asc 195 SHA256:4eabb8638b2c8f185b61317413276cc60a005d1d422f25b663b11bea7fd48a79
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorgproto/xorgproto_2025.1-1.diff.gz' xorgproto_2025.1-1.diff.gz 25174 SHA256:02d5e529287954c172727ed83b79c2a8537c36ac520cd7f48fb0d4bd57a0186f
```

### `dpkg` source package: `xtrans=1.6.0-1build1`

Binary Packages:

- `xtrans-dev=1.6.0-1build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.6.0-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0.orig.tar.gz' xtrans_1.6.0.orig.tar.gz 239113 SHA256:936b74c60b19c317c3f3cb1b114575032528dbdaf428740483200ea874c2ca0a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.diff.gz' xtrans_1.6.0-1build1.diff.gz 18591 SHA256:e38937ed43fb46fe2598e6553659b00dcbe93a1c4b24d4cab10c33e875cc0cb3
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.6.0-1build1.dsc' xtrans_1.6.0-1build1.dsc 1907 SHA256:7d2baf697af954903c159d87d260e4648164f65437832b8dd913890a52977dfd
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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3.orig.tar.gz' xxhash_0.8.3.orig.tar.gz 1147630 SHA256:aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.debian.tar.xz' xxhash_0.8.3-2build1.debian.tar.xz 5224 SHA256:98c020a7627a93090c72dece774b1fff0cee76e4f59a65dbd1facb266431fcc5
'http://archive.ubuntu.com/ubuntu/pool/main/x/xxhash/xxhash_0.8.3-2build1.dsc' xxhash_0.8.3-2build1.dsc 1968 SHA256:2428b6123da0fa2e2b948474faa829657dc682d741d10a341c9c348c09ea720a
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
