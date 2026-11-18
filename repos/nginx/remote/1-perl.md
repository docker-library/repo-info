## `nginx:1-perl`

```console
$ docker pull nginx@sha256:9657d43040dc2a10c5697a68ab158c2ea50980c3338d5b1d876add119b92d346
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

### `nginx:1-perl` - linux; amd64

```console
$ docker pull nginx@sha256:c7a87889adb37760bf0826fa12c28215d4ecd4cb81a4eb4c07072f4f7de5fcdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76072254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf20b71330126a66c3eedac8233c62884ddfed19087ed9bdc2f530e6fd478d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:34:13 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:34:13 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:34:13 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:34:13 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:34:13 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:34:13 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:34:13 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:34:13 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:34:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:34:13 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:34:13 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:34:13 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 16:35:40 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549c8ab03b9c2a6ccff0c3974273de490398c208380ddc610df4a6618ac8e6db`  
		Last Modified: Wed, 18 Nov 2026 16:34:24 GMT  
		Size: 34.1 MB (34052262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0e64fcba3e3d2214d3d10ce0955e0f5c8c34342d184e993b38b6d40eabe83d`  
		Last Modified: Wed, 18 Nov 2026 16:34:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8181439971c00956b03cbc28cb6aa29c32ac506a95c0efd1d390c940071067d5`  
		Last Modified: Wed, 18 Nov 2026 16:34:24 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c1be17f4573d99cdee95f56e15c0fb9cbe188a4b8a32b2cf11754f4366b15`  
		Last Modified: Wed, 18 Nov 2026 16:34:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd4d7f2711b0168da2d9b13d129c00c51222aea8d0bde85590aa2e931141197`  
		Last Modified: Wed, 18 Nov 2026 16:34:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8657d7700a3efd6cf8ecf17749295c2c8f9ace8b6654c5858e20d1d915cb912`  
		Last Modified: Wed, 18 Nov 2026 16:34:25 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415ab64003b4ccd8869cc11ba0310450c94cd0873aaf5dbcde5d6cbe852b0498`  
		Last Modified: Wed, 18 Nov 2026 16:35:49 GMT  
		Size: 12.2 MB (12159254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:8563bcf5d571ff856a32eda0e7a298e5dc17171227e31e658ef72d6aefd4bd35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1bc3ee1bdee59766f70a351d4c63b9a195f6f15ab0bf424db944516cfa9415`

```dockerfile
```

-	Layers:
	-	`sha256:ea8768d40f76ddfaf67b32e0668dc1d7055545ea01e27884ebcfa3f312e3bc75`  
		Last Modified: Wed, 18 Nov 2026 16:35:49 GMT  
		Size: 4.3 MB (4252426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149e7746fcfb4e62e691cdbd0d5ef08a3e81b2d39212bb84555c5357722221fe`  
		Last Modified: Wed, 18 Nov 2026 16:35:49 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm variant v5

```console
$ docker pull nginx@sha256:3748b948af5a9f60ec15a74ddb5ed3474bac54cd7d39fd006f1f00fbb7ce5bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66897007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44641fd3613c9eadd4e743d2f7222c29e151ab72046ab64a947d1461e330884`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:44:02 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:44:02 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:44:02 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:44:02 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:44:02 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:44:02 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:44:02 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:44:02 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:44:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:44:02 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:44:02 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:44:02 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 17:09:06 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dced9d5f02be00f65b874237db81b8951565921f08ba9a6b3bf53645122d52d`  
		Last Modified: Wed, 18 Nov 2026 16:44:12 GMT  
		Size: 26.9 MB (26920891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b913d25c04e3cbbd4375853aada8224b832020b0dd32a6778e1d6c7c9844fe`  
		Last Modified: Wed, 18 Nov 2026 16:44:11 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b15aaabaa05234a90f6ee58ff56a39ce935e1c27f662cc81552b4451b7bd3a`  
		Last Modified: Wed, 18 Nov 2026 16:44:11 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705528c328b305e258eba09cc18a7d9e035652d9998012f608d16452bc658d79`  
		Last Modified: Wed, 18 Nov 2026 16:44:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017286e89db28c2713bfb87b4504847bb0aa52abb9e16c271850e04214ef2ff6`  
		Last Modified: Wed, 18 Nov 2026 16:44:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf7a99b9ffa16561a6dbe0ebfa3e939c15fdc5f3c9f2b6c43fb9dce133c7517`  
		Last Modified: Wed, 18 Nov 2026 16:44:12 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80338e2237d7b158a44f424a47bd402585ab9dcb0173ebef6a86819b8248c2de`  
		Last Modified: Wed, 18 Nov 2026 17:09:16 GMT  
		Size: 12.0 MB (11951895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:d5431b5a9516cc754d6802969a32a385ad1ac582597ce661a6327e3c7f803776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1c17c2c34e3598fee7d032af492f604f4e657e829a976af358bd4c8d8807be`

```dockerfile
```

-	Layers:
	-	`sha256:e52bcc99db68ba0c4ef840e4df263c41c408d1637de09921ab86e413969bbd32`  
		Last Modified: Wed, 18 Nov 2026 17:09:15 GMT  
		Size: 4.3 MB (4284534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88518c995a0b7bb0147ab2af355acac934a7c063374c9a6fb039c443b0257415`  
		Last Modified: Wed, 18 Nov 2026 17:09:15 GMT  
		Size: 24.6 KB (24585 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:bb536884e56e5af648d5715828beb96cf7ee4755c32b8c9fc5ecde6c35a4e382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65022444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae99bc8c61a5696111e2bd8537b54f1a14cf6277ea8d4fddfd27f675e1291ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:42:09 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:42:09 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:42:09 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:42:09 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:42:09 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:42:09 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:42:09 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:42:09 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:42:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:42:09 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:42:09 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:42:09 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 17:13:12 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c40716b3832d8c0314d9fc51b66ccbad296907889eceeb86e751f53ccc0c30f`  
		Last Modified: Wed, 18 Nov 2026 16:42:19 GMT  
		Size: 27.0 MB (26982626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cc4beb1e794c462339e0919fcefcfa78ef752e0d979fc4cb77a2661abc05d6`  
		Last Modified: Wed, 18 Nov 2026 16:34:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3dcc0bf87e142369879ba39236794c96b2e4ca68f371ff937dbf0d17b69731`  
		Last Modified: Wed, 18 Nov 2026 16:42:18 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98e00b6e043408a36121991eca0a2b711665d87aaf11e0fd9d72e7f77f6996`  
		Last Modified: Wed, 18 Nov 2026 16:42:18 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27637d59868896e30ff11dd0248d15c70adfdd3bf12889c310bdbda39ed394de`  
		Last Modified: Wed, 18 Nov 2026 16:42:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120b5bec4eef306990b7d4826beef200b971bdbb8610d80d579e6715c05a7742`  
		Last Modified: Wed, 18 Nov 2026 16:42:19 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0573c42998f2fed1c90c0763bfb83e173a631dc6db3b6501c22737313e68ab`  
		Last Modified: Wed, 18 Nov 2026 17:13:22 GMT  
		Size: 11.8 MB (11762293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:07700d422b946eb06b696c6f7aeebdb4f046fade7714838381479710f942c90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0da5e1535122907d6aacc4faa253c189b1ef141542a25637df9295ba75ba3b1`

```dockerfile
```

-	Layers:
	-	`sha256:1394bdf389950f11ab4b2523bdce5bb8a633f77fafa5ddd77e0acc8fba097596`  
		Last Modified: Wed, 18 Nov 2026 17:13:22 GMT  
		Size: 4.3 MB (4284057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c33a413dd33b589ed37a2eb915e37e13b9327cbd9750e582c0c9526a78ffc3`  
		Last Modified: Wed, 18 Nov 2026 17:13:21 GMT  
		Size: 24.6 KB (24585 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:cfa1ea17a7c640764d044ea2e0edb9db563412aa64f8e53b89c7c90ad1596730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74341483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2d8fdd548d3dc4b9da25cbc367959f39914b66dd94f4d246c70a3eb05ac727`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:33:42 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:33:42 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:33:42 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:33:42 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:33:42 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:33:42 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:33:42 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:33:42 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:33:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:33:42 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:33:42 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:33:42 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 16:35:42 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78304ff396dd75265c7d9cadf441608449fd1e1a4dcf38b0522d9fe22ab0d5dd`  
		Last Modified: Wed, 18 Nov 2026 16:33:53 GMT  
		Size: 32.0 MB (32008016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1b320beddf1275b6ead45db2c64495b94c6bc1b0ff19e1252a6ff07c73b437`  
		Last Modified: Wed, 18 Nov 2026 16:33:52 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3393e69a7f47dbacb11da06d411b5b5d4aa7eb09d723c9b0b04103c9efc142e2`  
		Last Modified: Wed, 18 Nov 2026 16:33:52 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a00f4417548aa80fa6e183e2edf2e8506413ed338e213c2ab2ebe1b1fdc8599`  
		Last Modified: Wed, 18 Nov 2026 16:33:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8afada488f71faa5ae20c8b1696d4238659931db9ff5c84fc4543814f21fbb`  
		Last Modified: Wed, 18 Nov 2026 16:33:53 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42cd3766d869688cbe5a7a12cd46e7313fc9a991f252f86ff043d592cf31ce1`  
		Last Modified: Wed, 18 Nov 2026 16:33:53 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d98f4b5d2b5a1760b827b4a79da825f1d204dca1608117a8a979d67128ea752`  
		Last Modified: Wed, 18 Nov 2026 16:35:51 GMT  
		Size: 12.1 MB (12114824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:4bfdcfba867e37acc48cfc72c28829e3626f75a4b99056a173839c13a5e36846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4283579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7227923460442fc4c5166c2fa2f66bb774a68bb8f4cb8366765da739d8357da6`

```dockerfile
```

-	Layers:
	-	`sha256:cd0bc8a9463c29260446ae9d3f0309f4e41d52d5e4c175fca60993575b584f26`  
		Last Modified: Wed, 18 Nov 2026 16:35:51 GMT  
		Size: 4.3 MB (4258945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:830a376bac5ae49b47ab1286a9a70a00e0c2bb9c4ab27693a37f475c0f02a43b`  
		Last Modified: Wed, 18 Nov 2026 16:35:51 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; 386

```console
$ docker pull nginx@sha256:18b38037b81ca669f58e027eb9b04b2b79fbd5818ea50375e499b953cc9bc866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76694213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d317dfeab91c98d534c8c84cabc551d9e05d93dee3d976a9c49d390f7138e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:40:45 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:40:45 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:40:45 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:40:45 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:45 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:40:45 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:45 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:45 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:40:45 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:40:45 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:40:45 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 17:09:45 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020634b94a2d5d0c9d1ede2e37bd80448dc57e5c7dbd801218ea5d3b8cc23b38`  
		Last Modified: Wed, 18 Nov 2026 16:40:56 GMT  
		Size: 33.1 MB (33136012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe6deab43225e81672c59e7985d805c7593aa8725385fb4317451f0b4a026e6`  
		Last Modified: Wed, 18 Nov 2026 16:40:55 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e4eddfd251ece518154bd587bec45aa27670626b9389d1939f1cbcdf749eda`  
		Last Modified: Wed, 18 Nov 2026 16:40:55 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ef0be5e6b45d0a870f735622f68fa076f8b288b34aabacc30b69126993eac`  
		Last Modified: Wed, 18 Nov 2026 16:40:55 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d16e4ceb1cca6958f09a8dcb09f8ee422e33bd8b08eba44c780a26860523252`  
		Last Modified: Wed, 18 Nov 2026 16:40:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac98899e1e05a963248690355d01b63e9a5b3b2425e3cd1a92a2952f4101dab7`  
		Last Modified: Wed, 18 Nov 2026 16:40:56 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fb399c792d881ccfb0df5b72037861d1ad9e9a9c9d114f35c6a8710d8bd9ba`  
		Last Modified: Wed, 18 Nov 2026 17:09:55 GMT  
		Size: 12.2 MB (12182830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:2ac0539c5701453d6ec3334e148c285ac3bc541ae2925ec6909298c31cd2548c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6084cc759f659efd20e269026865d92a2a70e942f3e92352bc9f987113ca5`

```dockerfile
```

-	Layers:
	-	`sha256:e4bf11eaa0351f0ad161207450beb45af2449abf896124f5f275bdae9e9b84f0`  
		Last Modified: Wed, 18 Nov 2026 17:09:55 GMT  
		Size: 4.3 MB (4279488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2da8669f9a04933ecd3324840a0b242fee54c191b5753db58a93413642c6c075`  
		Last Modified: Wed, 18 Nov 2026 17:09:55 GMT  
		Size: 24.4 KB (24396 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:506e874e950224e455e66867c68536f1f26534b06c7b7d051db9f803e67c541c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81232223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd125232583fd1762524a6ce0cea79c6883f6db289217b843f90d61f77ec3d1c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:46:47 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:46:47 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:46:47 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:46:47 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:46:47 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:46:47 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:46:47 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:46:47 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:46:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:46:47 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:46:48 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:46:48 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:46:48 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:46:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:46:48 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:46:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:46:48 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 17:17:23 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af18df27040343a054fb5b016b13cf54d849f57c5ff242b3129629a0af7ebcd4`  
		Last Modified: Wed, 18 Nov 2026 16:47:09 GMT  
		Size: 34.6 MB (34638503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8504ebe0ebac024c49f09c6d7f1fa65f60bf55549559fa2a8a7a5016e13704`  
		Last Modified: Wed, 18 Nov 2026 16:47:08 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd8cecfc842656e3b4797be0c368e4c5fcac00770d7685ec2268f78d45116b5`  
		Last Modified: Wed, 18 Nov 2026 16:47:08 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fcabb5ce0b847b720078add9a4e9a5dbff78d5daa566774bfdafc4a3a6798d`  
		Last Modified: Wed, 18 Nov 2026 16:47:08 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f76d2cda5f85535abba8a01414d862a6de09eda166e3234944875201a6b173`  
		Last Modified: Wed, 18 Nov 2026 16:47:09 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839120506ff0295d8f2fa2333fefabc45508f187a5ac459f3bd79e276d3718ab`  
		Last Modified: Wed, 18 Nov 2026 16:47:09 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c89d224a54642bf99472b4b254fe3878597d7892f4dddd73c8a7fc417ae1e0c`  
		Last Modified: Wed, 18 Nov 2026 17:17:49 GMT  
		Size: 12.9 MB (12921462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:c53f6b03743f879d8f70adfeae2805e490d28addc73048d7c3006389979595fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368a3f62b819dd16d05d90081b3da0ac6ecf1accc1d5213b15e9317749212036`

```dockerfile
```

-	Layers:
	-	`sha256:ed610922d18a62a188bfbbd40c6a5d5ca0d2688c1cb3c7a7652e1cade551ae3d`  
		Last Modified: Wed, 18 Nov 2026 17:17:48 GMT  
		Size: 4.3 MB (4290719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3f306413a1c9ff66ac5124ec299f8308d7578f9e1d46fc8aa46ee166bf9b3c`  
		Last Modified: Wed, 18 Nov 2026 17:17:48 GMT  
		Size: 24.5 KB (24537 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; riscv64

```console
$ docker pull nginx@sha256:3ff2521c8b79f1c2e6f761b542ce12cff53aa27f62026cadc772290791b15996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70773501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbe7e41005bc424d6f496a32f801677a8b4e5c82a6f7b0c6533adec7f62a142`
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
# Tue, 03 Nov 2026 02:02:57 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:9e79fef185833052373783afb130a07755944fbbcf9d73a4a649d21c0b617c2c`  
		Last Modified: Tue, 03 Nov 2026 02:04:39 GMT  
		Size: 12.1 MB (12113993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:edcfed8f8c7031ad10cd7c9bf4b0804389978879f6bb30c960ba1131b930c608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0471adee356af59c0faa266e73f64278754592c89e17fd49273a52307c7b14d8`

```dockerfile
```

-	Layers:
	-	`sha256:de4d8cb40dd59a268cf4a75a95b5b28c38cae6894700d30105b5858a172343c0`  
		Last Modified: Tue, 03 Nov 2026 02:04:37 GMT  
		Size: 4.3 MB (4274887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22247182a02097589c8081aeaf78619013830977fd4995e82765ac2b48dd3bfd`  
		Last Modified: Tue, 03 Nov 2026 02:04:36 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; s390x

```console
$ docker pull nginx@sha256:073b2a58594842a9d159a86e5ccc1e6ed51256996532a36d8cb1e3e8cdc39218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74905106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad87aaafff8421f2fd24458f12954f6de2da2ec71a8bfc8221a121486604b165`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 16:40:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 16:40:12 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 16:40:12 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 16:40:12 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:12 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 16:40:12 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:12 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 16:40:12 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 16:40:12 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 16:40:12 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 16:40:12 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 18 Nov 2026 17:08:36 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aa5549090b7c59a687e988dd4e4cca24b9cd9c0e1b2ef6b5ed496d5b5702be`  
		Last Modified: Wed, 18 Nov 2026 16:40:27 GMT  
		Size: 31.8 MB (31783523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b55e9d4788419475585f31ec808e02d7f32395e505dcbe2257f1f5d6544dac`  
		Last Modified: Wed, 18 Nov 2026 16:40:27 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd038950fade8e4d611e5d9bb14d4782219c3521ed5bd5f0c9bf42cf23a399a`  
		Last Modified: Wed, 18 Nov 2026 16:40:27 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433d53c4413f11dc1f35bd1f70ea57aa69c374d2307b8cd877fc8521df731c37`  
		Last Modified: Wed, 18 Nov 2026 16:40:27 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87263002d87c1ee96fd264cd7c8305fead87927a5014438509cccd11b3c1b54e`  
		Last Modified: Wed, 18 Nov 2026 16:40:28 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac7838cedd326b0884714eb0af11c6eec7477219f7ae47475fda241cb1c5055`  
		Last Modified: Wed, 18 Nov 2026 16:40:28 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078c29a9027de4dd5700b7187bcb83373b57ad472dc3214a215292e1f8e2373c`  
		Last Modified: Wed, 18 Nov 2026 17:08:49 GMT  
		Size: 13.2 MB (13192855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:729d63a4fe0785079ab2c767bbad7021874001889b2c88c3474ab42151b6346e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4217773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f45ccf1cf7b9cf673091d6914c33d17893c1480160d2cb38c1ed2ca179860dd`

```dockerfile
```

-	Layers:
	-	`sha256:9f93433b1cb2d43c4c1a85918d95448dbae66d73f1a69fbd2d134350782592e4`  
		Last Modified: Wed, 18 Nov 2026 17:08:49 GMT  
		Size: 4.2 MB (4193315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da08966d7c0853c688fb1530affaf8d964157df650dc9360cf8b35eaaaffccce`  
		Last Modified: Wed, 18 Nov 2026 17:08:49 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json
