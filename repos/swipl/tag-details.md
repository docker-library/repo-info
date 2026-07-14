<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:10.0.2`](#swipl1002)
-	[`swipl:10.1.11`](#swipl10111)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:10.0.2`

```console
$ docker pull swipl@sha256:b63bff68446c60941b470f48ca115819cfc7987fd2bd05532562d573ff93770c
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
$ docker pull swipl@sha256:372478d110e4cd55147737d1767be0b99b9b3e30a5a38e090e4efdad7daf9de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99093823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140940437bc5f7d73d46c4a910441e297d12acbc9cf23abad1d2f9e2155dc708`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:38:46 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:38:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:28 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41bee60436206ba27e625c6f3c6afae9dd5d3168cdc8e805bc4624423b9ff8b`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 49.2 MB (49221474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660eace055934521e4d83bcc7ad2012c39c1f1967ed8047620b96e248eabe9b5`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 21.6 MB (21639706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:33c82ca41e64b2e1efccd374e2a1f06abbf091a717908ebeefb71ba870051c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f372bbbcec9fe775e9f607b252e7c2a499a82f058c2df2f8ef0cef343ad88`

```dockerfile
```

-	Layers:
	-	`sha256:c02840487f21272b3992c3456503fef7e1217535ae21f660be7e52cb092a1c2b`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 3.3 MB (3326618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb50d509304889e30c4ef24960b5f550aacc3c1de9ac2e21059278fb499d90c1`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 17.9 KB (17884 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm variant v7

```console
$ docker pull swipl@sha256:3dde8acb43873b974b179d986793722d16977de2788c3e719c0e4cd72cf2d588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84837088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27c4cd2b64732c526982f29105d2869b45fa6f702082328de8f34a79eb4d462`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:21:02 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 24 Jun 2026 02:21:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:21:02 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 02:23:36 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 24 Jun 2026 02:23:36 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5ced562d3547a7cda1d2067a11da2f6931ce04accd8ff57247b8974e4a4ec9`  
		Last Modified: Wed, 24 Jun 2026 02:23:48 GMT  
		Size: 43.8 MB (43755555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c0490c6e48ca6d822075cd275592243226ea46a538206d8039cc3b3ac623f`  
		Last Modified: Wed, 24 Jun 2026 02:23:47 GMT  
		Size: 17.1 MB (17137001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:03edcef8d8530c4c56a3e00337073701ac63bc6ce1f311b9cba143b10a55d4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df32b337ce13383c230e9de7e5e459c631cad5066b7a3ce47680d1d9d0006ecc`

```dockerfile
```

-	Layers:
	-	`sha256:4eae0de0be86eb0c04c493f7ca5ec58cac43613cc4ef50792f285f73dd2b9556`  
		Last Modified: Wed, 24 Jun 2026 02:23:47 GMT  
		Size: 3.3 MB (3325428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069b53a425ebf0157bf322f9c4d61b622e10f79718afd8148ab6c8b77d5a6fe9`  
		Last Modified: Wed, 24 Jun 2026 02:23:46 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:a869fc906f898cf379a3935539f47463b7378ea66080540436aee11dc7d7367c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96909896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbb56e1138dad24f5e176884a0be79218b069d2b9fdee3d1a20c962be195f12`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:41:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:41:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:36 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:47:36 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:47:36 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e88bdb9e0c5fb239a91550e7cfc6522e43fc6c560fc0903fc805d934cbf6c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:50 GMT  
		Size: 47.8 MB (47798979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b98bc46904ef9dc28a0f140488d44a9e42fa8e27e180b6713da12f0a172a335`  
		Last Modified: Tue, 14 Jul 2026 01:47:50 GMT  
		Size: 21.0 MB (20993662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:a9e9fc05d48875e2ff8d2bd0a4bd5b5e1467b84258898703b121948e92d022bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9637356de749ab92fa0060d85c768b6212b073795197cc4ba41517e78f4fd6a9`

```dockerfile
```

-	Layers:
	-	`sha256:ca837d9ce3e3af8d8e7c734ccbb2cb15cae0c3ec5c709f57b89f42431312494e`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 3.3 MB (3326958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22a33115b852613fbc79f8a2d2d8e030dd338a127f73efc5ca4527e880f9dab1`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:10.1.11`

```console
$ docker pull swipl@sha256:3527fd986835e080737031419b1e7b6891d101909ad93f46b394ed352d82aba5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:10.1.11` - linux; amd64

```console
$ docker pull swipl@sha256:ecd5707c445bdd0ac93f4098a6c121c21dbecdab2eeffba4a736298a3258507c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104542642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dde22cc01983bbfb84797fc808b64136ebcaf79ac2fc7e022977221f1bce795`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:38:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c25e62eed1ab3a8219dc700b9de62ec7a18b1c69f3ef7b1fb7679fb77f645c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 52.4 MB (52423973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad80bd240449ba52218444455ee102e14b5ca06b2a3473330837734114cc309c`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 22.3 MB (22337764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.11` - unknown; unknown

```console
$ docker pull swipl@sha256:400c46a75e2d4f85834774d73fb3e37f09f1f5764abfe1a59f8b50fa7b027650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3050789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0213dff6dbc1809f685cdb3b99b08e39a526bd9851bdb03309e742d07b9fd`

```dockerfile
```

-	Layers:
	-	`sha256:614029ca0af54d86e7432f33789908310912c12d9dd9c957bcb96c98828611b2`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 3.0 MB (3032653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e39aa12aaa7072aa3fc659c5e02ca33c5038b91f9f63401acedf5a375d2aa8`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.11` - linux; arm variant v7

```console
$ docker pull swipl@sha256:87246d552341f69c9f6450bed9e2c521546568e6c437d3cf5c81858c0012dabf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90902923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9d3c3c90e32bb5d7aff66a18b6dfffdfc43c80f9515bd637166be9c9125d73`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 18:59:49 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 06 Jul 2026 18:59:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 18:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 19:03:35 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 06 Jul 2026 19:03:35 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd30baed12b5697042adee9c94850e677f53455dc449199dc71df3098ca18f8`  
		Last Modified: Mon, 06 Jul 2026 19:03:48 GMT  
		Size: 47.0 MB (46990137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24c2e4ed63b820c1f04af076fc965ca57b32854d030e656b316e6f24568e532`  
		Last Modified: Mon, 06 Jul 2026 19:03:47 GMT  
		Size: 17.7 MB (17701735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.11` - unknown; unknown

```console
$ docker pull swipl@sha256:2dc63447285a62c161d9d090b3b983d728033346c1ed30f75b8ee5b7bd77880f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3048865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbdb8fbda1eea385345a14f1619d139ff2068a9fe97de4874e0b3579e7e75a6`

```dockerfile
```

-	Layers:
	-	`sha256:6a6bf7be39819da5a0a4e60160483f81b72224a41b2987605ddc5c4dbb6c320a`  
		Last Modified: Mon, 06 Jul 2026 19:03:47 GMT  
		Size: 3.0 MB (3030652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae20a6ff5f97662bdb8260813ef137bd70e249f8a024aa6410648fa2b436aff`  
		Last Modified: Mon, 06 Jul 2026 19:03:46 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.11` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:0b5642c32470cdef10f4491ff5974a3e38132b70c49ae8ba8cce007ff973a3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103464266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c191d85308e4a6e6603db6da9d53a57dfe6958f3ac6ce02522e7c60dd4e6b31`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:31 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:41:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:31 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:47:16 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fd28b2498894116b1da3b7210396402635ba20725b81c4b9a806a6c31177a2`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 51.7 MB (51681237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df196eb62079c9146c1bb237ed21119725128e78ea50c5695eb1b2167c55275`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 21.6 MB (21639324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.11` - unknown; unknown

```console
$ docker pull swipl@sha256:ee85629615162fd0250aa7253d72ffd56e53501008273775ee6595519ec32ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365b42da6d485059b7e3ae4637918247a2b55030ab6223c389a09bdb12703c4f`

```dockerfile
```

-	Layers:
	-	`sha256:3876f0294432f6e12954fb6120681156f2ec30cd29ee32aba7792f52f891f5a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 3.0 MB (3032996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b264fb4545cc7dff0310c6cac9a3dc2555f6d5c55358dc3380085f49d5a6e6`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:latest`

```console
$ docker pull swipl@sha256:3527fd986835e080737031419b1e7b6891d101909ad93f46b394ed352d82aba5
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
$ docker pull swipl@sha256:ecd5707c445bdd0ac93f4098a6c121c21dbecdab2eeffba4a736298a3258507c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104542642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dde22cc01983bbfb84797fc808b64136ebcaf79ac2fc7e022977221f1bce795`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:38:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c25e62eed1ab3a8219dc700b9de62ec7a18b1c69f3ef7b1fb7679fb77f645c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 52.4 MB (52423973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad80bd240449ba52218444455ee102e14b5ca06b2a3473330837734114cc309c`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 22.3 MB (22337764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:400c46a75e2d4f85834774d73fb3e37f09f1f5764abfe1a59f8b50fa7b027650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3050789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0213dff6dbc1809f685cdb3b99b08e39a526bd9851bdb03309e742d07b9fd`

```dockerfile
```

-	Layers:
	-	`sha256:614029ca0af54d86e7432f33789908310912c12d9dd9c957bcb96c98828611b2`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 3.0 MB (3032653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e39aa12aaa7072aa3fc659c5e02ca33c5038b91f9f63401acedf5a375d2aa8`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:87246d552341f69c9f6450bed9e2c521546568e6c437d3cf5c81858c0012dabf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90902923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9d3c3c90e32bb5d7aff66a18b6dfffdfc43c80f9515bd637166be9c9125d73`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 18:59:49 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 06 Jul 2026 18:59:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 18:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 19:03:35 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 06 Jul 2026 19:03:35 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd30baed12b5697042adee9c94850e677f53455dc449199dc71df3098ca18f8`  
		Last Modified: Mon, 06 Jul 2026 19:03:48 GMT  
		Size: 47.0 MB (46990137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24c2e4ed63b820c1f04af076fc965ca57b32854d030e656b316e6f24568e532`  
		Last Modified: Mon, 06 Jul 2026 19:03:47 GMT  
		Size: 17.7 MB (17701735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:2dc63447285a62c161d9d090b3b983d728033346c1ed30f75b8ee5b7bd77880f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3048865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbdb8fbda1eea385345a14f1619d139ff2068a9fe97de4874e0b3579e7e75a6`

```dockerfile
```

-	Layers:
	-	`sha256:6a6bf7be39819da5a0a4e60160483f81b72224a41b2987605ddc5c4dbb6c320a`  
		Last Modified: Mon, 06 Jul 2026 19:03:47 GMT  
		Size: 3.0 MB (3030652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae20a6ff5f97662bdb8260813ef137bd70e249f8a024aa6410648fa2b436aff`  
		Last Modified: Mon, 06 Jul 2026 19:03:46 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:0b5642c32470cdef10f4491ff5974a3e38132b70c49ae8ba8cce007ff973a3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103464266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c191d85308e4a6e6603db6da9d53a57dfe6958f3ac6ce02522e7c60dd4e6b31`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:41:31 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:41:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:31 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:47:16 GMT
RUN set -eux;     SWIPL_VER=10.1.11;     SWIPL_CHECKSUM=d2f19aedbc4580517bb79c49ecdccf9cefa9acebdb075a998b5e0c009cbf7ebb;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fd28b2498894116b1da3b7210396402635ba20725b81c4b9a806a6c31177a2`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 51.7 MB (51681237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df196eb62079c9146c1bb237ed21119725128e78ea50c5695eb1b2167c55275`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 21.6 MB (21639324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:ee85629615162fd0250aa7253d72ffd56e53501008273775ee6595519ec32ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365b42da6d485059b7e3ae4637918247a2b55030ab6223c389a09bdb12703c4f`

```dockerfile
```

-	Layers:
	-	`sha256:3876f0294432f6e12954fb6120681156f2ec30cd29ee32aba7792f52f891f5a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 3.0 MB (3032996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b264fb4545cc7dff0310c6cac9a3dc2555f6d5c55358dc3380085f49d5a6e6`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:stable`

```console
$ docker pull swipl@sha256:b63bff68446c60941b470f48ca115819cfc7987fd2bd05532562d573ff93770c
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
$ docker pull swipl@sha256:372478d110e4cd55147737d1767be0b99b9b3e30a5a38e090e4efdad7daf9de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99093823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140940437bc5f7d73d46c4a910441e297d12acbc9cf23abad1d2f9e2155dc708`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:38:46 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:38:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:44:28 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41bee60436206ba27e625c6f3c6afae9dd5d3168cdc8e805bc4624423b9ff8b`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 49.2 MB (49221474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660eace055934521e4d83bcc7ad2012c39c1f1967ed8047620b96e248eabe9b5`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 21.6 MB (21639706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:33c82ca41e64b2e1efccd374e2a1f06abbf091a717908ebeefb71ba870051c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778f372bbbcec9fe775e9f607b252e7c2a499a82f058c2df2f8ef0cef343ad88`

```dockerfile
```

-	Layers:
	-	`sha256:c02840487f21272b3992c3456503fef7e1217535ae21f660be7e52cb092a1c2b`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 3.3 MB (3326618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb50d509304889e30c4ef24960b5f550aacc3c1de9ac2e21059278fb499d90c1`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 17.9 KB (17884 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:3dde8acb43873b974b179d986793722d16977de2788c3e719c0e4cd72cf2d588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84837088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27c4cd2b64732c526982f29105d2869b45fa6f702082328de8f34a79eb4d462`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:21:02 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 24 Jun 2026 02:21:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:21:02 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 02:23:36 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 24 Jun 2026 02:23:36 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5ced562d3547a7cda1d2067a11da2f6931ce04accd8ff57247b8974e4a4ec9`  
		Last Modified: Wed, 24 Jun 2026 02:23:48 GMT  
		Size: 43.8 MB (43755555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c0490c6e48ca6d822075cd275592243226ea46a538206d8039cc3b3ac623f`  
		Last Modified: Wed, 24 Jun 2026 02:23:47 GMT  
		Size: 17.1 MB (17137001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:03edcef8d8530c4c56a3e00337073701ac63bc6ce1f311b9cba143b10a55d4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df32b337ce13383c230e9de7e5e459c631cad5066b7a3ce47680d1d9d0006ecc`

```dockerfile
```

-	Layers:
	-	`sha256:4eae0de0be86eb0c04c493f7ca5ec58cac43613cc4ef50792f285f73dd2b9556`  
		Last Modified: Wed, 24 Jun 2026 02:23:47 GMT  
		Size: 3.3 MB (3325428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069b53a425ebf0157bf322f9c4d61b622e10f79718afd8148ab6c8b77d5a6fe9`  
		Last Modified: Wed, 24 Jun 2026 02:23:46 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:a869fc906f898cf379a3935539f47463b7378ea66080540436aee11dc7d7367c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96909896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbb56e1138dad24f5e176884a0be79218b069d2b9fdee3d1a20c962be195f12`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:41:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 14 Jul 2026 01:41:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:41:36 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:47:36 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 14 Jul 2026 01:47:36 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e88bdb9e0c5fb239a91550e7cfc6522e43fc6c560fc0903fc805d934cbf6c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:50 GMT  
		Size: 47.8 MB (47798979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b98bc46904ef9dc28a0f140488d44a9e42fa8e27e180b6713da12f0a172a335`  
		Last Modified: Tue, 14 Jul 2026 01:47:50 GMT  
		Size: 21.0 MB (20993662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:a9e9fc05d48875e2ff8d2bd0a4bd5b5e1467b84258898703b121948e92d022bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9637356de749ab92fa0060d85c768b6212b073795197cc4ba41517e78f4fd6a9`

```dockerfile
```

-	Layers:
	-	`sha256:ca837d9ce3e3af8d8e7c734ccbb2cb15cae0c3ec5c709f57b89f42431312494e`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 3.3 MB (3326958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22a33115b852613fbc79f8a2d2d8e030dd338a127f73efc5ca4527e880f9dab1`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json
