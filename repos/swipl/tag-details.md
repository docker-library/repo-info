<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:10.0.2`](#swipl1002)
-	[`swipl:10.1.18`](#swipl10118)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:10.0.2`

```console
$ docker pull swipl@sha256:4979bf8f15f6506112537725b90bfdbaca0d0f9b8750634f1d6eab494aaba9e2
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
$ docker pull swipl@sha256:3a06569f7d4e7b0bf90df21fd3dccc41780db44da1cddbb281c38f8fd7e33b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99136917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0954d4437ffdebd5687d7899601a88c2ae6c868844a2f95bd106de20b5bb1d6d`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:40:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:12 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:12 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64889cb66ea10e21cee91336777171e29aef6cce6721799c6e3049946e4a53b`  
		Last Modified: Wed, 21 Oct 2026 00:49:27 GMT  
		Size: 49.2 MB (49249936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bad91af8d34d7054bb732dab3e3dd929dcb9230ee36fdb5deb2fd2b131b4d3b`  
		Last Modified: Wed, 21 Oct 2026 00:49:26 GMT  
		Size: 21.6 MB (21639046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:af68f2f7bc75da2c215e5f4fb0d18958d6bc7e282fc39e67e9f9dfb0b560fa0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157572a08b6a87a33f54dc272217194527dcc3bd8f1739ce233eefd7ed3325a2`

```dockerfile
```

-	Layers:
	-	`sha256:571ba75ef66494b0a16c7ec4f5044ef58396884b7b11e6ce4e0b5453224893fd`  
		Last Modified: Wed, 21 Oct 2026 00:49:25 GMT  
		Size: 3.3 MB (3330590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c88dafd8163579188022631428e9eb1823030f4c904ca3918a71b8c33a949df`  
		Last Modified: Wed, 21 Oct 2026 00:49:25 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm variant v7

```console
$ docker pull swipl@sha256:41a58ba01699a783c49ea57b985982dcbffd1f809d9492880887e3223a1168bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86933506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd987256ec76361cc7a2e283b064250c9f292f135a0865f847f20655999d02b5`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 06 Oct 2026 02:23:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:44 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:26:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 06 Oct 2026 02:26:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f856873e0ec6a3da2c518ba04d431fb7cdbcb6fb35403ca85754bb39a0392ee`  
		Last Modified: Tue, 06 Oct 2026 02:26:31 GMT  
		Size: 43.8 MB (43754857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23be60c67f682317a4ddcc0455ce77a3fa11785352d9a216ee2b51dce9ac2694`  
		Last Modified: Tue, 06 Oct 2026 02:26:30 GMT  
		Size: 19.2 MB (19222078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:4b04964d7599f9f1d0c448cfe47b5d34be3af59a75044e7f706fe81333dd234d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3382446b1e6eae7a9ef9477b79131de183f001fc50866dcc1cb27ecd46e58ebf`

```dockerfile
```

-	Layers:
	-	`sha256:548a358c449eb1ad6c9dbdb0a08884640506fafa5b5e0a262aaada3e8d6a9164`  
		Last Modified: Tue, 06 Oct 2026 02:26:29 GMT  
		Size: 3.3 MB (3330731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d14c088f8caba0867101ccf1f57071d7e2098b6eb1c6b0cb9b12adc3e67541f`  
		Last Modified: Tue, 06 Oct 2026 02:26:29 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:9877244201df03e697206cf609108010736f81fd4734ba2efa59177cbd74f723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96986107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ffb820914385aec6fc70488b573c98cea0ab0f0f96f5a1e5e540ce48d900ba`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:43:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:36 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:21 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:21 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60faf17eefb1190a8e3cd61c087ccb47841b3802a531fb480346190f6ee46d4c`  
		Last Modified: Wed, 21 Oct 2026 00:49:35 GMT  
		Size: 47.9 MB (47852067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f4742557f49e14a8fd62db347b2b2c23cca9cc874bc1c09eaf4a594faed517`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 21.0 MB (20995615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:48bbe3934f3c588b58e931257d31b76e5a0309da6a22111c749d4aff3edcdd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c4513447ef8990d10dc884558e7d7a28ec1ba8c1f7d242c6838b1ef4f4ce0d`

```dockerfile
```

-	Layers:
	-	`sha256:495a25ea30c614cf7238af89f3c349b5f1d738a3f4b007a28e9afae97ca71046`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 3.3 MB (3330930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2929a9446cf14b24fd39982a484b2d28b10f12b9ebf8947ef35c372e10e30170`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:10.1.18`

```console
$ docker pull swipl@sha256:b4ae68a12c3794dd707b040125fdcea0cc162f219b0946d45c2264039f53ce66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:10.1.18` - linux; amd64

```console
$ docker pull swipl@sha256:4f5a5a5c78c1f28c8856ed44cc173cfa2034e9ee2b6f3ebcb094d50237f815aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105014110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743a08809ee6dd648e51ee5d12bd3b7ef319d3c983b1224db4c9207ee88a95f5`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:40:12 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:40:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:48 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:45:48 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1776ae3e827246e82894b0f0e2025092f937edcb5e5fbf8e84cd0549e0d57757`  
		Last Modified: Wed, 21 Oct 2026 00:46:01 GMT  
		Size: 52.5 MB (52456773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8f6c46359931f2a78e3b2cde09b16b5cd11be1acc1c0088cbfb296052457e2`  
		Last Modified: Wed, 21 Oct 2026 00:46:00 GMT  
		Size: 22.7 MB (22713758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.18` - unknown; unknown

```console
$ docker pull swipl@sha256:6ad6d22171538c5c26caa8a682bfc81c3344cc9572a708f81d732d20797dfe98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5896847c69ea53db72135514931ca6ba7325ceed1e3fcb2104c4e9a0476f34`

```dockerfile
```

-	Layers:
	-	`sha256:2a09c67e1907a50698a230c83a1aea18eef9dc239568b0cc8e8599386cc42e4c`  
		Last Modified: Wed, 21 Oct 2026 00:45:59 GMT  
		Size: 3.0 MB (3037424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1b7fe1df8d17d2fec72f00e066d1a276f7216b347362ea54812b452bf2d468`  
		Last Modified: Wed, 21 Oct 2026 00:45:59 GMT  
		Size: 18.1 KB (18135 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.18` - linux; arm variant v7

```console
$ docker pull swipl@sha256:e2f0c99684787ae306a1bee83c1fd0878761f02a1a315a296e09d28c2bf33eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91430993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c32f55cf4e4b201f57f0241d62f38a92b0b632643bcbabd48695ad92543efd5`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 23:00:11 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 12 Oct 2026 23:00:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:11 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:02:47 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 12 Oct 2026 23:02:47 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f875d60c90b6d9d15cf4149e7aa77136e4b3d187fd287d308ab1a9b67abd2a39`  
		Last Modified: Mon, 12 Oct 2026 23:03:00 GMT  
		Size: 47.0 MB (47015570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254d2fb5e719b216695201499458ed7ed20be30d2c41836d55a14d285d6a6fab`  
		Last Modified: Mon, 12 Oct 2026 23:02:59 GMT  
		Size: 18.2 MB (18157245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.18` - unknown; unknown

```console
$ docker pull swipl@sha256:afe80619bae728e6e4789b2b506264cf1971e071c0e401f599d356ab9c1e753b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995eeb1f7466d716d45b79ae1bf13751722a56c184553c64893b8606ac1e9472`

```dockerfile
```

-	Layers:
	-	`sha256:b83026b6092f268fc2019f2026e0ab586132fb1afdc3acee100ef31d8740d4d7`  
		Last Modified: Mon, 12 Oct 2026 23:02:59 GMT  
		Size: 3.0 MB (3036754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba7667a0af0d377d7af0eb3f51771f3429ef05bb6949c546bbb4e48d20363ae`  
		Last Modified: Mon, 12 Oct 2026 23:02:58 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.18` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:0890336913b4305f4d01c2405f052b5c381525bcf1b36b9491eb9c5cf79ffde9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103899895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c720ef8b4f8bdcd186acb902cae34973b9613e2ed9eeee2a886045012ac67e8`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:38 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:43:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:35 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:35 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3c8aa33b8601ed20b5550f6f1257c97742387aadecaefd413ab5bec5be9f65`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 51.7 MB (51685867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13915453393e1350c625b411fbce2082e1a658d349fdd5be90dd159b76989847`  
		Last Modified: Wed, 21 Oct 2026 00:49:49 GMT  
		Size: 22.0 MB (22013550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.18` - unknown; unknown

```console
$ docker pull swipl@sha256:6dca43f73fd51269dde8437766399ca485e407474ef9bcf0b0c4194f2613505b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86acf79e58509ec12cb6dece0eb9d49d90148a75f1bcc6da77ef989f6c032d06`

```dockerfile
```

-	Layers:
	-	`sha256:7d785f8542d0c092fcbe80bd8bbc85c29c06ebb2f762c5413acf3cabcb604298`  
		Last Modified: Wed, 21 Oct 2026 00:49:48 GMT  
		Size: 3.0 MB (3037767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1e96dd1d215fdf6ffaa5c2267db6b908c1233fdc8180587995ebbcc4fd3453`  
		Last Modified: Wed, 21 Oct 2026 00:49:48 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:latest`

```console
$ docker pull swipl@sha256:b4ae68a12c3794dd707b040125fdcea0cc162f219b0946d45c2264039f53ce66
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
$ docker pull swipl@sha256:4f5a5a5c78c1f28c8856ed44cc173cfa2034e9ee2b6f3ebcb094d50237f815aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105014110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743a08809ee6dd648e51ee5d12bd3b7ef319d3c983b1224db4c9207ee88a95f5`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:40:12 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:40:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:12 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:48 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:45:48 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1776ae3e827246e82894b0f0e2025092f937edcb5e5fbf8e84cd0549e0d57757`  
		Last Modified: Wed, 21 Oct 2026 00:46:01 GMT  
		Size: 52.5 MB (52456773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8f6c46359931f2a78e3b2cde09b16b5cd11be1acc1c0088cbfb296052457e2`  
		Last Modified: Wed, 21 Oct 2026 00:46:00 GMT  
		Size: 22.7 MB (22713758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:6ad6d22171538c5c26caa8a682bfc81c3344cc9572a708f81d732d20797dfe98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5896847c69ea53db72135514931ca6ba7325ceed1e3fcb2104c4e9a0476f34`

```dockerfile
```

-	Layers:
	-	`sha256:2a09c67e1907a50698a230c83a1aea18eef9dc239568b0cc8e8599386cc42e4c`  
		Last Modified: Wed, 21 Oct 2026 00:45:59 GMT  
		Size: 3.0 MB (3037424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1b7fe1df8d17d2fec72f00e066d1a276f7216b347362ea54812b452bf2d468`  
		Last Modified: Wed, 21 Oct 2026 00:45:59 GMT  
		Size: 18.1 KB (18135 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:e2f0c99684787ae306a1bee83c1fd0878761f02a1a315a296e09d28c2bf33eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91430993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c32f55cf4e4b201f57f0241d62f38a92b0b632643bcbabd48695ad92543efd5`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 23:00:11 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 12 Oct 2026 23:00:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:11 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 23:02:47 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 12 Oct 2026 23:02:47 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f875d60c90b6d9d15cf4149e7aa77136e4b3d187fd287d308ab1a9b67abd2a39`  
		Last Modified: Mon, 12 Oct 2026 23:03:00 GMT  
		Size: 47.0 MB (47015570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254d2fb5e719b216695201499458ed7ed20be30d2c41836d55a14d285d6a6fab`  
		Last Modified: Mon, 12 Oct 2026 23:02:59 GMT  
		Size: 18.2 MB (18157245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:afe80619bae728e6e4789b2b506264cf1971e071c0e401f599d356ab9c1e753b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995eeb1f7466d716d45b79ae1bf13751722a56c184553c64893b8606ac1e9472`

```dockerfile
```

-	Layers:
	-	`sha256:b83026b6092f268fc2019f2026e0ab586132fb1afdc3acee100ef31d8740d4d7`  
		Last Modified: Mon, 12 Oct 2026 23:02:59 GMT  
		Size: 3.0 MB (3036754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba7667a0af0d377d7af0eb3f51771f3429ef05bb6949c546bbb4e48d20363ae`  
		Last Modified: Mon, 12 Oct 2026 23:02:58 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:0890336913b4305f4d01c2405f052b5c381525bcf1b36b9491eb9c5cf79ffde9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103899895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c720ef8b4f8bdcd186acb902cae34973b9613e2ed9eeee2a886045012ac67e8`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:38 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:43:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:35 GMT
RUN set -eux;     SWIPL_VER=10.1.18;     SWIPL_CHECKSUM=afeb631a3263ecd3c888ec6bd717cfeaa70a587168b013c8f483d224064c262c;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:35 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3c8aa33b8601ed20b5550f6f1257c97742387aadecaefd413ab5bec5be9f65`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 51.7 MB (51685867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13915453393e1350c625b411fbce2082e1a658d349fdd5be90dd159b76989847`  
		Last Modified: Wed, 21 Oct 2026 00:49:49 GMT  
		Size: 22.0 MB (22013550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:6dca43f73fd51269dde8437766399ca485e407474ef9bcf0b0c4194f2613505b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3055998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86acf79e58509ec12cb6dece0eb9d49d90148a75f1bcc6da77ef989f6c032d06`

```dockerfile
```

-	Layers:
	-	`sha256:7d785f8542d0c092fcbe80bd8bbc85c29c06ebb2f762c5413acf3cabcb604298`  
		Last Modified: Wed, 21 Oct 2026 00:49:48 GMT  
		Size: 3.0 MB (3037767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1e96dd1d215fdf6ffaa5c2267db6b908c1233fdc8180587995ebbcc4fd3453`  
		Last Modified: Wed, 21 Oct 2026 00:49:48 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:stable`

```console
$ docker pull swipl@sha256:4979bf8f15f6506112537725b90bfdbaca0d0f9b8750634f1d6eab494aaba9e2
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
$ docker pull swipl@sha256:3a06569f7d4e7b0bf90df21fd3dccc41780db44da1cddbb281c38f8fd7e33b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99136917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0954d4437ffdebd5687d7899601a88c2ae6c868844a2f95bd106de20b5bb1d6d`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:40:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:40:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:12 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:12 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64889cb66ea10e21cee91336777171e29aef6cce6721799c6e3049946e4a53b`  
		Last Modified: Wed, 21 Oct 2026 00:49:27 GMT  
		Size: 49.2 MB (49249936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bad91af8d34d7054bb732dab3e3dd929dcb9230ee36fdb5deb2fd2b131b4d3b`  
		Last Modified: Wed, 21 Oct 2026 00:49:26 GMT  
		Size: 21.6 MB (21639046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:af68f2f7bc75da2c215e5f4fb0d18958d6bc7e282fc39e67e9f9dfb0b560fa0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157572a08b6a87a33f54dc272217194527dcc3bd8f1739ce233eefd7ed3325a2`

```dockerfile
```

-	Layers:
	-	`sha256:571ba75ef66494b0a16c7ec4f5044ef58396884b7b11e6ce4e0b5453224893fd`  
		Last Modified: Wed, 21 Oct 2026 00:49:25 GMT  
		Size: 3.3 MB (3330590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c88dafd8163579188022631428e9eb1823030f4c904ca3918a71b8c33a949df`  
		Last Modified: Wed, 21 Oct 2026 00:49:25 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:41a58ba01699a783c49ea57b985982dcbffd1f809d9492880887e3223a1168bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86933506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd987256ec76361cc7a2e283b064250c9f292f135a0865f847f20655999d02b5`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 06 Oct 2026 02:23:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:44 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:26:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 06 Oct 2026 02:26:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f856873e0ec6a3da2c518ba04d431fb7cdbcb6fb35403ca85754bb39a0392ee`  
		Last Modified: Tue, 06 Oct 2026 02:26:31 GMT  
		Size: 43.8 MB (43754857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23be60c67f682317a4ddcc0455ce77a3fa11785352d9a216ee2b51dce9ac2694`  
		Last Modified: Tue, 06 Oct 2026 02:26:30 GMT  
		Size: 19.2 MB (19222078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:4b04964d7599f9f1d0c448cfe47b5d34be3af59a75044e7f706fe81333dd234d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3382446b1e6eae7a9ef9477b79131de183f001fc50866dcc1cb27ecd46e58ebf`

```dockerfile
```

-	Layers:
	-	`sha256:548a358c449eb1ad6c9dbdb0a08884640506fafa5b5e0a262aaada3e8d6a9164`  
		Last Modified: Tue, 06 Oct 2026 02:26:29 GMT  
		Size: 3.3 MB (3330731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d14c088f8caba0867101ccf1f57071d7e2098b6eb1c6b0cb9b12adc3e67541f`  
		Last Modified: Tue, 06 Oct 2026 02:26:29 GMT  
		Size: 18.0 KB (17963 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:9877244201df03e697206cf609108010736f81fd4734ba2efa59177cbd74f723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96986107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ffb820914385aec6fc70488b573c98cea0ab0f0f96f5a1e5e540ce48d900ba`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:36 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 21 Oct 2026 00:43:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:36 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:21 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Wed, 21 Oct 2026 00:49:21 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60faf17eefb1190a8e3cd61c087ccb47841b3802a531fb480346190f6ee46d4c`  
		Last Modified: Wed, 21 Oct 2026 00:49:35 GMT  
		Size: 47.9 MB (47852067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f4742557f49e14a8fd62db347b2b2c23cca9cc874bc1c09eaf4a594faed517`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 21.0 MB (20995615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:48bbe3934f3c588b58e931257d31b76e5a0309da6a22111c749d4aff3edcdd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c4513447ef8990d10dc884558e7d7a28ec1ba8c1f7d242c6838b1ef4f4ce0d`

```dockerfile
```

-	Layers:
	-	`sha256:495a25ea30c614cf7238af89f3c349b5f1d738a3f4b007a28e9afae97ca71046`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 3.3 MB (3330930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2929a9446cf14b24fd39982a484b2d28b10f12b9ebf8947ef35c372e10e30170`  
		Last Modified: Wed, 21 Oct 2026 00:49:33 GMT  
		Size: 18.0 KB (17981 bytes)  
		MIME: application/vnd.in-toto+json
