## `nginx:stable-trixie-otel`

```console
$ docker pull nginx@sha256:fa1843b35db6b4b512d9c1e613a77dad2f6159656f9101b2c92c2ea4fedb6f86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:stable-trixie-otel` - linux; amd64

```console
$ docker pull nginx@sha256:204ac4e566e6a1f4a5f130433baf8f1a56212ec843bd0be29466168b41965e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66824387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22333d3d45caae27574caecc9ea4dbdd007cbd83fe10e258a288be9e382a85d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:37 GMT
ENV NGINX_VERSION=1.30.4
# Tue, 25 Aug 2026 00:22:37 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:37 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:37 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:37 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:37 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:37 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:37 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:37 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 25 Aug 2026 01:35:47 GMT
ENV OTEL_VERSION=0.1.2
# Tue, 25 Aug 2026 01:35:47 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8e05c33ece272ce46b9577ce0c4e0cbb6545825de39996cb5f681ea1bf4875`  
		Last Modified: Tue, 25 Aug 2026 00:22:48 GMT  
		Size: 33.3 MB (33315732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da27deb50514367e27571fbc1df0bad94bd5cb57d44bc8c1188eee6979304d9f`  
		Last Modified: Tue, 25 Aug 2026 00:22:47 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b83ebde453a9130821793921c9e22ab8d9230156523c35cccd92fd1c56a9f3`  
		Last Modified: Tue, 25 Aug 2026 00:22:47 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d1ddf19b6398795b8338c47a2391d5a9166baae1004fdc7509bb72b08d613b`  
		Last Modified: Tue, 25 Aug 2026 00:22:47 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a121803064de56a59e7f64e7b0dc8ee240d4a003b72f3c0fde32775a719784a4`  
		Last Modified: Tue, 25 Aug 2026 00:22:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1554ddf61a758a9d10d05f660e8fa9011fc6518fee0441d4b57cfaa1c286b660`  
		Last Modified: Tue, 25 Aug 2026 00:22:48 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba75069069d9a045d1e04a6948159b9eeaa22c367d8ce3c005c32d682916e98`  
		Last Modified: Tue, 25 Aug 2026 01:35:55 GMT  
		Size: 3.7 MB (3711397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:e258c63ce8ee703765e15004fe58ff64085d01221355167b1bc29a6c6a8370c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2851816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303c2e4a216fb9a8faafd41be5c18d36fc7f06bc95164d952cb87a88814f0b06`

```dockerfile
```

-	Layers:
	-	`sha256:77e722d99dea6cfb333c955b02c4fb57bd80efb95065ceb27aa8c28aea9b9c38`  
		Last Modified: Tue, 25 Aug 2026 01:35:55 GMT  
		Size: 2.8 MB (2828498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eeedb4055f8f7e9aef5ad1afe64438f09b9942a5ce342c855c92f610c281370`  
		Last Modified: Tue, 25 Aug 2026 01:35:54 GMT  
		Size: 23.3 KB (23318 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:35cc689da1691414e3fbe09efe9a6afb5c6e34f0a7b8927e9072c205d2bba779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64884722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77e117adab82adbcfe304dde09f51290f8e000b3e819356e5919cd28c61e4d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:13 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:13 GMT
ENV NGINX_VERSION=1.30.4
# Tue, 25 Aug 2026 00:22:13 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:13 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:13 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:13 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:13 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:13 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:13 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:13 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:14 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:14 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:14 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:14 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:14 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:14 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 25 Aug 2026 01:40:20 GMT
ENV OTEL_VERSION=0.1.2
# Tue, 25 Aug 2026 01:40:20 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fed669acb5d88fd00c1222b38ebfbcb6636159fb510cc5806c55cf2b7221539`  
		Last Modified: Tue, 25 Aug 2026 00:22:24 GMT  
		Size: 31.2 MB (31249629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e262069eea4f9104e28c25076718235aae9e3db60ca1696b9148c96d2b0228c9`  
		Last Modified: Tue, 25 Aug 2026 00:22:23 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e6b76bc26bca5af06e53492198c2a0b242abcaa9bcb4350735bb44504d63d0`  
		Last Modified: Tue, 25 Aug 2026 00:22:23 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0231c9ece2d66d9b2063ed2249287309dfa6d8f20a3626d1cfe1a07fb196ef2`  
		Last Modified: Tue, 25 Aug 2026 00:22:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4978e9dba23af7905118e12434ecea7c6c1a5e6ea7f0781ab9511a6980daaa1`  
		Last Modified: Tue, 25 Aug 2026 00:22:24 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced25bc5fda830274c828367bc063dfb43f8ebaff2d8ad21cfccebaae0cfa9ee`  
		Last Modified: Tue, 25 Aug 2026 00:22:24 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a1d269747970be9cac82204495e2676369a30e4d9f1793c636fc1192531148`  
		Last Modified: Tue, 25 Aug 2026 01:40:28 GMT  
		Size: 3.5 MB (3470912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:6bc99455e6dd723d9282a2c978017fa5447743b892935f2d8dca6d0624057bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2852373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a9e5fec2f247e8bd26819cab6df9b29c3e90fa6e80f6ece1273b0eb75fe6d5`

```dockerfile
```

-	Layers:
	-	`sha256:05efce4b7e18024d90fcd5637af7000c378bf8f6f81255f626a2e5b8011b8449`  
		Last Modified: Tue, 25 Aug 2026 01:40:28 GMT  
		Size: 2.8 MB (2828927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8baaf48e20fa4cf00259513d35a97f3b63c8a113ae9fdcde48128e9871eb7b9a`  
		Last Modified: Tue, 25 Aug 2026 01:40:27 GMT  
		Size: 23.4 KB (23446 bytes)  
		MIME: application/vnd.in-toto+json
