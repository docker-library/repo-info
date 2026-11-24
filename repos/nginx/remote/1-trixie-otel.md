## `nginx:1-trixie-otel`

```console
$ docker pull nginx@sha256:684418e04cf9108f89c27006920fa47affa653c0f732a354bcc6443d23952a33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:1-trixie-otel` - linux; amd64

```console
$ docker pull nginx@sha256:7b5bdd40ac1493cc80f814b548cbd8519ded463e15c52d093c2d1b60905f4adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70693946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dac59db76b5fe1fea2d87a59976e8f063212f031ca48608d21bf836901aa705`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 23 Nov 2026 19:53:09 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:53:09 GMT
ENV NGINX_VERSION=1.31.10
# Mon, 23 Nov 2026 19:53:09 GMT
ENV NJS_VERSION=1.0.2
# Mon, 23 Nov 2026 19:53:09 GMT
ENV NJS_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:53:09 GMT
ENV ACME_VERSION=0.4.2
# Mon, 23 Nov 2026 19:53:09 GMT
ENV PKG_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:53:09 GMT
ENV DYNPKG_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:53:09 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:53:09 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:53:09 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:53:09 GMT
CMD ["nginx" "-g" "daemon off;"]
# Mon, 23 Nov 2026 20:08:51 GMT
ENV OTEL_VERSION=0.1.2
# Mon, 23 Nov 2026 20:08:51 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d92589556cb8365aed6684e2c6a1071ebcdda03bdaaae07093c2a36e4aba7a7`  
		Last Modified: Mon, 23 Nov 2026 19:53:20 GMT  
		Size: 37.0 MB (37030315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe328182f76312ca7d59fc0056ebd14f14026e48c76d436d7349701a2a1ffd79`  
		Last Modified: Mon, 23 Nov 2026 19:53:19 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b965f0216c165fa65859ea752d2c3815410607f6ab296196d5079918f62104`  
		Last Modified: Mon, 23 Nov 2026 19:53:19 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c84975b9b39b3358637b87bf30b66eaa69e8bea467191f52fe0a6bcb0c27e4`  
		Last Modified: Mon, 23 Nov 2026 19:53:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ad9cbdf6622cfebdd73049e46682837c7433f7452226d54a86012cad362df`  
		Last Modified: Mon, 23 Nov 2026 19:53:20 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d03f5fad6576b8f39ad031fcff7e2b9bf8a37341f830fb153074a2bc982714`  
		Last Modified: Mon, 23 Nov 2026 19:53:20 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0798951d1957d0f06dce23a3a63aaa45a41fad33007fe4ba5943ee4ba61f12d`  
		Last Modified: Mon, 23 Nov 2026 20:08:58 GMT  
		Size: 3.8 MB (3802892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:a91fee4dbaa01ca750d8c08c002291182c56956ad069e3680c524edf3b7deb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2865232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbccb07ccd85d1d19df462c1bc72f1b300e466151908eb229bdff12007c2671d`

```dockerfile
```

-	Layers:
	-	`sha256:24575e2b8e58d4459666acfa19813f933d66beb639321eaf8634bff7823329c0`  
		Last Modified: Mon, 23 Nov 2026 20:08:57 GMT  
		Size: 2.8 MB (2840671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cf8518b345e36d650d224ef3d932edb435a02552b2d83468ece20ed6ebd8822`  
		Last Modified: Mon, 23 Nov 2026 20:08:58 GMT  
		Size: 24.6 KB (24561 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:373ff193c4cfbb313c22031692ef6f2e10c0382106c8c1a513d7d98da65af1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69175787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23fb77d9b718504f06c17474aff361b66e3214408bf2e3cf91cdcc697340191`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 23 Nov 2026 19:54:50 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:54:50 GMT
ENV NGINX_VERSION=1.31.10
# Mon, 23 Nov 2026 19:54:50 GMT
ENV NJS_VERSION=1.0.2
# Mon, 23 Nov 2026 19:54:50 GMT
ENV NJS_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:54:50 GMT
ENV ACME_VERSION=0.4.2
# Mon, 23 Nov 2026 19:54:50 GMT
ENV PKG_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:54:50 GMT
ENV DYNPKG_RELEASE=1~trixie
# Mon, 23 Nov 2026 19:54:50 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:54:50 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:54:50 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:54:50 GMT
CMD ["nginx" "-g" "daemon off;"]
# Mon, 23 Nov 2026 20:09:18 GMT
ENV OTEL_VERSION=0.1.2
# Mon, 23 Nov 2026 20:09:18 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f6ef6f23415700a491081aa656c3dd2e9eeef692ada1afe738fd8c5216ce08`  
		Last Modified: Mon, 23 Nov 2026 19:55:01 GMT  
		Size: 35.3 MB (35341426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c5d5c45ba76b0da0ec3ff57b808ca3f3daa0b2d07d1e85fad883e7eff01de2`  
		Last Modified: Mon, 23 Nov 2026 19:55:00 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ebd4be1bb737575163f4d95563533b1e45fc1193c1f110de15d13fe0f17ab7`  
		Last Modified: Mon, 23 Nov 2026 19:55:00 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09afb08609fa34c49f04346c20245b08ecb3b95c7989e879c0f21cea3103f0c`  
		Last Modified: Mon, 23 Nov 2026 19:55:00 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752e6d9a7ae1d45358055f2ad2dcf50cf77eaf7209ecaf66c2dc866875fe075e`  
		Last Modified: Mon, 23 Nov 2026 19:55:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002f02ce42a562b3b0553116c0c9ad72302d16dbbb2ead7b048713d9046b0e5`  
		Last Modified: Mon, 23 Nov 2026 19:55:01 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bb816e402881ae55cc7116e1a65748bd49bd150efa2c8e8c4fbdb9ce5fb485`  
		Last Modified: Mon, 23 Nov 2026 20:09:25 GMT  
		Size: 3.6 MB (3615712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:427107855105d6f1567f05f2da4cf72f0ee080119320fdbad1cb9acc4b47b6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2865886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeebd569f9d43e07f3d21b01b67d02dec53ca2481a05a6c7331a2fe5345cd9d`

```dockerfile
```

-	Layers:
	-	`sha256:8be99ec13c558508ad0bce4c2cbd11bd764e5364b27be3f040e6fa0d865b6fee`  
		Last Modified: Mon, 23 Nov 2026 20:09:25 GMT  
		Size: 2.8 MB (2841149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b17caa9b43581c7cde947be3dc602364726c7eb9d879098c82372d97e9e81ae`  
		Last Modified: Mon, 23 Nov 2026 20:09:25 GMT  
		Size: 24.7 KB (24737 bytes)  
		MIME: application/vnd.in-toto+json
