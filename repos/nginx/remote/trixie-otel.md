## `nginx:trixie-otel`

```console
$ docker pull nginx@sha256:661c9634468c6f769a62c36b3bf8680660d3e4875258b57fb08f4bf13b8dafa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:trixie-otel` - linux; amd64

```console
$ docker pull nginx@sha256:50040d8e51f760e4e938bed1af9786a7d916dbcab53d74888a738aec1a833ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67124658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca531d3f33fd731a094596771485c1cb00bab50c95edd9c9b5950ebe7727c9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:26 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NGINX_VERSION=1.31.4
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:26 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:27 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 25 Aug 2026 01:35:52 GMT
ENV OTEL_VERSION=0.1.2
# Tue, 25 Aug 2026 01:35:52 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30576ad53d33c89ecadcf211841487ff9f3db49d744e7096acfc4765f316a1bd`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 33.5 MB (33529974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f66660faa65baebff9440cb28d49109a03eec637fc99fc8074b798417665c2`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657dd7fba849a5fd034c9e4cd084ca62986eef1eb25c3abace4c51cd726cecbe`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90544874aaf280ce79389587c3b890bdcc91a78213e426bae6a058a0db3cd09`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f655e1bd5c1c8c90857796fecd31634110bc8692c96fdb30a5b76070663082f`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a35a4e59186daad02e5ee6e81b05a94b301e1e6faa86f78e93b47ad60dd0d48`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59adc937239b638ac19fd675523ba59160a3ab0765a4a9952e9e7e1469efc9d8`  
		Last Modified: Tue, 25 Aug 2026 01:36:00 GMT  
		Size: 3.8 MB (3797435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:64d44536cf803b4add48fd3fc3df1ba0b9ddfbaebee68705afe92c94a91fcfc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2854265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fae63574f47c13fe694fe044bc6af2853d365e3eec6d2965ffb0a5dccbbff60`

```dockerfile
```

-	Layers:
	-	`sha256:c3cc3b19184393a8123f291bbcb9084146a46472caf9a582fe39b18f49d54111`  
		Last Modified: Tue, 25 Aug 2026 01:36:00 GMT  
		Size: 2.8 MB (2829710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3088dd408e6e6089b9ff4cc36c847131ad55d2b869b3e4e3ee1f625428b8f4b`  
		Last Modified: Tue, 25 Aug 2026 01:35:59 GMT  
		Size: 24.6 KB (24555 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:5a57df160b752892bf187dd5d37c1b59aaccf72db2b3efe79904167c1a8a01b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.3 MB (65284211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67052b60e66db89373ae92397f02a8a687b5b6508903680f2d3b5dfef9f0014e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NGINX_VERSION=1.31.4
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:11 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:11 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:11 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:11 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 25 Aug 2026 01:40:17 GMT
ENV OTEL_VERSION=0.1.2
# Tue, 25 Aug 2026 01:40:17 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40321755fda21aa32af303aca1304ef7561cde6ad32d3b9a8a09914299813dd`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 31.5 MB (31511808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd0b5c40378d812e3b1856789e85cdc8ac29a4341e0bc4806b59be8378df36a`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657d8ed3a7e7ea0348e41724f234db186c69060b90642879eaaf6edc7db9ed92`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b736e8f7b87e33bf6c4bac563cea06322c808adb256972bb34a82ed846295665`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4f6f0376f04881e75a5e31a8f021c67751f643df2eee64a2505e710d7e1155`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe80b5eb1db75681be60aaacd907a8ad2d1f51106ce8e7dad1c69272c6e0edb`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82087b67ebc4f52bea5ae400775ce5f6bcbd315a70059fa2652efa51b2fba1cf`  
		Last Modified: Tue, 25 Aug 2026 01:40:25 GMT  
		Size: 3.6 MB (3608222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:1490962a5c5639ccd6fe267dfd2aa3b4a57da0988f9cc2ae0fd51257ce574b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2854918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2acecbe12a7ee644024939bae7745ac347b37418a1529f587e665ce262dea4`

```dockerfile
```

-	Layers:
	-	`sha256:0098e444fbaa57e28141ed328be839fb435dd19d25379a82e86555c97e7eb069`  
		Last Modified: Tue, 25 Aug 2026 01:40:25 GMT  
		Size: 2.8 MB (2830187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cce2d1cff1f253c738bbe4fcc3662ab371c2cdf272986583e785460578088cd`  
		Last Modified: Tue, 25 Aug 2026 01:40:24 GMT  
		Size: 24.7 KB (24731 bytes)  
		MIME: application/vnd.in-toto+json
