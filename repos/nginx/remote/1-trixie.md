## `nginx:1-trixie`

```console
$ docker pull nginx@sha256:165ddde8751e75a1c907d24ef10d9f6deb08b57e0fe56caf67512486aff76d82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nginx:1-trixie` - linux; amd64

```console
$ docker pull nginx@sha256:5cb45c65713151f856f6b64f6a9b6a96b74d6a10709a7aa18919a444fd00bffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63912253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05939e13a616cd46ade6515e869aa24451ce7dc28d6f4f9ee8c6b1ec03fbf39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:53 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:17:53 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:17:53 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:17:53 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:53 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:17:53 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:53 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:53 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:53 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:17:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:17:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512ac5e7ce8e972ee4aeb319cd29d8c8232c924827b434b235acf7b3870d7fe3`  
		Last Modified: Thu, 05 Nov 2026 07:18:03 GMT  
		Size: 34.1 MB (34051517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1724c05f72c6159ab34443ba1c38c54b3d842bd7f7cbac239d422b415e573467`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb080c71d5097f00affd0144388e95df824f8605e250c14067b77fdfd1df12a`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1962e1ff75b4717744cebe6f21e392d6e3f0a37c43bed694631095ccb4ae0ca1`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb4701ce7cdee671fc1744a9867d60b53baebc4bb14c51509b02023ffc398f9`  
		Last Modified: Thu, 05 Nov 2026 07:18:03 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2e43921e9e9c0182a73942492d3f9f1691771280dfd37daaa48594dcbbad47`  
		Last Modified: Thu, 05 Nov 2026 07:18:03 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:3da6f2d7175b7c4bbb26e1e1922b47651b499e8a6f6493699a88dded7a16e5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2864125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1360c73e62df2ce2d2d9a886b39fdcbd5739b935830b1a36bb8d47a4cf4564`

```dockerfile
```

-	Layers:
	-	`sha256:d2c7e31f04a3525fc13b0d882050caa5a107efef3938e1878036d82fbcba9d18`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 2.8 MB (2828970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4582dace95e207d4a18b3ae0a98a449d5d103e5480cf3071d22cb021602b31f4`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 35.2 KB (35155 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; arm variant v5

```console
$ docker pull nginx@sha256:1f1bb1e04bea8ca32c70c090f64e69a2e8794ad9158dba58edf99a546d0feacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54893384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a323f9be7e0087d4209215c00cf2d83ad5b1cb4fd4ac8eb7b99316445ae599`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:23:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:23:46 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:23:46 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:23:46 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:46 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:23:46 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:46 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:46 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:23:46 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:23:46 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:23:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c497654a80075894a297585aec2281039131235b16300bebebe34baca454d766`  
		Last Modified: Thu, 05 Nov 2026 07:23:56 GMT  
		Size: 26.9 MB (26869165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1947f5cc7bfec03e1025e2afc6bcfcca1a2dc246f172e39411bef791e441bd`  
		Last Modified: Thu, 05 Nov 2026 07:23:55 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934fa197009d23b5021a6841b6a5b597fae3c2dcd56bcce2f1caf075da83989d`  
		Last Modified: Thu, 05 Nov 2026 07:23:55 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5554b164685308a7dbabafe360a4fb86bcb12de8c0eb0335075b5c8114ceb2a2`  
		Last Modified: Thu, 05 Nov 2026 07:23:55 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a9fe9de46acd919150727e8e16752edbaab6cbc3c3e646aa7dfc3c2f684f29`  
		Last Modified: Thu, 05 Nov 2026 07:23:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b3c8a40ba2065c89fd6664b3d02cd50ff5255ebb3fdc834efc614e4ecd1dfc`  
		Last Modified: Thu, 05 Nov 2026 07:23:56 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:f4bf5b2e9d242c8e0a85abcce24336cef05865ec6556bbd6b07b92bf53847253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2890417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6181904024581fab8ecc47bd323564f7474ef9767c495e52d92d2ecc9676bba`

```dockerfile
```

-	Layers:
	-	`sha256:3d0920fccc01b00228f8b75d626c91ed7e598cd97d9516d553bdc4748a780be6`  
		Last Modified: Thu, 05 Nov 2026 07:23:55 GMT  
		Size: 2.9 MB (2855133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8182958fc0d65f85d73a5f796f2f24cee34edf374b64d27815227b85aa2fc0`  
		Last Modified: Thu, 05 Nov 2026 07:23:55 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; arm variant v7

```console
$ docker pull nginx@sha256:7fa9b0e8b1f184a621c6d8e6e548d5977ee960cef75d6d84f048fd266c6f455c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53216345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba355a3e744d8a4f1516aa804cb7810d4264732e50f4a10ba3ffaa9e25fc2ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:27:36 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:27:36 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:27:36 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:27:36 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:36 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:27:36 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:36 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:36 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:27:36 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:27:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:27:36 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d171a87c318ff891fa7ba5714cf59e1c490159d466a9fa75c3bcd213e26b55f4`  
		Last Modified: Thu, 05 Nov 2026 07:27:45 GMT  
		Size: 26.9 MB (26938815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea5908413b96910930a71cdd6ba2547538685a9643c0ce7ea84202a81982037`  
		Last Modified: Thu, 05 Nov 2026 07:27:44 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640120161cebee5ea30bbf81ea394ad6f8168fd3bf61b0f86afdad65f47416c8`  
		Last Modified: Thu, 05 Nov 2026 07:27:44 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00445627b5ef75f1fb4f28d615a7ef60ede25bc0ae117cbbc51563ebc9e2a51b`  
		Last Modified: Thu, 05 Nov 2026 07:27:44 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3026310a617d460806ced33f0552c697dc99df480db1e627e6422f5f5bdec3d`  
		Last Modified: Thu, 05 Nov 2026 07:27:45 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d690945fc31349ec8ec7bf5f14320f8dcd844b26c13a7b62d7d25b1a5466b89`  
		Last Modified: Thu, 05 Nov 2026 07:27:45 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:dcd22eba85f8e40d859ad5e0848729ca7f4901c3077e07d76442183c30bf9c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c29be4d1362e2f302673ff49e7784a97457df9db25d4d28e024894b8ea61250`

```dockerfile
```

-	Layers:
	-	`sha256:58b473db13c9c54144e481fa1aa6a6bcff124c194d63c749b768175c83067c3f`  
		Last Modified: Thu, 05 Nov 2026 07:27:44 GMT  
		Size: 2.9 MB (2853880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98dd09ba268b21c0bd015405dfd83fa292d17ff643cc4530f9c40e0d5a067517`  
		Last Modified: Thu, 05 Nov 2026 07:27:44 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:089c73daf1604108ee59172ab9e71bf3d3bcc8aa69ae61593eb0f4fe67108d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62218996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809ba3eaffefcec326618bd941416984a9d721a110bf6eb8f8aa009404d86c00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:51 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:17:51 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:17:51 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:17:51 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:51 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:17:51 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:51 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:17:51 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:17:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:51 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:17:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:17:51 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19b546567359c6164948b786fee29e13dd19a23d9319489ba9c33afed81b3ed`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 32.0 MB (32000353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998fb033610b6aef667f95c0d1d1ccc058808da8f9372fb4e5e8298557ca5d76`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a564bc5d286dbc5140ff2d478532a1b56061e3c4b0a91db0c57371b2e7777b`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3559a01b6a8038896a554e08077596f3259e5d2dd8c1d48fd45bfea113bf8d42`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642332073692e408e0091a8e44ee4e4c332c3fffc7d206f245fbce6673faea1`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e08c0f6abb49f75ed0e0cdd099b33b24538570b387828dc3a6ce78038fdac`  
		Last Modified: Thu, 05 Nov 2026 07:18:02 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:ae4dbd63f203a4e8f903ff6c5964ab33db00782df61ad8fee8db0a0cbe0660a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2864779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829d289edb9b7450fa59d07cd4101e582452b43a7a75edfa1ad29763a84ab7dd`

```dockerfile
```

-	Layers:
	-	`sha256:61b74d3d884fe65b5086bdc5cb28e8b5a89e10faf05c8d9bb77ffc84c9b53ca1`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 2.8 MB (2829447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:986a6311611188712b4fd8ab5970a9b9fae609600b5e121e398731db5040511a`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 35.3 KB (35332 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; 386

```console
$ docker pull nginx@sha256:be17d9f8c2d0c2e4508fe75792d8d7cf52964904615b3557beceb2bfd8596b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64449066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40229d428211471964e39f5589c8e28987f9cc1795709a9c38b0ef59f767adcd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:22:28 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:22:28 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:22:28 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:22:28 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:28 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:22:28 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:28 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:28 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:22:28 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:22:28 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:22:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a169614d78049b69faa39708d2271c7808c531c49654d0174a07e19aa75571d`  
		Last Modified: Thu, 05 Nov 2026 07:22:39 GMT  
		Size: 33.1 MB (33073701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a6f1dce2cbba423da30f041b12d88d1a5810ced77e854fe0c489edfcd58052`  
		Last Modified: Thu, 05 Nov 2026 07:22:38 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421e5db698c2186c40c041ae3f894219143babd43f238e34a65a7809e32d3164`  
		Last Modified: Thu, 05 Nov 2026 07:22:38 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d2853f2c3e3cb631fcb25849950ecccd9555c070b65dca8f6868dedb0a3ce8`  
		Last Modified: Thu, 05 Nov 2026 07:22:38 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696a19b6c5179ee9607d62a7864153f596f60857d107c7266ef5cdefeba471e9`  
		Last Modified: Thu, 05 Nov 2026 07:22:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9031154375c97796b0671ef8df98df6e7164296615b1a1b14095cc09d36386d`  
		Last Modified: Thu, 05 Nov 2026 07:22:39 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:23ba22e6dacfbd15796c009bece5cf6669ae31a679223a56e3d0fa98f116c75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2883920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3220d309197b24570c6c351b8cc8b14f58316b094789ffab4fe6b9438ee833`

```dockerfile
```

-	Layers:
	-	`sha256:b01da16dc94bb42abbc7c7a66463b0c2337bdf0dd9c87db0e4fcf62301210aab`  
		Last Modified: Thu, 05 Nov 2026 07:22:38 GMT  
		Size: 2.8 MB (2848826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7dc025d20b1f35c86bc99aebae84ab6742cbe95e1a78f77a6feef27985e7267`  
		Last Modified: Thu, 05 Nov 2026 07:22:38 GMT  
		Size: 35.1 KB (35094 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; ppc64le

```console
$ docker pull nginx@sha256:17c5fae36914aa6a93189172bdb4a9e151614533f0fab555d155aefb15e94cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68242356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb362128114c81234f14045fc135ed38fa20b3f1ff2d6189a7bc30aeec07824b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:44:15 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:44:15 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:44:15 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:44:15 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:44:15 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:44:15 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:44:15 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:44:15 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:44:15 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:44:16 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:44:16 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:44:16 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:44:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:44:16 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:44:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:44:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472ca02729100824b1d6e8718ea2eaa2a48de5b03096432a859d4d9b58663d85`  
		Last Modified: Thu, 05 Nov 2026 07:44:37 GMT  
		Size: 34.6 MB (34570091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47f6392daa0d412b4d412be2ac7a06c48ba33d418a97215a7c754ad263a6928`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e0ae03dd506b075341ea619d18f0265db65ef04babaeddc87fe50b1c960e4b`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2fd29c00517554919cdb2bfb8bb35d0a5c45b04497550b43a32d6ca84242e7`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8b4ae82d08a20e4128ee5dc8758313764c6045e6ea3c2aa283dd3f0e830bb5`  
		Last Modified: Thu, 05 Nov 2026 07:44:37 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063dd7c0accdcd8a0c59f068607088d5c09a60db32f857c7538c7a6467c065a0`  
		Last Modified: Thu, 05 Nov 2026 07:44:37 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:f4ef567ddcd681833460726929ff2a68e228a6196022d35960838e81b18b5c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2891766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04da7056a4098268474c6b9b79a568a569f78933c9d81aef936aa434e3638bb`

```dockerfile
```

-	Layers:
	-	`sha256:4e75c161a89bb9e8a46a3766815bc813c04c1df9f4f96097c03dc6a52ba73f59`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 2.9 MB (2856531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d50643a6c2a7e0ac4b0ada9b17efb2beca87499e10179eb3d4e72acfbf1534cd`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 35.2 KB (35235 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; riscv64

```console
$ docker pull nginx@sha256:22b23e530247ce19c5c6328e0e04d834263ef087b02792d666c922874db098a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58659508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6172071c448b6ecc424077efa7b7dc8019fc5aecbf055c272414ed7ead8098`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 21:02:05 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Oct 2026 21:02:05 GMT
ENV NGINX_VERSION=1.31.8
# Fri, 30 Oct 2026 21:02:05 GMT
ENV NJS_VERSION=1.0.2
# Fri, 30 Oct 2026 21:02:05 GMT
ENV NJS_RELEASE=1~trixie
# Fri, 30 Oct 2026 21:02:05 GMT
ENV ACME_VERSION=0.4.1
# Fri, 30 Oct 2026 21:02:05 GMT
ENV PKG_RELEASE=1~trixie
# Fri, 30 Oct 2026 21:02:05 GMT
ENV DYNPKG_RELEASE=1~trixie
# Fri, 30 Oct 2026 21:02:05 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 21:02:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 30 Oct 2026 21:02:06 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 21:02:06 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 21:02:06 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 21:02:06 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 21:02:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Oct 2026 21:02:06 GMT
EXPOSE map[80/tcp:{}]
# Fri, 30 Oct 2026 21:02:06 GMT
STOPSIGNAL SIGQUIT
# Fri, 30 Oct 2026 21:02:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716237d940d34bf4691233a2c0a38d89619698b3fff67fe4bbc5f7c452a3ca63`  
		Last Modified: Fri, 30 Oct 2026 21:03:44 GMT  
		Size: 30.3 MB (30309227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514bf09857773ef6f7926a8fedf1f3023f774f6b6a3442d6b5ae084f44e3470a`  
		Last Modified: Fri, 30 Oct 2026 21:03:39 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba145636680fa574deedc343cf9e83aad69ab0714915220a5ecc5fcf5b4e5c5`  
		Last Modified: Fri, 30 Oct 2026 21:03:39 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f6fb7a9719d12f5b6d9a4f8bd15b6accdafd9006fe787dd8967f90fbe38b92`  
		Last Modified: Fri, 30 Oct 2026 21:03:39 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452d0d7f1e747c17bea0784f397ecead4bd463c6d3dde977d5871a376cafaa9b`  
		Last Modified: Fri, 30 Oct 2026 21:03:40 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e8c6959b7c74497e0c4bcffb320710446c2fbb1ee5db6be0abaee086eb924c`  
		Last Modified: Fri, 30 Oct 2026 21:03:41 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:dc6689e0096c83d9efb77484e647aef88ac93cff5477053c660d616fa2fb7b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2881550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859143d8054e9ab1c93e5cd8953817b79ff8f5f4fa768174781fe3662b748bcc`

```dockerfile
```

-	Layers:
	-	`sha256:93a527b3b3da578afbd46aff6a5df1e5cf12e485be33813673dac59d733e8d4b`  
		Last Modified: Fri, 30 Oct 2026 21:03:40 GMT  
		Size: 2.8 MB (2846314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6af51ec871ab7a426d915841c3bc0f615d3056cb05f8b0634345951fe9e3d40b`  
		Last Modified: Fri, 30 Oct 2026 21:03:39 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie` - linux; s390x

```console
$ docker pull nginx@sha256:0de53488e3cd3c673cab27f9466068abbf525f958c76ce9f0a7a6c3129f76e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61641694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813b18aaac5d2457129eac1c6f3656690b9d87d8341a9de484a8dd580b2cb321`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:22:42 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:22:42 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 05 Nov 2026 07:22:42 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:22:42 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:42 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:22:42 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:42 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:42 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:22:42 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:22:42 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:22:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec6500947c9d35ae608670098372cd03a5311a0725bc2eff3181f2c91b50bcf`  
		Last Modified: Thu, 05 Nov 2026 07:23:00 GMT  
		Size: 31.7 MB (31712973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de918d12a2bb838dbcb23df8d68756866a7c1d2852876402669aee92d945723c`  
		Last Modified: Thu, 05 Nov 2026 07:22:59 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38807d49fbc4efa0eccaccabf044ada0a10076f51580c956164f4a993ca3b23`  
		Last Modified: Thu, 05 Nov 2026 07:22:59 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287d2eb88ed6570598358f11bd7db6509ec6b0ba7586652e2587275f4c5229ba`  
		Last Modified: Thu, 05 Nov 2026 07:22:59 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b93852271d70df4651dfa61c3129925931792cd0ca49f74b9e2baf4c2ea6b5`  
		Last Modified: Thu, 05 Nov 2026 07:23:00 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9598d085cf8e20cec3ef3ddb1bc05cf7934f6a12d310d2350f8e75a09fdc9e`  
		Last Modified: Thu, 05 Nov 2026 07:23:00 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:67a84199149277f961daf4bca0f881e292b26bd0506aef656c826478a0a060b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0626cae84b529749c45058a3d275463857d764c0f8cf4f7fa6cf7059958046e0`

```dockerfile
```

-	Layers:
	-	`sha256:6ccb8823b88ffa7dc23ee6d0f5a18f572164475a255c1af1d13413a54c73bdec`  
		Last Modified: Thu, 05 Nov 2026 07:22:59 GMT  
		Size: 2.8 MB (2762277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9d0ac6dc9ecce8bcf6fcb09c074f73fc8b5f0fe9ed65dc136d6dad5cb846047`  
		Last Modified: Thu, 05 Nov 2026 07:22:59 GMT  
		Size: 35.2 KB (35156 bytes)  
		MIME: application/vnd.in-toto+json
