<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:10.0.2`](#swipl1002)
-	[`swipl:10.1.20`](#swipl10120)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:10.0.2`

```console
$ docker pull swipl@sha256:652375a3cbfd2ecbfa4f30b218d22b3c5fb3e60433996093125512fd023ad375
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:10.0.2` - linux; amd64

```console
$ docker pull swipl@sha256:4bb8dfbebaeae77ee821af85f9d4e8e92975bb8300101ceb7739b113ee324f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99146467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c1409b4a7ad11564860c82704592599877dfb5f88d5478a93df2df1cb109e`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:22 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:33:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:22 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:43 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:39:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c41a5bb68f9cfdfac7fd2413ca176e12b1dbb1492c13d80062890b75b107478`  
		Last Modified: Wed, 28 Oct 2026 01:39:57 GMT  
		Size: 49.3 MB (49259954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fae2168830f0f48dcb8da2c7efb23b4115fdcfcb4c781687c77134a0bc82db2`  
		Last Modified: Wed, 28 Oct 2026 01:39:56 GMT  
		Size: 21.6 MB (21639076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:16ce84a43c1fda7b5ec1ccdfac3b60e924475017e178d84a6f065be4f7baed26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06573333f450d85f2e217986a80921e22692776614d13c9623a3b52cff44ca94`

```dockerfile
```

-	Layers:
	-	`sha256:a66945681364bd33665442fb4f53da5fec364c849fd92a68e8921ba339599262`  
		Last Modified: Wed, 28 Oct 2026 01:39:55 GMT  
		Size: 3.3 MB (3330618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2865c90b19fd720a19c830459705bc75c86833b43f19d7862b2c29c8008cc8fe`  
		Last Modified: Wed, 28 Oct 2026 01:39:55 GMT  
		Size: 17.9 KB (17886 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm variant v7

```console
$ docker pull swipl@sha256:41bf521213e0b94d01a181b156fb681a8932d22e7d3ad838aa6488b2b0d369d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84900301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1214e203340259b6813072340a933fdfc54f19f42916b2894d2d8a7c253fa9b2`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:43 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 02:21:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:43 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:24:17 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 02:24:17 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832256b74c2a86b8603a20061b9263a10608b2e628133cdf769a9d7f76867fb1`  
		Last Modified: Wed, 28 Oct 2026 02:24:29 GMT  
		Size: 43.8 MB (43800791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885d88be99a2954e7aae55a23662cafdae9ec99f1455d04dd8ee38449e9894c3`  
		Last Modified: Wed, 28 Oct 2026 02:24:29 GMT  
		Size: 17.1 MB (17138544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:f5a107ecae2911430c2637e2795fdb142e603998be1847cc9e7e1abfedfe4755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3347427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe81b2a7a682586172f690ced74b9c2e03fbacb0fd321e7eddf31110fe60acec`

```dockerfile
```

-	Layers:
	-	`sha256:c0006bcdf8cf635db300c595f0309c72209451b9bcd84c4b2e17bd27e4514a99`  
		Last Modified: Wed, 28 Oct 2026 02:24:28 GMT  
		Size: 3.3 MB (3329464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f0fc48118eeb0e852c777ce35bc8d1b7604d88c52c539a2240021a70d05569`  
		Last Modified: Wed, 28 Oct 2026 02:24:28 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:66c4443b1ff3407f9ca9a968ba707a4827b91d85f060da4bf1d13d3b6cc0c0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96976980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31575a9894d0d879693985b71e2adc828f4e9a1f4a4135280a152a874d5c2aff`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:36:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:36:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:42:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9781fa08a293cbdad3c06a2c2a6fba6d4a4de9ab7b54ba09fd1ebb9cb5b8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:31 GMT  
		Size: 47.8 MB (47842110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931ec374999e50baa33ba9ad749873621c4f7c33ce64f17cd19a79c64f3627c0`  
		Last Modified: Wed, 28 Oct 2026 01:42:30 GMT  
		Size: 21.0 MB (20996919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:1995ca9baf8d0efba744beccb8fbf21e6793701b8b64dcac6c6d5af6e6a8b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7004d033fddfc3258114854249bd54bcb7c5824b7373012686ebc77be046682a`

```dockerfile
```

-	Layers:
	-	`sha256:9d70b23a3b10a8027109ed3c42a31117927c437141e221cf6aa618e0f39437ec`  
		Last Modified: Wed, 28 Oct 2026 01:42:30 GMT  
		Size: 3.3 MB (3330958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aad33323e3812ecd12695af350ce4b64edd0915fd7b532dac7a9b86313b21437`  
		Last Modified: Wed, 28 Oct 2026 01:42:29 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:10.1.20`

**does not exist** (yet?)

## `swipl:latest`

```console
$ docker pull swipl@sha256:ede678fbecbd4a3da8e9e210c2290b02011fe21a0fac30de283e099ad3d925d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:latest` - linux; amd64

```console
$ docker pull swipl@sha256:65f75938993df40ca1edbcb78f4cefafe16e797262cda3ceaea2cc8f83cbcd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105148224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b6cbbbd3df534813c39c1d6ea8b45c8d0aedfd25f828a3918e0af3646463fb`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:33:20 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:33:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:20 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:05 GMT
RUN set -eux;     SWIPL_VER=10.1.19;     SWIPL_CHECKSUM=3b4128b8bdfa2b9778ee9b29163872b1e414ca0f3117a32c286decfe246b7e6a;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:39:05 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c0cfdfc065b744d6cd908f3c40ef76f93a0d0bcfe85a637828fec1ac064fcc`  
		Last Modified: Wed, 28 Oct 2026 01:39:18 GMT  
		Size: 52.5 MB (52456241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b61feb9a52a96765b2e66da9ff598ae7c4d3ecf8cc50e5ab5a9f81924f5011`  
		Last Modified: Wed, 28 Oct 2026 01:39:18 GMT  
		Size: 22.8 MB (22836747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:39877a6201ef1d7769299571dd67e720588627d11e72583c06e7661db4759537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652e18c4a38cc0c29a44fe894ae1a53b8ae0c0a984857dacff6dc8dc3ac70fce`

```dockerfile
```

-	Layers:
	-	`sha256:fc8741d168b010368993c2722ac84c3e49e17c7047ed6ed1bdb5c7f01a47db32`  
		Last Modified: Wed, 28 Oct 2026 01:39:17 GMT  
		Size: 3.0 MB (3037452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a471124c592cd7aede81d3eb0957b606a18fbce35ff05b063ab22f7370a48d7f`  
		Last Modified: Wed, 28 Oct 2026 01:39:17 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:d0a533a220ac35c855b3ff063edd2931e44d63577950ea0c364f38d0a8f8fdc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91491333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1575715688b98f853927b76a9bc7199ca3e02faea9f3731270c2a40e0abfa60`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:13 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 02:21:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:13 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:24:25 GMT
RUN set -eux;     SWIPL_VER=10.1.19;     SWIPL_CHECKSUM=3b4128b8bdfa2b9778ee9b29163872b1e414ca0f3117a32c286decfe246b7e6a;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 02:24:25 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b6245366ff8ff68256e5a8db3decf77040e6f5f183db1113fbb4ff0565defd`  
		Last Modified: Wed, 28 Oct 2026 02:24:37 GMT  
		Size: 47.0 MB (47016034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469b3d5d85cff9bfee8d9bd8c1a8cec5848efb216f874d0f6a0b26c36b47dc7f`  
		Last Modified: Wed, 28 Oct 2026 02:24:37 GMT  
		Size: 18.2 MB (18203131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:2c4823a85cbeb8810df8d7b329f29f68bd27a4baf0fc64ecedb2747b0eced1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06309b6bab732a0a2e43214002e5a2b4c6ac54e933de257c65a3cc9fff73222`

```dockerfile
```

-	Layers:
	-	`sha256:c6c8ae4437050860c5c39ed23639a673ff99bcc152cb4e1a57cb2fc9f97710d0`  
		Last Modified: Wed, 28 Oct 2026 02:24:36 GMT  
		Size: 3.0 MB (3035505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a54850e51447bc8a8552ed96cd835c60ef2db4c6af2c329a2451fa1075ea891`  
		Last Modified: Wed, 28 Oct 2026 02:24:36 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:cfb1cf8ddc4dfb949398ec15004fe8165f76b3b0c6897d6f23eeb43eeca59572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104021788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc08c3de15911cf8ce5c3afcd2dc32d05aa730e9535f459249e72a475d65c3d`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:36:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:36:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:25 GMT
RUN set -eux;     SWIPL_VER=10.1.19;     SWIPL_CHECKSUM=3b4128b8bdfa2b9778ee9b29163872b1e414ca0f3117a32c286decfe246b7e6a;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:42:25 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdeaf11873d8ceb64660bc76c7fe06ea6a15f4aeff069e3af91fb2679617250e`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 51.7 MB (51689299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad31c71c57600908444ceb93d07448afccebbeeeca8c59172d884514c52b291`  
		Last Modified: Wed, 28 Oct 2026 01:42:38 GMT  
		Size: 22.1 MB (22118993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:0190092f690cf06ea2c01f426f445569bb15ccf9c91f625b036c81e79453f7ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad29928d898e56ec4dff2a4418278eda7754b0e8bf9a648b0671fe586366388`

```dockerfile
```

-	Layers:
	-	`sha256:c4328ef7fc12f6ec1697c2a4622ce63aec11878f9035f0aca381f94716b4eadf`  
		Last Modified: Wed, 28 Oct 2026 01:42:37 GMT  
		Size: 3.0 MB (3037795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65a0e33493efc3d8630bfaced591b99f501be9b5d99a570d07361ee1d21dbf5`  
		Last Modified: Wed, 28 Oct 2026 01:42:37 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:stable`

```console
$ docker pull swipl@sha256:652375a3cbfd2ecbfa4f30b218d22b3c5fb3e60433996093125512fd023ad375
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:4bb8dfbebaeae77ee821af85f9d4e8e92975bb8300101ceb7739b113ee324f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99146467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c1409b4a7ad11564860c82704592599877dfb5f88d5478a93df2df1cb109e`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:33:22 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:33:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:22 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:43 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:39:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c41a5bb68f9cfdfac7fd2413ca176e12b1dbb1492c13d80062890b75b107478`  
		Last Modified: Wed, 28 Oct 2026 01:39:57 GMT  
		Size: 49.3 MB (49259954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fae2168830f0f48dcb8da2c7efb23b4115fdcfcb4c781687c77134a0bc82db2`  
		Last Modified: Wed, 28 Oct 2026 01:39:56 GMT  
		Size: 21.6 MB (21639076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:16ce84a43c1fda7b5ec1ccdfac3b60e924475017e178d84a6f065be4f7baed26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06573333f450d85f2e217986a80921e22692776614d13c9623a3b52cff44ca94`

```dockerfile
```

-	Layers:
	-	`sha256:a66945681364bd33665442fb4f53da5fec364c849fd92a68e8921ba339599262`  
		Last Modified: Wed, 28 Oct 2026 01:39:55 GMT  
		Size: 3.3 MB (3330618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2865c90b19fd720a19c830459705bc75c86833b43f19d7862b2c29c8008cc8fe`  
		Last Modified: Wed, 28 Oct 2026 01:39:55 GMT  
		Size: 17.9 KB (17886 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:41bf521213e0b94d01a181b156fb681a8932d22e7d3ad838aa6488b2b0d369d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84900301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1214e203340259b6813072340a933fdfc54f19f42916b2894d2d8a7c253fa9b2`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:43 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 02:21:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:21:43 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:24:17 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 02:24:17 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832256b74c2a86b8603a20061b9263a10608b2e628133cdf769a9d7f76867fb1`  
		Last Modified: Wed, 28 Oct 2026 02:24:29 GMT  
		Size: 43.8 MB (43800791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885d88be99a2954e7aae55a23662cafdae9ec99f1455d04dd8ee38449e9894c3`  
		Last Modified: Wed, 28 Oct 2026 02:24:29 GMT  
		Size: 17.1 MB (17138544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:f5a107ecae2911430c2637e2795fdb142e603998be1847cc9e7e1abfedfe4755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3347427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe81b2a7a682586172f690ced74b9c2e03fbacb0fd321e7eddf31110fe60acec`

```dockerfile
```

-	Layers:
	-	`sha256:c0006bcdf8cf635db300c595f0309c72209451b9bcd84c4b2e17bd27e4514a99`  
		Last Modified: Wed, 28 Oct 2026 02:24:28 GMT  
		Size: 3.3 MB (3329464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f0fc48118eeb0e852c777ce35bc8d1b7604d88c52c539a2240021a70d05569`  
		Last Modified: Wed, 28 Oct 2026 02:24:28 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:66c4443b1ff3407f9ca9a968ba707a4827b91d85f060da4bf1d13d3b6cc0c0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96976980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31575a9894d0d879693985b71e2adc828f4e9a1f4a4135280a152a874d5c2aff`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:36:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 28 Oct 2026 01:36:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:36:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 28 Oct 2026 01:42:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9781fa08a293cbdad3c06a2c2a6fba6d4a4de9ab7b54ba09fd1ebb9cb5b8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:31 GMT  
		Size: 47.8 MB (47842110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931ec374999e50baa33ba9ad749873621c4f7c33ce64f17cd19a79c64f3627c0`  
		Last Modified: Wed, 28 Oct 2026 01:42:30 GMT  
		Size: 21.0 MB (20996919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:1995ca9baf8d0efba744beccb8fbf21e6793701b8b64dcac6c6d5af6e6a8b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7004d033fddfc3258114854249bd54bcb7c5824b7373012686ebc77be046682a`

```dockerfile
```

-	Layers:
	-	`sha256:9d70b23a3b10a8027109ed3c42a31117927c437141e221cf6aa618e0f39437ec`  
		Last Modified: Wed, 28 Oct 2026 01:42:30 GMT  
		Size: 3.3 MB (3330958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aad33323e3812ecd12695af350ce4b64edd0915fd7b532dac7a9b86313b21437`  
		Last Modified: Wed, 28 Oct 2026 01:42:29 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json
