## `nginx:stable-otel`

```console
$ docker pull nginx@sha256:1579650cf317e1cd9204db2983d8c3c7378762fa60282ba2c186418c24736c74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:stable-otel` - linux; amd64

```console
$ docker pull nginx@sha256:83a920243683bfa6b70a3493f9a47dce3a0feaad86931ad04d45f6be89a8dc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66802085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6826c1bbafc68f52c4c98f591fc475201df57961c27a6c4c683a66394456760d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 23:31:57 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:31:57 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 15 Jul 2026 23:31:57 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:31:57 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:57 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:31:57 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:57 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:57 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:31:58 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:31:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:31:58 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:57:16 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 15 Jul 2026 23:57:16 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6262d78c280741a8baa55fe9f59f7ccfc3575e27fe305804d16dfc1059929cde`  
		Last Modified: Wed, 15 Jul 2026 23:32:08 GMT  
		Size: 33.3 MB (33305228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c9d82cd1ff67ccbc8429b88d3313f774545002ae0a9b3684f4d8cec5ff0a73`  
		Last Modified: Wed, 15 Jul 2026 23:32:07 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac47ae235161dfad0a2a6dd6c2bb45c09c191ee0af3f062d68b764f3f32cde73`  
		Last Modified: Wed, 15 Jul 2026 23:32:07 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21844845a12b2a140f825f7cac1ff829db94a4c3982dba1d20116ce3b559080`  
		Last Modified: Wed, 15 Jul 2026 23:32:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41673bc194f77b2f3e3899b5472d43f3161ad7b668870c9e50d91e078af0f9f1`  
		Last Modified: Wed, 15 Jul 2026 23:32:08 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18079b307127cde0b92f1fc103058a0f3d23a5e5c1a728abd4a0f251456a8dbb`  
		Last Modified: Wed, 15 Jul 2026 23:32:08 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d2ab608a9d5fe0d305c78e51eb9de69ee7679c3d4f411463e09c74d483aa29`  
		Last Modified: Wed, 15 Jul 2026 23:57:23 GMT  
		Size: 3.7 MB (3711358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:fe8916753bb9df7e4e779f25d5391ef57928c0f27a0a2798a73e8a827df66e47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2851418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fcec42fc0af112972be19f00db682346eae5b6a3bb02e26518d26db1eb924a`

```dockerfile
```

-	Layers:
	-	`sha256:3f7e8cf53780a961d10cc22f5675a4c282db921a90551113cc6b91144731a802`  
		Last Modified: Wed, 15 Jul 2026 23:57:23 GMT  
		Size: 2.8 MB (2828100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:388ed258ce0956e7856edf980f413d7cc5e2d6a8c1ff8c872208f8e596215354`  
		Last Modified: Wed, 15 Jul 2026 23:57:23 GMT  
		Size: 23.3 KB (23318 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:695a9af7debf2e305b57430c08406d35d43e25b40e8fbd45d0f569fcac701e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64868002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0204b1cd64d63a9538968edd801304efaf6c8c5b861ff6915901ae6f41e08817`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 23:31:42 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:31:42 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 15 Jul 2026 23:31:42 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:31:42 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:42 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:31:42 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:42 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 15 Jul 2026 23:31:42 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:31:42 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:31:42 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:31:42 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:57:04 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 15 Jul 2026 23:57:04 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcccb2d28d9725fe0ab132eee6f609e6f065494b387c3019525e0fa8d5404df`  
		Last Modified: Wed, 15 Jul 2026 23:31:52 GMT  
		Size: 31.2 MB (31248819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ffcbfd30a515eb6aaf22183a661fa9d54dc67e9b4654df58539bd15c22c6c3`  
		Last Modified: Wed, 15 Jul 2026 23:31:19 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf3ff12606ebac9e71c1f291fac8c883d34575fae0fd9e01dcf97085db841f2`  
		Last Modified: Wed, 15 Jul 2026 23:31:51 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb68f929468a30318e10cc38227fb5d2cd3aec8485538e826af9bb7c7da44957`  
		Last Modified: Wed, 15 Jul 2026 23:31:52 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821e83dec5db0fe4175c79d1bd330c968e33afc8aedcf73f361072a74cb5f7d0`  
		Last Modified: Wed, 15 Jul 2026 23:31:52 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e67f38610935aa0e07a9512659a524957e2fd0f59238e36c9594b3a126b7f4`  
		Last Modified: Wed, 15 Jul 2026 23:31:53 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576547d3ff30b7c92f4ef75e6ab9688218fb64aac9c98ff1e748c5beca8a146c`  
		Last Modified: Wed, 15 Jul 2026 23:57:11 GMT  
		Size: 3.5 MB (3470879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:6830bfbe3a40b49f222c226c53a4baf4b22cf4ed6dfd8f628f5a73909126fb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2851975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70765cf49ee3b81c54e7d6cfb7a12efaf10f26631134420ce59f9e38f4cc7649`

```dockerfile
```

-	Layers:
	-	`sha256:e2496331f567fea3da8616eea1f1e00397a90c42725b9e0ecf9538371691d3d6`  
		Last Modified: Wed, 15 Jul 2026 23:57:11 GMT  
		Size: 2.8 MB (2828529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48184484ea4aa64214f5642d38f4248678d7de280b91f8964746f2376444c516`  
		Last Modified: Wed, 15 Jul 2026 23:57:11 GMT  
		Size: 23.4 KB (23446 bytes)  
		MIME: application/vnd.in-toto+json
