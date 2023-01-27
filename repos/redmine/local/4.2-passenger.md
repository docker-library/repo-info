# `redmine:4.2.9-passenger`

## Docker Metadata

- Image ID: `sha256:2135e190764c3e135656ee720fdf8fe1381fb0072ffa10c37f2a8a52a689ff89`
- Created: `2023-01-26T01:27:23.581881184Z`
- Virtual Size: ~ 614.21 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["passenger","start"]`
- Environment:
  - `PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `RUBY_MAJOR=2.7`
  - `RUBY_VERSION=2.7.7`
  - `RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c`
  - `GEM_HOME=/usr/local/bundle`
  - `BUNDLE_SILENCE_ROOT_WARNING=1`
  - `BUNDLE_APP_CONFIG=/usr/local/bundle`
  - `RAILS_ENV=production`
  - `HOME=/home/redmine`
  - `REDMINE_VERSION=4.2.9`
  - `REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz`
  - `REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e`
  - `PASSENGER_VERSION=6.0.17`
  - `PASSENGER_PID_FILE=tmp/pids/server.pid`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.53-10`

Binary Packages:

- `libacl1:amd64=2.2.53-10`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.53-10
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-10.dsc' acl_2.2.53-10.dsc 2468 SHA256:09204a89156b17a3603b2ce34b3c7b1a9fd7345086c787962188d95347918c59
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz' acl_2.2.53.orig.tar.gz 524300 SHA256:06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53.orig.tar.gz.asc' acl_2.2.53.orig.tar.gz.asc 833 SHA256:06849bece0b56a6a7269173abe101cff223bb9346d74027a3cd5ff80914abf4b
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.53-10.debian.tar.xz' acl_2.2.53-10.debian.tar.xz 25536 SHA256:6b83a626aa383334b64666181642c7c13e44a6fe65486d0aaa34bd8de6d58b20
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.53-10/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.53-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.53-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.118`

Binary Packages:

- `adduser=3.118`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.dsc' adduser_3.118.dsc 1670 SHA256:fc79bc37fcf5e5700546c78a80670bb7b34836d012595b343fe2304cac82917d
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.tar.xz' adduser_3.118.tar.xz 212280 SHA256:3e9eea661c9aac6b2c791bfcc1de3a9c6a422d45c8f3d38ed417737ed3166ffc
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.118/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.118/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.118/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `aom=1.0.0.errata1-3`

Binary Packages:

- `libaom0:amd64=1.0.0.errata1-3`

Licenses: (parsed from: `/usr/share/doc/libaom0/copyright`)

- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `ISC`
- `public-domain-md5`

Source:

```console
$ apt-get source -qq --print-uris aom=1.0.0.errata1-3
'http://deb.debian.org/debian/pool/main/a/aom/aom_1.0.0.errata1-3.dsc' aom_1.0.0.errata1-3.dsc 2370 SHA256:0efd39fc5062efb53622ffd062186da4c964d805115d9648ebc75a55e1bddfdf
'http://deb.debian.org/debian/pool/main/a/aom/aom_1.0.0.errata1.orig.tar.xz' aom_1.0.0.errata1.orig.tar.xz 1898808 SHA256:1dd501c622d871acf31fb942bd3b73a00883fc10f7c498fec97b22c858ca415f
'http://deb.debian.org/debian/pool/main/a/aom/aom_1.0.0.errata1-3.debian.tar.xz' aom_1.0.0.errata1-3.debian.tar.xz 21120 SHA256:fc180608631a4bd9bf4c15af30d1b17b377ab0e926b9b4ded21aeb5849d6a1fe
```

Other potentially useful URLs:

- https://sources.debian.net/src/aom/1.0.0.errata1-3/ (for browsing the source)
- https://sources.debian.net/src/aom/1.0.0.errata1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/aom/1.0.0.errata1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.1-5`

Binary Packages:

- `libaprutil1:amd64=1.6.1-5`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-5
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-5.dsc' apr-util_1.6.1-5.dsc 2754 SHA256:dab17dcb495ae31448ceb506448a5b1a6155ae9771073950227c47e09241b9d6
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-5.debian.tar.xz' apr-util_1.6.1-5.debian.tar.xz 342000 SHA256:9489fa1228c0e7362f4a4d099c015b7552b928b7d73c9d79b6d4c16b52edce3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr-util/1.6.1-5/ (for browsing the source)
- https://sources.debian.net/src/apr-util/1.6.1-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr-util/1.6.1-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr=1.7.0-6+deb11u1`

Binary Packages:

- `libapr1:amd64=1.7.0-6+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.7.0-6+deb11u1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0-6%2bdeb11u1.dsc' apr_1.7.0-6+deb11u1.dsc 2282 SHA256:561d329f77659ea05d7303776b76922c4c13c5647b5f9205a3d6637976f345df
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0.orig.tar.bz2' apr_1.7.0.orig.tar.bz2 872238 SHA256:e2e148f0b2e99b8e5c6caa09f6d4fb4dd3e83f744aa72a952f94f5a14436f7ea
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0.orig.tar.bz2.asc' apr_1.7.0.orig.tar.bz2.asc 801 SHA256:5a6c4e721ed82116d7877254ae11c076014040af2ff816ea15ec81e77a4a7d43
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.7.0-6%2bdeb11u1.debian.tar.xz' apr_1.7.0-6+deb11u1.debian.tar.xz 214884 SHA256:7352919715fe985ccfee1953a85a051e16cd4af0c739c0f827e508a309ee5e06
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.7.0-6+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/apr/1.7.0-6+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.7.0-6+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=2.2.4`

Binary Packages:

- `apt=2.2.4`
- `libapt-pkg6.0:amd64=2.2.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg6.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=2.2.4
'http://deb.debian.org/debian/pool/main/a/apt/apt_2.2.4.dsc' apt_2.2.4.dsc 2780 SHA256:750079533300bc3a4f3e10a9c8dbffaa0781b92e3616a12d7e18ab1378ca4466
'http://deb.debian.org/debian/pool/main/a/apt/apt_2.2.4.tar.xz' apt_2.2.4.tar.xz 2197424 SHA256:6eecd04a4979bd2040b22a14571c15d342c4e1802b2023acb5aa19649b1f64ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/2.2.4/ (for browsing the source)
- https://sources.debian.net/src/apt/2.2.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/2.2.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.48-6`

Binary Packages:

- `libattr1:amd64=1:2.4.48-6`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.48-6
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-6.dsc' attr_2.4.48-6.dsc 2433 SHA256:d55d1ba40517146e9a43f9ed1c5dbd82cfe079cd1fdb852323717a953515cfa4
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz' attr_2.4.48.orig.tar.gz 467840 SHA256:5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48.orig.tar.gz.asc' attr_2.4.48.orig.tar.gz.asc 833 SHA256:5d23c2c83cc13d170f1c209f48d0efa1fc46d16487b790e9996c5206dcfe0395
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.48-6.debian.tar.xz' attr_2.4.48-6.debian.tar.xz 27260 SHA256:77f7e03cc8dd039abc3e4a7353f816a3b07fbd0b22d7784f635c5edf7d20b6df
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.48-6/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.48-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.48-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:3.0-2`

Binary Packages:

- `libaudit-common=1:3.0-2`
- `libaudit1:amd64=1:3.0-2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:3.0-2
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0-2.dsc' audit_3.0-2.dsc 2397 SHA256:3cb83cc7649bb854c76f9cb6744b34091e667e433a91a57323938fdf3f353227
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0.orig.tar.gz' audit_3.0.orig.tar.gz 1109442 SHA256:bd31826823b912b6fe271d2d979ed879e9fc393cab1e2f7c4e1af258231765b8
'http://deb.debian.org/debian/pool/main/a/audit/audit_3.0-2.debian.tar.xz' audit_3.0-2.debian.tar.xz 18640 SHA256:10193fa9823eb66dfb1220fb109b8b8e01f3f720c5a1630e9015d92aa7a8ce3a
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:3.0-2/ (for browsing the source)
- https://sources.debian.net/src/audit/1:3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `avahi=0.8-5+deb11u1`

Binary Packages:

- `libavahi-client3:amd64=0.8-5+deb11u1`
- `libavahi-common-data:amd64=0.8-5+deb11u1`
- `libavahi-common3:amd64=0.8-5+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.8-5+deb11u1
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8-5%2bdeb11u1.dsc' avahi_0.8-5+deb11u1.dsc 3981 SHA256:fc6d5f87761bf8a21efe2fac6dc1986ea65c4548c5a21ef1371f57ab7e977893
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8.orig.tar.gz' avahi_0.8.orig.tar.gz 1591458 SHA256:060309d7a333d38d951bc27598c677af1796934dbd98e1024e7ad8de798fedda
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8-5%2bdeb11u1.debian.tar.xz' avahi_0.8-5+deb11u1.debian.tar.xz 36484 SHA256:232235b695cd63a30294673a97dc36f688c2abec0945647aa033d4f9330a9ce9
```

Other potentially useful URLs:

- https://sources.debian.net/src/avahi/0.8-5+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/avahi/0.8-5+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/avahi/0.8-5+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=11.1+deb11u6`

Binary Packages:

- `base-files=11.1+deb11u6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=11.1+deb11u6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_11.1%2bdeb11u6.dsc' base-files_11.1+deb11u6.dsc 1110 SHA256:df6d12e042b225431d93a2cb297bbd07f667dcdc94d9d7bc0b3f3849af174c1e
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_11.1%2bdeb11u6.tar.xz' base-files_11.1+deb11u6.tar.xz 65644 SHA256:7399a3755e527ef0d87153090ae5bc73b18b6e80edd2b48639418f840e4f9238
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/11.1+deb11u6/ (for browsing the source)
- https://sources.debian.net/src/base-files/11.1+deb11u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/11.1+deb11u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.51`

Binary Packages:

- `base-passwd=3.5.51`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.51
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.51.dsc' base-passwd_3.5.51.dsc 1757 SHA256:5752e4c2e3b9b4d45502f6aa5ce8dfd0136ea60f1b4fbd4524385e4bbd6a1571
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.51.tar.xz' base-passwd_3.5.51.tar.xz 53980 SHA256:66c75ce1877759148dbdd2704b138c4a02adab89d7d7591b6ab184f8f614efba
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.51/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.51/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.51/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.1-2+deb11u1`

Binary Packages:

- `bash=5.1-2+deb11u1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.1-2+deb11u1
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1-2%2bdeb11u1.dsc' bash_5.1-2+deb11u1.dsc 2458 SHA256:a475836201a8b2937dd83180c86ede2be07ea57ff41d02dfd639c3e08fa94045
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1.orig.tar.xz' bash_5.1.orig.tar.xz 5802740 SHA256:d5eeee4f953c09826409d572e2e8996a2140d67eb8f382ce1f3a9d23883ad696
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.1-2%2bdeb11u1.debian.tar.xz' bash_5.1-2+deb11u1.debian.tar.xz 90828 SHA256:2560b99eb87dd0aa3a15b88c31cc801630cbda93d566a936b643da8dff30627b
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.1-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/bash/5.1-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.1-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `breezy=3.1.0-8`

Binary Packages:

- `brz=3.1.0-8`
- `python3-breezy=3.1.0-8`

Licenses: (parsed from: `/usr/share/doc/brz/copyright`, `/usr/share/doc/python3-breezy/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris breezy=3.1.0-8
'http://deb.debian.org/debian/pool/main/b/breezy/breezy_3.1.0-8.dsc' breezy_3.1.0-8.dsc 2716 SHA256:9accf2190c16edf010ea7c44b4783e8a840783f2c304cd7fe8be56d7492b7690
'http://deb.debian.org/debian/pool/main/b/breezy/breezy_3.1.0.orig.tar.gz' breezy_3.1.0.orig.tar.gz 9389366 SHA256:1eff207403f48898fa3b3ffa7a4275197c6c58fec105ef267caf1f5fd5a6c7be
'http://deb.debian.org/debian/pool/main/b/breezy/breezy_3.1.0-8.debian.tar.xz' breezy_3.1.0-8.debian.tar.xz 58144 SHA256:e73a5ada809d9b594ec1fbbfc3bbc12a067908f6968833d57f1990bda6562ab6
```

Other potentially useful URLs:

- https://sources.debian.net/src/breezy/3.1.0-8/ (for browsing the source)
- https://sources.debian.net/src/breezy/3.1.0-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/breezy/3.1.0-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `brotli=1.0.9-2`

Binary Packages:

- `libbrotli1:amd64=1.0.9-2+b2`

Licenses: (parsed from: `/usr/share/doc/libbrotli1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris brotli=1.0.9-2
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9-2.dsc' brotli_1.0.9-2.dsc 2261 SHA256:8c4c86748ec9770e08b60233d658593650444b04a452dc5b607ed5b5537b683e
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9.orig.tar.gz' brotli_1.0.9.orig.tar.gz 486984 SHA256:f9e8d81d0405ba66d181529af42a3354f838c939095ff99930da6aa9cdf6fe46
'http://deb.debian.org/debian/pool/main/b/brotli/brotli_1.0.9-2.debian.tar.xz' brotli_1.0.9-2.debian.tar.xz 5552 SHA256:ab81b1db852c8d01e0fa5b0b650bb486f32a232b35336828423af50af6fecca0
```

Other potentially useful URLs:

- https://sources.debian.net/src/brotli/1.0.9-2/ (for browsing the source)
- https://sources.debian.net/src/brotli/1.0.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/brotli/1.0.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.8-4`

Binary Packages:

- `bzip2=1.0.8-4`
- `libbz2-1.0:amd64=1.0.8-4`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.8-4
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-4.dsc' bzip2_1.0.8-4.dsc 1603 SHA256:662c5e656a87db884fdc070239f5112cba1e616f20ff260de602876f70415c7b
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8.orig.tar.gz' bzip2_1.0.8.orig.tar.gz 810029 SHA256:ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.8-4.debian.tar.bz2' bzip2_1.0.8-4.debian.tar.bz2 26515 SHA256:3f3b26d83120260c7b2e69a5c89649bb818a79955b960fb34a5fae106f008a5d
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.8-4/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.8-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.8-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzr=2.7.0+bzr6622+brz`

Binary Packages:

- `bzr=2.7.0+bzr6622+brz`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622+brz
'http://deb.debian.org/debian/pool/main/b/bzr/bzr_2.7.0%2bbzr6622%2bbrz.dsc' bzr_2.7.0+bzr6622+brz.dsc 1866 SHA256:2c1d9f13818b32fbc5dc41d395b91101e2d1b451eae358ffdf83421521dbe670
'http://deb.debian.org/debian/pool/main/b/bzr/bzr_2.7.0%2bbzr6622%2bbrz.tar.xz' bzr_2.7.0+bzr6622+brz.tar.xz 18052 SHA256:d847a018e4869b59e9bfc04b0ff3705dcbb5479a8b6796c2dd68e60be3753a42
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzr/2.7.0+bzr6622+brz/ (for browsing the source)
- https://sources.debian.net/src/bzr/2.7.0+bzr6622+brz/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzr/2.7.0+bzr6622+brz/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20210119`

Binary Packages:

- `ca-certificates=20210119`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20210119
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20210119.dsc' ca-certificates_20210119.dsc 1868 SHA256:51e5c099ab976f50f4d2f3c5ea0ad49853024cdb3e630322cbd7e02b05a034f4
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20210119.tar.xz' ca-certificates_20210119.tar.xz 232964 SHA256:daa3afae563711c30a0586ddae4336e8e3974c2b627faaca404c4e0141b64665
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20210119/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20210119/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20210119/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.260`

Binary Packages:

- `libdebconfclient0:amd64=0.260`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.260
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.260.dsc' cdebconf_0.260.dsc 2750 SHA256:0c0a3d76e19685f998e3b85834200255268f36b09eedfa9157fe0213958b7ea5
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.260.tar.xz' cdebconf_0.260.tar.xz 279824 SHA256:ac8a9d7449c76eeaa8ed4ef0bbbf4c16b1b816b9905690c732dea2f341ac079b
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.260/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.260/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.260/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `configobj=5.0.6-4`

Binary Packages:

- `python3-configobj=5.0.6-4`

Licenses: (parsed from: `/usr/share/doc/python3-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-4
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6-4.dsc' configobj_5.0.6-4.dsc 2246 SHA256:74df72d8fdb3c20e4bc5ab996bf1f8c6297811643989110cc27a019e7beb0429
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6-4.debian.tar.xz' configobj_5.0.6-4.debian.tar.xz 6916 SHA256:dd20992aeef0eb1fb8ab6f0007e265ece33cfc20a6ca18b380eb255674195f01
```

Other potentially useful URLs:

- https://sources.debian.net/src/configobj/5.0.6-4/ (for browsing the source)
- https://sources.debian.net/src/configobj/5.0.6-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/configobj/5.0.6-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.32-4`

Binary Packages:

- `coreutils=8.32-4+b1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.32-4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32-4.dsc' coreutils_8.32-4.dsc 2096 SHA256:ea8cafd14b693ec2d8b6e33ee8564c1fa5f102e65574252b0d524aaee04ba7e9
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz' coreutils_8.32.orig.tar.xz 5547836 SHA256:4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32.orig.tar.xz.asc' coreutils_8.32.orig.tar.xz.asc 833 SHA256:71b944375b322ba77c9c56b687b48df885c676d4fd7c465b3706713a9b62ce0a
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.32-4.debian.tar.xz' coreutils_8.32-4.debian.tar.xz 33028 SHA256:2d5337067b675e0b3fa7c88df164e7738ed4715a39e88e1e82dc9185e4e1b951
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.32-4/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.32-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.32-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cups=2.3.3op2-3+deb11u2`

Binary Packages:

- `libcups2:amd64=2.3.3op2-3+deb11u2`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `Apache-2.0`
- `Apache-2.0-with-GPL2-LGPL2-Exception`
- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `FSFUL`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.3.3op2-3+deb11u2
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.3.3op2-3%2bdeb11u2.dsc' cups_2.3.3op2-3+deb11u2.dsc 3412 SHA256:48338505f076a994ee09388aba05fc3fca994f8f8c1ebaebf670ade474832af5
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.3.3op2.orig.tar.gz' cups_2.3.3op2.orig.tar.gz 7993205 SHA256:deb3575bbe79c0ae963402787f265bfcf8d804a71fc2c94318a74efec86f96df
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.3.3op2.orig.tar.gz.asc' cups_2.3.3op2.orig.tar.gz.asc 833 SHA256:ac9e7e3415d727e9882cf0f65ee38459cbcd602cb49cf392e0a65a172fe3bdaf
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.3.3op2-3%2bdeb11u2.debian.tar.xz' cups_2.3.3op2-3+deb11u2.debian.tar.xz 346872 SHA256:e2647167c9e3ba01ece2f31a8f86cdefc12315cc5bc37c3b9cb64c0d44201922
```

Other potentially useful URLs:

- https://sources.debian.net/src/cups/2.3.3op2-3+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/cups/2.3.3op2-3+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cups/2.3.3op2-3+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.74.0-1.3+deb11u3`

Binary Packages:

- `curl=7.74.0-1.3+deb11u3`
- `libcurl3-gnutls:amd64=7.74.0-1.3+deb11u3`
- `libcurl4:amd64=7.74.0-1.3+deb11u3`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.74.0-1.3+deb11u3
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0-1.3%2bdeb11u3.dsc' curl_7.74.0-1.3+deb11u3.dsc 2854 SHA256:7aadaae34631b7422de02c2fd2b7e5dff0fd9753bcc34a38c62c75bba4abe211
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0.orig.tar.gz' curl_7.74.0.orig.tar.gz 4043409 SHA256:e56b3921eeb7a2951959c02db0912b5fcd5fdba5aca071da819e1accf338bbd7
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.74.0-1.3%2bdeb11u3.debian.tar.xz' curl_7.74.0-1.3+deb11u3.debian.tar.xz 57680 SHA256:6a4691f76b22a702d667079de7cb79c420b3a56b95ab9e9f1ee37c9b07a051dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.74.0-1.3+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/curl/7.74.0-1.3+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.74.0-1.3+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg-2.1+deb11u1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg-2.1+deb11u1`
- `libsasl2-modules-db:amd64=2.1.27+dfsg-2.1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg-2.1+deb11u1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2.1%2bdeb11u1.dsc' cyrus-sasl2_2.1.27+dfsg-2.1+deb11u1.dsc 3591 SHA256:4dafa1a5c90f0b3d9d6e9d22e810492edd3b91b9f1d4d9666683d257528445d6
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg.orig.tar.xz 2058596 SHA256:108b0c691c423837264f05abb559ea76c3dfdd91246555e8abe87c129a6e37cd
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27%2bdfsg-2.1%2bdeb11u1.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg-2.1+deb11u1.debian.tar.xz 102488 SHA256:70b7a55776febf987363f5bb58322d6f03186215374a2eb0b6203980924f8680
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27+dfsg-2.1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.11+git20200708+dd9ef66-5`

Binary Packages:

- `dash=0.5.11+git20200708+dd9ef66-5`

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
$ apt-get source -qq --print-uris dash=0.5.11+git20200708+dd9ef66-5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66-5.dsc' dash_0.5.11+git20200708+dd9ef66-5.dsc 1906 SHA256:b0568c34647dc2aa0b8e2656c5e7449d9a1feb4b89d6857f507173b1f9a42ee7
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66.orig.tar.gz' dash_0.5.11+git20200708+dd9ef66.orig.tar.gz 167776 SHA256:ab70b1f165bfedadd1282da546f1c917f1b7ccb2c5c2f898310a963e2ab5520c
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.11%2bgit20200708%2bdd9ef66-5.debian.tar.xz' dash_0.5.11+git20200708+dd9ef66-5.debian.tar.xz 43120 SHA256:5da6039e043c953ff91a31c767ed703699870682ff356a1642f4798ce04a2926
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.11+git20200708+dd9ef66-5/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.11+git20200708+dd9ef66-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.11+git20200708+dd9ef66-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dav1d=0.7.1-3`

Binary Packages:

- `libdav1d4:amd64=0.7.1-3`

Licenses: (parsed from: `/usr/share/doc/libdav1d4/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dav1d=0.7.1-3
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_0.7.1-3.dsc' dav1d_0.7.1-3.dsc 2307 SHA256:dede4e6ef61d5f04ebdd1a0a7b8fefd9a722925059c45a005e55310df92970b5
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_0.7.1.orig.tar.xz' dav1d_0.7.1.orig.tar.xz 549068 SHA256:3334b5d05ec00b0745f94e2c57e23f1874197c4b435a6656cc65af531e73d3c2
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_0.7.1.orig.tar.xz.asc' dav1d_0.7.1.orig.tar.xz.asc 195 SHA256:f31a28a99c5c0d8018b8ec46f7c01481d2c8d87a752d257a154860892a8c5f3b
'http://deb.debian.org/debian/pool/main/d/dav1d/dav1d_0.7.1-3.debian.tar.xz' dav1d_0.7.1-3.debian.tar.xz 7768 SHA256:f174d389a0029c2f71e4de97a433efa3636de376c47456fb584da4c8c498002a
```

Other potentially useful URLs:

- https://sources.debian.net/src/dav1d/0.7.1-3/ (for browsing the source)
- https://sources.debian.net/src/dav1d/0.7.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dav1d/0.7.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.8`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.8
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8.dsc' db5.3_5.3.28+dfsg1-0.8.dsc 3113 SHA256:5189bebd157e3b51c075804d1affebc87cdbfb782808c621e131660719c24374
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28%2bdfsg1-0.8.debian.tar.xz' db5.3_5.3.28+dfsg1-0.8.debian.tar.xz 30748 SHA256:073c0c87283bf5e606f3ce6d1814315b40b9685c943601ae3fd81e2da4e612d4
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.8/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dbus=1.12.24-0+deb11u1`

Binary Packages:

- `libdbus-1-3:amd64=1.12.24-0+deb11u1`

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
$ apt-get source -qq --print-uris dbus=1.12.24-0+deb11u1
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.24-0%2bdeb11u1.dsc' dbus_1.12.24-0+deb11u1.dsc 3578 SHA256:9a75dcffa9112579a74072fc56523f450fed635793ee1eea298b7229cbb9485a
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.24.orig.tar.gz' dbus_1.12.24.orig.tar.gz 2120623 SHA256:bc42d196c1756ac520d61bf3ccd6f42013617def45dd1e591a6091abf51dca38
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.24.orig.tar.gz.asc' dbus_1.12.24.orig.tar.gz.asc 833 SHA256:a81b175c65d1daa36d7043d113d6f11d5b4a43c3125f5613bfe734ad1c79a41b
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.24-0%2bdeb11u1.debian.tar.xz' dbus_1.12.24-0+deb11u1.debian.tar.xz 58472 SHA256:b4e21844823b01eeac821f276b0f3a871b798c48381edc5626c4bfe8950575ae
```

Other potentially useful URLs:

- https://sources.debian.net/src/dbus/1.12.24-0+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/dbus/1.12.24-0+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dbus/1.12.24-0+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.77`

Binary Packages:

- `debconf=1.5.77`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.77
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.77.dsc' debconf_1.5.77.dsc 2082 SHA256:2797e40ac2122a0ca6c1aa27bd63203e9da4342bb60e614efb848452a5696e41
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.77.tar.xz' debconf_1.5.77.tar.xz 571412 SHA256:03482934c645140dd4cb8cae4970f81f576995b757ac7b89192067e72aa1d067
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.77/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.77/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.77/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2021.1.1`

Binary Packages:

- `debian-archive-keyring=2021.1.1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2021.1.1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2021.1.1.dsc' debian-archive-keyring_2021.1.1.dsc 1854 SHA256:a17a062b6dabe2d1092ee362412b8f2c9d4a44c7bd18ef2bbb45340c2ee4c512
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2021.1.1.tar.xz' debian-archive-keyring_2021.1.1.tar.xz 151340 SHA256:5fe6011f7caf516b19b8f2c545bd215f4b6f8022b161d1ce5262ac2c51c4dbcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2021.1.1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2021.1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2021.1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.11.2`

Binary Packages:

- `debianutils=4.11.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.11.2
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.11.2.dsc' debianutils_4.11.2.dsc 1644 SHA256:b11164a7aa3ca07ae1d758d15d707928defb64f2c35bf96f2e4fd983ee17b310
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.11.2.tar.xz' debianutils_4.11.2.tar.xz 158132 SHA256:3b680e81709b740387335fac8f8806d71611dcf60874e1a792e862e48a1650de
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.11.2/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.11.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.11.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.7-5`

Binary Packages:

- `diffutils=1:3.7-5`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.7-5
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-5.dsc' diffutils_3.7-5.dsc 1714 SHA256:5476ed004e300f291b5f0a356074a8ba8944a8b34514bb0fe95d274455adbf5d
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz' diffutils_3.7.orig.tar.xz 1448828 SHA256:b3a7a6221c3dc916085f0d205abf6b8e1ba443d4dd965118da364a1dc1cb3a26
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7.orig.tar.xz.asc' diffutils_3.7.orig.tar.xz.asc 833 SHA256:c89b9d60a1d67cf8b2dd108a8b918e4cce34cba6c9e1f67e2ca482c52c0258a7
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.7-5.debian.tar.xz' diffutils_3.7-5.debian.tar.xz 89004 SHA256:c90fd39d677702226b89d7559c124d7eb0b88195c381853ca1e5c8ca08e90a3a
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.7-5/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.7-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.7-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.20.12`

Binary Packages:

- `dpkg=1.20.12`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.20.12
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.20.12.dsc' dpkg_1.20.12.dsc 2124 SHA256:fe919a7491472bab59362fab8da0c89cf59cd2eea4a8714db58f9f169fc62bf4
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.20.12.tar.xz' dpkg_1.20.12.tar.xz 5009108 SHA256:1428610305d00dffa9c35543fc3096bb1ce3293b53ed4ddad847a3d822eafbf0
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.20.12/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.20.12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.20.12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dulwich=0.20.15-1`

Binary Packages:

- `python3-dulwich=0.20.15-1`

Licenses: (parsed from: `/usr/share/doc/python3-dulwich/copyright`)

- `Apache-2`
- `Apache-2.0`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris dulwich=0.20.15-1
'http://deb.debian.org/debian/pool/main/d/dulwich/dulwich_0.20.15-1.dsc' dulwich_0.20.15-1.dsc 2126 SHA256:ea8f09516cf693c8b23433a4ba3da8bdec3875d7b8ace5eb29b5d3e1cfc977e8
'http://deb.debian.org/debian/pool/main/d/dulwich/dulwich_0.20.15.orig.tar.gz' dulwich_0.20.15.orig.tar.gz 391841 SHA256:fb1773373ec2af896031f8312af6962a1b8b0176a2de3fb3d84a84ec04498888
'http://deb.debian.org/debian/pool/main/d/dulwich/dulwich_0.20.15-1.debian.tar.xz' dulwich_0.20.15-1.debian.tar.xz 53348 SHA256:f0723f7c7df093eccc8f87c22b67b5f66b9736e515e34cf7822bf1d8a135dedf
```

Other potentially useful URLs:

- https://sources.debian.net/src/dulwich/0.20.15-1/ (for browsing the source)
- https://sources.debian.net/src/dulwich/0.20.15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dulwich/0.20.15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.46.2-2`

Binary Packages:

- `e2fsprogs=1.46.2-2`
- `libcom-err2:amd64=1.46.2-2`
- `libext2fs2:amd64=1.46.2-2`
- `libss2:amd64=1.46.2-2`
- `logsave=1.46.2-2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`, `/usr/share/doc/logsave/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.46.2-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2-2.dsc' e2fsprogs_1.46.2-2.dsc 2842 SHA256:5b25910da7b90e40881d2cf63ebb4ae49642a8730f6e2a9c953e365dddccb73c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2.orig.tar.gz' e2fsprogs_1.46.2.orig.tar.gz 9496954 SHA256:f79f26b4f65bdc059fca12e1ec6a3040c3ce1a503fb70eb915bee71903815cd5
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2.orig.tar.gz.asc' e2fsprogs_1.46.2.orig.tar.gz.asc 488 SHA256:948552550f23a9e0223cecb51b5b85258c9d94895a20bce1180fce770628a55f
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.46.2-2.debian.tar.xz' e2fsprogs_1.46.2-2.debian.tar.xz 92624 SHA256:dc67d61815c524922e7461040d732bd245cf0196f7cc8a91ea7911a87b38f737
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.46.2-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.46.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.46.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.10-2+deb11u5`

Binary Packages:

- `libexpat1:amd64=2.2.10-2+deb11u5`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.10-2+deb11u5
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.10-2%2bdeb11u5.dsc' expat_2.2.10-2+deb11u5.dsc 2175 SHA256:5bbf7d1df4aa4fb5d31141b58dc08a687918c1685c48300bc3f67a8f56fe3071
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.10.orig.tar.gz' expat_2.2.10.orig.tar.gz 8276395 SHA256:62e280f5fd29a5b70973f623e20a7412c3e3912c2684cb0e462e2c881be129e1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.10-2%2bdeb11u5.debian.tar.xz' expat_2.2.10-2+deb11u5.debian.tar.xz 29468 SHA256:b24f586a155c207b2dbf6db1b6e4106427150acdd3a654c00c52d400da70d23d
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.2.10-2+deb11u5/ (for browsing the source)
- https://sources.debian.net/src/expat/2.2.10-2+deb11u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.2.10-2+deb11u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fftw3=3.3.8-2`

Binary Packages:

- `libfftw3-double3:amd64=3.3.8-2`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.8-2
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8-2.dsc' fftw3_3.3.8-2.dsc 2978 SHA256:b4367efbcc2bbbc44b62a9416a1c37764f5214628632553070c35893df786f68
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8.orig.tar.gz' fftw3_3.3.8.orig.tar.gz 4110137 SHA256:6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8-2.debian.tar.xz' fftw3_3.3.8-2.debian.tar.xz 13696 SHA256:684dede6b4124f309033d128dc7bdf1eb394984e6e8dd79e1fd5d73b95b12461
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.8-2/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.8.0-1`

Binary Packages:

- `findutils=4.8.0-1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.8.0-1
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0-1.dsc' findutils_4.8.0-1.dsc 2302 SHA256:47f342ec5146f4138f5004dbefe5838656057b502dfe225884b9f56840e29a3b
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz' findutils_4.8.0.orig.tar.xz 1983096 SHA256:57127b7e97d91282c6ace556378d5455a9509898297e46e10443016ea1387164
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0.orig.tar.xz.asc' findutils_4.8.0.orig.tar.xz.asc 488 SHA256:dc0d5251026532d2b115e447eea70a934d3df6a0efcaf225c9d585eeedeefe62
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.8.0-1.debian.tar.xz' findutils_4.8.0-1.debian.tar.xz 27296 SHA256:c99753f13f9e79653f79a398d1aafb15294c8f7953ad86948c7bf4cb0032bb43
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.13.1-4.2`

Binary Packages:

- `fontconfig-config=2.13.1-4.2`
- `libfontconfig1:amd64=2.13.1-4.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.13.1-4.2
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-4.2.dsc' fontconfig_2.13.1-4.2.dsc 2716 SHA256:d22e6441f0aa03b569d886fbb3227330dd2305e7aa10513e177ced28b8b52d63
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1.orig.tar.bz2' fontconfig_2.13.1.orig.tar.bz2 1723639 SHA256:f655dd2a986d7aa97e052261b36aa67b0a64989496361eca8d604e6414006741
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-4.2.debian.tar.xz' fontconfig_2.13.1-4.2.debian.tar.xz 55124 SHA256:f1ec69a2a0affd86189d3b75ced77b30bbcbc3a6fc0508490e570d4786464b58
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.13.1-4.2/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.13.1-4.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.13.1-4.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fonts-urw-base35=20200910-1`

Binary Packages:

- `fonts-urw-base35=20200910-1`

Licenses: (parsed from: `/usr/share/doc/fonts-urw-base35/copyright`)

- `AGPL-3`
- `AGPL-3 with Font exception`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fonts-urw-base35=20200910-1
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910-1.dsc' fonts-urw-base35_20200910-1.dsc 2061 SHA256:6654b571e4cba4e7a3ee280bc89fdb7cabcc917021d8166d4b2e99e0fdff2843
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910.orig.tar.gz' fonts-urw-base35_20200910.orig.tar.gz 11190093 SHA256:e0d9b7f11885fdfdc4987f06b2aa0565ad2a4af52b22e5ebf79e1a98abd0ae2f
'http://deb.debian.org/debian/pool/main/f/fonts-urw-base35/fonts-urw-base35_20200910-1.debian.tar.xz' fonts-urw-base35_20200910-1.debian.tar.xz 17772 SHA256:92fff963144e01f86d4b6f380401963dd626e84c64c5ec545933dc138c80a587
```

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-urw-base35/20200910-1/ (for browsing the source)
- https://sources.debian.net/src/fonts-urw-base35/20200910-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-urw-base35/20200910-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetds=1.2.3-1`

Binary Packages:

- `freetds-common=1.2.3-1`
- `libsybdb5:amd64=1.2.3-1`

Licenses: (parsed from: `/usr/share/doc/freetds-common/copyright`, `/usr/share/doc/libsybdb5/copyright`)

- `GFDL`
- `GFDL-NIV-1.1+`
- `LGPL`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris freetds=1.2.3-1
'http://deb.debian.org/debian/pool/main/f/freetds/freetds_1.2.3-1.dsc' freetds_1.2.3-1.dsc 2353 SHA256:d15428c9485b2dd032c3c6e9401355140418521f994a50814a321ee1e54da28f
'http://deb.debian.org/debian/pool/main/f/freetds/freetds_1.2.3.orig.tar.gz' freetds_1.2.3.orig.tar.gz 3402019 SHA256:50ca5f54a76088fcf54873d76806996c6f43a7b6defafafa2b11060caf2e05b8
'http://deb.debian.org/debian/pool/main/f/freetds/freetds_1.2.3-1.diff.gz' freetds_1.2.3-1.diff.gz 24634 SHA256:55ad19b90526826cf039773f09c9ec8cad267dd6d8bf68621e4b6cc501fbc483
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetds/1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/freetds/1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetds/1.2.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.10.4+dfsg-1+deb11u1`

Binary Packages:

- `libfreetype6:amd64=2.10.4+dfsg-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

- `Apache-2.0`
- `BSD-3-Clause`
- `FSFAP`
- `FSFUL`
- `FSFULLR`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `OFL-1.1`
- `OpenGroup-BSD-like`
- `Permissive`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.10.4+dfsg-1+deb11u1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg-1%2bdeb11u1.dsc' freetype_2.10.4+dfsg-1+deb11u1.dsc 3762 SHA256:6c93012be153ec146b77bfa4df0bd8b19affe63f5a8bdbfbf3ce6faf4a89e365
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg.orig-ft2demos.tar.xz' freetype_2.10.4+dfsg.orig-ft2demos.tar.xz 236712 SHA256:3f873ebe4fb387da3859149459f9be95320ce1fd56b50f8fdb9d2a8492887083
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg.orig-ft2demos.tar.xz.asc' freetype_2.10.4+dfsg.orig-ft2demos.tar.xz.asc 195 SHA256:38d5b9a5aa11ecf8c6d4c983ef48b3ce2288fdf93d44719df2598b9d415c8061
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg.orig-ft2docs.tar.xz' freetype_2.10.4+dfsg.orig-ft2docs.tar.xz 2079084 SHA256:cca1c19d1efa911bb685d919b5b0fe1279b0699bf8eb6a3d3bf9f02784758212
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg.orig-ft2docs.tar.xz.asc' freetype_2.10.4+dfsg.orig-ft2docs.tar.xz.asc 195 SHA256:29fca9ff0e1cdc57ad5707b17f629eeaa216eb334f6082f1b05fb0fe35e14ff3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg.orig.tar.xz' freetype_2.10.4+dfsg.orig.tar.xz 2259340 SHA256:db0c0938b3b75cf314775baa75198098e41583b3aaa4804b454f183ce45120a9
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.10.4%2bdfsg-1%2bdeb11u1.debian.tar.xz' freetype_2.10.4+dfsg-1+deb11u1.debian.tar.xz 117572 SHA256:f8845df5a24d816934ef30b46b8561072df3f7973ea65654674d69810aab9c3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.10.4+dfsg-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.10.4+dfsg-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.10.4+dfsg-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-10=10.2.1-6`

Binary Packages:

- `gcc-10-base:amd64=10.2.1-6`
- `libgcc-s1:amd64=10.2.1-6`
- `libgomp1:amd64=10.2.1-6`
- `libstdc++6:amd64=10.2.1-6`

Licenses: (parsed from: `/usr/share/doc/gcc-10-base/copyright`, `/usr/share/doc/libgcc-s1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-10=10.2.1-6
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1-6.dsc' gcc-10_10.2.1-6.dsc 27632 SHA256:24024c1e225ca968f37ce39047ff5f1058219976db9e88a807173c2f07fa6029
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1.orig.tar.xz' gcc-10_10.2.1.orig.tar.xz 84547844 SHA256:ea3c05faa381486e6b859c047dc14977418bf1ccda4567064e016493fd6fffec
'http://deb.debian.org/debian/pool/main/g/gcc-10/gcc-10_10.2.1-6.debian.tar.xz' gcc-10_10.2.1-6.debian.tar.xz 2366560 SHA256:a95d6b9da2be83f9751850b002021281411ff1003d9feb77298b131da47820b3
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-10/10.2.1-6/ (for browsing the source)
- https://sources.debian.net/src/gcc-10/10.2.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-10/10.2.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-9=9.3.0-22`

Binary Packages:

- `gcc-9-base:amd64=9.3.0-22`

Licenses: (parsed from: `/usr/share/doc/gcc-9-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris gcc-9=9.3.0-22
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0-22.dsc' gcc-9_9.3.0-22.dsc 21926 SHA256:14a0ea03cee0eb5450cc630a3bdf47da157062b3e7622ac45f6ae14a321eae96
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0.orig.tar.gz' gcc-9_9.3.0.orig.tar.gz 88686943 SHA256:824044ffa96eb337bb1c1d4cf6a82691d0290d6f42e1d13362eea855458de060
'http://deb.debian.org/debian/pool/main/g/gcc-9/gcc-9_9.3.0-22.debian.tar.xz' gcc-9_9.3.0-22.debian.tar.xz 904252 SHA256:68d55260456847880c71831b69c19cb81e9d1abf09274ab77ab6c081e177d94d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-9/9.3.0-22/ (for browsing the source)
- https://sources.debian.net/src/gcc-9/9.3.0-22/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-9/9.3.0-22/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.19-2`

Binary Packages:

- `libgdbm-compat4:amd64=1.19-2`
- `libgdbm6:amd64=1.19-2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.19-2
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19-2.dsc' gdbm_1.19-2.dsc 2603 SHA256:1f05cd17a44cdf05eb97df79147a77a57fba3346b48f00909abe8ad963bf6220
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19.orig.tar.gz' gdbm_1.19.orig.tar.gz 967861 SHA256:37ed12214122b972e18a0d94995039e57748191939ef74115b1d41d8811364bc
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19.orig.tar.gz.asc' gdbm_1.19.orig.tar.gz.asc 181 SHA256:8f4e0502073a7a22972f1edc84c70151033257d879402ac85176d3ebc984b2b8
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.19-2.debian.tar.xz' gdbm_1.19-2.debian.tar.xz 16228 SHA256:c49d2faaa340acc8e94277dab0e0bf4ac10d49d9c374d6841883ac868edb5014
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.19-2/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.19-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.19-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ghostscript=9.53.3~dfsg-7+deb11u2`

Binary Packages:

- `ghostscript=9.53.3~dfsg-7+deb11u2`
- `libgs9:amd64=9.53.3~dfsg-7+deb11u2`
- `libgs9-common=9.53.3~dfsg-7+deb11u2`

Licenses: (parsed from: `/usr/share/doc/ghostscript/copyright`, `/usr/share/doc/libgs9/copyright`, `/usr/share/doc/libgs9-common/copyright`)

- `AGPL-3`
- `AGPL-3+`
- `AGPL-3+ with font exception`
- `Adobe-2006`
- `Apache-2.0`
- `BSD-3-Clause`
- `BSD-3-Clause~Adobe`
- `Expat`
- `Expat~Ghostgum`
- `Expat~SunSoft`
- `Expat~SunSoft with SunSoft exception`
- `FTL`
- `GAP~configure`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `ISC`
- `LGPL-2.1`
- `NTP~Lucent`
- `NTP~Open`
- `NTP~WSU`
- `ZLIB`
- `custom`
- `none`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris ghostscript=9.53.3~dfsg-7+deb11u2
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_9.53.3%7edfsg-7%2bdeb11u2.dsc' ghostscript_9.53.3~dfsg-7+deb11u2.dsc 2864 SHA256:dae98d9060d5b5346c6f46dfaf835dd2ab691e8c76f354a007537142117a6cfe
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_9.53.3%7edfsg.orig.tar.xz' ghostscript_9.53.3~dfsg.orig.tar.xz 23948068 SHA256:678f99fc6cca9a224f49891b8db5d9a325b8b3fbbffa9f29d44bac9f54603f3d
'http://deb.debian.org/debian/pool/main/g/ghostscript/ghostscript_9.53.3%7edfsg-7%2bdeb11u2.debian.tar.xz' ghostscript_9.53.3~dfsg-7+deb11u2.debian.tar.xz 121500 SHA256:f3631e24888aefee0d16a8828c6e5c376ce4bdc154c476e5a03a46196d8b3a7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/ghostscript/9.53.3~dfsg-7+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/ghostscript/9.53.3~dfsg-7+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ghostscript/9.53.3~dfsg-7+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `git=1:2.30.2-1`

Binary Packages:

- `git=1:2.30.2-1`
- `git-man=1:2.30.2-1`

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
$ apt-get source -qq --print-uris git=1:2.30.2-1
'http://deb.debian.org/debian/pool/main/g/git/git_2.30.2-1.dsc' git_2.30.2-1.dsc 2867 SHA256:3afa12a5b18f1bc35c24bc1aef1a6c71327069d9c0e8e8aae4f098f2ff308c3d
'http://deb.debian.org/debian/pool/main/g/git/git_2.30.2.orig.tar.xz' git_2.30.2.orig.tar.xz 6329820 SHA256:41f7d90c71f9476cd387673fcb10ce09ccbed67332436a4cc58d7af32c355faa
'http://deb.debian.org/debian/pool/main/g/git/git_2.30.2-1.debian.tar.xz' git_2.30.2-1.debian.tar.xz 670844 SHA256:53233ac9049ebe0bf406e780afebbff3d1845f4001083657c649b30d6c526093
```

Other potentially useful URLs:

- https://sources.debian.net/src/git/1:2.30.2-1/ (for browsing the source)
- https://sources.debian.net/src/git/1:2.30.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/git/1:2.30.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.66.8-1`

Binary Packages:

- `libglib2.0-0:amd64=2.66.8-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.66.8-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8-1.dsc' glib2.0_2.66.8-1.dsc 3383 SHA256:2f4335085e6d94e4c3fd6441195014b2eed516fc99b649ea75fe66c38bc5edba
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8.orig.tar.xz' glib2.0_2.66.8.orig.tar.xz 4845548 SHA256:97bc87dd91365589af5cbbfea2574833aea7a1b71840fd365ecd2852c76b9c8b
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.66.8-1.debian.tar.xz' glib2.0_2.66.8-1.debian.tar.xz 99420 SHA256:a1d3c2725a1a680cf4e1ab021d66bbb7f223a6faee315e7f35bee0eb38ae712e
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.66.8-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.66.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.66.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.31-13+deb11u5`

Binary Packages:

- `libc-bin=2.31-13+deb11u5`
- `libc-dev-bin=2.31-13+deb11u5`
- `libc6:amd64=2.31-13+deb11u5`
- `libc6-dev:amd64=2.31-13+deb11u5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.31-13+deb11u5
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31-13%2bdeb11u5.dsc' glibc_2.31-13+deb11u5.dsc 8347 SHA256:77e3760f65a2f850bf492c8248690aed6eaec2eb988a261e0439cdcada110487
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31.orig.tar.xz' glibc_2.31.orig.tar.xz 17254692 SHA256:3dc7704b6166839c37d7047626fd199f3d4c09aca0d90e48c51c31c967dce34e
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.31-13%2bdeb11u5.debian.tar.xz' glibc_2.31-13+deb11u5.debian.tar.xz 954032 SHA256:bb679f8e65d5b692f4479848848ec60e6eaa40e40b7eba7f5c2cf7bc79e3a415
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.31-13+deb11u5/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.31-13+deb11u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.31-13+deb11u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.2.1+dfsg-1+deb11u1`

Binary Packages:

- `libgmp-dev:amd64=2:6.2.1+dfsg-1+deb11u1`
- `libgmp10:amd64=2:6.2.1+dfsg-1+deb11u1`
- `libgmpxx4ldbl:amd64=2:6.2.1+dfsg-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libgmp-dev/copyright`, `/usr/share/doc/libgmp10/copyright`, `/usr/share/doc/libgmpxx4ldbl/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.2.1+dfsg-1+deb11u1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg-1%2bdeb11u1.dsc' gmp_6.2.1+dfsg-1+deb11u1.dsc 2181 SHA256:4c09eb0a1c333fc5e67184a18f050af0f46f7f0fdeb533557bebd89df07c137b
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg.orig.tar.xz' gmp_6.2.1+dfsg.orig.tar.xz 1853476 SHA256:c6ba08e3f079260ab90ff44ab8801eae134cd62cd78f4aa56317c0e70daa40cb
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.2.1%2bdfsg-1%2bdeb11u1.debian.tar.xz' gmp_6.2.1+dfsg-1+deb11u1.debian.tar.xz 21920 SHA256:3cde187d542f5c095c6db8b76ec5252353e0413b492c57eb2e67ed3c43f40172
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.2.1+dfsg-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.2.1+dfsg-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.2.1+dfsg-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.27-2+deb11u2`

Binary Packages:

- `gpgv=2.2.27-2+deb11u2`

Licenses: (parsed from: `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.27-2+deb11u2
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27-2%2bdeb11u2.dsc' gnupg2_2.2.27-2+deb11u2.dsc 3322 SHA256:a334ffaa6c078907e64d990c469873ec883abcbbc2ca3911e4f3072c50d33eb8
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2' gnupg2_2.2.27.orig.tar.bz2 7191555 SHA256:34e60009014ea16402069136e0a5f63d9b65f90096244975db5cea74b3d02399
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27.orig.tar.bz2.asc' gnupg2_2.2.27.orig.tar.bz2.asc 119 SHA256:2b44fd82da223cb629062b9c8840d92698c003be8531fc393c38f97b28cae2a4
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.27-2%2bdeb11u2.debian.tar.xz' gnupg2_2.2.27-2+deb11u2.debian.tar.xz 63960 SHA256:b35c6a717d7f79cfd1a7468436721ca9c9211f70d10216e22523478094670a7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.27-2+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.27-2+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.27-2+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.7.1-5+deb11u2`

Binary Packages:

- `libgnutls30:amd64=3.7.1-5+deb11u2`

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
$ apt-get source -qq --print-uris gnutls28=3.7.1-5+deb11u2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1-5%2bdeb11u2.dsc' gnutls28_3.7.1-5+deb11u2.dsc 3674 SHA256:595e1121b264002001c4e38a431195788ba16c3ca1cca0bf2ee1d4c7983d4f78
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1.orig.tar.xz' gnutls28_3.7.1.orig.tar.xz 6038388 SHA256:3777d7963eca5e06eb315686163b7b3f5045e2baac5e54e038ace9835e5cac6f
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1.orig.tar.xz.asc' gnutls28_3.7.1.orig.tar.xz.asc 854 SHA256:13a683b12602c169a7ad7827ab0e3f35c8fa1f98675d0073cf7d54a8cd635582
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.7.1-5%2bdeb11u2.debian.tar.xz' gnutls28_3.7.1-5+deb11u2.debian.tar.xz 94568 SHA256:5c3ab8346540dd43457f51248f20a1bfd675f3cfe6a876a743b978039832c0d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.7.1-5+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.7.1-5+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.7.1-5+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gosu=1.12-1`

Binary Packages:

- `gosu=1.12-1+b6`

Licenses: (parsed from: `/usr/share/doc/gosu/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gosu=1.12-1
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12-1.dsc' gosu_1.12-1.dsc 2008 SHA256:2d73de09a13b10d0955ac067078af3c0f3d66309dab58ee2c22914bd58050d13
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12.orig.tar.gz' gosu_1.12.orig.tar.gz 19366 SHA256:91de59882ae888c3e32dbc89c54d3d3c995f0dbbe3e90fd8f79c54757f110a3d
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.12-1.debian.tar.xz' gosu_1.12-1.debian.tar.xz 3440 SHA256:f05c0d0019513118ddce3f28cf6d4c727536605ba30095901e28818407927bee
```

Other potentially useful URLs:

- https://sources.debian.net/src/gosu/1.12-1/ (for browsing the source)
- https://sources.debian.net/src/gosu/1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gosu/1.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.6-1`

Binary Packages:

- `grep=3.6-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.6-1
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6-1.dsc' grep_3.6-1.dsc 1644 SHA256:ccf6849a07a2c1fb77d2534a414f402af8cadeeac66a41deda04f3e835b09d3d
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6.orig.tar.xz' grep_3.6.orig.tar.xz 1589412 SHA256:667e15e8afe189e93f9f21a7cd3a7b3f776202f417330b248c2ad4f997d9373e
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6.orig.tar.xz.asc' grep_3.6.orig.tar.xz.asc 833 SHA256:02b52c0676e0e97762cee638125a345a5300fdcba691c1a5b0725ee6bd28d4a8
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.6-1.debian.tar.xz' grep_3.6-1.debian.tar.xz 17748 SHA256:67b481210e2db6bb9c45d90f39445a90c83e6d32fc6c8e5b9e89bb40488767c4
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.6-1/ (for browsing the source)
- https://sources.debian.net/src/grep/3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gsfonts=1:8.11+urwcyr1.0.7~pre44-4.5`

Binary Packages:

- `gsfonts=1:8.11+urwcyr1.0.7~pre44-4.5`

Licenses: (parsed from: `/usr/share/doc/gsfonts/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gsfonts=1:8.11+urwcyr1.0.7~pre44-4.5
'http://deb.debian.org/debian/pool/main/g/gsfonts/gsfonts_8.11%2burwcyr1.0.7%7epre44-4.5.dsc' gsfonts_8.11+urwcyr1.0.7~pre44-4.5.dsc 1986 SHA256:e61dd17d0bb41c71c2b9e385b43a2d27c57382a5cf60835eb970d65274556449
'http://deb.debian.org/debian/pool/main/g/gsfonts/gsfonts_8.11%2burwcyr1.0.7%7epre44.orig.tar.gz' gsfonts_8.11+urwcyr1.0.7~pre44.orig.tar.gz 3390551 SHA256:9f2a598998bf05e023546ac981aa2a857aa1635d2e0e3020a3c3004ad564dc00
'http://deb.debian.org/debian/pool/main/g/gsfonts/gsfonts_8.11%2burwcyr1.0.7%7epre44-4.5.diff.gz' gsfonts_8.11+urwcyr1.0.7~pre44-4.5.diff.gz 7023 SHA256:24ce5f0ce38d68a07cf950a85617b7b8093a5b70793c9120bd9f765e642213ba
```

Other potentially useful URLs:

- https://sources.debian.net/src/gsfonts/1:8.11+urwcyr1.0.7~pre44-4.5/ (for browsing the source)
- https://sources.debian.net/src/gsfonts/1:8.11+urwcyr1.0.7~pre44-4.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gsfonts/1:8.11+urwcyr1.0.7~pre44-4.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.10-4+deb11u1`

Binary Packages:

- `gzip=1.10-4+deb11u1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `FSF-manpages`
- `GFDL-1.3+-no-invariant`
- `GFDL-3`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.10-4+deb11u1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10-4%2bdeb11u1.dsc' gzip_1.10-4+deb11u1.dsc 1812 SHA256:0bcc813d124297ae741573b30db5faefec038aff92616d6ba014f859703f5acf
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10.orig.tar.gz' gzip_1.10.orig.tar.gz 1201421 SHA256:c91f74430bf7bc20402e1f657d0b252cb80aa66ba333a25704512af346633c68
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.10-4%2bdeb11u1.debian.tar.xz' gzip_1.10-4+deb11u1.debian.tar.xz 22952 SHA256:183338e989ad327fca8c3281e8452c571bafed0c3cca0b6cea269a34b8dc19d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.10-4+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.10-4+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.10-4+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.17-2`

Binary Packages:

- `hicolor-icon-theme=0.17-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-2
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.dsc' hicolor-icon-theme_0.17-2.dsc 2053 SHA256:9df02b466f82cd6fa13930bc197d001ed8ddac1abc7f8dde3db45ed1708336bd
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.debian.tar.xz' hicolor-icon-theme_0.17-2.debian.tar.xz 3536 SHA256:97eec9852a2923b95bd13fc59c30fb1b9063ffd1f8a04748544d4975a84e98f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.17-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.23`

Binary Packages:

- `hostname=3.23`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.23
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23.dsc' hostname_3.23.dsc 1402 SHA256:0694c083fad82da1fd33204557a30bfc745a689a64030ba360062daafe03ede0
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.23.tar.gz' hostname_3.23.tar.gz 13672 SHA256:bc6d1954b22849869ff8b2a602e39f08b1702f686d4b58dd7927cdeb5b4876ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.23/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.23/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.23/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=67.1-7`

Binary Packages:

- `libicu67:amd64=67.1-7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=67.1-7
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1-7.dsc' icu_67.1-7.dsc 2236 SHA256:3213915e2b2b07ab1d5fe81ba4e310d8146c0a799fd65ac1f1dbb0c32f56cff1
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1.orig.tar.gz' icu_67.1.orig.tar.gz 24518055 SHA256:94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1.orig.tar.gz.asc' icu_67.1.orig.tar.gz.asc 833 SHA256:0044119f3df92ff3055dc3609f527fa1290177f6ef1b6650ea136698b245e537
'http://deb.debian.org/debian/pool/main/i/icu/icu_67.1-7.debian.tar.xz' icu_67.1-7.debian.tar.xz 30256 SHA256:9836cbc00bf8da459734c82ccd435d09674e85e268f272decf16dbfa0bda730e
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/67.1-7/ (for browsing the source)
- https://sources.debian.net/src/icu/67.1-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/67.1-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ijs=0.35-15`

Binary Packages:

- `libijs-0.35:amd64=0.35-15`

Licenses: (parsed from: `/usr/share/doc/libijs-0.35/copyright`)

- `Expat`
- `Expat~X`
- `Expat~X with X exception`
- `GAP`
- `GAP~Makefile.in`
- `GAP~configure`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`

Source:

```console
$ apt-get source -qq --print-uris ijs=0.35-15
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35-15.dsc' ijs_0.35-15.dsc 2073 SHA256:24ca5cfd3aa05fb20281c81afd81b006d2fad058683d7ef43d51a860614cd18c
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35.orig.tar.gz' ijs_0.35.orig.tar.gz 344262 SHA256:901fffb73e42dae343a8285a31d9c4e82dc3856d36be30adbdb564bdd27161d6
'http://deb.debian.org/debian/pool/main/i/ijs/ijs_0.35-15.debian.tar.xz' ijs_0.35-15.debian.tar.xz 10340 SHA256:5a9e755fb15f822a002308ae20b28b66926f77a352b6e73a57169cd61a4b1e4d
```

Other potentially useful URLs:

- https://sources.debian.net/src/ijs/0.35-15/ (for browsing the source)
- https://sources.debian.net/src/ijs/0.35-15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ijs/0.35-15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imagemagick=8:6.9.11.60+dfsg-1.3`

Binary Packages:

- `imagemagick=8:6.9.11.60+dfsg-1.3`
- `imagemagick-6-common=8:6.9.11.60+dfsg-1.3`
- `imagemagick-6.q16=8:6.9.11.60+dfsg-1.3`
- `libmagickcore-6.q16-6:amd64=8:6.9.11.60+dfsg-1.3`
- `libmagickwand-6.q16-6:amd64=8:6.9.11.60+dfsg-1.3`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6.q16-6/copyright`, `/usr/share/doc/libmagickwand-6.q16-6/copyright`)

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
- `TatcherUlrichPublicDomain`
- `aclocal`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.9.11.60+dfsg-1.3
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg-1.3.dsc' imagemagick_6.9.11.60+dfsg-1.3.dsc 5229 SHA256:5e09025a6861ace28ac9dc51db730172801e875842ba1faec5c9b736b2918269
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg.orig.tar.xz' imagemagick_6.9.11.60+dfsg.orig.tar.xz 9395144 SHA256:472fb516df842ee9c819ed80099c188463b9e961303511c36ae24d0eaa8959c4
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.11.60%2bdfsg-1.3.debian.tar.xz' imagemagick_6.9.11.60+dfsg-1.3.debian.tar.xz 246928 SHA256:a85cb23dc8633a89349517378b4b973235a59fc4969b908be660c7bde0f2b36c
```

Other potentially useful URLs:

- https://sources.debian.net/src/imagemagick/8:6.9.11.60+dfsg-1.3/ (for browsing the source)
- https://sources.debian.net/src/imagemagick/8:6.9.11.60+dfsg-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imagemagick/8:6.9.11.60+dfsg-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.60`

Binary Packages:

- `init-system-helpers=1.60`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.60
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60.dsc' init-system-helpers_1.60.dsc 1902 SHA256:51dd15cc34daf5e58e40560563785d422fb27ac8a2f6ce4e73350a800cbf3265
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60.tar.xz' init-system-helpers_1.60.tar.xz 40584 SHA256:2cf987e5ec2412faab8e99d6f26598b6ae65afe1af2073133575224997082172
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.60/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.60/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.60/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbig2dec=0.19-2`

Binary Packages:

- `libjbig2dec0:amd64=0.19-2`

Licenses: (parsed from: `/usr/share/doc/libjbig2dec0/copyright`)

- `AGPL-3+`
- `BSD-2-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `pubic-domain`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris jbig2dec=0.19-2
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.19-2.dsc' jbig2dec_0.19-2.dsc 2024 SHA256:a820b8e8566a7179b32a7657af54e3040a9d17d8ada1b5a23633f511309b3d97
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.19.orig.tar.gz' jbig2dec_0.19.orig.tar.gz 149134 SHA256:e81b787ad0b147a437a52d9ce7de1a8f429655e8aa030383b6b2dd8919373717
'http://deb.debian.org/debian/pool/main/j/jbig2dec/jbig2dec_0.19-2.debian.tar.xz' jbig2dec_0.19-2.debian.tar.xz 22240 SHA256:f64f253dbc3754aec4d0ee96d0abc8fc4c7f1f48741c20364f83c63bea621079
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbig2dec/0.19-2/ (for browsing the source)
- https://sources.debian.net/src/jbig2dec/0.19-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbig2dec/0.19-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1+b2`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbigkit/2.1-3.1/ (for browsing the source)
- https://sources.debian.net/src/jbigkit/2.1-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbigkit/2.1-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6.1-2`

Binary Packages:

- `libkeyutils1:amd64=1.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.6.1-2
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1-2.dsc' keyutils_1.6.1-2.dsc 2076 SHA256:6dd531f522fb3c5d8cfaaaf726e9277b64f50bff8c05d06269f42a677f65a4a8
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1.orig.tar.bz2' keyutils_1.6.1.orig.tar.bz2 97232 SHA256:c8b15722ae51d95b9ad76cc6d49a4c2cc19b0c60f72f61fb9bf43eea7cbd64ce
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.6.1-2.debian.tar.xz' keyutils_1.6.1-2.debian.tar.xz 13412 SHA256:862442538428b514bb33a1c8488d4528c5ea48feca0ea5e60d8d34fd440f2355
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.6.1-2/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.6.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.6.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.18.3-6+deb11u3`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.18.3-6+deb11u3`
- `libk5crypto3:amd64=1.18.3-6+deb11u3`
- `libkrb5-3:amd64=1.18.3-6+deb11u3`
- `libkrb5support0:amd64=1.18.3-6+deb11u3`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.18.3-6+deb11u3
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3-6%2bdeb11u3.dsc' krb5_1.18.3-6+deb11u3.dsc 3209 SHA256:539d8a8df5c181b5c16cab487fef4d192f934a170dcfe507e76020132fdb5399
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3.orig.tar.gz' krb5_1.18.3.orig.tar.gz 8715312 SHA256:e61783c292b5efd9afb45c555a80dd267ac67eebabca42185362bee6c4fbd719
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3.orig.tar.gz.asc' krb5_1.18.3.orig.tar.gz.asc 833 SHA256:ded19808ba7320ad0bb3ddfb5202845b2ff36a50613af7832f78dd3cb4437419
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.18.3-6%2bdeb11u3.debian.tar.xz' krb5_1.18.3-6+deb11u3.debian.tar.xz 108804 SHA256:5efc82324430be1c2e12a6f0b40dd27b149f5f77cfe10a9ed0b8567a07f08981
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.18.3-6+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.18.3-6+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.18.3-6+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.12~rc1-2`

Binary Packages:

- `liblcms2-2:amd64=2.12~rc1-2`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3 (GPL-3 for the fast_float plugin only)`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.12~rc1-2
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.12%7erc1-2.dsc' lcms2_2.12~rc1-2.dsc 1988 SHA256:57b0b3cde709d8b7c43b195ba7f628d2d79323ee0db883050f253ee9f9acd48a
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.12%7erc1.orig.tar.gz' lcms2_2.12~rc1.orig.tar.gz 7417767 SHA256:3300ddd8c51d60ebcc206d20d185b1b19939c4cec1576d1f5b95297b0fbdfe19
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.12%7erc1-2.debian.tar.xz' lcms2_2.12~rc1-2.debian.tar.xz 10420 SHA256:dddb5b18a42fc7308e732f00643b29ac9f2638cf246569683cb50f13520c2cca
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.12~rc1-2/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.12~rc1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.12~rc1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.11.3-1`

Binary Packages:

- `libbsd0:amd64=0.11.3-1`

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
$ apt-get source -qq --print-uris libbsd=0.11.3-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.3-1.dsc' libbsd_0.11.3-1.dsc 2292 SHA256:714c9cee71ddcea7a91593c56ca9ab297856e4f597743a32cda909544fe04ccb
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.3.orig.tar.xz' libbsd_0.11.3.orig.tar.xz 399712 SHA256:ff95cf8184151dacae4247832f8d4ea8800fa127dbd15033ecfe839f285b42a1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.3.orig.tar.xz.asc' libbsd_0.11.3.orig.tar.xz.asc 833 SHA256:213f30c9537e2a180ebdad6445402ea879f83c3a85907f7509ae7f7304f7ce1b
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.11.3-1.debian.tar.xz' libbsd_0.11.3-1.debian.tar.xz 17504 SHA256:b414f384d71ebd8ed67b759526df4c83529946414c71cc3c5e5b98bc9323ad3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.11.3-1/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.11.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.11.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.9-2.2`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2.2+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2.2
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2.dsc' libcap-ng_0.7.9-2.2.dsc 2081 SHA256:d573ce59d83d2c117515e7c57dde1c990e9c5a34e0f53ac09f6b4d3e153e9aae
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.2.debian.tar.xz' libcap-ng_0.7.9-2.2.debian.tar.xz 6308 SHA256:6d7b5cfcf435fe996e5dc78770a9ab1ab614ced5bee56e3e0ba4e09d8c832a0a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.9-2.2/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.9-2.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.9-2.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcbor=0.5.0+dfsg-2`

Binary Packages:

- `libcbor0:amd64=0.5.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libcbor0/copyright`)

- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libcbor=0.5.0+dfsg-2
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.5.0%2bdfsg-2.dsc' libcbor_0.5.0+dfsg-2.dsc 2057 SHA256:c1ad2786b340b65d55761ecc3d090a9d997b3a0e5218ff1d39f5cd19df900d73
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.5.0%2bdfsg.orig.tar.gz' libcbor_0.5.0+dfsg.orig.tar.gz 261201 SHA256:2bd1fb795d121a72fc127ccd0e6ce5f5742d5970d0913759bcdc729c700804fb
'http://deb.debian.org/debian/pool/main/libc/libcbor/libcbor_0.5.0%2bdfsg-2.debian.tar.xz' libcbor_0.5.0+dfsg-2.debian.tar.xz 3944 SHA256:c06d0890b369183142d09fc6a460d68fdaf32bb22f9885ee1cc203d00adc543d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcbor/0.5.0+dfsg-2/ (for browsing the source)
- https://sources.debian.net/src/libcbor/0.5.0+dfsg-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcbor/0.5.0+dfsg-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libde265=1.0.8-1`

Binary Packages:

- `libde265-0:amd64=1.0.8-1`

Licenses: (parsed from: `/usr/share/doc/libde265-0/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `other-1`
- `public-domain-1`
- `public-domain-2`

Source:

```console
$ apt-get source -qq --print-uris libde265=1.0.8-1
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.8-1.dsc' libde265_1.0.8-1.dsc 2216 SHA256:fea3b9010b68c3f0ab8f577c9a9fd1b89bfac1ae7b6814360d10cc0742528112
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.8.orig.tar.gz' libde265_1.0.8.orig.tar.gz 837878 SHA256:24c791dd334fa521762320ff54f0febfd3c09fc978880a8c5fbc40a88f21d905
'http://deb.debian.org/debian/pool/main/libd/libde265/libde265_1.0.8-1.debian.tar.xz' libde265_1.0.8-1.debian.tar.xz 8184 SHA256:cd82689cc5012a9aa726f9d3888552ab64866a273478e2da2e2ee99e07477ac9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libde265/1.0.8-1/ (for browsing the source)
- https://sources.debian.net/src/libde265/1.0.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libde265/1.0.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdeflate=1.7-1`

Binary Packages:

- `libdeflate0:amd64=1.7-1`

Licenses: (parsed from: `/usr/share/doc/libdeflate0/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libdeflate=1.7-1
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.7-1.dsc' libdeflate_1.7-1.dsc 2163 SHA256:9f81571abf95f084dd6ce5c5f2b78ce66e5b1c7e2ec0f86e539f9df572061cd6
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.7.orig.tar.gz' libdeflate_1.7.orig.tar.gz 144143 SHA256:a5e6a0a9ab69f40f0f59332106532ca76918977a974e7004977a9498e3f11350
'http://deb.debian.org/debian/pool/main/libd/libdeflate/libdeflate_1.7-1.debian.tar.xz' libdeflate_1.7-1.debian.tar.xz 4392 SHA256:42a4f9b2307b0349fb2cd51a9585564284f480b03fa06c3f03ca02987ca66fb2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdeflate/1.7-1/ (for browsing the source)
- https://sources.debian.net/src/libdeflate/1.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdeflate/1.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libedit=3.1-20191231-2`

Binary Packages:

- `libedit2:amd64=3.1-20191231-2+b1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20191231-2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20191231-2.dsc' libedit_3.1-20191231-2.dsc 2208 SHA256:422c4cab3b047b62142eef4f77995fd1cd0f424c52ffeae953935e241d3aaa81
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20191231.orig.tar.gz' libedit_3.1-20191231.orig.tar.gz 516801 SHA256:dbb82cb7e116a5f8025d35ef5b4f7d4a3cdd0a3909a146a39112095a2d229071
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20191231-2.debian.tar.xz' libedit_3.1-20191231-2.debian.tar.xz 14576 SHA256:afb4656959bfa61817d0bc1982f2628373e84b251a148edb7da3e3c10645366c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20191231-2/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20191231-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20191231-2/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.dsc' liberror-perl_0.17029-1.dsc 2336 SHA256:0590467fe8c5f81bff9336e991462b2a9994b4876f4b732c8b8b31e927987cd7
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029.orig.tar.gz' liberror-perl_0.17029.orig.tar.gz 33304 SHA256:1a23f7913032aed6d4b68321373a3899ca66590f4727391a091ec19c95bf7adc
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17029-1.debian.tar.xz' liberror-perl_0.17029-1.debian.tar.xz 4552 SHA256:a753b142c4c33ebf9cc98ae5f7a08da13b7c9ca2823ec26e45c96efb9c15c42e
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17029-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17029-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17029-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.3-6`

Binary Packages:

- `libffi-dev:amd64=3.3-6`
- `libffi7:amd64=3.3-6`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi7/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.3-6
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3-6.dsc' libffi_3.3-6.dsc 1934 SHA256:cb5dcd6b54e0c8c7db4cd97deef68ac9e2ede49138ca5db194b60338eae8dd65
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3.orig.tar.gz' libffi_3.3.orig.tar.gz 1305466 SHA256:72fba7922703ddfa7a028d513ac15a85c8d54c8d67f55fa5a4802885dc652056
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.3-6.debian.tar.xz' libffi_3.3-6.debian.tar.xz 9168 SHA256:d15879289f32acf2afbbcc6ccf6e0c1aa306f6f06abb8b0301bfa41bffea9a55
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.3-6/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.3-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.3-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libfido2=1.6.0-2`

Binary Packages:

- `libfido2-1:amd64=1.6.0-2`

Licenses: (parsed from: `/usr/share/doc/libfido2-1/copyright`)

- `BSD-2-clause`
- `ISC`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris libfido2=1.6.0-2
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.6.0-2.dsc' libfido2_1.6.0-2.dsc 2565 SHA256:5706f21aa3179124e0e39aeded7519c6536b241ac58457413f36bdbd67cd6cd1
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.6.0.orig.tar.gz' libfido2_1.6.0.orig.tar.gz 413904 SHA256:6aed47aafd22be49c38f9281fb88ccd08c98678d9b8c39cdc87d1bb3ea2c63e4
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.6.0.orig.tar.gz.asc' libfido2_1.6.0.orig.tar.gz.asc 488 SHA256:3340543e15edc67a38850be6777448db33245b5f9f686903d24563a2c7c0d969
'http://deb.debian.org/debian/pool/main/libf/libfido2/libfido2_1.6.0-2.debian.tar.xz' libfido2_1.6.0-2.debian.tar.xz 72700 SHA256:a08adb41d42e64206c5f70f1f2c1510debb37256fe3b92681a0bdc4a73e6d8d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libfido2/1.6.0-2/ (for browsing the source)
- https://sources.debian.net/src/libfido2/1.6.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libfido2/1.6.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.7-6`

Binary Packages:

- `libgcrypt20:amd64=1.8.7-6`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.7-6
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7-6.dsc' libgcrypt20_1.8.7-6.dsc 2800 SHA256:af433c97fde6172bb51d458e66acd33c66052bdf78ad72f7034f0b1851015959
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7.orig.tar.bz2' libgcrypt20_1.8.7.orig.tar.bz2 2985660 SHA256:03b70f028299561b7034b8966d7dd77ef16ed139c43440925fe8782561974748
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7.orig.tar.bz2.asc' libgcrypt20_1.8.7.orig.tar.bz2.asc 228 SHA256:eed6bb4174433640a02c1dc8851f34f85ec55b43d76a24bec87d7175784ef614
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7-6.debian.tar.xz' libgcrypt20_1.8.7-6.debian.tar.xz 37564 SHA256:3fe8290b67416579fc99648ba025b8de732c4cc541b60b5f96f53d42a38916f5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.7-6/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.7-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.7-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.38-2`

Binary Packages:

- `libgpg-error0:amd64=1.38-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.38-2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38-2.dsc' libgpg-error_1.38-2.dsc 2220 SHA256:ab0ea76aa3552afa664210a871abc74637acafd89c068edf8dc03521b8e22d64
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38.orig.tar.bz2' libgpg-error_1.38.orig.tar.bz2 957637 SHA256:d8988275aa69d7149f931c10442e9e34c0242674249e171592b430ff7b3afd02
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38.orig.tar.bz2.asc' libgpg-error_1.38.orig.tar.bz2.asc 488 SHA256:d80eb927d85e19e96d8de17552f8f48b517ae7acac7685404e8027475c5b4330
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.38-2.debian.tar.xz' libgpg-error_1.38-2.debian.tar.xz 19544 SHA256:824bcb278ead676c20f174bd551b1cc44a294137fabe6a1d892667882f3b4ba2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.38-2/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.38-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.38-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libheif=1.11.0-1`

Binary Packages:

- `libheif1:amd64=1.11.0-1`

Licenses: (parsed from: `/usr/share/doc/libheif1/copyright`)

- `BOOST-1.0`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libheif=1.11.0-1
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.11.0-1.dsc' libheif_1.11.0-1.dsc 2283 SHA256:231abbe32fbbbf2246da933d56ddf815894ee99f6bbd46320f460f0572f0f07a
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.11.0.orig.tar.gz' libheif_1.11.0.orig.tar.gz 1680855 SHA256:c550938f56ff6dac83702251a143f87cb3a6c71a50d8723955290832d9960913
'http://deb.debian.org/debian/pool/main/libh/libheif/libheif_1.11.0-1.debian.tar.xz' libheif_1.11.0-1.debian.tar.xz 6928 SHA256:ff569cd13ef0029e4404fa0204234c4c967b1d96587a7bc9d490f13d5dfbb241
```

Other potentially useful URLs:

- https://sources.debian.net/src/libheif/1.11.0-1/ (for browsing the source)
- https://sources.debian.net/src/libheif/1.11.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libheif/1.11.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.3.0-5`

Binary Packages:

- `libidn2-0:amd64=2.3.0-5`

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
$ apt-get source -qq --print-uris libidn2=2.3.0-5
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0-5.dsc' libidn2_2.3.0-5.dsc 2046 SHA256:f8a787741b2395fe87c2773252e539bcc068fde0a5367316082cbbd2fed2be16
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0.orig.tar.gz' libidn2_2.3.0.orig.tar.gz 2164993 SHA256:e1cb1db3d2e249a6a3eb6f0946777c2e892d5c5dc7bd91c74394fc3a01cab8b5
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.3.0-5.debian.tar.xz' libidn2_2.3.0-5.debian.tar.xz 11276 SHA256:e061b97d035e374bc6a948a514c26ad7d1bda31c8147cc8db02e604c82865a15
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.3.0-5/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.3.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.3.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn=1.33-3`

Binary Packages:

- `libidn11:amd64=1.33-3`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.33-3
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-3.dsc' libidn_1.33-3.dsc 1863 SHA256:628431f0fdad27a9b76f5a6a428b68e29ae07fc4d5cf7ae74c1cb4d9063be378
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-3.debian.tar.xz' libidn_1.33-3.debian.tar.xz 23004 SHA256:c5325c54aa046d1d4a7c39b86772bec904777af0b11c800b813011d414fdb0b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn/1.33-3/ (for browsing the source)
- https://sources.debian.net/src/libidn/1.33-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn/1.33-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:2.0.6-4`

Binary Packages:

- `libjpeg62-turbo:amd64=1:2.0.6-4`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`
- `NTP`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:2.0.6-4
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.6-4.dsc' libjpeg-turbo_2.0.6-4.dsc 2580 SHA256:fd357f8d1469236ad1f630c185a8af0f76f68c99cd082360148597a479148866
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.6.orig.tar.gz' libjpeg-turbo_2.0.6.orig.tar.gz 2192315 SHA256:d74b92ac33b0e3657123ddcf6728788c90dc84dcb6a52013d758af3c4af481bb
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.6.orig.tar.gz.asc' libjpeg-turbo_2.0.6.orig.tar.gz.asc 793 SHA256:ab2d95f62c2f25b39823c2b0ee3d72979786f5c310c19943a74eed8c2abc7b4b
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_2.0.6-4.debian.tar.xz' libjpeg-turbo_2.0.6-4.debian.tar.xz 100860 SHA256:31765ab6f069c8e1f11c0e43fd984dd903506b8eef8b810c06c3f80c796a144c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:2.0.6-4/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:2.0.6-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:2.0.6-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblqr=0.4.2-2.1`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.1`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.1
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblqr/0.4.2-2.1/ (for browsing the source)
- https://sources.debian.net/src/liblqr/0.4.2-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblqr/0.4.2-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmd=1.0.3-3`

Binary Packages:

- `libmd0:amd64=1.0.3-3`

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
$ apt-get source -qq --print-uris libmd=1.0.3-3
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.3-3.dsc' libmd_1.0.3-3.dsc 2248 SHA256:c3be656dc94c906898358e1d27394e1aec1769a0b5e09e8a4e8cace735ce9967
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.3.orig.tar.xz' libmd_1.0.3.orig.tar.xz 258584 SHA256:5a02097f95cc250a3f1001865e4dbba5f1d15554120f95693c0541923c52af4a
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.3.orig.tar.xz.asc' libmd_1.0.3.orig.tar.xz.asc 833 SHA256:690c82c27026093e0367b24de5f786b29f6cedacbae67bad3199190689940d3d
'http://deb.debian.org/debian/pool/main/libm/libmd/libmd_1.0.3-3.debian.tar.xz' libmd_1.0.3-3.debian.tar.xz 10104 SHA256:90f09c473c5ff61e3d937c656f12470610cc731cf9061490f651293d04f3c385
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmd/1.0.3-3/ (for browsing the source)
- https://sources.debian.net/src/libmd/1.0.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmd/1.0.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libnsl=1.3.0-2`

Binary Packages:

- `libnsl-dev:amd64=1.3.0-2`
- `libnsl2:amd64=1.3.0-2`

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
$ apt-get source -qq --print-uris libnsl=1.3.0-2
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0-2.dsc' libnsl_1.3.0-2.dsc 1955 SHA256:1da570eed6693c774cce51f3c33f989d1aa4bf1dcb8660818d8a834a1a3728ef
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0.orig.tar.xz' libnsl_1.3.0.orig.tar.xz 321488 SHA256:eac3062957fa302c62eff4aed718a07bacbf9ceb0a058289f12a19bfdda3c8e2
'http://deb.debian.org/debian/pool/main/libn/libnsl/libnsl_1.3.0-2.debian.tar.xz' libnsl_1.3.0-2.debian.tar.xz 4692 SHA256:7f8dccc706931b9e206448ffb475487a4a0abaded27cf611d418f4a34415dca7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libnsl/1.3.0-2/ (for browsing the source)
- https://sources.debian.net/src/libnsl/1.3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libnsl/1.3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpaper=1.1.28`

Binary Packages:

- `libpaper1:amd64=1.1.28+b1`

Licenses: (parsed from: `/usr/share/doc/libpaper1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpaper=1.1.28
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.28.dsc' libpaper_1.1.28.dsc 1633 SHA256:298d6347d84ece2f55088e371facc13362c8f4731d80f94c6ad84190309de8b4
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.28.tar.gz' libpaper_1.1.28.tar.gz 42356 SHA256:c8bb946ec93d3c2c72bbb1d7257e90172a22a44a07a07fb6b802a5bb2c95fddc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpaper/1.1.28/ (for browsing the source)
- https://sources.debian.net/src/libpaper/1.1.28/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpaper/1.1.28/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.37-3`

Binary Packages:

- `libpng16-16:amd64=1.6.37-3`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.37-3
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.37-3.dsc' libpng1.6_1.6.37-3.dsc 2225 SHA256:d6fac534b155e680849e700e4d2c87314e0ff20ab1b89fc22f1dfd2c24c1727b
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.37.orig.tar.gz' libpng1.6_1.6.37.orig.tar.gz 1508805 SHA256:ca74a0dace179a8422187671aee97dd3892b53e168627145271cad5b5ac81307
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.37-3.debian.tar.xz' libpng1.6_1.6.37-3.debian.tar.xz 32272 SHA256:d28b11e41dba39c53d8d87be5f70cc96a246f296307855f55d86db03b24680d4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.37-3/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.37-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.37-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.21.0-1.2`

Binary Packages:

- `libpsl5:amd64=0.21.0-1.2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.21.0-1.2
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0-1.2.dsc' libpsl_0.21.0-1.2.dsc 2216 SHA256:d46b69dd1cb43dc48375d70c4895d0a0d5964131196a7de4e0ad1ea2912d6df4
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0.orig.tar.gz' libpsl_0.21.0.orig.tar.gz 8598583 SHA256:055aa87ec166c7afb985d0816c07ff440e1eb899881a318c51c69a0aeea8e279
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.21.0-1.2.debian.tar.xz' libpsl_0.21.0-1.2.debian.tar.xz 12724 SHA256:012d3b6ec5634c59e6a4aa9f854d756ef23f08edf21d70ae5a888c55e95abd5d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.21.0-1.2/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.21.0-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.21.0-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.5.1-1+deb11u1`

Binary Packages:

- `libseccomp2:amd64=2.5.1-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.5.1-1+deb11u1
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1-1%2bdeb11u1.dsc' libseccomp_2.5.1-1+deb11u1.dsc 2708 SHA256:6a2a00eb5f45e794a2203805348a3990d46f4ded63f8708d3382994ece729436
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz' libseccomp_2.5.1.orig.tar.gz 638811 SHA256:ee307e383c77aa7995abc5ada544d51c9723ae399768a97667d4cdb3c3a30d55
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1.orig.tar.gz.asc' libseccomp_2.5.1.orig.tar.gz.asc 833 SHA256:14d45c86e5ceed5ac5511c3ebf70a4dca128b7584b314dc8a551c779ea225d2e
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.5.1-1%2bdeb11u1.debian.tar.xz' libseccomp_2.5.1-1+deb11u1.debian.tar.xz 19524 SHA256:a09ef7c0b9b6464f426b78a7b978d8566da53667c1a234234ffd2cc600543200
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.5.1-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.5.1-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.5.1-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=3.1-3`

Binary Packages:

- `libselinux1:amd64=3.1-3`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=3.1-3
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1-3.dsc' libselinux_3.1-3.dsc 2300 SHA256:42810484f3776af09a2e0ab726e3be877fc8a54d6bf51702e46c22f945ab5177
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1.orig.tar.gz' libselinux_3.1.orig.tar.gz 204703 SHA256:ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb7b458ac157d112e7
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_3.1-3.debian.tar.xz' libselinux_3.1-3.debian.tar.xz 24176 SHA256:7170ab6914f0d2e93de169da312df961f799f5d58cc0a4c552e3f8a7882f3c81
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/3.1-3/ (for browsing the source)
- https://sources.debian.net/src/libselinux/3.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/3.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=3.1-1`

Binary Packages:

- `libsemanage-common=3.1-1`
- `libsemanage1:amd64=3.1-1+b2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=3.1-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1-1.dsc' libsemanage_3.1-1.dsc 2339 SHA256:d49f9c29d0ad9c8b42145e0926919df962b58823e9fc22002bbb00333276170d
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1.orig.tar.gz' libsemanage_3.1.orig.tar.gz 179601 SHA256:22d6c75526e40d1781c30bcf29abf97171bdfe6780923f11c8e1c76a75a21ff8
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_3.1-1.debian.tar.xz' libsemanage_3.1-1.debian.tar.xz 17556 SHA256:185b151158faaaf3d8f9ff939f29efd3eb5dbb050d01a87d3fde6cf40e778648
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/3.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=3.1-1`

Binary Packages:

- `libsepol1:amd64=3.1-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=3.1-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1-1.dsc' libsepol_3.1-1.dsc 1776 SHA256:37bfb6797af8a96eada6c6ace374292b8a16a6bfb557b1e8ab9fd29e72d5888a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1.orig.tar.gz' libsepol_3.1.orig.tar.gz 473842 SHA256:ae6778d01443fdd38cd30eeee846494e19f4d407b09872580372f4aa4bf8a3cc
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_3.1-1.debian.tar.xz' libsepol_3.1-1.debian.tar.xz 14584 SHA256:9351a0b6207f6a5da2951292d3ec5655feb89df5aabc9010094766d811156166
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/3.1-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.9.0-2`

Binary Packages:

- `libssh2-1:amd64=1.9.0-2`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.9.0-2
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0-2.dsc' libssh2_1.9.0-2.dsc 2007 SHA256:fbf9500e064cdd307a634772d0d417de910fcba874e3edbb72cce538f0389a11
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0.orig.tar.gz' libssh2_1.9.0.orig.tar.gz 888551 SHA256:d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.9.0-2.debian.tar.xz' libssh2_1.9.0-2.debian.tar.xz 9116 SHA256:7081ec54751720082d3f95ef73e2b52a46f72a67ab765932576c11aeb54df7d9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.9.0-2/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.9.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.9.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.16.0-2+deb11u1`

Binary Packages:

- `libtasn1-6:amd64=4.16.0-2+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.16.0-2+deb11u1
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2%2bdeb11u1.dsc' libtasn1-6_4.16.0-2+deb11u1.dsc 2618 SHA256:795155e19208ef5cf07534cd0fc0664b6144f94c16eec03d80fdee7a14f838b8
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz' libtasn1-6_4.16.0.orig.tar.gz 1812442 SHA256:0e0fb0903839117cb6e3b56e68222771bebf22ad7fc2295a0ed7d576e8d4329d
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0.orig.tar.gz.asc' libtasn1-6_4.16.0.orig.tar.gz.asc 488 SHA256:06c201e8c3b43c27465ed79294d4c4ec8dcd3e95e4a6176ecbf273229ee3e2d0
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2%2bdeb11u1.debian.tar.xz' libtasn1-6_4.16.0-2+deb11u1.debian.tar.xz 18324 SHA256:85198cc8eac7ecf5dc8bf220b0973c4ccd6c039217240fbf45ffe49860aacdd1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.16.0-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.16.0-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.16.0-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtirpc=1.3.1-1+deb11u1`

Binary Packages:

- `libtirpc-common=1.3.1-1+deb11u1`
- `libtirpc-dev:amd64=1.3.1-1+deb11u1`
- `libtirpc3:amd64=1.3.1-1+deb11u1`

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
$ apt-get source -qq --print-uris libtirpc=1.3.1-1+deb11u1
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1-1%2bdeb11u1.dsc' libtirpc_1.3.1-1+deb11u1.dsc 2273 SHA256:f6c9103b9155e084cccc5a991e08678c9faad8a087c502cf8c8c552046c27847
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1.orig.tar.bz2' libtirpc_1.3.1.orig.tar.bz2 513399 SHA256:245895caf066bec5e3d4375942c8cb4366adad184c29c618d97f724ea309ee17
'http://deb.debian.org/debian/pool/main/libt/libtirpc/libtirpc_1.3.1-1%2bdeb11u1.debian.tar.xz' libtirpc_1.3.1-1+deb11u1.debian.tar.xz 12752 SHA256:a0415b82adeba844372ca104e87376cd4c4bbb47e490925369e46e1c8f8750d4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtirpc/1.3.1-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/libtirpc/1.3.1-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtirpc/1.3.1-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtool=2.4.6-15`

Binary Packages:

- `libltdl7:amd64=2.4.6-15`

Licenses: (parsed from: `/usr/share/doc/libltdl7/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-15
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-15.dsc' libtool_2.4.6-15.dsc 2502 SHA256:c499bd88103239f5d9743c70fd9e84260b0237e43df47c44980ef4ac9ff5f8e0
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-15.debian.tar.xz' libtool_2.4.6-15.debian.tar.xz 53924 SHA256:3955615804746d1440f2880f5cc0cd19e50dbaffe689afbec45dfcaaf5ee0d35
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.6-15/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.6-15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.6-15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=0.9.10-4`

Binary Packages:

- `libunistring2:amd64=0.9.10-4`

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
$ apt-get source -qq --print-uris libunistring=0.9.10-4
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-4.dsc' libunistring_0.9.10-4.dsc 2212 SHA256:5c7940807b538d4204506349cbd67e5c677afb9f0e46e94455353e3f746a481e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-4.debian.tar.xz' libunistring_0.9.10-4.debian.tar.xz 40936 SHA256:6c9554e1a1c6d0a02ca4868a5422d176e57a3131c1a8a21de5503b164997525c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.10-4/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.10-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.10-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=0.6.1-2.1`

Binary Packages:

- `libwebp6:amd64=0.6.1-2.1`
- `libwebpdemux2:amd64=0.6.1-2.1`
- `libwebpmux3:amd64=0.6.1-2.1`

Licenses: (parsed from: `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.1-2.1
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1-2.1.dsc' libwebp_0.6.1-2.1.dsc 2054 SHA256:b1045ce17d7f16666347813a6b7da16cba304ec33b28e12bda6e83c40243d46f
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1.orig.tar.gz' libwebp_0.6.1.orig.tar.gz 3554290 SHA256:a86045e3ec24704bddbaa369ca30980d6bf4f2625f4cdca03715e91f9c08bbb4
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1-2.1.debian.tar.xz' libwebp_0.6.1-2.1.debian.tar.xz 13616 SHA256:239203fd35a0b26b9e627a509b91a27efa10d996ebc068779bff024af9570ad8
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwebp/0.6.1-2.1/ (for browsing the source)
- https://sources.debian.net/src/libwebp/0.6.1-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwebp/0.6.1-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.7.2-1`

Binary Packages:

- `libx11-6:amd64=2:1.7.2-1`
- `libx11-data=2:1.7.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.7.2-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.7.2-1.dsc' libx11_1.7.2-1.dsc 2539 SHA256:8db8a34ebf9782d4ef47cb28cfeae0b1bc737864a315a182871eeb29f7de7d90
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.7.2.orig.tar.gz' libx11_1.7.2.orig.tar.gz 3181228 SHA256:2c26ccd08f43a6214de89110554fbe97c71692eeb7e7d4829f3004ae6fafd2c0
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.7.2.orig.tar.gz.asc' libx11_1.7.2.orig.tar.gz.asc 833 SHA256:509d0ed983ff3aed0dbfb070dabfce82b5787e626f2fd0bfb2a5887918fcd967
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.7.2-1.diff.gz' libx11_1.7.2-1.diff.gz 76026 SHA256:7babff68e071a9e3f7bc6241a1a135e3a19c74314240764722a41b31f1e213c8
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.7.2-1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.7.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.7.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.9-1`

Binary Packages:

- `libxau6:amd64=1:1.0.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.9-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9-1.dsc' libxau_1.0.9-1.dsc 2183 SHA256:e6e059652cda7e5a49b6c9a70667639f32d629c20320487d16c642a06c1ebf85
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz' libxau_1.0.9.orig.tar.gz 394068 SHA256:1f123d8304b082ad63a9e89376400a3b1d4c29e67e3ea07b3f659cccca690eea
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9.orig.tar.gz.asc' libxau_1.0.9.orig.tar.gz.asc 801 SHA256:af6104aaf3c5ede529e381237dd60f49640ec96593a84502fa493b86582b2f04
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.9-1.diff.gz' libxau_1.0.9-1.diff.gz 10193 SHA256:7b34899563f172e8f11d061de41b58fe1c32f8683d985e57686677ccb7299a9a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.9-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcb=1.14-3`

Binary Packages:

- `libxcb1:amd64=1.14-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.14-3
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.14-3.dsc' libxcb_1.14-3.dsc 5373 SHA256:25030a957600e3afcfecd095e3c1187885818a8a3fe8346ae965fe62c3a3b2eb
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.14.orig.tar.gz' libxcb_1.14.orig.tar.gz 640322 SHA256:2c7fcddd1da34d9b238c9caeda20d3bd7486456fc50b3cc6567185dbd5b0ad02
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.14-3.diff.gz' libxcb_1.14-3.diff.gz 26583 SHA256:aed546fff9cf733c52188ad4f0d869a5ee8ffec52b54a6fa8f666a87adda82a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.14-3/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.14-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.14-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcrypt=1:4.4.18-4`

Binary Packages:

- `libcrypt-dev:amd64=1:4.4.18-4`
- `libcrypt1:amd64=1:4.4.18-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcrypt=1:4.4.18-4
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18-4.dsc' libxcrypt_4.4.18-4.dsc 1477 SHA256:5c0ca54ddad5343596f6c0916caf30fbb9b8a144252b49dc74f97502f33cdb7a
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18.orig.tar.xz' libxcrypt_4.4.18.orig.tar.xz 397776 SHA256:4cd2a06e98519d57a5572ee8885b6cc23c70a559d234c161d3f22c487edaa3fa
'http://deb.debian.org/debian/pool/main/libx/libxcrypt/libxcrypt_4.4.18-4.debian.tar.xz' libxcrypt_4.4.18-4.debian.tar.xz 7560 SHA256:6c99b888c57e1411d870fa81d057e30444aa801ed430aa3126d31996e187dd84
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcrypt/1:4.4.18-4/ (for browsing the source)
- https://sources.debian.net/src/libxcrypt/1:4.4.18-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcrypt/1:4.4.18-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.3-1.1`

Binary Packages:

- `libxext6:amd64=2:1.3.3-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1.1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.1.dsc' libxext_1.3.3-1.1.dsc 2243 SHA256:ae9f97003e38da180294f43a8217991df709955dd7576c5333e2412f264f8697
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.1.diff.gz' libxext_1.3.3-1.1.diff.gz 20628 SHA256:6a8ce08c667c4631c59bc79c716187dc7ed20bb7d0967701ab21313e6dd6c752
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxext/2:1.3.3-1.1/ (for browsing the source)
- https://sources.debian.net/src/libxext/2:1.3.3-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxext/2:1.3.3-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.10+dfsg-6.7+deb11u3`

Binary Packages:

- `libxml2:amd64=2.9.10+dfsg-6.7+deb11u3`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.10+dfsg-6.7+deb11u3
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-6.7%2bdeb11u3.dsc' libxml2_2.9.10+dfsg-6.7+deb11u3.dsc 2859 SHA256:92c6d3646f72080370da38a84ee1b4a8c49f99d0254f81ea4e344a25c349915a
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg.orig.tar.xz' libxml2_2.9.10+dfsg.orig.tar.xz 2503560 SHA256:65ee7a2f5e100c64ddf7beb92297c9b2a30b994a76cd1fab67470cf22db6b7d0
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.10%2bdfsg-6.7%2bdeb11u3.debian.tar.xz' libxml2_2.9.10+dfsg-6.7+deb11u3.debian.tar.xz 40092 SHA256:af3a4b06a555f9a39d7f7487c330787795d0878c0e28313fcff44904f99a291c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.10+dfsg-6.7+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.10+dfsg-6.7+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.10+dfsg-6.7+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libyaml=0.2.2-1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.2-1`
- `libyaml-dev:amd64=0.2.2-1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.2-1
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.2-1.dsc' libyaml_0.2.2-1.dsc 1833 SHA256:b4baba985391f52409013a0c9303191e34aaa4c1c9200e4c01c4963df801db09
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.2.orig.tar.gz' libyaml_0.2.2.orig.tar.gz 602509 SHA256:689ef3ebdecfa81f3789ccd2481acc81fc0f22f3f5c947eed95c4c0802e356b8
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.2-1.debian.tar.xz' libyaml_0.2.2-1.debian.tar.xz 4112 SHA256:186aad3e4bcd95891a8c59249c59f862f5f71601058fda0bf020a9e9e39320fe
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.2.2-1/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.2.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.4.8+dfsg-2.1`

Binary Packages:

- `libzstd1:amd64=1.4.8+dfsg-2.1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.4.8+dfsg-2.1
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-2.1.dsc' libzstd_1.4.8+dfsg-2.1.dsc 2274 SHA256:7c656b8cab7a560710358dddbd949b33b1ffcedd7cbef370132e4018b94e2e74
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg.orig.tar.xz' libzstd_1.4.8+dfsg.orig.tar.xz 1331996 SHA256:1e8ce5c4880a6d5bd8d3186e4186607dd19b64fc98a3877fc13aeefd566d67c5
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.4.8%2bdfsg-2.1.debian.tar.xz' libzstd_1.4.8+dfsg-2.1.debian.tar.xz 12224 SHA256:cba8544590e59303277e3af2bb260fed32723a1084c9f4928956deca2c80032c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.4.8+dfsg-2.1/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.4.8+dfsg-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.4.8+dfsg-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=5.10.158-2`

Binary Packages:

- `linux-libc-dev:amd64=5.10.158-2`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `BSD-2-clause`
- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=5.10.158-2
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158-2.dsc' linux_5.10.158-2.dsc 197238 SHA256:938feb8baa4c955c3313eb4e6e03f3f556e86b8a74a578d91691edab29db07f3
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158.orig.tar.xz' linux_5.10.158.orig.tar.xz 121806368 SHA256:a0791322c13f09ec855a0630a4764234308aafb4fe04540dde302b8cc21e052a
'http://deb.debian.org/debian/pool/main/l/linux/linux_5.10.158-2.debian.tar.xz' linux_5.10.158-2.debian.tar.xz 3487356 SHA256:bfb86bb848fc869105455d59363f2323963278988168b32f54dc71f0eb246b69
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/5.10.158-2/ (for browsing the source)
- https://sources.debian.net/src/linux/5.10.158-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/5.10.158-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=11.1.0`

Binary Packages:

- `lsb-base=11.1.0`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=11.1.0
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_11.1.0.dsc' lsb_11.1.0.dsc 1800 SHA256:5cb5679dcc92e30aa878f892f73081d6b4d5299841549f6d53a886d51509feb1
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_11.1.0.tar.xz' lsb_11.1.0.tar.xz 42452 SHA256:c7926d511228862892630070f7708c425db9473ceefc70872868c448b5145b57
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/11.1.0/ (for browsing the source)
- https://sources.debian.net/src/lsb/11.1.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/11.1.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.9.3-2`

Binary Packages:

- `liblz4-1:amd64=1.9.3-2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.9.3-2
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3-2.dsc' lz4_1.9.3-2.dsc 1959 SHA256:215e1f0be1bb40e2b89182f3a1bf630463d8acdc0917f1f928ad1bf9ef3e1b0c
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3.orig.tar.gz' lz4_1.9.3.orig.tar.gz 320958 SHA256:030644df4611007ff7dc962d981f390361e6c97a34e5cbc393ddfbe019ffe2c1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.9.3-2.debian.tar.xz' lz4_1.9.3-2.debian.tar.xz 13928 SHA256:d7754a7b7b1fa196666d6459705107355e15fef162352e363e43722e012a04e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.9.3-2/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.9.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.9.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb-10.5=1:10.5.18-0+deb11u1`

Binary Packages:

- `libmariadb3:amd64=1:10.5.18-0+deb11u1`
- `mariadb-common=1:10.5.18-0+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libmariadb3/copyright`, `/usr/share/doc/mariadb-common/copyright`)

- `Artistic`
- `BSD-2-Clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+-with-bison-exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT/X11`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mariadb-10.5=1:10.5.18-0+deb11u1
'http://deb.debian.org/debian/pool/main/m/mariadb-10.5/mariadb-10.5_10.5.18-0%2bdeb11u1.dsc' mariadb-10.5_10.5.18-0+deb11u1.dsc 4814 SHA256:4452d74ee50ec8eb14be37816d93709c060e429651f7405ad39f7169f83ce382
'http://deb.debian.org/debian/pool/main/m/mariadb-10.5/mariadb-10.5_10.5.18.orig.tar.gz' mariadb-10.5_10.5.18.orig.tar.gz 111568643 SHA256:3593b0dcc0f2e80e98177019f5dcfa5cc8c14172ce161a6fa50f8084f2cef749
'http://deb.debian.org/debian/pool/main/m/mariadb-10.5/mariadb-10.5_10.5.18.orig.tar.gz.asc' mariadb-10.5_10.5.18.orig.tar.gz.asc 195 SHA256:b9e6a684476a29ab974126812d9646b5e78168547c521ef1beaf3ec139193e6a
'http://deb.debian.org/debian/pool/main/m/mariadb-10.5/mariadb-10.5_10.5.18-0%2bdeb11u1.debian.tar.xz' mariadb-10.5_10.5.18-0+deb11u1.debian.tar.xz 219044 SHA256:8f3201a9bfcf0e20b709589ef9b8d78db675c7de8132e7a36f99b6c6852d8ce5
```

Other potentially useful URLs:

- https://sources.debian.net/src/mariadb-10.5/1:10.5.18-0+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/mariadb-10.5/1:10.5.18-0+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mariadb-10.5/1:10.5.18-0+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.4.20200120-2`

Binary Packages:

- `mawk=1.3.4.20200120-2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.4.20200120-2
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-2.dsc' mawk_1.3.4.20200120-2.dsc 1915 SHA256:5069c46872ac74f5221250dfb88b31b1f2dbb8a2617c1e013f8f80cc34638c6d
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120.orig.tar.gz' mawk_1.3.4.20200120.orig.tar.gz 468855 SHA256:7fd4cd1e1fae9290fe089171181bbc6291dfd9bca939ca804f0ddb851c8b8237
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.4.20200120-2.debian.tar.xz' mawk_1.3.4.20200120-2.debian.tar.xz 7504 SHA256:b772ed2f016b0286980c46cbc1f1f4ae62887ef2aa3dff6ef10cae638f923f26
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.4.20200120-2/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.4.20200120-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.4.20200120-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `media-types=4.0.0`

Binary Packages:

- `media-types=4.0.0`

Licenses: (parsed from: `/usr/share/doc/media-types/copyright`)

- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris media-types=4.0.0
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_4.0.0.dsc' media-types_4.0.0.dsc 1620 SHA256:422edc1275dcc6bf07ac1b30612f501624cba04cfca2331eb87f1ca3af89e701
'http://deb.debian.org/debian/pool/main/m/media-types/media-types_4.0.0.tar.xz' media-types_4.0.0.tar.xz 33988 SHA256:b5eb14fd6addb8f10c1665ebaa113cd0ebfb47f692cf27d9ac47405b13ce4e31
```

Other potentially useful URLs:

- https://sources.debian.net/src/media-types/4.0.0/ (for browsing the source)
- https://sources.debian.net/src/media-types/4.0.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/media-types/4.0.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mercurial=5.6.1-4`

Binary Packages:

- `mercurial=5.6.1-4`
- `mercurial-common=5.6.1-4`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=5.6.1-4
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_5.6.1-4.dsc' mercurial_5.6.1-4.dsc 2130 SHA256:d8930b0d0b8a4d1adc2951ef521a6194f07a2a0ef923cdfbf73fe109658a0311
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_5.6.1.orig.tar.gz' mercurial_5.6.1.orig.tar.gz 7836342 SHA256:e55c254f4904c45226a106780e57f4279aee03368f6ff6a981d5d2a38243ffad
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_5.6.1.orig.tar.gz.asc' mercurial_5.6.1.orig.tar.gz.asc 833 SHA256:bef5ca673b6fe7ab213e07826c2196dd41710df4739f9a49e57dc3d3d38a6d36
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_5.6.1-4.debian.tar.xz' mercurial_5.6.1-4.debian.tar.xz 64588 SHA256:020e6bd6dcbccdb0ca5455116750120408225979ed186b84c58bb12cdb72d819
```

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/5.6.1-4/ (for browsing the source)
- https://sources.debian.net/src/mercurial/5.6.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/5.6.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpdecimal=2.5.1-1`

Binary Packages:

- `libmpdec3:amd64=2.5.1-1`

Licenses: (parsed from: `/usr/share/doc/libmpdec3/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.5.1-1
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1-1.dsc' mpdecimal_2.5.1-1.dsc 1919 SHA256:5b4e5bc4d714b76af72bc4eaad2ac7feeb08ac5ee9fa5318f91edebe118ab6f9
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1.orig.tar.gz' mpdecimal_2.5.1.orig.tar.gz 2584021 SHA256:9f9cd4c041f99b5c49ffb7b59d9f12d95b683d88585608aa56a6307667b2b21f
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.5.1-1.debian.tar.xz' mpdecimal_2.5.1-1.debian.tar.xz 6444 SHA256:e46140b8e665aee3058d0b2fb4fa44bde600251c8471de73711fa23ac573ee8a
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.5.1-1/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.5.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.5.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mysql-defaults=1.0.7`

Binary Packages:

- `mysql-common=5.8+1.0.7`

Licenses: (parsed from: `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.7
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.7.dsc' mysql-defaults_1.0.7.dsc 2266 SHA256:969c5682e991967f5b9488c04b784e63148c952fc597f7b7e5483e4204726649
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.7.tar.xz' mysql-defaults_1.0.7.tar.xz 7220 SHA256:e2942479d614756e2e49698a6a3819b6e00b1285802799dab5519e0d2925437b
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.0.7/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.0.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.0.7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.2+20201114-2`

Binary Packages:

- `libncurses6:amd64=6.2+20201114-2`
- `libncursesw6:amd64=6.2+20201114-2`
- `libtinfo6:amd64=6.2+20201114-2`
- `ncurses-base=6.2+20201114-2`
- `ncurses-bin=6.2+20201114-2`

Licenses: (parsed from: `/usr/share/doc/libncurses6/copyright`, `/usr/share/doc/libncursesw6/copyright`, `/usr/share/doc/libtinfo6/copyright`, `/usr/share/doc/ncurses-base/copyright`, `/usr/share/doc/ncurses-bin/copyright`)

- `BSD-3-clause`
- `MIT/X11`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris ncurses=6.2+20201114-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114-2.dsc' ncurses_6.2+20201114-2.dsc 4106 SHA256:011ec8e3464be0d89d6611ab8fa0a84ac5514c0064e12dec9c52ec7b135408b1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114.orig.tar.gz' ncurses_6.2+20201114.orig.tar.gz 3539796 SHA256:aa3f8cfaff2a2b78f184274ec43d9da910c864e4b4d80fc47b5b48cba9154cd2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114.orig.tar.gz.asc' ncurses_6.2+20201114.orig.tar.gz.asc 265 SHA256:91615d9d5575f9e974e78c6aca55e1885f42d1b2600cebec407be4471bb7a27d
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.2%2b20201114-2.debian.tar.xz' ncurses_6.2+20201114-2.debian.tar.xz 51812 SHA256:6ebba60b18cf2aceaa67098bfed1b1aa31c03f1a500f45c65ab098ec0a2401d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.2+20201114-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.2+20201114-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.2+20201114-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.7.3-1`

Binary Packages:

- `libhogweed6:amd64=3.7.3-1`
- `libnettle8:amd64=3.7.3-1`

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
$ apt-get source -qq --print-uris nettle=3.7.3-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3-1.dsc' nettle_3.7.3-1.dsc 2033 SHA256:63a1a80f37b6484f479dfa1cbd30152feff3b1a5a2161fdab05b90edde212c1f
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3.orig.tar.gz' nettle_3.7.3.orig.tar.gz 2383985 SHA256:661f5eb03f048a3b924c3a8ad2515d4068e40f67e774e8a26827658007e3bcf0
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.7.3-1.debian.tar.xz' nettle_3.7.3-1.debian.tar.xz 21956 SHA256:97af0e306aec6f6c5d8e73a7a3ce2856c76bcff9cdcfa7640e932a5a3aee9f24
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.7.3-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.7.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.7.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.43.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.43.0-1`

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
$ apt-get source -qq --print-uris nghttp2=1.43.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0-1.dsc' nghttp2_1.43.0-1.dsc 2548 SHA256:287a6fa84523ad2e6bb2215bcfc7ecc413a536fc9af20b0b20f0984e64bb034d
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0.orig.tar.bz2' nghttp2_1.43.0.orig.tar.bz2 4521786 SHA256:556f24653397c71ebb8270b3c5e5507f0893e6eac2c6eeda6be2ecf6e1f50f62
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.43.0-1.debian.tar.xz' nghttp2_1.43.0-1.debian.tar.xz 16308 SHA256:5dbb013a6f2152354fee33a2ecf08817738d4f8f4d78bec0cd0cb3bcac690821
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.43.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.43.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.43.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `numactl=2.0.12-1`

Binary Packages:

- `libnuma1:amd64=2.0.12-1+b1`

Licenses: (parsed from: `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.12-1
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.12-1.dsc' numactl_2.0.12-1.dsc 2033 SHA256:3b308b110de0728c5524b3135d871e55ebb6e4b93cdc583e93c4222219fe4d08
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.12.orig.tar.gz' numactl_2.0.12.orig.tar.gz 421425 SHA256:2e67513a62168de4777da20d89cdab66d75bcd3badc4256f6b190a8111cd93f8
'http://deb.debian.org/debian/pool/main/n/numactl/numactl_2.0.12-1.debian.tar.xz' numactl_2.0.12-1.debian.tar.xz 6756 SHA256:966724cac8f309b33959ae9922b3e5ab58ea821e2e802d96425e1eaada639a33
```

Other potentially useful URLs:

- https://sources.debian.net/src/numactl/2.0.12-1/ (for browsing the source)
- https://sources.debian.net/src/numactl/2.0.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/numactl/2.0.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.4.0-3`

Binary Packages:

- `libopenjp2-7:amd64=2.4.0-3`

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
$ apt-get source -qq --print-uris openjpeg2=2.4.0-3
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.4.0-3.dsc' openjpeg2_2.4.0-3.dsc 2768 SHA256:c2de7ec896d9fccad5a9d58761593446a0271564babf218fd4ab200b6fe92a05
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.4.0.orig.tar.xz' openjpeg2_2.4.0.orig.tar.xz 1396964 SHA256:4b89da8abea5ea4e8dd5b214f1633a492554d784b5aebc22cb6495a1e5fe681c
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.4.0-3.debian.tar.xz' openjpeg2_2.4.0-3.debian.tar.xz 19712 SHA256:99b94d26c341babae8b5599ca7f8f0e1bb2021eb282ceff5d3c91086d1a3bcfc
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.4.0-3/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.4.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.4.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.57+dfsg-3+deb11u1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.57+dfsg-3+deb11u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.57+dfsg-3+deb11u1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg-3%2bdeb11u1.dsc' openldap_2.4.57+dfsg-3+deb11u1.dsc 3227 SHA256:835471a38dd93cfc2c0cb6f3726a022e0a5ed47dc2759dbd811cec6df5c9e0d4
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg.orig.tar.gz' openldap_2.4.57+dfsg.orig.tar.gz 5054318 SHA256:009cc88733eaf41a21607e073a19bce53d7d6ed90a5c280e80880978c4e91db7
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.57%2bdfsg-3%2bdeb11u1.debian.tar.xz' openldap_2.4.57+dfsg-3+deb11u1.debian.tar.xz 170324 SHA256:2c1cbc8431c570ece2b8e6e0e13936c2f65a270e6473ecf5374ae5ba67147835
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.57+dfsg-3+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.57+dfsg-3+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.57+dfsg-3+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssh=1:8.4p1-5+deb11u1`

Binary Packages:

- `openssh-client=1:8.4p1-5+deb11u1`

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
$ apt-get source -qq --print-uris openssh=1:8.4p1-5+deb11u1
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_8.4p1-5%2bdeb11u1.dsc' openssh_8.4p1-5+deb11u1.dsc 3393 SHA256:94386e36ddf7832a42a12ddfdb9d019f4889ebf7f24f6c43cbb51eae0a803367
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_8.4p1.orig.tar.gz' openssh_8.4p1.orig.tar.gz 1742201 SHA256:5a01d22e407eb1c05ba8a8f7c654d388a13e9f226e4ed33bd38748dafa1d2b24
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_8.4p1.orig.tar.gz.asc' openssh_8.4p1.orig.tar.gz.asc 683 SHA256:ccd9dd484651ce4cc926228f6e1b46afaf0c5ab98a866217fa0ef1074370ea2b
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_8.4p1-5%2bdeb11u1.debian.tar.xz' openssh_8.4p1-5+deb11u1.debian.tar.xz 179508 SHA256:25a3a8dcd9f0b269e3681761273c6581a6fd5adc890bcfc6654de9f99263e3ff
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssh/1:8.4p1-5+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/openssh/1:8.4p1-5+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssh/1:8.4p1-5+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1n-0+deb11u3`

Binary Packages:

- `libssl-dev:amd64=1.1.1n-0+deb11u3`
- `libssl1.1:amd64=1.1.1n-0+deb11u3`
- `openssl=1.1.1n-0+deb11u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1n-0+deb11u3
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb11u3.dsc' openssl_1.1.1n-0+deb11u3.dsc 2655 SHA256:cbf06993d1dc8c4e59e2f7f0456cc07a005c17274a33eb29135e9fdd7f6b2941
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz' openssl_1.1.1n.orig.tar.gz 9850712 SHA256:40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e8e15463372b17a
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n.orig.tar.gz.asc' openssl_1.1.1n.orig.tar.gz.asc 488 SHA256:e0e89e9467102880ee6f2ee8c1413933eb1268969afb97b9bec61e2190a62fd0
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1n-0%2bdeb11u3.debian.tar.xz' openssl_1.1.1n-0+deb11u3.debian.tar.xz 118952 SHA256:0eed2dc1f8d472291511f386fc0a3c5fe70ec50440b1c252fd99934bf2cddd4a
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1n-0+deb11u3/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1n-0+deb11u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1n-0+deb11u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.22-1`

Binary Packages:

- `libp11-kit0:amd64=0.23.22-1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.22-1
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22-1.dsc' p11-kit_0.23.22-1.dsc 2417 SHA256:b5f7a7908a7da082fa74c2a35667f4f4dd1324eaf43ff4b4a0ffa7e2763774a6
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22.orig.tar.xz' p11-kit_0.23.22.orig.tar.xz 830016 SHA256:8a8f40153dd5a3f8e7c03e641f8db400133fb2a6a9ab2aee1b6d0cb0495ec6b6
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22.orig.tar.xz.asc' p11-kit_0.23.22.orig.tar.xz.asc 854 SHA256:52d36bd38ed84dcc394b97da18ff4b4e220f0b13c5e7922f5b908312678b0b02
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.22-1.debian.tar.xz' p11-kit_0.23.22-1.debian.tar.xz 22256 SHA256:05a157dbeb054dd14c19c0c4f72c50e57fb69c4cfa4b5d34bc7ecdb5d12e7265
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.22-1/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.22-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.22-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.4.0-9+deb11u1`

Binary Packages:

- `libpam-modules:amd64=1.4.0-9+deb11u1`
- `libpam-modules-bin=1.4.0-9+deb11u1`
- `libpam-runtime=1.4.0-9+deb11u1`
- `libpam0g:amd64=1.4.0-9+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.4.0-9+deb11u1
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0-9%2bdeb11u1.dsc' pam_1.4.0-9+deb11u1.dsc 1941 SHA256:190b705cc9daeee1febb84e8ac6f31219065f08ff41c8d38fbbb424b545d5ca4
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0.orig.tar.xz' pam_1.4.0.orig.tar.xz 988908 SHA256:cd6d928c51e64139be3bdb38692c68183a509b83d4f2c221024ccd4bcddfd034
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.4.0-9%2bdeb11u1.debian.tar.xz' pam_1.4.0-9+deb11u1.debian.tar.xz 120148 SHA256:bcaaad9423c3ab32c5c4f9e363595a84fe3c535aa9568e42e560028a4e33dfcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.4.0-9+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/pam/1.4.0-9+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.4.0-9+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patiencediff=0.2.1-1`

Binary Packages:

- `python3-patiencediff=0.2.1-1+b1`

Licenses: (parsed from: `/usr/share/doc/python3-patiencediff/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris patiencediff=0.2.1-1
'http://deb.debian.org/debian/pool/main/p/patiencediff/patiencediff_0.2.1-1.dsc' patiencediff_0.2.1-1.dsc 2130 SHA256:92d2f737be1686b74667c33e07c5f69e29824fb6ab5fab01708a1a2b6d7d5090
'http://deb.debian.org/debian/pool/main/p/patiencediff/patiencediff_0.2.1.orig.tar.gz' patiencediff_0.2.1.orig.tar.gz 28566 SHA256:9b0a00a0ec3e9fd90c3c3a280065a7c35315c8ed3f93520da0a9bcd70511a25a
'http://deb.debian.org/debian/pool/main/p/patiencediff/patiencediff_0.2.1-1.debian.tar.xz' patiencediff_0.2.1-1.debian.tar.xz 42992 SHA256:382e9edde1bc42567144cc2f090eb5e18b158bb2f30bda2f642356f010a00d65
```

Other potentially useful URLs:

- https://sources.debian.net/src/patiencediff/0.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/patiencediff/0.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patiencediff/0.2.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre2=10.36-2+deb11u1`

Binary Packages:

- `libpcre2-8-0:amd64=10.36-2+deb11u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.36-2+deb11u1
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36-2%2bdeb11u1.dsc' pcre2_10.36-2+deb11u1.dsc 2329 SHA256:9a1b7f2d20d539f4be97d07c92a980e339ae36087ca1cd51177345b37a2ec3a9
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36.orig.tar.gz' pcre2_10.36.orig.tar.gz 2290719 SHA256:b95ddb9414f91a967a887d69617059fb672b914f56fa3d613812c1ee8e8a1a37
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.36-2%2bdeb11u1.diff.gz' pcre2_10.36-2+deb11u1.diff.gz 10596 SHA256:1172d8b80fa7c13c3eb571a1163babe5052f6b4586329e817ccba9759046da01
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.36-2+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.36-2+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.36-2+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-13`

Binary Packages:

- `libpcre3:amd64=2:8.39-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-13
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-13.dsc' pcre3_8.39-13.dsc 2226 SHA256:c3a2eb4f02de5b2e00787ed2a35eb82f04ee4b5e99b8ff279bae3c6453aad93b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-13.debian.tar.gz' pcre3_8.39-13.debian.tar.gz 27002 SHA256:a2143d7358d69b61955a4f977980050447f8891c0e6737080f2b14b920fbde87
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-13/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-13/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.32.1-4+deb11u2`

Binary Packages:

- `libperl5.32:amd64=5.32.1-4+deb11u2`
- `perl=5.32.1-4+deb11u2`
- `perl-base=5.32.1-4+deb11u2`
- `perl-modules-5.32=5.32.1-4+deb11u2`

Licenses: (parsed from: `/usr/share/doc/libperl5.32/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.32/copyright`)

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
$ apt-get source -qq --print-uris perl=5.32.1-4+deb11u2
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1-4%2bdeb11u2.dsc' perl_5.32.1-4+deb11u2.dsc 2918 SHA256:3c0c1961d7a5fe835cf7d1a9a97905ff7857db2cd1d113c9fc5250de3aaa4e6b
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1.orig-regen-configure.tar.gz' perl_5.32.1.orig-regen-configure.tar.gz 871331 SHA256:1d179b41283f12ad83f9758430f6ddc49bdf20db5c396aeae7e51ebb4e4afd29
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1.orig.tar.xz' perl_5.32.1.orig.tar.xz 12610988 SHA256:57cc47c735c8300a8ce2fa0643507b44c4ae59012bfdad0121313db639e02309
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.32.1-4%2bdeb11u2.debian.tar.xz' perl_5.32.1-4+deb11u2.debian.tar.xz 165768 SHA256:36b96f84a81c8db85a99e701062457a99efdbcc98b1f1a8912d3919f4b8e0f5a
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.32.1-4+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/perl/5.32.1-4+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.32.1-4+deb11u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `poppler-data=0.4.10-1`

Binary Packages:

- `poppler-data=0.4.10-1`

Licenses: (parsed from: `/usr/share/doc/poppler-data/copyright`)

- `AGPL-3+`
- `BSD-3-cluase`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris poppler-data=0.4.10-1
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.10-1.dsc' poppler-data_0.4.10-1.dsc 2446 SHA256:460ca4d8666a6b2ff145e399a3c271d1327ce176a68e92acc6f018e55678ad73
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.10.orig-ai0.tar.gz' poppler-data_0.4.10.orig-ai0.tar.gz 3515 SHA256:755a3a7cec6019b7cb6a7ac89828820e90d5105e66ebc2a7aacecacfb3ed4f1d
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.10.orig-from-ghostscript.tar.xz' poppler-data_0.4.10.orig-from-ghostscript.tar.xz 2320 SHA256:5070e1f3645080c809d80c42ee2e736648fe37bc2a68c3f54d1f9fce01086215
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.10.orig.tar.gz' poppler-data_0.4.10.orig.tar.gz 4497684 SHA256:6e2fcef66ec8c44625f94292ccf8af9f1d918b410d5aa69c274ce67387967b30
'http://deb.debian.org/debian/pool/main/p/poppler-data/poppler-data_0.4.10-1.debian.tar.xz' poppler-data_0.4.10-1.debian.tar.xz 19648 SHA256:9467bbaa27bbacb2ec8005be63bb58cac73a36b8db005c8684f79729f99bc359
```

Other potentially useful URLs:

- https://sources.debian.net/src/poppler-data/0.4.10-1/ (for browsing the source)
- https://sources.debian.net/src/poppler-data/0.4.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/poppler-data/0.4.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-13=13.9-0+deb11u1`

Binary Packages:

- `libpq5:amd64=13.9-0+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libpq5/copyright`)

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
- `blf`
- `double-metaphone`
- `imath`
- `nagaysau-ishii`
- `rijndael`

Source:

```console
$ apt-get source -qq --print-uris postgresql-13=13.9-0+deb11u1
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9-0%2bdeb11u1.dsc' postgresql-13_13.9-0+deb11u1.dsc 3696 SHA256:2691b0326076ef925d9a3470b0b3121ffa27d91bf3e269a1035aba1c85ebdb1d
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9.orig.tar.bz2' postgresql-13_13.9.orig.tar.bz2 21439045 SHA256:ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
'http://deb.debian.org/debian/pool/main/p/postgresql-13/postgresql-13_13.9-0%2bdeb11u1.debian.tar.xz' postgresql-13_13.9-0+deb11u1.debian.tar.xz 29460 SHA256:31ba6def020e902b26f231c7e554ecb77acb79b1e7c4dccb3b650b6b2fed9de2
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-13/13.9-0+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-13/13.9-0+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-13/13.9-0+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:3.3.17-5`

Binary Packages:

- `libprocps8:amd64=2:3.3.17-5`
- `procps=2:3.3.17-5`

Licenses: (parsed from: `/usr/share/doc/libprocps8/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.17-5
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.17-5.dsc' procps_3.3.17-5.dsc 2136 SHA256:3b1d9a3d3bc9ec24360ed20721d4235fcd4b4dbb9a86c1eba6c42899a50ecff8
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.17.orig.tar.xz' procps_3.3.17.orig.tar.xz 1008428 SHA256:4518b3e7aafd34ec07d0063d250fd474999b20b200218c3ae56f5d2113f141b4
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.17-5.debian.tar.xz' procps_3.3.17-5.debian.tar.xz 28608 SHA256:e6b5f9ef22eca9f03f79dc79b4c389249368216df8702a8cc380e10f29eda8c9
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.17-5/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.17-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.17-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-certifi=2020.6.20-1`

Binary Packages:

- `python3-certifi=2020.6.20-1`

Licenses: (parsed from: `/usr/share/doc/python3-certifi/copyright`)

- `GPL-2`
- `MPL-2`

Source:

```console
$ apt-get source -qq --print-uris python-certifi=2020.6.20-1
'http://deb.debian.org/debian/pool/main/p/python-certifi/python-certifi_2020.6.20-1.dsc' python-certifi_2020.6.20-1.dsc 1627 SHA256:8877bea77efed2f16733d49603f45168869acf0fe628d48893863b592395748c
'http://deb.debian.org/debian/pool/main/p/python-certifi/python-certifi_2020.6.20.orig.tar.xz' python-certifi_2020.6.20.orig.tar.xz 144184 SHA256:ddbe29ec8fca0018d49b6beb189082b0957a2c076ce38d77005388777936aa33
'http://deb.debian.org/debian/pool/main/p/python-certifi/python-certifi_2020.6.20-1.debian.tar.xz' python-certifi_2020.6.20-1.debian.tar.xz 8104 SHA256:dc34c084680290d6fd5227cba3d1f41e840ce8ed1ed9b28bac5f3947440ead3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-certifi/2020.6.20-1/ (for browsing the source)
- https://sources.debian.net/src/python-certifi/2020.6.20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-certifi/2020.6.20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-fastimport=0.9.8-5`

Binary Packages:

- `python3-fastimport=0.9.8-5`

Licenses: (parsed from: `/usr/share/doc/python3-fastimport/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris python-fastimport=0.9.8-5
'http://deb.debian.org/debian/pool/main/p/python-fastimport/python-fastimport_0.9.8-5.dsc' python-fastimport_0.9.8-5.dsc 2195 SHA256:2397e57fdb978c4994d06a4457c1c50c1dda265fcd6e8579e4444093284131ac
'http://deb.debian.org/debian/pool/main/p/python-fastimport/python-fastimport_0.9.8.orig.tar.gz' python-fastimport_0.9.8.orig.tar.gz 39512 SHA256:b2f2e8eb97000256e1aab83d2a0a053fc7b93c3aa4f7e9b971a5703dfc5963b9
'http://deb.debian.org/debian/pool/main/p/python-fastimport/python-fastimport_0.9.8-5.debian.tar.xz' python-fastimport_0.9.8-5.debian.tar.xz 13584 SHA256:379e083a0fd0411724a116700db3a8ad53e601e95d24b9ea6ae2cb6d108e637e
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-fastimport/0.9.8-5/ (for browsing the source)
- https://sources.debian.net/src/python-fastimport/0.9.8-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-fastimport/0.9.8-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-urllib3=1.26.5-1~exp1`

Binary Packages:

- `python3-urllib3=1.26.5-1~exp1`

Licenses: (parsed from: `/usr/share/doc/python3-urllib3/copyright`)

- `Expat`
- `PSF-2`

Source:

```console
$ apt-get source -qq --print-uris python-urllib3=1.26.5-1~exp1
'http://deb.debian.org/debian/pool/main/p/python-urllib3/python-urllib3_1.26.5-1%7eexp1.dsc' python-urllib3_1.26.5-1~exp1.dsc 2243 SHA256:39abf0f987b0addc16146995dffde5073af9c878018f0cad23a43f0eb74a0671
'http://deb.debian.org/debian/pool/main/p/python-urllib3/python-urllib3_1.26.5.orig.tar.gz' python-urllib3_1.26.5.orig.tar.gz 292865 SHA256:a7acd0977125325f516bda9735fa7142b909a8d01e8b2e4c8108d0984e6e0098
'http://deb.debian.org/debian/pool/main/p/python-urllib3/python-urllib3_1.26.5-1%7eexp1.debian.tar.xz' python-urllib3_1.26.5-1~exp1.debian.tar.xz 12164 SHA256:b986919e426bc0a2266345aecd30eb7eb209a709abaff0fc21b27a0338aaf360
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-urllib3/1.26.5-1~exp1/ (for browsing the source)
- https://sources.debian.net/src/python-urllib3/1.26.5-1~exp1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-urllib3/1.26.5-1~exp1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.9.2-3`

Binary Packages:

- `libpython3-stdlib:amd64=3.9.2-3`
- `python3=3.9.2-3`
- `python3-minimal=3.9.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.9.2-3
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.9.2-3.dsc' python3-defaults_3.9.2-3.dsc 2879 SHA256:625d69b163c4ba751d717ccd4e4202f6c3132a4734f0d083ae11dea465cc7760
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.9.2-3.tar.gz' python3-defaults_3.9.2-3.tar.gz 140929 SHA256:64a82311e46c734a897e408cad11d17e5631ec3ec889ae90948111150e8f18ce
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.9.2-3/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.9.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.9.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3.9=3.9.2-1`

Binary Packages:

- `libpython3.9-minimal:amd64=3.9.2-1`
- `libpython3.9-stdlib:amd64=3.9.2-1`
- `python3.9=3.9.2-1`
- `python3.9-minimal=3.9.2-1`

Licenses: (parsed from: `/usr/share/doc/libpython3.9-minimal/copyright`, `/usr/share/doc/libpython3.9-stdlib/copyright`, `/usr/share/doc/python3.9/copyright`, `/usr/share/doc/python3.9-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.9=3.9.2-1
'http://deb.debian.org/debian/pool/main/p/python3.9/python3.9_3.9.2-1.dsc' python3.9_3.9.2-1.dsc 3493 SHA256:63bc63b864067e7f993be8bc9bf2a08363fde05895bea86961fc5d781e42b68b
'http://deb.debian.org/debian/pool/main/p/python3.9/python3.9_3.9.2.orig.tar.xz' python3.9_3.9.2.orig.tar.xz 18889164 SHA256:3c2034c54f811448f516668dce09d24008a0716c3a794dd8639b5388cbde247d
'http://deb.debian.org/debian/pool/main/p/python3.9/python3.9_3.9.2-1.debian.tar.xz' python3.9_3.9.2-1.debian.tar.xz 211484 SHA256:b8b9e1710ca5dc5b0f0d9734494024ea11f560e36c34eb9191ccb0605798a490
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.9/3.9.2-1/ (for browsing the source)
- https://sources.debian.net/src/python3.9/3.9.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.9/3.9.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=8.1-1`

Binary Packages:

- `libreadline8:amd64=8.1-1`
- `readline-common=8.1-1`

Licenses: (parsed from: `/usr/share/doc/libreadline8/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=8.1-1
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1-1.dsc' readline_8.1-1.dsc 2418 SHA256:53356fdf2ee122ab75c7b535d292385311f7dea425ccc42143d2b9a2accfc657
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1.orig.tar.gz' readline_8.1.orig.tar.gz 2993288 SHA256:f8ceb4ee131e3232226a17f51b164afc46cd0b9e6cef344be87c65962cb82b02
'http://deb.debian.org/debian/pool/main/r/readline/readline_8.1-1.debian.tar.xz' readline_8.1-1.debian.tar.xz 29220 SHA256:852267a95aeec23b267c838469fee346e83a29e7a08071178dc87682591cffbf
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/8.1-1/ (for browsing the source)
- https://sources.debian.net/src/readline/8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2+b2`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc 2299 SHA256:a296819cd2ab5880b67ad963ef0867cb10e462f4403e52565aa863eb05bb1370
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4%2b20151223.gitfa8646d.1-2.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz 8096 SHA256:26d47de07d16285e4ca55b0828cbbf1ba35e671f9b3500a87e301fe755d26882
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.7-1`

Binary Packages:

- `sed=4.7-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.7-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.dsc' sed_4.7-1.dsc 1880 SHA256:dd0e8daed987929920f7729771f9c7a5b48d094923aaf686efd2ab19db776108
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7.orig.tar.xz' sed_4.7.orig.tar.xz 1298316 SHA256:2885768cd0a29ff8d58a6280a270ff161f6a3deb5690b2be6c49f46d4c67bd6a
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.debian.tar.xz' sed_4.7-1.debian.tar.xz 59824 SHA256:a2ab8d50807fd2242f86d6c6257399e790445ab6f8932f7f487d34361b4fc483
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.7-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.14`

Binary Packages:

- `sensible-utils=0.0.14`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.14
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.14.dsc' sensible-utils_0.0.14.dsc 1702 SHA256:002f637ca92db8bab28048cbab10d6509508508806e2005f4dc6ba3ca505a6d8
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.14.tar.xz' sensible-utils_0.0.14.tar.xz 64448 SHA256:a6ee528bf4122d77acacdb97f20cd0434a12ad3ecd119186a5fcee066844c644
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.14/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.14/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.14/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `serf=1.3.9-10`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-10`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-10/


### `dpkg` source package: `shadow=1:4.8.1-1`

Binary Packages:

- `login=1:4.8.1-1`
- `passwd=1:4.8.1-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.8.1-1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1-1.dsc' shadow_4.8.1-1.dsc 2215 SHA256:5c9568dc183781ba654b7daeba6d5d6768d4e0417cc8d8b6f2e534dae6fcdaa6
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1.orig.tar.xz' shadow_4.8.1.orig.tar.xz 1611196 SHA256:a3ad4630bdc41372f02a647278a8c3514844295d36eefe68ece6c3a641c1ae62
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.8.1-1.debian.tar.xz' shadow_4.8.1-1.debian.tar.xz 74752 SHA256:fdbccadc28fcca744f365e0529f3828d0c82bc3513b28976dca7308b40ea4773
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.8.1-1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.8.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.8.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `six=1.16.0-2`

Binary Packages:

- `python3-six=1.16.0-2`

Licenses: (parsed from: `/usr/share/doc/python3-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.16.0-2
'http://deb.debian.org/debian/pool/main/s/six/six_1.16.0-2.dsc' six_1.16.0-2.dsc 1643 SHA256:15ad773fabd86cce617daaf6ccb0f9c31d9eaac62411ec5198c1d9c9dbfbd693
'http://deb.debian.org/debian/pool/main/s/six/six_1.16.0.orig.tar.gz' six_1.16.0.orig.tar.gz 34041 SHA256:1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926
'http://deb.debian.org/debian/pool/main/s/six/six_1.16.0-2.debian.tar.xz' six_1.16.0-2.debian.tar.xz 4892 SHA256:35c7fe199852a2be2575d04d787adabeeb157a72a473ce0295bc7f40df6f26a6
```

Other potentially useful URLs:

- https://sources.debian.net/src/six/1.16.0-2/ (for browsing the source)
- https://sources.debian.net/src/six/1.16.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/six/1.16.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.34.1-3`

Binary Packages:

- `libsqlite3-0:amd64=3.34.1-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.34.1-3
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1-3.dsc' sqlite3_3.34.1-3.dsc 2410 SHA256:bee4705c6a1332c1ecb299e23b54cfe04b63ea5a163be1d211fa676595686cbf
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1.orig-www.tar.xz' sqlite3_3.34.1.orig-www.tar.xz 5581512 SHA256:c63647f3fb6c4b0620d6587e2a744021401df92c307b55e236a7eb28c5000fa7
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1.orig.tar.xz' sqlite3_3.34.1.orig.tar.xz 7343284 SHA256:082f583440c662cb484ae1c124ffe285b587bbb7837e095e693026e6df50334d
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.34.1-3.debian.tar.xz' sqlite3_3.34.1-3.debian.tar.xz 22828 SHA256:aefed33ed3e388d46cd35ab865b5fffe028b7511c0211f8521eacb8562fec0aa
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.34.1-3/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.34.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.34.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `subversion=1.14.1-3+deb11u1`

Binary Packages:

- `libsvn1:amd64=1.14.1-3+deb11u1`
- `subversion=1.14.1-3+deb11u1`

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
$ apt-get source -qq --print-uris subversion=1.14.1-3+deb11u1
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.1-3%2bdeb11u1.dsc' subversion_1.14.1-3+deb11u1.dsc 3712 SHA256:23a03b5d6da70e29e1b549c52bce92956083e1c75f44ffc15a88b79f7c65aa8e
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.1.orig.tar.gz' subversion_1.14.1.orig.tar.gz 11534165 SHA256:dee2796abaa1f5351e6cc2a60b1917beb8238af548b20d3e1ec22760ab2f0cad
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.1.orig.tar.gz.asc' subversion_1.14.1.orig.tar.gz.asc 1288 SHA256:4dafc04642e634f3b75d70d3d707ba8eacc63a4925026402afcb94566f445fa6
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.14.1-3%2bdeb11u1.debian.tar.xz' subversion_1.14.1-3+deb11u1.debian.tar.xz 432388 SHA256:eac5960a4eb15b67e421612fcb75bcdb4d2fd633609bbf68435afef3204a2d7c
```

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.14.1-3+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.14.1-3+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.14.1-3+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=247.3-7+deb11u1`

Binary Packages:

- `libsystemd0:amd64=247.3-7+deb11u1`
- `libudev1:amd64=247.3-7+deb11u1`

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
$ apt-get source -qq --print-uris systemd=247.3-7+deb11u1
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3-7%2bdeb11u1.dsc' systemd_247.3-7+deb11u1.dsc 5199 SHA256:52bfded0adf0297bb825b3c5aefcadd38be9fda59e70fae902245d720d2a4fa2
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3.orig.tar.gz' systemd_247.3.orig.tar.gz 9895385 SHA256:2869986e219a8dfc96cc0dffac66e0c13bb70a89e16b85a3948876c146cfa3e0
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_247.3-7%2bdeb11u1.debian.tar.xz' systemd_247.3-7+deb11u1.debian.tar.xz 186940 SHA256:6cf6a07b17f676700d049ddaed8ee8a184f3065bee2550a333039eddde207aa3
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/247.3-7+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/systemd/247.3-7+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/247.3-7+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.96-7+deb11u1`

Binary Packages:

- `sysvinit-utils=2.96-7+deb11u1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.96-7+deb11u1
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96-7%2bdeb11u1.dsc' sysvinit_2.96-7+deb11u1.dsc 2374 SHA256:1ef8a8b224aabecbd27ebef68b389bc3149970ef348877cec3ac7351a04c13a7
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96.orig.tar.gz' sysvinit_2.96.orig.tar.gz 147834 SHA256:1275620f767c85bb2d7e5b9542579ae097f3eb542065ff30a70efc95b6e84c64
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.96-7%2bdeb11u1.debian.tar.xz' sysvinit_2.96-7+deb11u1.debian.tar.xz 129936 SHA256:5ce9a0b9735a66c536c77c65e17d4190338e0c0416ba235c26c9cf12d3cfbeb3
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.96-7+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.96-7+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.96-7+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.34+dfsg-1`

Binary Packages:

- `tar=1.34+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.34+dfsg-1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg-1.dsc' tar_1.34+dfsg-1.dsc 2015 SHA256:12d709cd77e38e5d1753325a9f266b340b5c095a426f438c677b42c031949d89
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg.orig.tar.xz' tar_1.34+dfsg.orig.tar.xz 1981736 SHA256:7d57029540cb928394defb3b377b3531237c947e795b51aa8acac0c5ba0e4844
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.34%2bdfsg-1.debian.tar.xz' tar_1.34+dfsg-1.debian.tar.xz 19192 SHA256:7228f5cbd36f937dfc1fec042dee8b3e02d92a06afdd44c586c2c8cfb1905538
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.34+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.34+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.34+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.2.0-1+deb11u1`

Binary Packages:

- `libtiff5:amd64=4.2.0-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.2.0-1+deb11u1
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.2.0-1%2bdeb11u1.dsc' tiff_4.2.0-1+deb11u1.dsc 2461 SHA256:09c0d66b0f710bab934727529fcc418217588ccd62b7ebcbe1a1057bea6507e4
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.2.0.orig.tar.gz' tiff_4.2.0.orig.tar.gz 2809373 SHA256:eb0484e568ead8fa23b513e9b0041df7e327f4ee2d22db5a533929dfc19633cb
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.2.0.orig.tar.gz.asc' tiff_4.2.0.orig.tar.gz.asc 228 SHA256:119bb62934603ff4d3cd81c739d11904b28812a860773b9b2268cc96a339b14f
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.2.0-1%2bdeb11u1.debian.tar.xz' tiff_4.2.0-1+deb11u1.debian.tar.xz 25188 SHA256:a0b8d4a231d97e0dbefde74fe5788d19429c4bcbfd32102a9d09fd6dc39273a0
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.2.0-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.2.0-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.2.0-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tini=0.19.0-1`

Binary Packages:

- `tini=0.19.0-1`

Licenses: (parsed from: `/usr/share/doc/tini/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris tini=0.19.0-1
'http://deb.debian.org/debian/pool/main/t/tini/tini_0.19.0-1.dsc' tini_0.19.0-1.dsc 1810 SHA256:0641749862d510c2fd009413e274d878c39139bf37a4e3669f9fcd745ec9e9ea
'http://deb.debian.org/debian/pool/main/t/tini/tini_0.19.0.orig.tar.gz' tini_0.19.0.orig.tar.gz 32369 SHA256:0fd35a7030052acd9f58948d1d900fe1e432ee37103c5561554408bdac6bbf0d
'http://deb.debian.org/debian/pool/main/t/tini/tini_0.19.0-1.debian.tar.xz' tini_0.19.0-1.debian.tar.xz 1832 SHA256:6e3e35148962098ff64f262cc60c7f89085dc1203b2c85574a5324a8f57f5c52
```

Other potentially useful URLs:

- https://sources.debian.net/src/tini/0.19.0-1/ (for browsing the source)
- https://sources.debian.net/src/tini/0.19.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tini/0.19.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2021a-1+deb11u8`

Binary Packages:

- `tzdata=2021a-1+deb11u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2021a-1+deb11u8
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a-1%2bdeb11u8.dsc' tzdata_2021a-1+deb11u8.dsc 2269 SHA256:14db9f37ed6c5d294081edc708f262a4dcd627d22e08789362c88d4a3988f63d
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a.orig.tar.gz' tzdata_2021a.orig.tar.gz 411892 SHA256:39e7d2ba08c68cbaefc8de3227aab0dec2521be8042cf56855f7dc3a9fb14e08
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a.orig.tar.gz.asc' tzdata_2021a.orig.tar.gz.asc 833 SHA256:9dc5f54674166f4ffbc2d4485e656227430ab5f39c9006e6ed9986281117f058
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2021a-1%2bdeb11u8.debian.tar.xz' tzdata_2021a-1+deb11u8.debian.tar.xz 116136 SHA256:36ec850e434ba28da2a525f3a068c8b17fdddec05c65fd3093505750d0890c8d
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2021a-1+deb11u8/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2021a-1+deb11u8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2021a-1+deb11u8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ucf=3.0043`

Binary Packages:

- `ucf=3.0043`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0043
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0043.dsc' ucf_3.0043.dsc 1423 SHA256:5954508238ff1b8e2c61e1f533268911ba06709e821c02de014fd15d2ead81fd
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0043.tar.xz' ucf_3.0043.tar.xz 70560 SHA256:0294cc11a6cf032ea99ca5064f73a4ede5b28bc2d4ad0a12e8493c7520c7a2a4
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0043/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0043/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0043/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `utf8proc=2.5.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.5.0-1
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.5.0-1.dsc' utf8proc_2.5.0-1.dsc 2154 SHA256:2137104a3712875650629305fe7d7ef37d4d99328846c18b087b289c0ddbf27c
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.5.0.orig.tar.gz' utf8proc_2.5.0.orig.tar.gz 155485 SHA256:d4e8dfc898cfd062493cb7f42d95d70ccdd3a4cd4d90bec0c71b47cca688f1be
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.5.0-1.debian.tar.xz' utf8proc_2.5.0-1.debian.tar.xz 5240 SHA256:333496cf4e178b5ccf4972fa52523d07a21a0cabf0cb123133c6c71f98e92eff
```

Other potentially useful URLs:

- https://sources.debian.net/src/utf8proc/2.5.0-1/ (for browsing the source)
- https://sources.debian.net/src/utf8proc/2.5.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/utf8proc/2.5.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.36.1-8+deb11u1`

Binary Packages:

- `bsdutils=1:2.36.1-8+deb11u1`
- `libblkid1:amd64=2.36.1-8+deb11u1`
- `libmount1:amd64=2.36.1-8+deb11u1`
- `libsmartcols1:amd64=2.36.1-8+deb11u1`
- `libuuid1:amd64=2.36.1-8+deb11u1`
- `mount=2.36.1-8+deb11u1`
- `util-linux=2.36.1-8+deb11u1`

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
$ apt-get source -qq --print-uris util-linux=2.36.1-8+deb11u1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1-8%2bdeb11u1.dsc' util-linux_2.36.1-8+deb11u1.dsc 4461 SHA256:1f42a8e46c383b6fbfb57ea89dfe5adb5b7e6960bc5e8cdb9589109773be6cac
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1.orig.tar.xz' util-linux_2.36.1.orig.tar.xz 5231880 SHA256:09fac242172cd8ec27f0739d8d192402c69417617091d8c6e974841568f37eed
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.36.1-8%2bdeb11u1.debian.tar.xz' util-linux_2.36.1-8+deb11u1.debian.tar.xz 101448 SHA256:edda1d46e25a40e730c672aac2cd0e44f9eeb0fb64b27be957d6924ed5288a0a
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.36.1-8+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.36.1-8+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.36.1-8+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wget=1.21-1+deb11u1`

Binary Packages:

- `wget=1.21-1+deb11u1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.21-1+deb11u1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21-1%2bdeb11u1.dsc' wget_1.21-1+deb11u1.dsc 2208 SHA256:b9b3c2b206a602f4954688dc85c2131c35ad12621405e89560e060c122f029d1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.orig.tar.gz' wget_1.21.orig.tar.gz 4866788 SHA256:b3bc1a9bd0c19836c9709c318d41c19c11215a07514f49f89b40b9d50ab49325
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21.orig.tar.gz.asc' wget_1.21.orig.tar.gz.asc 854 SHA256:da3a99b8a7bbaf70cc339593a9e0c2942dd673152bc7bfcf8f965ae1c06d50df
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.21-1%2bdeb11u1.debian.tar.xz' wget_1.21-1+deb11u1.debian.tar.xz 60944 SHA256:cfb8edda9e0667e2fba60939674c8a4e5a14fca04c91e27ed5699b345144804e
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.21-1+deb11u1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.21-1+deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.21-1+deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x265=3.4-2`

Binary Packages:

- `libx265-192:amd64=3.4-2`

Licenses: (parsed from: `/usr/share/doc/libx265-192/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris x265=3.4-2
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.4-2.dsc' x265_3.4-2.dsc 2229 SHA256:23d691eb0efd6f12f059e776b99e0c03c1fb323b847858d4f2731cf7e869be3a
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.4.orig.tar.gz' x265_3.4.orig.tar.gz 1469365 SHA256:c2047f23a6b729e5c70280d23223cb61b57bfe4ad4e8f1471eeee2a61d148672
'http://deb.debian.org/debian/pool/main/x/x265/x265_3.4-2.debian.tar.xz' x265_3.4-2.debian.tar.xz 13076 SHA256:34ac10ef2d9a9ad237a25101b97a61dfb228f9fbeb3fefc61a5fd22f3b488ed3
```

Other potentially useful URLs:

- https://sources.debian.net/src/x265/3.4-2/ (for browsing the source)
- https://sources.debian.net/src/x265/3.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x265/3.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xxhash=0.8.0-2`

Binary Packages:

- `libxxhash0:amd64=0.8.0-2`

Licenses: (parsed from: `/usr/share/doc/libxxhash0/copyright`)

- `BSD-2-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xxhash=0.8.0-2
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0-2.dsc' xxhash_0.8.0-2.dsc 1601 SHA256:91c696b5371558ebb12c323b0bd4e15eece0a439ef49c6aa5a6d0c1cf6c7762a
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0.orig.tar.gz' xxhash_0.8.0.orig.tar.gz 145909 SHA256:7054c3ebd169c97b64a92d7b994ab63c70dd53a06974f1f630ab782c28db0f4f
'http://deb.debian.org/debian/pool/main/x/xxhash/xxhash_0.8.0-2.debian.tar.xz' xxhash_0.8.0-2.debian.tar.xz 4160 SHA256:5c427c2c08019a945412afac02326a24c72b65a83bff59447009db303233aecd
```

Other potentially useful URLs:

- https://sources.debian.net/src/xxhash/0.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/xxhash/0.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xxhash/0.8.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.5-2.1~deb11u1`

Binary Packages:

- `liblzma5:amd64=5.2.5-2.1~deb11u1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.5-2.1~deb11u1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5-2.1%7edeb11u1.dsc' xz-utils_5.2.5-2.1~deb11u1.dsc 2681 SHA256:68a2702d252ab75789130fc9d2f48b9b38fc0181990c42a947b0d923d9d1922a
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz' xz-utils_5.2.5.orig.tar.xz 1148824 SHA256:3e1e518ffc912f86608a8cb35e4bd41ad1aec210df2a47aaa1f95e7f5576ef56
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5.orig.tar.xz.asc' xz-utils_5.2.5.orig.tar.xz.asc 833 SHA256:6efc0075a58912e640119d2b52ef7d1518b260d8720fadc73df21ab7fc727624
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.5-2.1%7edeb11u1.debian.tar.xz' xz-utils_5.2.5-2.1~deb11u1.debian.tar.xz 34948 SHA256:07627e4c7a50ef91d64c177626507afd6107f44e27f4aacb5e41151d1399ff4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.5-2.1~deb11u1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.5-2.1~deb11u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.5-2.1~deb11u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.11.dfsg-2+deb11u2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-2+deb11u2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-2+deb11u2`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-2+deb11u2
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-2%2bdeb11u2.dsc' zlib_1.2.11.dfsg-2+deb11u2.dsc 2905 SHA256:ec2ee2fc4dfd1f799dfa6a95133ebccbd7531886de38b0a8e3e58b66706a6dc7
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-2%2bdeb11u2.debian.tar.xz' zlib_1.2.11.dfsg-2+deb11u2.debian.tar.xz 23984 SHA256:c19794df214f0c2571b19f7dea853c066410232abe9f0ddad77231fabccde0da
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-2+deb11u2/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-2+deb11u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.11.dfsg-2+deb11u2/ (for access to the source package after it no longer exists in the archive)
