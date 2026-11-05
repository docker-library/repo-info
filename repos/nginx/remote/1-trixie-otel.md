## `nginx:1-trixie-otel`

```console
$ docker pull nginx@sha256:3d83bab96dcfd7eefd1e37ba855dd8388c83b50c23edda881513765069ced77b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:1-trixie-otel` - linux; amd64

```console
$ docker pull nginx@sha256:465bdf7c27dbddaffa1df24b84e7c473594f715c34a369bd71e30d3423354651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67710333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301802340c86a99cf4e7f2e8c865a4f393944385527762335586bfb070c01647`
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
# Thu, 05 Nov 2026 08:23:33 GMT
ENV OTEL_VERSION=0.1.2
# Thu, 05 Nov 2026 08:23:33 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:bf344b0f35ae432ec97e7693569366c62ea08cfc2cf96e198a7088cfe95c1e23`  
		Last Modified: Thu, 05 Nov 2026 08:23:41 GMT  
		Size: 3.8 MB (3798080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:a1f24e32d011ee8bb6f77f1342929b305276418bd793170f2648f86624d323de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2865212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf59538782f3836426deb14ff6f7360ce231fe5b7df42bf3aeef640d69fd6002`

```dockerfile
```

-	Layers:
	-	`sha256:92ee11d986f633b562661707d5b22d52c48b5ce90d47508e2f956ebc7f2fa907`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 2.8 MB (2840657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af5325840035065d5ece5c749843334b61a20c46909394a9b3cfb398258f5be6`  
		Last Modified: Thu, 05 Nov 2026 08:23:40 GMT  
		Size: 24.6 KB (24555 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:2ee1b45577c3ae4e29425e73188277bdf0d4b2745ba57ed9fd6ed9764b98ec3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65828037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f0f451d9788216570b7a9694dfeb4a0f06229f04860e064d5d4d014585bca2`
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
# Thu, 05 Nov 2026 08:24:07 GMT
ENV OTEL_VERSION=0.1.2
# Thu, 05 Nov 2026 08:24:07 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:b961c2f60a3d5d8ee40b949c4af8b47f8c5236bffd6412360a5b6a17589fd84c`  
		Last Modified: Thu, 05 Nov 2026 08:24:14 GMT  
		Size: 3.6 MB (3609041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:59d58faf7bb82bb19e12d61f2669f7890c23a4ea1a8a70f2c07fa6cef8beb2b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2865866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e487aa68d98226b447338e43d4d9eaef6e957a52755fae6edb4d45d6bf9a637d`

```dockerfile
```

-	Layers:
	-	`sha256:1ee029f2cb38415eacdc2cd05b7caca2466d0c2b88dcc7be7b477bc0ea06e89d`  
		Last Modified: Thu, 05 Nov 2026 08:24:15 GMT  
		Size: 2.8 MB (2841135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a3726cbc9a4f38274c0111360b35299759c27172da340db5558d2d9fdee72d8`  
		Last Modified: Thu, 05 Nov 2026 08:24:14 GMT  
		Size: 24.7 KB (24731 bytes)  
		MIME: application/vnd.in-toto+json
