<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:10.1.21`](#swipl10121)
-	[`swipl:11.0.0`](#swipl1100)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:10.1.21`

```console
$ docker pull swipl@sha256:104e8fc9af7ea5c00def0aea2cba2ad1792e2f8c530b2e78432b2ee9f83494d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:10.1.21` - linux; amd64

```console
$ docker pull swipl@sha256:b366031baa2c926041e66bfea1f743b1117033eaf8f4f683ce6baab450624d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105781947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8811d5db2b7d48973d27a22f5ca660ddb46807bacd1ba9c544b64367fb7308`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:00:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 20:00:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:00:45 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:06:19 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:06:19 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cd32b72166d38c5d13ef3476e79990470916ed6418cbf34a1f8c1dc9efc1fd`  
		Last Modified: Mon, 16 Nov 2026 20:06:33 GMT  
		Size: 52.5 MB (52517965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ded430f42e3025df23f2a658826a5fb55f2deff7fcb203281d4a4683628d54`  
		Last Modified: Mon, 16 Nov 2026 20:06:32 GMT  
		Size: 23.4 MB (23407850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.21` - unknown; unknown

```console
$ docker pull swipl@sha256:d1fd98a566b350a7573db89e11cfd16ad8e74d20c55e796e0ab7f59cba595e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e29b15605855ac95748aef6018083c39b9347f2c973669476c9ef65ae9f629`

```dockerfile
```

-	Layers:
	-	`sha256:e0a025eee139d346bc3877058cae08e64d4708f7cf8b04bfc10a2e9d2fe5e1e0`  
		Last Modified: Mon, 16 Nov 2026 20:06:31 GMT  
		Size: 3.0 MB (3037480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12fffbabf12ce43dcc3b4a162fad9d7519345ccc1bef87200a84c5870dcdc01f`  
		Last Modified: Mon, 16 Nov 2026 20:06:31 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.21` - linux; arm variant v7

```console
$ docker pull swipl@sha256:505171282ce41748dff0cdbdb7e508b97d429245d1323ed0f909565228a8a429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92061715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5916322cf0e2ccb26a9b6598a35cc77375d4994247b8b3a03c1c3eb4c6d32f83`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:06:18 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 20:06:18 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:06:18 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:08:55 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:08:55 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8393847ca4101a8801bfb1b454d3931bb8bda5c4dec7198262adcb8f3e33e630`  
		Last Modified: Mon, 16 Nov 2026 20:09:07 GMT  
		Size: 47.1 MB (47061307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b78e6233f670edc02ed6cbfa37df5a9ea1b2ebd50cbee526ca3781a47e95fc7`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 18.7 MB (18727493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.21` - unknown; unknown

```console
$ docker pull swipl@sha256:f7a9ee7b2bc3c667106a3098af56b66e718528559ada77c0d2eaa33a23af7469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8feb01a7721bc116754b254bf29d5b73038a5444ab4e308a48072769b04a742`

```dockerfile
```

-	Layers:
	-	`sha256:fa42ff63e3d1e2921e6ab8547515b67f917c916ed9b31c59dba007da379ae571`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 3.0 MB (3035533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afdc67e46c5e4751f9faf8b3773f4e5dd4e521a7a3e2ce132dcf5bb089aac739`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.21` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:370a188e21dc4bdee938a93b8ded83e47564c329f7f5ecb7e7292d9a2550f8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104642525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1f1b5e0590a0e888d49464f90bd161f484eaecfebcb78e21c4b6a31765b82c`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 19:58:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 19:58:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:58:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:04:11 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:04:11 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba42dc133c1bd8ef6e1b48d439c6f5818ec1b582447e24a697266bd851387c6`  
		Last Modified: Mon, 16 Nov 2026 20:04:26 GMT  
		Size: 51.8 MB (51759137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaafe42f7637a569a6e561a9b568d1d74b9c46362b2b753326cd6ad6943cbbe`  
		Last Modified: Mon, 16 Nov 2026 20:04:25 GMT  
		Size: 22.7 MB (22669351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.21` - unknown; unknown

```console
$ docker pull swipl@sha256:38a82541f54682a38689758db5186a41aef279b943eeb4145d0e9ffde3a9aa5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3779f0581469f27b224ebc6f2500c7fed5a843c7c192deb7444ddbd7f58d49`

```dockerfile
```

-	Layers:
	-	`sha256:00a3af868953f3250b9492394ce88decbf444b40a014b11e6c9dba4c7faa7752`  
		Last Modified: Mon, 16 Nov 2026 20:04:23 GMT  
		Size: 3.0 MB (3037823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7382e380dbc9cfccba49a67a16021c6d69cd628e12b7872fe0b6a424449d6709`  
		Last Modified: Mon, 16 Nov 2026 20:04:23 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:11.0.0`

```console
$ docker pull swipl@sha256:1296dcde9f7cfe93a21e8ad86c6ee2962b56bc6189622f02e27f2543453fee1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:11.0.0` - linux; amd64

```console
$ docker pull swipl@sha256:07676dc70c439e46838a4b81f8aa765db82a446915ba69dd8d9113e1c8fb0cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105892419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63876923b9e1bbd5dae6e222b8597df41bcfdc55ee57ba95c66e18bd6bbb9f0`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:03:45 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:03:45 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3100c4cbf4009a9a651099bb69c7826c597ed338304360b20d969ea720fa97b4`  
		Last Modified: Wed, 18 Nov 2026 20:04:00 GMT  
		Size: 52.5 MB (52517865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd66f7e24491139e68e19868017e1a71c999d6f7255de8755a414e5b3dcf936`  
		Last Modified: Wed, 18 Nov 2026 20:03:59 GMT  
		Size: 23.5 MB (23518422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:11.0.0` - unknown; unknown

```console
$ docker pull swipl@sha256:ab08dbf8054260aaf0e7eb3ec3ddaf57f27c8d66030816ffac4c69a30fae6501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6d4773555c3f4e057a12d73e0a8009cab07657b3b5a7b7b2eb9b4fe635eb87`

```dockerfile
```

-	Layers:
	-	`sha256:1b38bdc63eba38b5877c416876067b9a99f0df62656f4e36edab0b4301cd4eaa`  
		Last Modified: Wed, 18 Nov 2026 20:03:58 GMT  
		Size: 3.0 MB (3037476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0270244ee781eba7cc1b39e4545b1ebb7ba3393d09940b52ed19a48e7ed1d2`  
		Last Modified: Wed, 18 Nov 2026 20:03:57 GMT  
		Size: 18.1 KB (18132 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:11.0.0` - linux; arm variant v7

```console
$ docker pull swipl@sha256:45ce73159428e358561be6e407d233757383e62a3868b223d912cbc92fc64343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92159686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5a0b9f95f5afb12db9f8fc952feca13901efac5b030a53791eacb6119d35dd`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:00:07 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:00:07 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2956b40a3ac1f27ea0b57c7080893853025594692784b141a5e81b55970653`  
		Last Modified: Wed, 18 Nov 2026 20:00:21 GMT  
		Size: 47.1 MB (47061082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93458c9897ccb1e5c3d0789fb4375f869eeb55f2d24f4672b507f5645ed6546`  
		Last Modified: Wed, 18 Nov 2026 20:00:20 GMT  
		Size: 18.8 MB (18825689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:11.0.0` - unknown; unknown

```console
$ docker pull swipl@sha256:6a56717d1513ee69191692111d75c10bb876845e5b5894b25f8f19873c3498ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a10e0f0b7c2103613d30b934b8681b8142cf917aefe5151d73a3d57914b679d`

```dockerfile
```

-	Layers:
	-	`sha256:625ab3568bce1be77b087ac1c9422468cc3d532e1393e86cdb230a87d063e2c5`  
		Last Modified: Wed, 18 Nov 2026 20:00:20 GMT  
		Size: 3.0 MB (3035529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fed58619b72a875b2c6a1eb2ae28ec2c1502f5d91aa111b18e5f99b4c00b56f3`  
		Last Modified: Wed, 18 Nov 2026 20:00:21 GMT  
		Size: 18.2 KB (18209 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:11.0.0` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:76911d5da8a9b3c1318dde2bd9cb4403cceccb8c9880e891ef3243edb6a16d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104744536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6562cb35b26d6e73277e9b3fc57f12b6b8bf23f56dfa22a7bf99384cb96a944d`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:03:42 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:03:42 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cc57f6849068e60f47748158d1b57d116318634ca9438cccfea509824dc9c2`  
		Last Modified: Wed, 18 Nov 2026 20:03:57 GMT  
		Size: 51.8 MB (51759101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ca720c8cf69a78ace6a70894ac98bccff2d5f376afc3c4901306d4d4a0a68f`  
		Last Modified: Wed, 18 Nov 2026 20:03:56 GMT  
		Size: 22.8 MB (22771398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:11.0.0` - unknown; unknown

```console
$ docker pull swipl@sha256:bade2d8fa348771053e6515f24846b175b88b942b8d26618972be58f9d6a6dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffc18d97d5cf4a53313b99a5ec3ae5620a21490b3c282c8f5594256287333b0`

```dockerfile
```

-	Layers:
	-	`sha256:943f4279e303db9651c7ac4e6eae9de29e77ac5119dd5482c45225832a004cc5`  
		Last Modified: Wed, 18 Nov 2026 20:03:55 GMT  
		Size: 3.0 MB (3037819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb3955352576ed89d55df4d7bb3a3e1cc4fe2a94f68e1b40e414bbe1af529a0`  
		Last Modified: Wed, 18 Nov 2026 20:03:55 GMT  
		Size: 18.2 KB (18227 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:latest`

```console
$ docker pull swipl@sha256:104e8fc9af7ea5c00def0aea2cba2ad1792e2f8c530b2e78432b2ee9f83494d8
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
$ docker pull swipl@sha256:b366031baa2c926041e66bfea1f743b1117033eaf8f4f683ce6baab450624d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105781947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8811d5db2b7d48973d27a22f5ca660ddb46807bacd1ba9c544b64367fb7308`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:00:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 20:00:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:00:45 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:06:19 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:06:19 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cd32b72166d38c5d13ef3476e79990470916ed6418cbf34a1f8c1dc9efc1fd`  
		Last Modified: Mon, 16 Nov 2026 20:06:33 GMT  
		Size: 52.5 MB (52517965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ded430f42e3025df23f2a658826a5fb55f2deff7fcb203281d4a4683628d54`  
		Last Modified: Mon, 16 Nov 2026 20:06:32 GMT  
		Size: 23.4 MB (23407850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:d1fd98a566b350a7573db89e11cfd16ad8e74d20c55e796e0ab7f59cba595e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e29b15605855ac95748aef6018083c39b9347f2c973669476c9ef65ae9f629`

```dockerfile
```

-	Layers:
	-	`sha256:e0a025eee139d346bc3877058cae08e64d4708f7cf8b04bfc10a2e9d2fe5e1e0`  
		Last Modified: Mon, 16 Nov 2026 20:06:31 GMT  
		Size: 3.0 MB (3037480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12fffbabf12ce43dcc3b4a162fad9d7519345ccc1bef87200a84c5870dcdc01f`  
		Last Modified: Mon, 16 Nov 2026 20:06:31 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:505171282ce41748dff0cdbdb7e508b97d429245d1323ed0f909565228a8a429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92061715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5916322cf0e2ccb26a9b6598a35cc77375d4994247b8b3a03c1c3eb4c6d32f83`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:06:18 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 20:06:18 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:06:18 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:08:55 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:08:55 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8393847ca4101a8801bfb1b454d3931bb8bda5c4dec7198262adcb8f3e33e630`  
		Last Modified: Mon, 16 Nov 2026 20:09:07 GMT  
		Size: 47.1 MB (47061307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b78e6233f670edc02ed6cbfa37df5a9ea1b2ebd50cbee526ca3781a47e95fc7`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 18.7 MB (18727493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:f7a9ee7b2bc3c667106a3098af56b66e718528559ada77c0d2eaa33a23af7469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8feb01a7721bc116754b254bf29d5b73038a5444ab4e308a48072769b04a742`

```dockerfile
```

-	Layers:
	-	`sha256:fa42ff63e3d1e2921e6ab8547515b67f917c916ed9b31c59dba007da379ae571`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 3.0 MB (3035533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afdc67e46c5e4751f9faf8b3773f4e5dd4e521a7a3e2ce132dcf5bb089aac739`  
		Last Modified: Mon, 16 Nov 2026 20:09:06 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:370a188e21dc4bdee938a93b8ded83e47564c329f7f5ecb7e7292d9a2550f8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104642525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1f1b5e0590a0e888d49464f90bd161f484eaecfebcb78e21c4b6a31765b82c`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 19:58:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 16 Nov 2026 19:58:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:58:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 20:04:11 GMT
RUN set -eux;     SWIPL_VER=10.1.21;     SWIPL_CHECKSUM=690894ce5a8890fcf1376186a8d300f7255e8d4835d79119995200a6b574f9d8;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 16 Nov 2026 20:04:11 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba42dc133c1bd8ef6e1b48d439c6f5818ec1b582447e24a697266bd851387c6`  
		Last Modified: Mon, 16 Nov 2026 20:04:26 GMT  
		Size: 51.8 MB (51759137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaafe42f7637a569a6e561a9b568d1d74b9c46362b2b753326cd6ad6943cbbe`  
		Last Modified: Mon, 16 Nov 2026 20:04:25 GMT  
		Size: 22.7 MB (22669351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:38a82541f54682a38689758db5186a41aef279b943eeb4145d0e9ffde3a9aa5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3779f0581469f27b224ebc6f2500c7fed5a843c7c192deb7444ddbd7f58d49`

```dockerfile
```

-	Layers:
	-	`sha256:00a3af868953f3250b9492394ce88decbf444b40a014b11e6c9dba4c7faa7752`  
		Last Modified: Mon, 16 Nov 2026 20:04:23 GMT  
		Size: 3.0 MB (3037823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7382e380dbc9cfccba49a67a16021c6d69cd628e12b7872fe0b6a424449d6709`  
		Last Modified: Mon, 16 Nov 2026 20:04:23 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:stable`

```console
$ docker pull swipl@sha256:1296dcde9f7cfe93a21e8ad86c6ee2962b56bc6189622f02e27f2543453fee1c
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
$ docker pull swipl@sha256:07676dc70c439e46838a4b81f8aa765db82a446915ba69dd8d9113e1c8fb0cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105892419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63876923b9e1bbd5dae6e222b8597df41bcfdc55ee57ba95c66e18bd6bbb9f0`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:03:45 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:03:45 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3100c4cbf4009a9a651099bb69c7826c597ed338304360b20d969ea720fa97b4`  
		Last Modified: Wed, 18 Nov 2026 20:04:00 GMT  
		Size: 52.5 MB (52517865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd66f7e24491139e68e19868017e1a71c999d6f7255de8755a414e5b3dcf936`  
		Last Modified: Wed, 18 Nov 2026 20:03:59 GMT  
		Size: 23.5 MB (23518422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:ab08dbf8054260aaf0e7eb3ec3ddaf57f27c8d66030816ffac4c69a30fae6501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6d4773555c3f4e057a12d73e0a8009cab07657b3b5a7b7b2eb9b4fe635eb87`

```dockerfile
```

-	Layers:
	-	`sha256:1b38bdc63eba38b5877c416876067b9a99f0df62656f4e36edab0b4301cd4eaa`  
		Last Modified: Wed, 18 Nov 2026 20:03:58 GMT  
		Size: 3.0 MB (3037476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0270244ee781eba7cc1b39e4545b1ebb7ba3393d09940b52ed19a48e7ed1d2`  
		Last Modified: Wed, 18 Nov 2026 20:03:57 GMT  
		Size: 18.1 KB (18132 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:45ce73159428e358561be6e407d233757383e62a3868b223d912cbc92fc64343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92159686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5a0b9f95f5afb12db9f8fc952feca13901efac5b030a53791eacb6119d35dd`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:00:07 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:00:07 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2956b40a3ac1f27ea0b57c7080893853025594692784b141a5e81b55970653`  
		Last Modified: Wed, 18 Nov 2026 20:00:21 GMT  
		Size: 47.1 MB (47061082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93458c9897ccb1e5c3d0789fb4375f869eeb55f2d24f4672b507f5645ed6546`  
		Last Modified: Wed, 18 Nov 2026 20:00:20 GMT  
		Size: 18.8 MB (18825689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:6a56717d1513ee69191692111d75c10bb876845e5b5894b25f8f19873c3498ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a10e0f0b7c2103613d30b934b8681b8142cf917aefe5151d73a3d57914b679d`

```dockerfile
```

-	Layers:
	-	`sha256:625ab3568bce1be77b087ac1c9422468cc3d532e1393e86cdb230a87d063e2c5`  
		Last Modified: Wed, 18 Nov 2026 20:00:20 GMT  
		Size: 3.0 MB (3035529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fed58619b72a875b2c6a1eb2ae28ec2c1502f5d91aa111b18e5f99b4c00b56f3`  
		Last Modified: Wed, 18 Nov 2026 20:00:21 GMT  
		Size: 18.2 KB (18209 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:76911d5da8a9b3c1318dde2bd9cb4403cceccb8c9880e891ef3243edb6a16d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104744536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6562cb35b26d6e73277e9b3fc57f12b6b8bf23f56dfa22a7bf99384cb96a944d`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 19:57:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 18 Nov 2026 19:57:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 19:57:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 20:03:42 GMT
RUN set -eux;     SWIPL_VER=11.0.0;     SWIPL_CHECKSUM=64b9e2b8a862ee56dd54cf6820775111afc87310511c8f03f6fd978614e37c33;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 18 Nov 2026 20:03:42 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cc57f6849068e60f47748158d1b57d116318634ca9438cccfea509824dc9c2`  
		Last Modified: Wed, 18 Nov 2026 20:03:57 GMT  
		Size: 51.8 MB (51759101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ca720c8cf69a78ace6a70894ac98bccff2d5f376afc3c4901306d4d4a0a68f`  
		Last Modified: Wed, 18 Nov 2026 20:03:56 GMT  
		Size: 22.8 MB (22771398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:bade2d8fa348771053e6515f24846b175b88b942b8d26618972be58f9d6a6dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffc18d97d5cf4a53313b99a5ec3ae5620a21490b3c282c8f5594256287333b0`

```dockerfile
```

-	Layers:
	-	`sha256:943f4279e303db9651c7ac4e6eae9de29e77ac5119dd5482c45225832a004cc5`  
		Last Modified: Wed, 18 Nov 2026 20:03:55 GMT  
		Size: 3.0 MB (3037819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb3955352576ed89d55df4d7bb3a3e1cc4fe2a94f68e1b40e414bbe1af529a0`  
		Last Modified: Wed, 18 Nov 2026 20:03:55 GMT  
		Size: 18.2 KB (18227 bytes)  
		MIME: application/vnd.in-toto+json
