# `xwiki:18`

## Docker Metadata

- Image ID: `sha256:fee8c26f25597629fdc0c175006dce98a9dc61a377606fa1a7dce951627eccb4`
- Created: `2026-10-29T21:10:31.688048149Z`
- Virtual Size: ~ 1.62 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["xwiki"]`
- Environment:
  - `PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_HOME=/opt/java/openjdk`
  - `LANG=en_US.UTF-8`
  - `LANGUAGE=en_US:en`
  - `LC_ALL=en_US.UTF-8`
  - `JAVA_VERSION=jdk-21.0.13+9`
  - `CATALINA_HOME=/usr/local/tomcat`
  - `TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib`
  - `LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib`
  - `TOMCAT_MAJOR=10`
  - `TOMCAT_VERSION=10.1.61`
  - `TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb`
  - `CURL_OPTIONS=-fSL --retry 5 --retry-all-errors --retry-delay 5 --connect-timeout 30`
  - `LIBREOFFICE_VERSION=26.2.6`
  - `LIBREOFFICE_SHA256_AMD64=fd0e8f8f2408dd2e5b90286e60f3f97cf566ba441cd48cfc5bcc68067303e0bc`
  - `LIBREOFFICE_SHA256_ARM64=f8e8b1d30abde0d530d727ce1b26909ccbedc3d76bcf75d93b3dd5fcd5b8d278`
  - `LIBREOFFICE_URL_PREFIX=https://download.documentfoundation.org/libreoffice/stable/26.2.6/deb`
  - `XWIKI_VERSION=18.9.0`
  - `XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/18.9.0`
  - `XWIKI_DOWNLOAD_SHA256=e15f79ad379cca52cdeb22035c2fd4d04aad8b18acefbe429e770943bde2c823`
  - `MYSQL_JDBC_VERSION=26.7.0`
  - `MYSQL_JDBC_SHA256=69084713593a4aa8d07c383619b9639276f08bccf8faf1c562178147d389b1e1`
  - `MYSQL_JDBC_PREFIX=https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/26.7.0`
  - `MYSQL_JDBC_ARTIFACT=mysql-connector-j-26.7.0.jar`
  - `MYSQL_JDBC_TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/mysql-connector-j-26.7.0.jar`
- Labels:
  - `org.opencontainers.image.authors=XWiki Development Team <committers@xwiki.org>`
  - `org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00`
  - `org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.
`
  - `org.opencontainers.image.documentation=https://hub.docker.com/_/xwiki`
  - `org.opencontainers.image.licenses=LGPL-2.1`
  - `org.opencontainers.image.source=https://github.com/xwiki/xwiki-docker.git`
  - `org.opencontainers.image.title=ubuntu`
  - `org.opencontainers.image.url=https://hub.docker.com/_/xwiki`
  - `org.opencontainers.image.vendor=xwiki.org`
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

### `dpkg` source package: `attr=1:2.5.2-4ubuntu0.1`

Binary Packages:

- `libattr1:amd64=1:2.5.2-4ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.5.2-4ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz' attr_2.5.2.orig.tar.xz 334180 SHA512:f587ea544effb7cfed63b3027bf14baba2c2dbe3a9b6c0c45fc559f7e8cb477b3e9a4a826eae30f929409468c50d11f3e7dc6d2500f41e1af8662a7e96a30ef3
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2.orig.tar.xz.asc' attr_2.5.2.orig.tar.xz.asc 833 SHA512:16362013313d055dec307bcf755a9846f5153a78309a499f8cac4ff57a2154de2bc8f3b1400e81dba7a0bf0c67aa02a5d464898ed6e4aa721b64ec95fd313968
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4ubuntu0.1.debian.tar.xz' attr_2.5.2-4ubuntu0.1.debian.tar.xz 45496 SHA512:5b9a232df566bea16e0b5e3ea4cbafeeb9a54b5629c20aabdd866d83183a918ef3e87def4a487313d78639641da3587da0d4db5e89ebcf9895575f11f2f7fceb
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.5.2-4ubuntu0.1.dsc' attr_2.5.2-4ubuntu0.1.dsc 2630 SHA512:90825037a582dee85943e8d383306d6412260f9f0e2ca88acdf44eb01e2bff5e8fe863f5a6eaeb1eeafecc0902a091d27013890b8ee92577bf201b4658a71554
```

### `dpkg` source package: `audit=1:4.1.2-1ubuntu0.1`

Binary Packages:

- `libaudit-common=1:4.1.2-1ubuntu0.1`
- `libaudit1:amd64=1:4.1.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:4.1.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2.orig.tar.gz' audit_4.1.2.orig.tar.gz 656095 SHA512:a47fec1041e11a76ad57b57bcf6e9b454188d95ec26cabf15e92e114d46c7c8f09ddb251d5aebef8bc7faacc6ccffe44c73543d8234af237548b4ad89a408fc3
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1ubuntu0.1.debian.tar.xz' audit_4.1.2-1ubuntu0.1.debian.tar.xz 20500 SHA512:2f8198526ed8c4330bd7568e59467dda88c2d1dd3824b15ef64e4a1764ba785e1c1aa0cb574756cfd3e2766b5ff47aa74a9c17d1f1f039caf026b842f69ead24
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_4.1.2-1ubuntu0.1.dsc' audit_4.1.2-1ubuntu0.1.dsc 3032 SHA512:f376230aa543b89c0c4ceae06625005ad3be522b73cf7403304e8e4503b315058d1ff33e4591f4eaa115791a461da00d5470d07d437d7acccc8be5c9536a4059
```

### `dpkg` source package: `avahi=0.8-18ubuntu1.1`

Binary Packages:

- `libavahi-client3:amd64=0.8-18ubuntu1.1`
- `libavahi-common-data:amd64=0.8-18ubuntu1.1`
- `libavahi-common3:amd64=0.8-18ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.8-18ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8.orig.tar.gz' avahi_0.8.orig.tar.gz 1591458 SHA512:c6ba76feb6e92f70289f94b3bf12e5f5c66c11628ce0aeb3cadfb72c13a5d1a9bd56d71bdf3072627a76cd103b9b056d9131aa49ffe11fa334c24ab3b596c7de
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-18ubuntu1.1.debian.tar.xz' avahi_0.8-18ubuntu1.1.debian.tar.xz 65132 SHA512:1418fb6a0f665a63cef26805523bfb90fbf241d3f59cf57413070e70c14fa591000d77696ab74fb94bee9fab913f87d42f5064a90540ac9766dbf5d2e8054dc7
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.8-18ubuntu1.1.dsc' avahi_0.8-18ubuntu1.1.dsc 4427 SHA512:1d080854c1d93888f0cc08ed965e2217e0641512aec8e93763506466aa89437bf1b5381643ad77db3e1d19a611c5e80b011fe37dde62f59fd0ceeeb30a5c4605
```

### `dpkg` source package: `base-files=14ubuntu6.2`

Binary Packages:

- `base-files=14ubuntu6.2`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`
- `GPL-2+`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris base-files=14ubuntu6.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_14ubuntu6.2.tar.xz' base-files_14ubuntu6.2.tar.xz 97908 SHA512:d067fc03743277d6202c6750dc8279cc84c084f2afa29075b6d14c5fedb0301518a3a7bfd019254c723fb6f3a6fd32653431de28b2223d52c65ee6d4dde53514
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_14ubuntu6.2.dsc' base-files_14ubuntu6.2.dsc 1735 SHA512:f3d82eae834c7c02bc01fd2636944fbab6349e1921dd1effcefccdf046c40d9eb58ceced24fe599b9c5673b28100dbd19fe37558192994017b3fc33bd2d5e52d
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

### `dpkg` source package: `brotli=1.2.0-3ubuntu0.1`

Binary Packages:

- `libbrotli1:amd64=1.2.0-3ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.2.0-3ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0.orig.tar.gz' brotli_1.2.0.orig.tar.gz 646398 SHA512:ceb2a1a5661296885a2f67bd2d6b02ad467cdc5fb39a82ec8e5fde26633ef4df354ebf7491c8442b090cdd38dc607857c4f9bee8aebb8ff63d44ae7322faceae
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3ubuntu0.1.debian.tar.xz' brotli_1.2.0-3ubuntu0.1.debian.tar.xz 8216 SHA512:2269061c9a94017a257eccef8cf7e719040a90048e21a5902133264690045ae17aea75f907a4f22456e75ba53771611e7620d56944f44f76d9760693a3ccb9a9
'http://archive.ubuntu.com/ubuntu/pool/main/b/brotli/brotli_1.2.0-3ubuntu0.1.dsc' brotli_1.2.0-3ubuntu0.1.dsc 2397 SHA512:919611222c34cd4a94702d2fc542e0a6a0a6527c5721b49b5de7cb14a1b7775902bab6d29c391b4314876eb0cfc4b23fb3fadc5f320a779812c2ad1acd9f0cbb
```

### `dpkg` source package: `bzip2=1.0.8-6ubuntu0.1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.8-6ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-6ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA512:083f5e675d73f3233c7930ebe20425a533feedeaaa9d8cc86831312a6581cefbe6ed0d08d2fa89be81082f2a5abdabca8b3c080bf97218a1bd59dc118a30b9f3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6ubuntu0.1.debian.tar.bz2' bzip2_1.0.8-6ubuntu0.1.debian.tar.bz2 27767 SHA512:549ca1aa7890b5f62436e4aad3d59218d4c7d282a267ebe0cdac0115e77ab530589619759581ce6695f30f3929804d3dc17959648f16eed7fb70a87f489c0d13
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.8-6ubuntu0.1.dsc' bzip2_1.0.8-6ubuntu0.1.dsc 1691 SHA512:5e52a7b104a5c4267807bcf811bb94862d25faed66398bb03190ca09be6210ae5475bce15c5fa585e20503597aad0bfd6d3f5150456eb8e2dd52bd78bcc5e2ac
```

### `dpkg` source package: `ca-certificates=20260816ubuntu0.26.04.1`

Binary Packages:

- `ca-certificates=20260816ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20260816ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260816ubuntu0.26.04.1.tar.xz' ca-certificates_20260816ubuntu0.26.04.1.tar.xz 273980 SHA512:1ee2eea0ffc180bc7a42385b37d9c77845cd173d3f3b4a91023a5c82604b995f66af70a113d169d8d94ecebc2a7723d9cd42883bdc716d111b193b90af61a9a9
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20260816ubuntu0.26.04.1.dsc' ca-certificates_20260816ubuntu0.26.04.1.dsc 1876 SHA512:4d25cab4faffb760e60dd1dfbe56b1d2471f56a6580a22df33d713593094bc1cb9ac4fd24a9afa41a95f0b628fd64433dd81a41cdbbedc6555afe41458bf23a2
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

### `dpkg` source package: `coreutils=9.7-3ubuntu2.1`

Binary Packages:

- `gnu-coreutils=9.7-3ubuntu2.1`

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


### `dpkg` source package: `cups=2.4.16-1ubuntu1.3`

Binary Packages:

- `libcups2t64:amd64=2.4.16-1ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/libcups2t64/copyright`)

- `Apache-2.0`
- `Apache-2.0-with-GPL2-LGPL2-Exception`
- `BSD-2-Clause`
- `BSD-2-clause`
- `FSFUL`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.4.16-1ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16.orig.tar.gz' cups_2.4.16.orig.tar.gz 8159166 SHA512:ee0d2afdba7b713c8249912dd738c4fa87efb6f7cdb0a48a48be299d03ae4b1a02773418d6ffc4f7c5731bbae2c859bcc39695f9b93cc422ec6124b7ba179734
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16.orig.tar.gz.asc' cups_2.4.16.orig.tar.gz.asc 228 SHA512:79e6b97d30822e55d75d52fc19aa24a7a3c6f8ed3703c2ebb8447e02d1e3892aa97416687f47451d5db1c2c4a49a3b728d5173fa55ed765b91fc8a1930a83c8d
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16-1ubuntu1.3.debian.tar.xz' cups_2.4.16-1ubuntu1.3.debian.tar.xz 415068 SHA512:8f1a5ab0115a7f9d78ad6a1046abeb86c511c147afd9849d3a029c55fee01f49bed0aed52b97a18731d074de4dde93418a776c859ce5f2a84da4409df2481378
'http://archive.ubuntu.com/ubuntu/pool/main/c/cups/cups_2.4.16-1ubuntu1.3.dsc' cups_2.4.16-1ubuntu1.3.dsc 3447 SHA512:9d342c88290a9717a3c04e9e89bef066049518927a75efbadcb1e428efe690603e99b409ef004a26e5876526736590d86468ace74e7daa50b932e56b1132f784
```

### `dpkg` source package: `curl=8.18.0-1ubuntu2.8`

Binary Packages:

- `curl=8.18.0-1ubuntu2.8`
- `libcurl4t64:amd64=8.18.0-1ubuntu2.8`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl4t64/copyright`)

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
$ apt-get source -qq --print-uris curl=8.18.0-1ubuntu2.8
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.18.0.orig.tar.gz' curl_8.18.0.orig.tar.gz 4182005 SHA512:84f193f28369ccb7fba0d8933cfc24f5fbb282b046e7e8c2c1a0da35db8ec13d17e6407c240ce3a12cf4dccac62e5919bd98f3add77065408c6259cfe1071575
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.18.0.orig.tar.gz.asc' curl_8.18.0.orig.tar.gz.asc 488 SHA512:fd31f4ff1dcb6c13f200cc67639b3760e6c47bead73f53f8700d3387792b57c8abe60e23f27d15d3ff9197490aa549e5c9910b271294cc3f75f4b37dc3c9af0c
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.18.0-1ubuntu2.8.debian.tar.xz' curl_8.18.0-1ubuntu2.8.debian.tar.xz 112048 SHA512:5aad657d277992a5f5a8c51858da0d5cb03b14650747e93dfebcb490c70c84c4e8e96864383a6f24cb5b946d1c73c60580cd7384d3b39459f17563390cb66334
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_8.18.0-1ubuntu2.8.dsc' curl_8.18.0-1ubuntu2.8.dsc 3270 SHA512:6211ab001fc394e7903b0932fe00916e2ffbf802f1df9c94378d4b819b702ed04d24a97b02aab1fe6b22a18ae81851e41ce60e3c85a34aa1f5c5156587c289f8
```

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

### `dpkg` source package: `dbus-glib=0.114-2`

Binary Packages:

- `libdbus-glib-1-2:amd64=0.114-2`

Licenses: (parsed from: `/usr/share/doc/libdbus-glib-1-2/copyright`)

- `AFL-2.1`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dbus-glib=0.114-2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-glib/dbus-glib_0.114-2.dsc' dbus-glib_0.114-2.dsc 2770 SHA256:32c5b7b4d9b7d51fade57f46316a73073de1cb09fb29a7ccbdb7fb5de4c05e0d
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-glib/dbus-glib_0.114.orig.tar.gz' dbus-glib_0.114.orig.tar.gz 737791 SHA256:c09c5c085b2a0e391b8ee7d783a1d63fe444e96717cc1814d61b5e8fc2827a7c
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-glib/dbus-glib_0.114.orig.tar.gz.asc' dbus-glib_0.114.orig.tar.gz.asc 833 SHA256:ec4e43fcb3dd517f4529ddedf0c7187ff58f933c1ce10b1918410509465b8c23
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus-glib/dbus-glib_0.114-2.debian.tar.xz' dbus-glib_0.114-2.debian.tar.xz 33056 SHA256:52b5c6ea3a21399f982f979c45fb98f13650fcb443916c5ad60659929a7a5e62
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

### `dpkg` source package: `diffutils=1:3.12-1ubuntu0.1`

Binary Packages:

- `diffutils=1:3.12-1ubuntu0.1`

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
$ apt-get source -qq --print-uris diffutils=1:3.12-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz' diffutils_3.12.orig.tar.xz 1938800 SHA512:10b17cf1dcdfa9ca0e5db91d62c4a079ebe9fd7eafa3aaebd4eb7e6206e4d753f348496622aa281e1bd7f7fcde65ce4a886dcc4acbb59332ef980f224197b4e4
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12.orig.tar.xz.asc' diffutils_3.12.orig.tar.xz.asc 833 SHA512:8eb59b40156741fbfcac947f29f76aa0eefb9c8f819206cab9474da0ffe0154c6aa8b38435eccdd82ceb8c3565a6c548e8d2a0f771f1e8e1af15635854ec9c62
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1ubuntu0.1.debian.tar.xz' diffutils_3.12-1ubuntu0.1.debian.tar.xz 15976 SHA512:ba6c46d60b46dde9fe482f006272a6e1738091cde4cb70b0b5239ca919183c66e78018813921842d6753c9886422c8fa7c382808da261af0373d9d83752a70ac
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.12-1ubuntu0.1.dsc' diffutils_3.12-1ubuntu0.1.dsc 2335 SHA512:6d200635a8d49fef3ac62c9b22460b6666a53daec493a9091b408c0b8ced3cd9037c254817fc874c652aab8d57e2ba361d5a536837062d58d826d8a82290c7bf
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

### `dpkg` source package: `expat=2.7.4-1ubuntu0.2`

Binary Packages:

- `libexpat1:amd64=2.7.4-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.7.4-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4.orig.tar.gz' expat_2.7.4.orig.tar.gz 8448897 SHA512:0e157ce875ec993b4e495e0cd04979109c1f0f0dbfa707c113d9b4ed243c668fce20e5ef79ff8df2f30587cc182a0254794b2fb9bb53f938da608ace32903820
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1ubuntu0.2.debian.tar.xz' expat_2.7.4-1ubuntu0.2.debian.tar.xz 45356 SHA512:1bf182ebcaa1b693f5559cccd849ba9b9e3c4a30b81dae055b9662c722b5af2421fd022a160d5295fb195fad050546c697e35ec8ad36388674006b6646dab925
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.7.4-1ubuntu0.2.dsc' expat_2.7.4-1ubuntu0.2.dsc 1480 SHA512:838f8a6e59cec39179489ab892c6be84452eeea08841644f6156087867824d50668301aa4d08dc8ff0c8275709b9187990c3a45d358b339c911b95c52ad43dce
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

### `dpkg` source package: `freetype=2.14.2+dfsg-1ubuntu0.2`

Binary Packages:

- `libfreetype6:amd64=2.14.2+dfsg-1ubuntu0.2`

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
$ apt-get source -qq --print-uris freetype=2.14.2+dfsg-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz 347364 SHA512:efef4187b3d9cc747daad26cef6700051388435480c60e96e371eb04be3baae1e09ac932183c3a72b7bb4db1889d2bda89a70bfb058193c73bc5a602e53a3553
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2demos.tar.xz.asc 833 SHA512:569d05266c430b7fb361a5c74198e0047f44ba24fd723d13e89de8974a6ce3fc5837bbd551e2e404926e14da5db68bd50011c6fa6fa01d92460bd3eeaacdc0f2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz 2176140 SHA512:f2794dee78a00f91ea4241722deff64e03e7c42cbd26073ed0d7a6e0ecca14c5f87cb1dbd520ccc94311a6b0f510b4462eee3f8765e8d77841176e78d8c45837
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.14.2+dfsg.orig-ft2docs.tar.xz.asc 833 SHA512:9a42b83c2237cd04e5cea7e5389078a985d6e22f48c030d225c32b5da9230b0c1b8ae6dd213bef4ac572fec74c5d05b9acfc011c199f0db5995293800575514a
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg.orig.tar.xz' freetype_2.14.2+dfsg.orig.tar.xz 2246044 SHA512:fa16e901edee4b578cf920eb357ec5f8aea38fe1152e7ad8562201e7edde4d763a457dfdcf69bb1b5792c0b1ba0253e6dea2b8928141e77ab53e366be1b9af65
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.2.debian.tar.xz' freetype_2.14.2+dfsg-1ubuntu0.2.debian.tar.xz 45672 SHA512:4e6e6839d7076a28bcc53187ed393c03efe7906ee68bf6daf0ee1044a5d25facea4a8ea8bfbf2854e9277706781f93e3c62c31bf67be89547d1e40fc57e23537
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.14.2%2bdfsg-1ubuntu0.2.dsc' freetype_2.14.2+dfsg-1ubuntu0.2.dsc 4105 SHA512:acb1b8995a0f6f107ebf23881205afe38c867caba0982af88456de3c4a459963e841d993bb2740300422cd1a5c1395540ed8b1f24be96658aa24139e1e35a42b
```

### `dpkg` source package: `gcc-16=16-20260322-1ubuntu1`

Binary Packages:

- `gcc-16-base:amd64=16-20260322-1ubuntu1`
- `libatomic1:amd64=16-20260322-1ubuntu1`
- `libgcc-s1:amd64=16-20260322-1ubuntu1`
- `libstdc++6:amd64=16-20260322-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-16-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

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

### `dpkg` source package: `glib2.0=2.88.0-1ubuntu0.1`

Binary Packages:

- `libglib2.0-0t64:amd64=2.88.0-1ubuntu0.1`

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
$ apt-get source -qq --print-uris glib2.0=2.88.0-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig-unicode-data.tar.xz' glib2.0_2.88.0.orig-unicode-data.tar.xz 666552 SHA512:32c5e2303868cd80b85f83e94e3f1418ea050fde2f892db0463a41040db2ff0e6db7b29b0af5d0a7bd355976765d1f23ad947230d8c46696a6fd249fc465de6c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0.orig.tar.xz' glib2.0_2.88.0.orig.tar.xz 5788396 SHA512:ceead8d88720db17dc6bbff7aff14f261f90afc5e8261448aae0657f89b5fcc616cf62f4b049be88a4ddd3f50a869bbcdb66b29777da4969a47987828ecac280
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1ubuntu0.1.debian.tar.xz' glib2.0_2.88.0-1ubuntu0.1.debian.tar.xz 156176 SHA512:2716a68ab7235c82e69f8250228dc646edd14fc4c409c611b78a00c94c2aa000a8517555f83682654090a472510dc07ff5b150dfb779a15eda7d39f7e5bfe8eb
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.88.0-1ubuntu0.1.dsc' glib2.0_2.88.0-1ubuntu0.1.dsc 4936 SHA512:c195c8d769868d46f91f29e3a0af17d833be2fc2007d4bade31276bb80cb895d015dd74824c9e20b03b83a38d322472aa0f4fa4df9cc8e5851b8b04462a4158b
```

### `dpkg` source package: `glibc=2.43-2ubuntu2.4`

Binary Packages:

- `libc-bin=2.43-2ubuntu2.4`
- `libc-dev-bin=2.43-2ubuntu2.4`
- `libc-gconv-modules-extra:amd64=2.43-2ubuntu2.4`
- `libc6:amd64=2.43-2ubuntu2.4`
- `libc6-dev:amd64=2.43-2ubuntu2.4`
- `locales=2.43-2ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc-gconv-modules-extra/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/locales/copyright`)

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
$ apt-get source -qq --print-uris glibc=2.43-2ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz' glibc_2.43.orig.tar.xz 20297012 SHA512:25765f86bf54a22fc69dd13023ec9be59bd7e1f9d6ea1630cf21851898df2043bb8a01538c4b5fdd06495d0163289362b0768b391b0617f709b89a777168291c
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43.orig.tar.xz.asc' glibc_2.43.orig.tar.xz.asc 1018 SHA512:6e26f0edee146710bcb73c3890c455e8b479009f99d284c43ea695b73bfe45e4ba47d1460300ce8c7496689b0c21a1c77e6359e005957973648b86755160c8f5
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.4.debian.tar.xz' glibc_2.43-2ubuntu2.4.debian.tar.xz 530764 SHA512:18a877a97dc66d887d6d01f73358f527ce6233555749997b068cc45ae287f3635d76979e41b9b78e674799695369c055b8a66449793e3b99c3dc57f12ded4935
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.43-2ubuntu2.4.dsc' glibc_2.43-2ubuntu2.4.dsc 9078 SHA512:b07d5c013046605738daf62c21acaa7a87d8bd7fcfaa67187dc282c9ecea3cfb546bb5d43e5eddc429822cc258a844aa5d24a460fef4d4c88db21e3c0c008b24
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

### `dpkg` source package: `gnupg2=2.4.8-4ubuntu3.1`

Binary Packages:

- `dirmngr=2.4.8-4ubuntu3.1`
- `gnupg=2.4.8-4ubuntu3.1`
- `gpg=2.4.8-4ubuntu3.1`
- `gpg-agent=2.4.8-4ubuntu3.1`
- `gpgconf=2.4.8-4ubuntu3.1`
- `gpgsm=2.4.8-4ubuntu3.1`
- `gpgv=2.4.8-4ubuntu3.1`

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
$ apt-get source -qq --print-uris gnupg2=2.4.8-4ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2' gnupg2_2.4.8.orig.tar.bz2 8017685 SHA512:d7f07a258141a583bc8be18c0984d7dfe8508f12c624c053881ee63dfee11adcda8de216bcaaef9f5d24a1e217de70bf69ee2e3cc43b0da66a0e571ce9c4b436
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8.orig.tar.bz2.asc' gnupg2_2.4.8.orig.tar.bz2.asc 228 SHA512:f739eb41481149e145724969e94907ac55e082da0456e1343da24488958ecd020225b45e1d5dc4c93abc06fe89d942e892b488a460f3278f9f2bcff5f51c8ca0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.1.debian.tar.xz' gnupg2_2.4.8-4ubuntu3.1.debian.tar.xz 123432 SHA512:29bb48c1c26419ffecef8a72945c023949f39825e01ae795aff52a043032d5368acb3531b6c3e05c774ab7543192440e0d8749685fcf1760710f2efe3326486c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.4.8-4ubuntu3.1.dsc' gnupg2_2.4.8-4ubuntu3.1.dsc 5091 SHA512:e718d5cdfd471fcf8b80f8e6938f44c5e15153b4acd3f6cf45f3cbe6c321e6c4f362d991643a2a6aefa804ebdcb01e96a900e20d944f5fbe4ecc42ed0f270941
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

### `dpkg` source package: `libgcrypt20=1.12.0-2ubuntu1.1`

Binary Packages:

- `libgcrypt20:amd64=1.12.0-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.12.0-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2' libgcrypt20_1.12.0.orig.tar.bz2 4438947 SHA512:9421461297bd79b14f94d1ab275c3ed93b5d433531915c5cc7a718a94d32978a46feccb7a33fe63a60780ff00d465fbe1fe9ada5c250cf6d10a525c246c63d1c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0.orig.tar.bz2.asc' libgcrypt20_1.12.0.orig.tar.bz2.asc 265 SHA512:9861910a5a955e37b5c90dbb01e1fcf35cd573801004d3cf762fc33180b9bfed1db229827395b54fdb1c499004daece4b6201ec83e9ca214fff79855b691e9a9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.1.debian.tar.xz' libgcrypt20_1.12.0-2ubuntu1.1.debian.tar.xz 75624 SHA512:0fe10f2f94b6338aff73b0cf73e462e48ae98881e1bb0ebeb87a3299a5998f6757107d412a4c8eae92dc75cfd07137311478027490ccf244bafc36baa2023af6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.12.0-2ubuntu1.1.dsc' libgcrypt20_1.12.0-2ubuntu1.1.dsc 3077 SHA512:93bf99ab375df053d9b9ad7fc61b87f308cd77a902776cf6985ea1ea3b6e94f32c5a608af09d4a114946aaf61ef4d0cb429a39cdd5c063c9e62628b526e9199f
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

### `dpkg` source package: `libice=2:1.1.1-1build1`

Binary Packages:

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

### `dpkg` source package: `libobasis26.2-base=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-base=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-calc=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-calc=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-core=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-core=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-draw=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-draw=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-en-us=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-en-us=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-beanshell-script-provider=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-beanshell-script-provider=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-javascript-script-provider=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-javascript-script-provider=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-mediawiki-publisher=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-mediawiki-publisher=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-nlpsolver=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-nlpsolver=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-pdf-import=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-pdf-import=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-extension-report-builder=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-extension-report-builder=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-firebird=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-firebird=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-gnome-integration=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-gnome-integration=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-graphicfilter=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-graphicfilter=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-images=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-images=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-impress=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-impress=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-kde-integration=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-kde-integration=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-librelogo=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-librelogo=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-libreofficekit-data=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-libreofficekit-data=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-math=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-math=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-ogltrans=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-ogltrans=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-onlineupdate=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-onlineupdate=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-ooofonts=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-ooofonts=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-ooolinguistic=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-ooolinguistic=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-postgresql-sdbc=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-postgresql-sdbc=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-python-script-provider=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-python-script-provider=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-pyuno=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-pyuno=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-writer=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-writer=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libobasis26.2-xsltfilter=26.2.6.3-3`

Binary Packages:

- `libobasis26.2-xsltfilter=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libpng1.6=1.6.57-1ubuntu0.1`

Binary Packages:

- `libpng16-16t64:amd64=1.6.57-1ubuntu0.1`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.57-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57.orig.tar.gz' libpng1.6_1.6.57.orig.tar.gz 1591776 SHA512:cd20c278b04ac6275cea495c66472782c175bf431eb28afd3f529d5913179ac8cbf3a306e67fe9dc3ae09c87ad67b5d937b83f427e15d8364f513d95ff8b4649
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1ubuntu0.1.debian.tar.xz' libpng1.6_1.6.57-1ubuntu0.1.debian.tar.xz 34984 SHA512:8e7f0bff9fb7f8daae9c4bffd2e3fca3fc03c12f832eb0a9f66be61bd5b305d3b3a8566388814af78c7562c78b4a56f709dd02cf87d590b896d2aa5eeb708db2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.57-1ubuntu0.1.dsc' libpng1.6_1.6.57-1ubuntu0.1.dsc 2425 SHA512:f5e48826567c29abd2b7b1d7080fc5ecab77610b354a05ec9a1a896604ded4302e8852d4e1a83ea7eb00a66aee1e8a82ec9f1f652bea7e54e054b742d9958a34
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

### `dpkg` source package: `libreoffice26.2-base=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-base=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-calc=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-calc=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-debian-menus=26.2.6-3`

Binary Packages:

- `libreoffice26.2-debian-menus=26.2.6-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-dict-en=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-dict-en=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-dict-es=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-dict-es=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-dict-fr=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-dict-fr=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-draw=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-draw=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-en-us=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-en-us=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-impress=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-impress=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-math=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-math=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-ure=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-ure=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2-writer=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2-writer=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libreoffice26.2=26.2.6.3-3`

Binary Packages:

- `libreoffice26.2=26.2.6.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `libsm=2:1.2.6-1build1`

Binary Packages:

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

### `dpkg` source package: `libssh2=1.11.1-1ubuntu0.26.04.4`

Binary Packages:

- `libssh2-1t64:amd64=1.11.1-1ubuntu0.26.04.4`

Licenses: (parsed from: `/usr/share/doc/libssh2-1t64/copyright`)

- `BSD3`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.11.1-1ubuntu0.26.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz' libssh2_1.11.1.orig.tar.gz 1093012 SHA512:8703636fc28f0b12c8171712f3d605e0466a5bb9ba06e136c3203548fc3408ab07defd71dc801d7009a337e1e02fd60e8933a2a526d5ef0ce53153058d201233
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1.orig.tar.gz.asc' libssh2_1.11.1.orig.tar.gz.asc 488 SHA512:83e600ddd676013932297c4f3d2cf2e65b5308f7700d818b34f30d760c7495180e6d8dae70579c8bea95ea2d7ccb12fc42641e545e11ec4b6630a0e6b350b282
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.4.debian.tar.xz' libssh2_1.11.1-1ubuntu0.26.04.4.debian.tar.xz 25696 SHA512:aa8f17bb0b29bd892cc6f799c7ecac58923707d14671bcde4a475bac7dc507f8a9194ee63b3a6851a7056a2cff50a5a8fe80392e6589a554fbe4fe41251a03f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libssh2/libssh2_1.11.1-1ubuntu0.26.04.4.dsc' libssh2_1.11.1-1ubuntu0.26.04.4.dsc 2458 SHA512:e3d1bf8bf4eb5718fb3c84be59671cc48140d1bf4c45df77f3a8d2da1be50a52424994ce805ee98fe1092463051234b08fea63f0d90ec1ad114c8a1c75f4cbdb
```

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

### `dpkg` source package: `libx11=2:1.8.13-1ubuntu0.1`

Binary Packages:

- `libx11-6:amd64=2:1.8.13-1ubuntu0.1`
- `libx11-data=2:1.8.13-1ubuntu0.1`
- `libx11-xcb1:amd64=2:1.8.13-1ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.8.13-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz' libx11_1.8.13.orig.tar.gz 3217264 SHA512:3dbcb261bbf56e8613b61e84af5d6924bf804a5fb90fe84f3bde46e4bec3b0c8c496d9e2a9b6717511fd37544fe84350092a744aa98640612f653640693d791e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13.orig.tar.gz.asc' libx11_1.8.13.orig.tar.gz.asc 833 SHA512:172a116ff7070e1b9729f1f76b2d8dda460885c307f9a410233f49c12abbc59ad374a0b34e2c56b34a62ecb38143c1369e5ac39acd5ed3c8218840522356e4f7
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1ubuntu0.1.diff.gz' libx11_1.8.13-1ubuntu0.1.diff.gz 81337 SHA512:d97da1a32927d91c8faf23750a8ebca7bc30f02a6f2094fa73b2394dc800403fe39abd5133fc9b88cbf3a79e32ca8445f9f422b3bad7562fa3cc8146c36f8df2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.8.13-1ubuntu0.1.dsc' libx11_1.8.13-1ubuntu0.1.dsc 2297 SHA512:2fa4875660800b6a029f8f89e84272b302656e191856654a9ea9333db0d2f9444063116f150ed3044b4b5e0afb006bae5914259fbc921d0dba6a22af2223354a
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

### `dpkg` source package: `libxi=2:1.8.2-2`

Binary Packages:

- `libxi6:amd64=2:1.8.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.8.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2-2.dsc' libxi_1.8.2-2.dsc 2280 SHA256:89ee35b62fcfc94749f22bf1cafd97cc1eac401db2d2ce0c740f49a9ef4b1579
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2.orig.tar.gz' libxi_1.8.2.orig.tar.gz 611246 SHA256:5542daec66febfeb6f51d57abfa915826efe2e3af57534f4105b82240ea3188d
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2.orig.tar.gz.asc' libxi_1.8.2.orig.tar.gz.asc 195 SHA256:acfaf42beee3690980632c5ec4d9948276da969f07beea6bd09312d63fa7fb45
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.8.2-2.diff.gz' libxi_1.8.2-2.diff.gz 28551 SHA256:b1dbd22fac83e329ea0f1082575b80310871aaa21aa9ebe23fe31dd6104a6c59
```

### `dpkg` source package: `libxinerama=2:1.1.4-3build2`

Binary Packages:

- `libxinerama1:amd64=2:1.1.4-3build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4.orig.tar.gz' libxinerama_1.1.4.orig.tar.gz 380740 SHA256:64de45e18cc76b8e703cb09b3c9d28bd16e3d05d5cd99f2d630de2d62c3acc18
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build2.diff.gz' libxinerama_1.1.4-3build2.diff.gz 8624 SHA256:aa4fc03307d77c0d99817c66698f38274475c8586f843bb317216c891e1811ad
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.4-3build2.dsc' libxinerama_1.1.4-3build2.dsc 2191 SHA256:2a0e5748d0845299a68b1664cd31562b7b82d60fb9085af58c3d6d8afd176b0a
```

### `dpkg` source package: `libxml2=2.15.2+dfsg-0.1ubuntu0.3`

Binary Packages:

- `libxml2-16:amd64=2.15.2+dfsg-0.1ubuntu0.3`
- `libxml2-dev:amd64=2.15.2+dfsg-0.1ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libxml2-16/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.15.2+dfsg-0.1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg.orig.tar.xz' libxml2_2.15.2+dfsg.orig.tar.xz 2154608 SHA512:d7f79a6c9435477a6b8b85e7eab8d5c69b253e2a7fbec073418ecbbd721a2feb4ebf8e04bd21ccde499d3620238fb343789cacaa6b175d9ca64a031ae07be933
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.3.debian.tar.xz' libxml2_2.15.2+dfsg-0.1ubuntu0.3.debian.tar.xz 41372 SHA512:813aa6b9bea7b74bea273382c9eb5f814ee644e2169dc178776b956e191ddf0fdea03614296a4fd712e0fc091436b48c05736c175452222d09073f623d6a941b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.15.2%2bdfsg-0.1ubuntu0.3.dsc' libxml2_2.15.2+dfsg-0.1ubuntu0.3.dsc 3266 SHA512:6e8f005ef288ed1221b205bfd6337b11a8a4e925b7090318b548c0484a99ed4e9fc7bf341fcb51af525f4a32cd51ad2d7abf18b972e655f3e62343900a1f14ef
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

### `dpkg` source package: `libxtst=2:1.2.5-1ubuntu0.1`

Binary Packages:

- `libxtst6:amd64=2:1.2.5-1ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxtst=2:1.2.5-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5.orig.tar.gz' libxtst_1.2.5.orig.tar.gz 441257 SHA512:fea81f027ef7012d94dbf859f31db844b61c117b88f3bb847e0b4a3aa0280415d5bf3d7fd5966c5640fd54b3ab4afecc5b73fdfd98b8d47da5cb86371dfb6c04
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5.orig.tar.gz.asc' libxtst_1.2.5.orig.tar.gz.asc 833 SHA512:48fe728d32a98728af21b44f7f86ea79362bf35e9149b7f62a96cb63bef2c0865b730d097616f728dfb9f14e16ba558d2ca2a5beff9bd3d1454a2a0af875c744
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5-1ubuntu0.1.diff.gz' libxtst_1.2.5-1ubuntu0.1.diff.gz 17962 SHA512:a7247961661f44958008147c58a59d715f35549a42b8598668ac0d764cc0e312fc310969d3afd92437f18b028a4b5e09f388c998da7e39d6e991fe9ce6b1a543
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxtst/libxtst_1.2.5-1ubuntu0.1.dsc' libxtst_1.2.5-1ubuntu0.1.dsc 1843 SHA512:aa8ed0b2455cc00b91ca4ce0c72ffb62de2b3df8040418537521e400a93af06f5077061e30eef928cc7944625867ba0fcffb2a48694be13972a88c6a51e68c98
```

### `dpkg` source package: `libzstd=1.5.7+dfsg-3`

Binary Packages:

- `libzstd1:amd64=1.5.7+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

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

### `dpkg` source package: `linux=7.0.0-42.42`

Binary Packages:

- `linux-libc-dev:amd64=7.0.0-42.42`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris linux=7.0.0-42.42
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0.orig.tar.gz' linux_7.0.0.orig.tar.gz 254937830 SHA512:d7906686b560bf771c919278f44285e0d646baf20e7a794b17a1759b49c122d373bdfe2069fbe0baa5b57fe49d5b7eb534939cd3cce4ca71d975d1ed1551587a
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-42.42.diff.gz' linux_7.0.0-42.42.diff.gz 5891203 SHA512:8c500d2850b70e751db9450a28d7407ecb50011ff880519a1b3eeac8b98012ab675026afd4d7e6fdbe8d6d8b6d8f6c60a2c876d66b558de47e458da91298a959
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_7.0.0-42.42.dsc' linux_7.0.0-42.42.dsc 7845 SHA512:5291a124ff69bb6731453b0b35fe6adf91182bb4be29e6af0dc030b763c31c1081f866f9123bd9ad78cc95e5f2541e6e3e216c8fc0339cb3ee8c091a34fbd1c6
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

### `dpkg` source package: `nspr=2:4.38.2-1ubuntu1`

Binary Packages:

- `libnspr4:amd64=2:4.38.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libnspr4/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.38.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2.orig.tar.gz' nspr_4.38.2.orig.tar.gz 1025394 SHA256:e4092faeab77bdc9b32db1113e4215948ee768e26c4666db3b5a60b35f2c9105
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2-1ubuntu1.debian.tar.xz' nspr_4.38.2-1ubuntu1.debian.tar.xz 11748 SHA256:8cef3df281edd88e12b914e50d5aafa387749ab64126f9c9727c89fa6c955a28
'http://archive.ubuntu.com/ubuntu/pool/main/n/nspr/nspr_4.38.2-1ubuntu1.dsc' nspr_4.38.2-1ubuntu1.dsc 2092 SHA256:c74a041ad94e51e734d4cf96b0f3ae19311fa55198e4880b990b0cd3c018e97a
```

### `dpkg` source package: `nss=2:3.120-1ubuntu2.2`

Binary Packages:

- `libnss3:amd64=2:3.120-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libnss3/copyright`)

- `BSD-3`
- `MPL-2.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nss=2:3.120-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120.orig.tar.gz' nss_3.120.orig.tar.gz 77634611 SHA512:7ec5b6c94a5c7fde9c02c3f1a10964e9cf5fe99372c8fcdb2866d10ef4c9cd42abc26931574dbfc229c358e2615d7907136a595e3e17944369894c1201fc2c6e
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120-1ubuntu2.2.debian.tar.xz' nss_3.120-1ubuntu2.2.debian.tar.xz 24528 SHA512:2a0a96362dbd93664aefe806bbd9d23a05d1d104e714aa2ad1ffaaca6dcdb9c585a5649f27bccb3d6fc4821e1e634db78bd3d1aab4a05ee2ced44e492094c058
'http://archive.ubuntu.com/ubuntu/pool/main/n/nss/nss_3.120-1ubuntu2.2.dsc' nss_3.120-1ubuntu2.2.dsc 2278 SHA512:96bbf419d0ad4d8c3928e779fd721a467c240f72e54361c019860ca511f9ffd241a46365457b16d743d0fd5e0b8b0fe6af35d1186eda817e3f908881253e5be8
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

### `dpkg` source package: `openssl=3.5.5-1ubuntu3.7`

Binary Packages:

- `libssl3t64:amd64=3.5.5-1ubuntu3.7`
- `openssl=3.5.5-1ubuntu3.7`
- `openssl-provider-legacy=3.5.5-1ubuntu3.7`

Licenses: (parsed from: `/usr/share/doc/libssl3t64/copyright`, `/usr/share/doc/openssl/copyright`, `/usr/share/doc/openssl-provider-legacy/copyright`)

- `Apache-2.0`
- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris openssl=3.5.5-1ubuntu3.7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.5.5.orig.tar.gz' openssl_3.5.5.orig.tar.gz 53104821 SHA512:7cf0eb91bac175f7fe0adcafef457790d43fe7f98e2d4bef681c2fd5ca365e1fa5b562c645a60ab602365adedf9d91c074624eea66d3d7e155639fc50d5861ec
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.5.5.orig.tar.gz.asc' openssl_3.5.5.orig.tar.gz.asc 833 SHA512:82645f4fb427467b1e52f096ef6c6ccbdaa5aefcd28c8d3149a92f7c7711d0936e1e097f4168db6196809c19f83c1b85068d327cc1f0c5ad9f33d9d3686003d7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.5.5-1ubuntu3.7.debian.tar.xz' openssl_3.5.5-1ubuntu3.7.debian.tar.xz 194720 SHA512:c8c6d9131240cadab289b494baed0a8683dc51625e232931088434af38b1acb6c97e437a1741f53fc821784834a2bacef5fd8b1c347d4c0283e65e9eec78460e
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_3.5.5-1ubuntu3.7.dsc' openssl_3.5.5-1ubuntu3.7.dsc 2916 SHA512:1f318111347b6e2ff701e8b9f7b742d31d6c261b7913a76e553ef6a3982d13d469811b594e299b772559231c32e331a77f4bcf78420564b4e1018c2e5f618651
```

### `dpkg` source package: `p11-kit=0.26.2-2`

Binary Packages:

- `libp11-kit0:amd64=0.26.2-2`
- `p11-kit=0.26.2-2`
- `p11-kit-modules:amd64=0.26.2-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`, `/usr/share/doc/p11-kit/copyright`, `/usr/share/doc/p11-kit-modules/copyright`)

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

### `dpkg` source package: `pam=1.7.0-5ubuntu3.2`

Binary Packages:

- `libpam-modules:amd64=1.7.0-5ubuntu3.2`
- `libpam-modules-bin=1.7.0-5ubuntu3.2`
- `libpam-runtime=1.7.0-5ubuntu3.2`
- `libpam0g:amd64=1.7.0-5ubuntu3.2`

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
$ apt-get source -qq --print-uris pam=1.7.0-5ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz' pam_1.7.0.orig.tar.xz 507824 SHA512:ab5cadb0eb5e95e36146fdbbc77eef4e5e0f38aeee4e819b080a1316f69969c3c33e4a2daf3246ded4c2e58ce517d7f1acb0d8de02a4898ff753f4c3aeec51cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0.orig.tar.xz.asc' pam_1.7.0.orig.tar.xz.asc 801 SHA512:573bef1d63c0ce4efb5d1efd71a582f6ff679f2e278c326f66e142175cf67e42404453d41b92c5ce201b7d41db7b0617695f0d0972a812f0ab19553dec37192e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.2.debian.tar.xz' pam_1.7.0-5ubuntu3.2.debian.tar.xz 196572 SHA512:7276e9c754dddaf673e8eff5c6904ebf026f465b90567b2063d10d42edadc661a361b5c40a87f4977c39b763558624c6b806e6a1fec419cdc3e48339b56567ad
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.7.0-5ubuntu3.2.dsc' pam_1.7.0-5ubuntu3.2.dsc 2979 SHA512:aa163ec24f99cae6c36dc0ac1873ad9cea4f23568ae46a6d1a43ca457a388dc53a64f7f8a524771dbc7f9e0ef194688f3c5c0ad21a61bad0c1d57c57999c4ea3
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

### `dpkg` source package: `perl=5.40.1-7ubuntu0.3`

Binary Packages:

- `perl-base=5.40.1-7ubuntu0.3`

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
$ apt-get source -qq --print-uris perl=5.40.1-7ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig-regen-configure.tar.xz' perl_5.40.1.orig-regen-configure.tar.xz 421056 SHA512:933261779f476b0edda581270949c92e8e7dbe4bcaf1417398e708a321cdb748fe329acb703b2e74446cdfb03c20cefcab1eb972b852418ed3ea9b870db1fa86
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1.orig.tar.xz' perl_5.40.1.orig.tar.xz 13930924 SHA512:3ff16b3462ce43ff38dab21b3dfc20f81772b8c9eac19ab96ba2d5e6cbb390e2302fa76c4879f915249357cd11c7ec0d548bcbf3ab2c156df1b9fca95da3f545
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.3.debian.tar.xz' perl_5.40.1-7ubuntu0.3.debian.tar.xz 180528 SHA512:37927310927ca2cdc6d1d16af180e7bf6947fadfb5516139436b9bd72b8d477bd507a94982660c7453fbeb0c0770e6f30ec78d20ff29bcdbdc14ec097d02f194
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.40.1-7ubuntu0.3.dsc' perl_5.40.1-7ubuntu0.3.dsc 3068 SHA512:eccce40f8c545a7710dc0f8d3c6479fba35745f3749e1a3e272ff6312618980fd324e7cfd8c3727e77b777e7ac37c90f5f8c66c2fef367535e12328442859a79
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

### `dpkg` source package: `rust-coreutils=0.10.0-1ubuntu2~26.04.1`

Binary Packages:

- `rust-coreutils=0.10.0-1ubuntu2~26.04.1`

Licenses: (parsed from: `/usr/share/doc/rust-coreutils/copyright`)

- `Apache-2.0`
- `CC-BY-4.0`
- `MIT`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris rust-coreutils=0.10.0-1ubuntu2~26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.10.0.orig-l10n.tar.gz' rust-coreutils_0.10.0.orig-l10n.tar.gz 780526 SHA512:8d0b8c9053cc80033324d71ec57b7c3f5249eeff69978a759e81c7774e62ca74893708d583918a62dc448f4889d91d71aed37be2fd57ec683c717c78eecdbaa9
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.10.0.orig.tar.gz' rust-coreutils_0.10.0.orig.tar.gz 2671039 SHA512:cd5bc2b491ad36e559678aa45578c1646d48f4421abb1944195282acea4e5c6c1f9556c3fd2758cc7e37a1995fd5e2e1b94dfb91b6826f4e4c9bf8ddb7e50fd8
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.10.0-1ubuntu2%7e26.04.1.debian.tar.xz' rust-coreutils_0.10.0-1ubuntu2~26.04.1.debian.tar.xz 22541108 SHA512:b93fad2afd099bc04c9b78182d67e1e6f32e9c36833a3f74bb8d826e2a9e1393e37d05403974178ccda684246d665b21608fbfcd44178a050415368e18e44c41
'http://archive.ubuntu.com/ubuntu/pool/main/r/rust-coreutils/rust-coreutils_0.10.0-1ubuntu2%7e26.04.1.dsc' rust-coreutils_0.10.0-1ubuntu2~26.04.1.dsc 8746 SHA512:16fe14c002607a30152a41bb6cd658ad7c2c341fe5178aa82b07cb1fabbf3cb042dec817c8fc195790b87ac7c035694b57cb3dffe86b4f498e7637c69591f8f0
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

### `dpkg` source package: `sqlite3=3.46.1-9ubuntu0.3`

Binary Packages:

- `libsqlite3-0:amd64=3.46.1-9ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.46.1-9ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig-www.tar.xz' sqlite3_3.46.1.orig-www.tar.xz 5861820 SHA512:a5ec0f57d014b2f33d679cfbae0ca1935eb84871376b29216ffcc286a92a363a823ca0ec729a000d702054ee90b2fcc1887c1fb4bebfabcd14894f8ef91b7ad6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1.orig.tar.xz' sqlite3_3.46.1.orig.tar.xz 8456776 SHA512:47d3c900d95641c89d5d807881e20e97f3b7889cf44c76d48715066ba5c1860defcd17498440d79bcc49b15c2ea28e81ed4b5b159f9e947941e5c1ee27de06ba
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.3.debian.tar.xz' sqlite3_3.46.1-9ubuntu0.3.debian.tar.xz 38312 SHA512:a35d6c8f81ae3b5d548ecc5529d8e333974605fd5c8c2bad587b325832d66cd2791a0353c4b697d2b6009026cedcc79e6c78db893a529dd435399c7f99960544
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.46.1-9ubuntu0.3.dsc' sqlite3_3.46.1-9ubuntu0.3.dsc 2756 SHA512:2f180c7497f1284f9c5f64d22b9c1781ea6266af6cd2b157478ab5a145f217db33f2d4b6c5d2fce0c5ceeef4528ebc582cd5c4c43c90d496c22a4e0184fe96a0
```

### `dpkg` source package: `systemd=259.9-0ubuntu0.1`

Binary Packages:

- `libsystemd0:amd64=259.9-0ubuntu0.1`
- `libudev1:amd64=259.9-0ubuntu0.1`

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
$ apt-get source -qq --print-uris systemd=259.9-0ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.9.orig.tar.gz' systemd_259.9.orig.tar.gz 17618264 SHA512:9343f531d1110253213cef103862e96057de9d0edb9a1957bcbf899aa313882a997a1e3cdb93c01de50dfa5684fc74b6f1794388123bb898fc1c2e3e0da13608
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.9-0ubuntu0.1.debian.tar.xz' systemd_259.9-0ubuntu0.1.debian.tar.xz 254204 SHA512:334c8894d6fe75b6a8e52f58ec963db22ab468d541c4268f87048bbe722da5af8846b8686fd288e61b16f8ab39429bef9c0e715618faeec1a8488cdd8672b5ab
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_259.9-0ubuntu0.1.dsc' systemd_259.9-0ubuntu0.1.dsc 8779 SHA512:c373b2d0b4c0b68846eb4fdbb143d557f8c22a08b43d2e6a9dfbb8d51842e49ebcbefb3bc79d5d63d01948d5c1c1e7783fb732ba0ad4d4d9df29f573e31b3a1e
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

### `dpkg` source package: `tzdata=2026e-0ubuntu0.26.04.1`

Binary Packages:

- `tzdata=2026e-0ubuntu0.26.04.1`

Licenses: (parsed from: `/usr/share/doc/tzdata/copyright`)

- `ICU`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris tzdata=2026e-0ubuntu0.26.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026e.orig.tar.gz' tzdata_2026e.orig.tar.gz 481989 SHA512:5be2f875f73b75e5783c474bf7a6c768e433cc90283f8fc6a75e3d05bd92aec97936e8a55ccca5e880b5dacc18ba65932bab0e783e1ed5d2af4a3a4df95512be
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026e.orig.tar.gz.asc' tzdata_2026e.orig.tar.gz.asc 833 SHA512:e6f75a7aabd228c8aeadd51aef100e4b5d2fbc238db319a4de28f8b8c7e2f6d3305d2c3cd3d875590164a082e46d7b63960f1387af8a186e6b693c4633061ed8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026e-0ubuntu0.26.04.1.debian.tar.xz' tzdata_2026e-0ubuntu0.26.04.1.debian.tar.xz 192020 SHA512:40a96656a40567f064778395e8f03992a90db914a31a5a6ab2b8f93eee5c67cc0aabe466cc2fd06e73bb35ef62d40a9998587d9c22496ebb767f3edf1ca72600
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2026e-0ubuntu0.26.04.1.dsc' tzdata_2026e-0ubuntu0.26.04.1.dsc 2712 SHA512:8aa848ce18914310f4e4643c6fdad9e5605da4d5c1a32be8714d71961fcf5fe002426a4e5f9aac69b1c3eab2d5e71351d0c4dfae5183c51ce29b287d23e38c44
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

### `dpkg` source package: `util-linux=2.41.3-3ubuntu2.2`

Binary Packages:

- `bsdutils=1:2.41.3-3ubuntu2.2`
- `libblkid1:amd64=2.41.3-3ubuntu2.2`
- `libmount1:amd64=2.41.3-3ubuntu2.2`
- `libsmartcols1:amd64=2.41.3-3ubuntu2.2`
- `libuuid1:amd64=2.41.3-3ubuntu2.2`
- `login=1:4.16.0-2+really2.41.3-3ubuntu2.2`
- `mount=2.41.3-3ubuntu2.2`
- `util-linux=2.41.3-3ubuntu2.2`

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
$ apt-get source -qq --print-uris util-linux=2.41.3-3ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3.orig.tar.xz' util-linux_2.41.3.orig.tar.xz 9467224 SHA512:3d299f0e05a4c982a04dbcbaaeff1222152feedf51c56c5dbdeb75999c68269d652a994f5cdf4c1ee42bb7b28475dd0792192c299fd9bc3b45198c5b153dad00
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.2.debian.tar.xz' util-linux_2.41.3-3ubuntu2.2.debian.tar.xz 125404 SHA512:8ce93c18b3402fc7cdec55c9eadfd002d20512f9b70d8bee97c399c88de22d28f00fc600c4b360ab291b9c6cde3859e15a3611c593dc1bce922de368aa1b589d
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.41.3-3ubuntu2.2.dsc' util-linux_2.41.3-3ubuntu2.2.dsc 5447 SHA512:dbf45c9cbd674b3d984db65341ce3ee48987d1d96b3886d175665cc91b9ac190b8ec7630a4687842a600904be4e185a1df414d8c5cb3adc496643afcf6ad65f6
```

### `dpkg` source package: `wget=1.25.0-2ubuntu4.4`

Binary Packages:

- `wget=1.25.0-2ubuntu4.4`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.25.0-2ubuntu4.4
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0.orig.tar.gz' wget_1.25.0.orig.tar.gz 5263736 SHA512:a7ce33c07a1a206a8574b6e9ea7cc5292315df0914edbcf05a014d35ae9e3d24699a46818b409b884ada57428cf30502f4bbb3767cae2c6934e4e7fb2d0c5036
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0-2ubuntu4.4.debian.tar.xz' wget_1.25.0-2ubuntu4.4.debian.tar.xz 37328 SHA512:7da4368a37c2ae9d8e259d4fa4685e3041b61bf4e30790774da0415cc2b2d491a64c0febb1bd1dc9bb0964148f289944883d5ee3084c1c055d8bb0318816929d
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.25.0-2ubuntu4.4.dsc' wget_1.25.0-2ubuntu4.4.dsc 2184 SHA512:d23a2e3ac67602f088711b7b98ba2785a0d8e94f47d4778c0553da9abcfc91cce2ae985465cd574018a98fb294430d2fde26908207f6d0e3bd4a78fa97a79645
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

### `dpkg` source package: `xz-utils=5.8.3-1ubuntu0.1`

Binary Packages:

- `liblzma-dev:amd64=5.8.3-1ubuntu0.1`
- `liblzma5:amd64=5.8.3-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/liblzma-dev/copyright`, `/usr/share/doc/liblzma5/copyright`)

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
$ apt-get source -qq --print-uris xz-utils=5.8.3-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3.orig.tar.xz' xz-utils_5.8.3.orig.tar.xz 1548064 SHA512:c288f436b211031ca122e9169d85403d4ab8b0500a6542b2d9ba101587e04a4358ab5509f5d15cc7899f1ab3e0118567866ca0508f880007b4af802dedd7068d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1ubuntu0.1.debian.tar.xz' xz-utils_5.8.3-1ubuntu0.1.debian.tar.xz 29712 SHA512:d3403d50f92af704e944a652b99c98b2d6cee78102c5e2f3db43328d32b2acf1f6948e4d1c67c6a8669f0dedd2d1015556e9962a43b34638b0258ec135bd75bd
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.8.3-1ubuntu0.1.dsc' xz-utils_5.8.3-1ubuntu0.1.dsc 2654 SHA512:ffb9be92bc60ecda509c2d0719a07b4385faa8c72ea3b07e06df0b898bfdcad738313e658d69cc6712baf06e353a3ad5863a27c423211b8464a672d5313c1699
```

### `dpkg` source package: `zlib=1:1.3.dfsg+really1.3.1-1ubuntu3.2`

Binary Packages:

- `zlib1g:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3.2`
- `zlib1g-dev:amd64=1:1.3.dfsg+really1.3.1-1ubuntu3.2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.3.dfsg+really1.3.1-1ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1.orig.tar.gz' zlib_1.3.dfsg+really1.3.1.orig.tar.gz 1325737 SHA512:068cb731e400cfc435db292839737938199d05d77b3010c7b9b87c9d0a127c7545198cea2a620da124ea3dfdde02ab63672aa01fc6cfd1e1ab5a2d6f9ca454c8
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.2.debian.tar.xz' zlib_1.3.dfsg+really1.3.1-1ubuntu3.2.debian.tar.xz 60888 SHA512:fd5efbc8b15f24f42c8d8cd029adf8fb9bc1b06134a430ba31d0d17464833a859e8190df595924584f28973255b133d765e94d957c58e7e72a788937b5b3a359
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.3.dfsg%2breally1.3.1-1ubuntu3.2.dsc' zlib_1.3.dfsg+really1.3.1-1ubuntu3.2.dsc 3346 SHA512:f88638c9c8946c14ff1473458070fe86a039cb031de061b873ae8d409286409fd465bb0faad3f60e27a46ae9f05cf7fe0e5d3520240667185de3ef90cac1e7fa
```
