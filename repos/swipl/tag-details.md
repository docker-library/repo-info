<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:10.0.2`](#swipl1002)
-	[`swipl:10.1.14`](#swipl10114)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:10.0.2`

```console
$ docker pull swipl@sha256:7e8cea409795dc7be64d212c165d454181aa8d47adb119774104531314829f4d
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
$ docker pull swipl@sha256:ecae24e505a5216612361cacbc50b55a54bee333d5d54335bab5cf58b415f6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99090915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1d2717ec6173a70d762989e68fb3c34b67749f17470bcb60e7bf6de22e1d3b`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:44:22 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 00:44:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:22 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:45 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 00:50:45 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb1776650d908f2b57cae188734f1aad20521e3867157c6d3bfbefb93c804fe`  
		Last Modified: Tue, 25 Aug 2026 00:50:58 GMT  
		Size: 49.2 MB (49218870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e821d871a11171d460e603ce3debdafc3d9571da5b24b07e51e70c2a80812`  
		Last Modified: Tue, 25 Aug 2026 00:50:58 GMT  
		Size: 21.6 MB (21639390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:bc38afb6275929bb2b33cadb5d2c9d4553dab62e9920e4a7ce2fdef827b5d1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3349706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417ef72c2ef591ecf6f80949405240341c75e49a0c49b378ab2d81eea91dc8`

```dockerfile
```

-	Layers:
	-	`sha256:0fead2484f3cb76bc5140d95d4ec55ca3481af22e6aa6606ef4474ce693e7895`  
		Last Modified: Tue, 25 Aug 2026 00:50:57 GMT  
		Size: 3.3 MB (3331821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7fed87893b72cd3a92b73bd573dbf2355685b51dda389e42f3f1d84328a7c01`  
		Last Modified: Tue, 25 Aug 2026 00:50:56 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm variant v7

```console
$ docker pull swipl@sha256:2460fcce45e58526d158ae0d7f1dd296f24e5b7d3652add7d1071993d2f2b7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84847508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89dbb28b66d6b00c7e635f92a0c2e009806283a82ead3aea38485b53bf620022`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 01:32:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:35:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 01:35:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec782e283ea9f81e0ab1b4ce5258d5495be76d7f91be1847727076758330b37`  
		Last Modified: Tue, 25 Aug 2026 01:35:30 GMT  
		Size: 43.8 MB (43771114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe86ccc3e1f81aa917beeda74ab50bef6ab930a01f5625bbca45c77a2ea7d8e7`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 17.1 MB (17136550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:9110fdb14d7d6600c20d9b062378b711c05c2ff52e0f9290cf7baeaa1142a633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5472f9a7642e7fc5f7ae1310bffa3364430b751df4c1d634481e7976448734`

```dockerfile
```

-	Layers:
	-	`sha256:fe0de236dbaecf4ae0a7bc40959bdabaedc29bac3a8ecaa8778fff7264e3d7d8`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 3.3 MB (3330667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eb162eb631bbe96972f4d764f68c72a1a89621f7effd38e9c9655430319cffd`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 18.0 KB (17962 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.0.2` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:b0998391aaa4ebcd4609918d073dbb503d9c8cb2f7708dd9e07ab708483d4347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96928875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c975fe8b3ecf7ba77d4b49f1ae2166de40413b3ea17eb94914b3b03121f1036`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:46:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 00:46:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 00:52:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8386da462e2c8ec7c8c485ab716715762bb7c8630240c3d318d4e5652c4ece84`  
		Last Modified: Tue, 25 Aug 2026 00:52:58 GMT  
		Size: 47.8 MB (47814222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2eeec091b43b54652ce51308211d2c38e9333a8974c918e8b6e7c809014d5a7`  
		Last Modified: Tue, 25 Aug 2026 00:52:57 GMT  
		Size: 21.0 MB (20997364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.0.2` - unknown; unknown

```console
$ docker pull swipl@sha256:ea6802f9d4779410eda845b156a8d8f5b8e33fe75fd91ca7261b412dad124e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a341caed820cda7018d81f8bbcf6baba15c9d15e78761f33016b2954279f8a22`

```dockerfile
```

-	Layers:
	-	`sha256:12aaa0e8b047b139772d3dcba7ba0cdf65413fc971efa26bb008f01731ca586c`  
		Last Modified: Tue, 25 Aug 2026 00:52:57 GMT  
		Size: 3.3 MB (3332161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0c3ca9f233c3ac498a173d7dfe3edfd995588f6f5ef9cb51592db3b92a09422`  
		Last Modified: Tue, 25 Aug 2026 00:52:56 GMT  
		Size: 18.0 KB (17980 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:10.1.14`

```console
$ docker pull swipl@sha256:317d4621bda0b34a5bb3a1e3f87f565c14e2686c36a4595e0289015e116da2d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swipl:10.1.14` - linux; amd64

```console
$ docker pull swipl@sha256:8f78709caf62f6758707c521e33bc7a5cd1f45ea44d93f88dca3cdf4a3404816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107731182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ee5bef532f2bd1dc125368ca90e6f509c0c38590a80b4dd89099c357b95d25`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:15:16 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 19:15:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:15:16 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:21:14 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 19:21:14 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08339c914b41ee597671a1a01bea963e76573eae8e90b4a136caf90bd1366760`  
		Last Modified: Mon, 31 Aug 2026 19:21:28 GMT  
		Size: 55.4 MB (55408252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67a52fb7721e81db5c03bcd1ac23b82c4e5b6c8db89711dca353ea050fe373`  
		Last Modified: Mon, 31 Aug 2026 19:21:27 GMT  
		Size: 22.5 MB (22530272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.14` - unknown; unknown

```console
$ docker pull swipl@sha256:65d56ed8dd7a103fcc19fd6d2712593cf6398583ef1343567b97faf15fbd14ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65828d5e28c191545d7860986b65ee8657d4cd5540f312f16853212c98a714c6`

```dockerfile
```

-	Layers:
	-	`sha256:4448ffbda4398050f77a57db13ae34a523714fbfdd40946d02c866e18985a9da`  
		Last Modified: Mon, 31 Aug 2026 19:21:27 GMT  
		Size: 3.0 MB (3032883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83d29b5ddca84f23f17cfd3b377be38c10b68a50a38df27abf5f114437ca544`  
		Last Modified: Mon, 31 Aug 2026 19:21:26 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.14` - linux; arm variant v7

```console
$ docker pull swipl@sha256:6f1d050f6680e75e743a90478c0a96bb4dfc8fe1334df549780f53b749b32a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93311711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebebd28ab6f7812492274bb4ea5872104c76395d8cbaa8c9443f122f33ddec22`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:17:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 19:17:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:17:44 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:20:09 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 19:20:09 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecb531ac7c37f8ceb58eb6161627f8f671c297aa21cdd8497fee7cc0f3cfb96`  
		Last Modified: Mon, 31 Aug 2026 19:20:22 GMT  
		Size: 49.2 MB (49204583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4801e508ead780881a3f24d52366274ad6b2ffa269199a5d27ac5381d3c721c3`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 17.9 MB (17887987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.14` - unknown; unknown

```console
$ docker pull swipl@sha256:9cccd35ec95fb3ece864a4a5b92aabd4becbf0b6cefebbda74d3a4f6f8f8e732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01af73c52e6f04898a8c4575d642f34ca393ab9cd5042d48a31b5bec0e00441`

```dockerfile
```

-	Layers:
	-	`sha256:b9fcd30903513c750679796578f4102f2a86d3f52a6f9e9c8d26141dc973c385`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 3.0 MB (3030936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6613306d8f66abbd594476c8fb3becf7f36837c63af8563fc34d4d6ba3e3f9a`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:10.1.14` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:9e08d31269cc17da7839b06064c70bbe2abb49dcd37c6d2c9df16323c99f9dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107003185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb0bb7d2d6c51a423fb9f4950206e2507632a2686ef55a25dea82e1290b5d46`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 18:19:53 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 18:19:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:19:53 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 18:25:43 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 18:25:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdf72284336a85e7711f658d72bc35e8d6657b4d6295b47bb3f2d1c0870dceb`  
		Last Modified: Mon, 31 Aug 2026 18:25:58 GMT  
		Size: 55.0 MB (55018688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1183ae3bf6b5adbf5242ab4b50db8d32eff3508c2135f6d6368ce755a5a9eca1`  
		Last Modified: Mon, 31 Aug 2026 18:25:57 GMT  
		Size: 21.8 MB (21824915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:10.1.14` - unknown; unknown

```console
$ docker pull swipl@sha256:962d660294353dc917c9c93effee246185959c52dc2f43eacfe67f50d0265880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aaa22d2141742664012679f0d58dd3c36a7fb836119bf0275767ba8941dc1cf`

```dockerfile
```

-	Layers:
	-	`sha256:4df7274230a561d28e65a2d8dab3eb430f5a7912f4c16f53e99a9bc2facdf438`  
		Last Modified: Mon, 31 Aug 2026 18:25:56 GMT  
		Size: 3.0 MB (3033226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:045bc3e70759ba9856ae0ecd441ef09f934f9be8608e5f43e1fdf0f1656f2f7a`  
		Last Modified: Mon, 31 Aug 2026 18:25:56 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:latest`

```console
$ docker pull swipl@sha256:317d4621bda0b34a5bb3a1e3f87f565c14e2686c36a4595e0289015e116da2d1
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
$ docker pull swipl@sha256:8f78709caf62f6758707c521e33bc7a5cd1f45ea44d93f88dca3cdf4a3404816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107731182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ee5bef532f2bd1dc125368ca90e6f509c0c38590a80b4dd89099c357b95d25`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:15:16 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 19:15:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:15:16 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:21:14 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 19:21:14 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08339c914b41ee597671a1a01bea963e76573eae8e90b4a136caf90bd1366760`  
		Last Modified: Mon, 31 Aug 2026 19:21:28 GMT  
		Size: 55.4 MB (55408252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67a52fb7721e81db5c03bcd1ac23b82c4e5b6c8db89711dca353ea050fe373`  
		Last Modified: Mon, 31 Aug 2026 19:21:27 GMT  
		Size: 22.5 MB (22530272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:65d56ed8dd7a103fcc19fd6d2712593cf6398583ef1343567b97faf15fbd14ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65828d5e28c191545d7860986b65ee8657d4cd5540f312f16853212c98a714c6`

```dockerfile
```

-	Layers:
	-	`sha256:4448ffbda4398050f77a57db13ae34a523714fbfdd40946d02c866e18985a9da`  
		Last Modified: Mon, 31 Aug 2026 19:21:27 GMT  
		Size: 3.0 MB (3032883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83d29b5ddca84f23f17cfd3b377be38c10b68a50a38df27abf5f114437ca544`  
		Last Modified: Mon, 31 Aug 2026 19:21:26 GMT  
		Size: 18.1 KB (18136 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:6f1d050f6680e75e743a90478c0a96bb4dfc8fe1334df549780f53b749b32a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93311711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebebd28ab6f7812492274bb4ea5872104c76395d8cbaa8c9443f122f33ddec22`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:17:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 19:17:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:17:44 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:20:09 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 19:20:09 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecb531ac7c37f8ceb58eb6161627f8f671c297aa21cdd8497fee7cc0f3cfb96`  
		Last Modified: Mon, 31 Aug 2026 19:20:22 GMT  
		Size: 49.2 MB (49204583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4801e508ead780881a3f24d52366274ad6b2ffa269199a5d27ac5381d3c721c3`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 17.9 MB (17887987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:9cccd35ec95fb3ece864a4a5b92aabd4becbf0b6cefebbda74d3a4f6f8f8e732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01af73c52e6f04898a8c4575d642f34ca393ab9cd5042d48a31b5bec0e00441`

```dockerfile
```

-	Layers:
	-	`sha256:b9fcd30903513c750679796578f4102f2a86d3f52a6f9e9c8d26141dc973c385`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 3.0 MB (3030936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6613306d8f66abbd594476c8fb3becf7f36837c63af8563fc34d4d6ba3e3f9a`  
		Last Modified: Mon, 31 Aug 2026 19:20:21 GMT  
		Size: 18.2 KB (18213 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:9e08d31269cc17da7839b06064c70bbe2abb49dcd37c6d2c9df16323c99f9dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107003185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb0bb7d2d6c51a423fb9f4950206e2507632a2686ef55a25dea82e1290b5d46`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 18:19:53 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 31 Aug 2026 18:19:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4t64     libarchive13t64     libyaml-0-2     libgmp10     libutf8proc3     libossp-uuid16     libssl3t64     ca-certificates     libdb5.3t64     libpcre2-8-0     libgeos-c1t64     libspatialindex8     libspatialindex-c8     libodbc2     libodbccr2     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.13     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:19:53 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 18:25:43 GMT
RUN set -eux;     SWIPL_VER=10.1.14;     SWIPL_CHECKSUM=1a078f18b03d04a2869bc225f62b7a276c8ee7b03351c59a4f30727d2c8fbfab;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libutf8proc-dev libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_GUI=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 831482c8f267e002147dc482c4e6509f9e27d97e;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git ba23ea9aa4e22fcd1fc1ea3431950ef3e9375551;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git c6ef865f1cd9fe393213dd273fce13e96e4cb249;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Mon, 31 Aug 2026 18:25:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdf72284336a85e7711f658d72bc35e8d6657b4d6295b47bb3f2d1c0870dceb`  
		Last Modified: Mon, 31 Aug 2026 18:25:58 GMT  
		Size: 55.0 MB (55018688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1183ae3bf6b5adbf5242ab4b50db8d32eff3508c2135f6d6368ce755a5a9eca1`  
		Last Modified: Mon, 31 Aug 2026 18:25:57 GMT  
		Size: 21.8 MB (21824915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:latest` - unknown; unknown

```console
$ docker pull swipl@sha256:962d660294353dc917c9c93effee246185959c52dc2f43eacfe67f50d0265880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3051457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aaa22d2141742664012679f0d58dd3c36a7fb836119bf0275767ba8941dc1cf`

```dockerfile
```

-	Layers:
	-	`sha256:4df7274230a561d28e65a2d8dab3eb430f5a7912f4c16f53e99a9bc2facdf438`  
		Last Modified: Mon, 31 Aug 2026 18:25:56 GMT  
		Size: 3.0 MB (3033226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:045bc3e70759ba9856ae0ecd441ef09f934f9be8608e5f43e1fdf0f1656f2f7a`  
		Last Modified: Mon, 31 Aug 2026 18:25:56 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.in-toto+json

## `swipl:stable`

```console
$ docker pull swipl@sha256:7e8cea409795dc7be64d212c165d454181aa8d47adb119774104531314829f4d
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
$ docker pull swipl@sha256:ecae24e505a5216612361cacbc50b55a54bee333d5d54335bab5cf58b415f6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99090915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1d2717ec6173a70d762989e68fb3c34b67749f17470bcb60e7bf6de22e1d3b`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:44:22 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 00:44:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:44:22 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:45 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 00:50:45 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb1776650d908f2b57cae188734f1aad20521e3867157c6d3bfbefb93c804fe`  
		Last Modified: Tue, 25 Aug 2026 00:50:58 GMT  
		Size: 49.2 MB (49218870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7e821d871a11171d460e603ce3debdafc3d9571da5b24b07e51e70c2a80812`  
		Last Modified: Tue, 25 Aug 2026 00:50:58 GMT  
		Size: 21.6 MB (21639390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:bc38afb6275929bb2b33cadb5d2c9d4553dab62e9920e4a7ce2fdef827b5d1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3349706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417ef72c2ef591ecf6f80949405240341c75e49a0c49b378ab2d81eea91dc8`

```dockerfile
```

-	Layers:
	-	`sha256:0fead2484f3cb76bc5140d95d4ec55ca3481af22e6aa6606ef4474ce693e7895`  
		Last Modified: Tue, 25 Aug 2026 00:50:57 GMT  
		Size: 3.3 MB (3331821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7fed87893b72cd3a92b73bd573dbf2355685b51dda389e42f3f1d84328a7c01`  
		Last Modified: Tue, 25 Aug 2026 00:50:56 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm variant v7

```console
$ docker pull swipl@sha256:2460fcce45e58526d158ae0d7f1dd296f24e5b7d3652add7d1071993d2f2b7f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84847508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89dbb28b66d6b00c7e635f92a0c2e009806283a82ead3aea38485b53bf620022`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 01:32:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:35:18 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 01:35:18 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec782e283ea9f81e0ab1b4ce5258d5495be76d7f91be1847727076758330b37`  
		Last Modified: Tue, 25 Aug 2026 01:35:30 GMT  
		Size: 43.8 MB (43771114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe86ccc3e1f81aa917beeda74ab50bef6ab930a01f5625bbca45c77a2ea7d8e7`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 17.1 MB (17136550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:9110fdb14d7d6600c20d9b062378b711c05c2ff52e0f9290cf7baeaa1142a633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5472f9a7642e7fc5f7ae1310bffa3364430b751df4c1d634481e7976448734`

```dockerfile
```

-	Layers:
	-	`sha256:fe0de236dbaecf4ae0a7bc40959bdabaedc29bac3a8ecaa8778fff7264e3d7d8`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 3.3 MB (3330667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eb162eb631bbe96972f4d764f68c72a1a89621f7effd38e9c9655430319cffd`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 18.0 KB (17962 bytes)  
		MIME: application/vnd.in-toto+json

### `swipl:stable` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:b0998391aaa4ebcd4609918d073dbb503d9c8cb2f7708dd9e07ab708483d4347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96928875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c975fe8b3ecf7ba77d4b49f1ae2166de40413b3ea17eb94914b3b03121f1036`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:46:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 25 Aug 2026 00:46:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libtcmalloc-minimal4     libarchive13     libyaml-0-2     libgmp10     libossp-uuid16     libssl3     ca-certificates     libdb5.3     libpcre2-8-0     libedit2     libgeos3.11.1     libspatialindex6     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient-dev-compat     libsqlite3-0     libserd-0-0     python3     libpython3.11     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux;     SWIPL_VER=10.0.2;     SWIPL_CHECKSUM=e42cc098f7b8a6051c4f79a99b55162d467098aba60f69649bdc7583f0734b57;     BUILD_DEPS='make cmake ninja-build gcc g++ wget git pkg-config m4 libtool automake autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre2-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libyaml-dev libgoogle-perftools-dev libpython3-dev';     dpkgArch="$(dpkg --print-architecture)";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget -q https://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=PGO           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr 	  -G Ninja           ..;     ninja;     ninja install;     rm -rf /tmp/src;     mkdir -p /usr/share/swi-prolog/pack;     cd /usr/share/swi-prolog/pack;     echo ":- multifile prolog:build_environment/2." > env.pl;     echo "prolog:build_environment('PORTABLE', '1')." >> env.pl;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt env.pl;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;         find "$1" -name '*.so' -exec strip {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 95aba2a5c156b831cf2bcfd387f65a9b470280e4;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git d1463581484ec794d92700f88cee431b257f33dc;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin hdt https://github.com/JanWielemaker/hdt.git 7f2221747ea751a20ad0d7b95aebfd2c99649c1f;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git bdf8962264d65dd8ef6eedf5f00ff0c0f6c52c2f;     apt-get purge -y --auto-remove $BUILD_DEPS # buildkit
# Tue, 25 Aug 2026 00:52:43 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8386da462e2c8ec7c8c485ab716715762bb7c8630240c3d318d4e5652c4ece84`  
		Last Modified: Tue, 25 Aug 2026 00:52:58 GMT  
		Size: 47.8 MB (47814222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2eeec091b43b54652ce51308211d2c38e9333a8974c918e8b6e7c809014d5a7`  
		Last Modified: Tue, 25 Aug 2026 00:52:57 GMT  
		Size: 21.0 MB (20997364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swipl:stable` - unknown; unknown

```console
$ docker pull swipl@sha256:ea6802f9d4779410eda845b156a8d8f5b8e33fe75fd91ca7261b412dad124e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a341caed820cda7018d81f8bbcf6baba15c9d15e78761f33016b2954279f8a22`

```dockerfile
```

-	Layers:
	-	`sha256:12aaa0e8b047b139772d3dcba7ba0cdf65413fc971efa26bb008f01731ca586c`  
		Last Modified: Tue, 25 Aug 2026 00:52:57 GMT  
		Size: 3.3 MB (3332161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0c3ca9f233c3ac498a173d7dfe3edfd995588f6f5ef9cb51592db3b92a09422`  
		Last Modified: Tue, 25 Aug 2026 00:52:56 GMT  
		Size: 18.0 KB (17980 bytes)  
		MIME: application/vnd.in-toto+json
