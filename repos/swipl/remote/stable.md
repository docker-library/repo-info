## `swipl:stable`

```console
$ docker pull swipl@sha256:b51af487f3306fe240eae8c13159c85b5526509952e1b949cc22f48a1f82a742
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
$ docker pull swipl@sha256:24d16de62dbd7cfb42872d2f43f1f572b30bfb900e644d64bc2b7d467be58b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105853576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc88b8a2597c034157608199209ebfc2b0fd20fb0cfa94275cbabc82f8b852f`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 20:09:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 24 Nov 2026 20:09:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 20:09:54 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 20:15:47 GMT
RUN set -eux;     SWIPL_VER=11.0.1;     SWIPL_CHECKSUM=f976bec4351143b7219bf1ba65a72e9a1183d44cd44813b944723b6df49db92f;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 24 Nov 2026 20:15:47 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8ecbd1a9211a6050a05afe06d6288859be8f7e6c7bd090b0bbacdba6fe4c6b`  
		Last Modified: Tue, 24 Nov 2026 20:16:01 GMT  
		Size: 52.4 MB (52448249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa5555b02299694ff8bb2db0102403fecd2fba948ae9dac54d615c2cdd5d535`  
		Last Modified: Tue, 24 Nov 2026 20:16:00 GMT  
		Size: 23.6 MB (23563145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:efdfe850855b0ff421ba09bf24e143aa42a163ba95d6a4a9b971bb2797adc0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f47ed741f73b22b286fd54c868c951db3fdf2dfa04188dc19ec5c679d0d8fb0`

```dockerfile
```

-	Layers:
	-	`sha256:a633fef2d8e8786e3aafac31ed284caf5f86ca0b0339ad108204227e0881cdb8`  
		Last Modified: Tue, 24 Nov 2026 20:15:59 GMT  
		Size: 3.0 MB (3037476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a825eb82967c48d21a598ee77ab25b4be1ba6d1517825eeeee15c05e9ed35b`  
		Last Modified: Tue, 24 Nov 2026 20:15:58 GMT  
		Size: 18.1 KB (18132 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:c2706b5b01745487109b68da4f1225d9b44dfba27b1b9031a8c89778157df268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92132958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a47c2ff4c9e217f31f8a944ceff4af452f35c6182f03a6d58ec092aab7760c`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 20:10:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 24 Nov 2026 20:10:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 20:10:36 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 20:13:12 GMT
RUN set -eux;     SWIPL_VER=11.0.1;     SWIPL_CHECKSUM=f976bec4351143b7219bf1ba65a72e9a1183d44cd44813b944723b6df49db92f;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 24 Nov 2026 20:13:12 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fafda6bbb30317ac154642dfa63192b0b05893f079c8975466343b4910d0d9`  
		Last Modified: Tue, 24 Nov 2026 20:13:25 GMT  
		Size: 47.0 MB (47007615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b317f749b24a2a6f5e6dbce8b9cf74f4d9147ddbf0edacc1554b14359347b1`  
		Last Modified: Tue, 24 Nov 2026 20:13:24 GMT  
		Size: 18.9 MB (18862883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:7d632b05ea1f67819c59acfd647e8239bf09c493de4ce0aadc46c125ddd508cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3053738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05f1287ac225d4512162aa4b3c0d6a209f8a08091b08df33f18f0c621c7a052`

```dockerfile
```

-	Layers:
	-	`sha256:eb46597e42aa4c6734ef49a91facbf88a098083de45c6f5faae84ab3f7621070`  
		Last Modified: Tue, 24 Nov 2026 20:13:24 GMT  
		Size: 3.0 MB (3035529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:704e4eed1357081ef24234827c63af0e538289abaa8df0c0823749898e1d7590`  
		Last Modified: Tue, 24 Nov 2026 20:13:23 GMT  
		Size: 18.2 KB (18209 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:01bd47c58a4d0c66820e089a3463126edabf9f3faba020c89c6a792610f99349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104706278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c71e1abca389a98c7c81b1f84fd1a7b931e932e09a476733f39cdae0167557`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 20:10:01 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 24 Nov 2026 20:10:01 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 20:10:01 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 20:16:42 GMT
RUN set -eux;     SWIPL_VER=11.0.1;     SWIPL_CHECKSUM=f976bec4351143b7219bf1ba65a72e9a1183d44cd44813b944723b6df49db92f;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 24 Nov 2026 20:16:42 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1837e48c99af4ec2cd5d4165038beff8d7a8c67a957a7c2f9ecfe4a7f8ad7912`  
		Last Modified: Tue, 24 Nov 2026 20:16:57 GMT  
		Size: 51.7 MB (51703253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74615ac2707f389a0941cce200a549cceae6ec27eb9aeb9bb1cbd02c2a2b72d0`  
		Last Modified: Tue, 24 Nov 2026 20:16:56 GMT  
		Size: 22.8 MB (22804991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:9e1ffbe76d16a9587e43e762f8500fc592c7b72ae6deadd508829f3e26e7d298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3897e82a210fbc85fbfcef229dc7c1e70cab888f6f18df225a6020d05e8685`

```dockerfile
```

-	Layers:
	-	`sha256:3e9e3094a9d594693e0496e0f4cbe6c3e1ee2e1d34d1546da408d040c0218a7f`  
		Last Modified: Tue, 24 Nov 2026 20:16:55 GMT  
		Size: 3.0 MB (3037819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e17abf31b19d02ed18f6afc7544ebbabf3d11166a30ded2669975d215babea3f`  
		Last Modified: Tue, 24 Nov 2026 20:16:55 GMT  
		Size: 18.2 KB (18227 bytes)  
		MIME: application/vnd.in-toto+json
