## `nginx:1-otel`

```console
$ docker pull nginx@sha256:1147dd11163526595ca7213366fff5bd0307209eb8c67423ceac7078184dcbab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:1-otel` - linux; amd64

```console
$ docker pull nginx@sha256:7954cd74cd9ac0945a5021dab4efb06fecb1a3d0b34606bb2646d1c0076f58e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66821889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e27776688282087b97006cfea912f31e9f31e350feb00cbc5b0be4ea76fe08d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 23:30:55 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:30:55 GMT
ENV NGINX_VERSION=1.31.3
# Wed, 15 Jul 2026 23:30:55 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:30:55 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:55 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:30:55 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:55 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:55 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:30:55 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:30:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:30:55 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:56:37 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 15 Jul 2026 23:56:37 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82454cdbf456a77f9ff1bb88b121c2a739e38c30ea689c135c7cca6249eabe4e`  
		Last Modified: Wed, 15 Jul 2026 23:31:05 GMT  
		Size: 33.3 MB (33325076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7ab7949321f47c96fc0918f9f72e8f51bd452cdef1e0dad9599880317380b9`  
		Last Modified: Wed, 15 Jul 2026 23:31:04 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacfcdd01f309c65d69372716e799ea741065ac1b1e60880b3a6981ae105cb55`  
		Last Modified: Wed, 15 Jul 2026 23:31:05 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6698f04e005497a7f495c0719358d43890cb3997ad7b4ab0b06748247c574a3`  
		Last Modified: Wed, 15 Jul 2026 23:31:04 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bedaf25031a24fb70b9dc2d56cb17139186d1ae5fd2054ecbd0dfe1a69585ba`  
		Last Modified: Wed, 15 Jul 2026 23:31:06 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26f27cc8c41e321394cb3c9a80915d90d5f1f1d3cbbbcda3be00f13c53b041e`  
		Last Modified: Wed, 15 Jul 2026 23:31:06 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e65f739ea865d8784440c9c7f8d4d8185d2bc0e517dd8400c1c2bb4619c6c51`  
		Last Modified: Wed, 15 Jul 2026 23:56:43 GMT  
		Size: 3.7 MB (3711317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:279fae17e4cc6b06ba89638be381b8645fe9203995c1d9176c53241010070c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2853867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4450bb329c14aa5527674a9af548547a5cdaa4389a914abe93c0a265a73afe9b`

```dockerfile
```

-	Layers:
	-	`sha256:9384bd42ec454b03736cec48cfee4cdcaa0a6f69703581603303f8aea2368bbf`  
		Last Modified: Wed, 15 Jul 2026 23:56:43 GMT  
		Size: 2.8 MB (2829312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f88f73e0332c507681e3d0478c3840cceb4bbc30469bf0985d6435ec95d9d54`  
		Last Modified: Wed, 15 Jul 2026 23:56:43 GMT  
		Size: 24.6 KB (24555 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:d8ef097ab971877a221feadc912c90b7236c4184be5840ba4351362e210887c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64890007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b3b8e34dce126073cf387031266ac7afcae07ba48a98cee81fcbce176dca47`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 23:30:53 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:30:53 GMT
ENV NGINX_VERSION=1.31.3
# Wed, 15 Jul 2026 23:30:53 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:30:53 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:53 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:30:53 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:53 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:30:53 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:30:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:30:53 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:30:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:30:53 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:56:22 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 15 Jul 2026 23:56:22 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c3b3bebc0a0808865bb06f5a84ba9666c4c4837dcf55703d0c2ccb475497f9`  
		Last Modified: Wed, 15 Jul 2026 23:31:04 GMT  
		Size: 31.3 MB (31270851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1a2f3b85537164b47f644b9879e4069534cabb29649fdf8d3b2db2f728b09a`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627a5a63361acb3374006b2b8022b67534d9ab902d324796d00f387c49b43254`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cca0d328dc56685e6523210ffb8ef62df583df15e3c88a9d5562dd560130283`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f27359a4c87178cf45e024bc0645cea800a81916faa58f9d5a59fb10f028b2`  
		Last Modified: Wed, 15 Jul 2026 23:31:04 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f270a0f328fd9c085a0eb5bbe130e156c88da80da752a4e12241d82b3a22b6a`  
		Last Modified: Wed, 15 Jul 2026 23:31:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac26867fcbf856ed8b7aa3403ede82e415d429e2f8d91521ff129de1c28fb22`  
		Last Modified: Wed, 15 Jul 2026 23:56:29 GMT  
		Size: 3.5 MB (3470863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:5fa4da238a4b0e854bfc42869ddad71e363afe2020d30c406bd9ca012727e383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2854520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a430bc83d9aff3283a809cb47072223ef620ee778bc75e1f24bc1f68349820f`

```dockerfile
```

-	Layers:
	-	`sha256:1cf7a7728a312dd19e46c0e2efcae287bd67093daeebbee18304ea8ba7e9d6bc`  
		Last Modified: Wed, 15 Jul 2026 23:56:29 GMT  
		Size: 2.8 MB (2829789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:accc6d067c2a4f6977ad41539e5b9332ca4227a2cc8215b55d1c1512f8a7342d`  
		Last Modified: Wed, 15 Jul 2026 23:56:29 GMT  
		Size: 24.7 KB (24731 bytes)  
		MIME: application/vnd.in-toto+json
