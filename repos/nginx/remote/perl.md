## `nginx:perl`

```console
$ docker pull nginx@sha256:f40cb3b22ecda978d9a14cb8171ca44bfb0b54cb8ef01a6a86c5e079e74a7c74
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

### `nginx:perl` - linux; amd64

```console
$ docker pull nginx@sha256:76e2162201601fff84186078848853769f9ec9b0a041e2e0f65a66e9094f70cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75475468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58baecafe641bb0bbb8ffb456c08219e6b729216b14bb5aa1ff36c2430af9fd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:08:28 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:08:28 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:08:28 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:08:28 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:28 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:08:28 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:28 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:28 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:08:28 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:08:28 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:08:28 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:10:16 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746b934a89606425f83753d36c89bf2ed6f83fb4fc03ee69cf30e96873e86397`  
		Last Modified: Wed, 19 Aug 2026 19:08:39 GMT  
		Size: 33.5 MB (33529920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5508f6432d3e4a769c2d9b80749ad50e86f8193d7717e54396d05d1a17b587cf`  
		Last Modified: Wed, 19 Aug 2026 19:08:38 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d480233f531dc4a1034a4c6ecd3a4e9075aaee812b6be93159b0db4e397b1ab`  
		Last Modified: Wed, 19 Aug 2026 19:08:38 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f530c3e421fca98fcd8708cc47151916056adc55548deeb5dcd04af38e4b57cf`  
		Last Modified: Wed, 19 Aug 2026 19:08:38 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128fcc7b23b0790468195111c98e3300a0d57267108085d886be27b6f48f32a8`  
		Last Modified: Wed, 19 Aug 2026 19:08:39 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb55399d6dea18b22c5aa592fdb03daf75a95cbc4a229acdcfa6ca95cf54fd8`  
		Last Modified: Wed, 19 Aug 2026 19:08:39 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8d78d8dadb7ad17777c54879b6b14b33f66b524e049513807d2c5295d247ce`  
		Last Modified: Wed, 19 Aug 2026 20:10:34 GMT  
		Size: 12.2 MB (12160187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:b1e160caf5a2f849a8fda7edb40604d8031ec3e6a4f95d62f5e59a83135f02c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4265703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0a28c58b362a7dbefb5db939363bfd4be80d3db5bd68c7ccc96fea508edfab`

```dockerfile
```

-	Layers:
	-	`sha256:783987d4c43e4f0d3703d0994c3822360bf5af0b38426799c76613439ff50d31`  
		Last Modified: Wed, 19 Aug 2026 20:10:31 GMT  
		Size: 4.2 MB (4241245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04af12876deec14d80c57395ec66a4cfd325bc5612a793b681c9fe180faa089b`  
		Last Modified: Wed, 19 Aug 2026 20:10:27 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; arm variant v5

```console
$ docker pull nginx@sha256:6f8e6aee1219b4cecf6e3fc5d54158f5bf23510958896a951e590b734aa11156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68973353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1bf367ffffb68332bfa97812217c23d6fd002411d5e8847c6d0513f8dca8381`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:17:58 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:17:58 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:17:58 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:17:58 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:17:58 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:17:58 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:17:58 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:17:58 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:17:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:17:58 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:17:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:17:58 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:14:54 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3479b7a425a78c662d2c8ad6d5b2ffb4145df0ab930fd94fdf1bcf034a10f52b`  
		Last Modified: Wed, 19 Aug 2026 19:18:08 GMT  
		Size: 29.1 MB (29066148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283b9d179e1089bd4b6536d489ca96ec2633579bc86c83eef9f56d450eb63a6f`  
		Last Modified: Wed, 19 Aug 2026 19:18:07 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57acaea7dd62548c7d0f68663c091b9bc7881b6b7aa9964f36b8f2b05e29ddc9`  
		Last Modified: Wed, 19 Aug 2026 19:18:07 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe49d4d79d5d7f70d027068dc02f972c17abd80a9d0a3797a2b2b419b53c8cb`  
		Last Modified: Wed, 19 Aug 2026 19:18:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24dd152597f04ec61fd64f0456926587963bfca191fc3e82d797228055bdf84`  
		Last Modified: Wed, 19 Aug 2026 19:18:08 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b519704a92d16ec6f56b8bfd6690323fa45befe2b46f30b9296e5b70ce6f484b`  
		Last Modified: Wed, 19 Aug 2026 19:18:08 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d5d0064e8c7e371e5ec1db655277189cfe98f98c15726e85fd52bb2030b946`  
		Last Modified: Wed, 19 Aug 2026 20:15:04 GMT  
		Size: 11.9 MB (11947890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:a52c8a2cbc71d95ab26c2c704251862234cb9222129ffa019e3325e30e62fb46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6578d2223040bd83da6ecf0c92a8d9047efb620cf843df689c016df145785b07`

```dockerfile
```

-	Layers:
	-	`sha256:84f6fa85241ad04c8380b417067ae8f5d27234783c94126a5610d617596c1978`  
		Last Modified: Wed, 19 Aug 2026 20:15:04 GMT  
		Size: 4.3 MB (4273522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d28254991f8fe9446b8f7677a5f7409e2fbf04f8b29d9401b7e155e8be6a31f`  
		Last Modified: Wed, 19 Aug 2026 20:15:03 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:5431b05f7fa46695a09b01e50c73d7e6b7cd7a6b29862439f26614012af99d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66882964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e604b7c31761b8b380aff3d1c38cfc5517fb34c79ae3d6e1b8a66e09879b6a2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:16:33 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:16:33 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:16:33 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:16:33 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:16:33 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:16:33 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:16:33 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:16:33 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:16:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:16:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:16:33 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:16:33 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:10:24 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb5cc60c7ee0df435119d9a67ddca1d9ef815ef3b5ba358f72a92592a1fca95`  
		Last Modified: Wed, 19 Aug 2026 19:16:43 GMT  
		Size: 28.9 MB (28914295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e468bbcdc325814f5bf5ccf83ce1516e654fc19789ff9178c7cc73247207aa7`  
		Last Modified: Wed, 19 Aug 2026 19:16:42 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28fbb641f7934f40837b1b6f584ee1bfb85b0043cdc949441322fd7a932e1b6`  
		Last Modified: Wed, 19 Aug 2026 19:16:42 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20e365af29048094a3136f88a51ea583d21cdf01ebbf62238fbb153daf84be1`  
		Last Modified: Wed, 19 Aug 2026 19:16:42 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb5f287326ff379d13c182bec38a26f428fc600a581c9dfc1660e7921153562`  
		Last Modified: Wed, 19 Aug 2026 19:16:43 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c478238dc8fb7584ebd1db1a2dcb2abcbe20ef69a4c90c4174ec9b766b53f32f`  
		Last Modified: Wed, 19 Aug 2026 19:16:43 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0884ba2484ff82e7e9f42159586acc9bd6d7bab358ad0dea300252d4a948e9`  
		Last Modified: Wed, 19 Aug 2026 20:10:34 GMT  
		Size: 11.8 MB (11757684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:b25b5cc28aa1037f66d5b907a51782dc4eb61e6eee494f79b0cd8069c962f20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62364b703f0a4c55ecdf1c61d57e941b4617956c4e2120f7548608ddc6f9ced3`

```dockerfile
```

-	Layers:
	-	`sha256:ae0351e293bd8c898bd484e7a4dc0b4ffdaf4a24074d18dfaf30270261454e1f`  
		Last Modified: Wed, 19 Aug 2026 20:10:34 GMT  
		Size: 4.3 MB (4273043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cbe89cadfd5395b1884e52695cb70ca67a83d6fc46524291d51add8e352c5e9`  
		Last Modified: Wed, 19 Aug 2026 20:10:33 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:1719cc86abbc00017a9f86c1241d4d9befd22cc0aa4889fa1960aa0d4fbc43e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73765633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d9299b1b8b9aad0981367a7d6147c522938eaf9b06724f6abe4a669eeae53c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:08:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:08:11 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:08:11 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:08:11 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:11 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:08:11 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:11 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:08:11 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:08:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:08:11 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:08:11 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:08:11 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:10:08 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31674fd3a3f5c9ad23798c4fd7e6f86a66a8e03def5c12a5d57d249cb04d6abc`  
		Last Modified: Wed, 19 Aug 2026 19:08:21 GMT  
		Size: 31.5 MB (31511818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b827b640398e447ec32b2d354725f4502c23d56c45a0855499f068d99476d`  
		Last Modified: Wed, 19 Aug 2026 19:08:20 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef442ecc2c107a186dc3e3986b7f8fca18bbdc944422d015bd446a432d359c1e`  
		Last Modified: Wed, 19 Aug 2026 19:08:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951eed0aab2787d50682aa4f8241d72bd78ebdae56dcfe173e29dee0bb555bd2`  
		Last Modified: Wed, 19 Aug 2026 19:08:20 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ba13a4bd99115e7069f500576d928e15d957d683c28e3d32cbbd55e35a8b58`  
		Last Modified: Wed, 19 Aug 2026 19:08:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6e6b70cc172c80c69e9cfede85136649e5a13dde6501d59b27a4949c2b289d`  
		Last Modified: Wed, 19 Aug 2026 19:08:21 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3d4baf65fb251dccaef839188ff2830a35445c70219d154e3174e0055c2df9`  
		Last Modified: Wed, 19 Aug 2026 20:10:18 GMT  
		Size: 12.1 MB (12105611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:be5a5b1e305c3e1eb0e4b5c0433ad6438e9f0af3378b6e1981821fe32e306456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafcdad734241df67792c057508b571fcc894039c79827cd075043161f202b51`

```dockerfile
```

-	Layers:
	-	`sha256:bdb75db05d27b24de73d7a3525adca4c858698ac817a7b18fca5e373185a5619`  
		Last Modified: Wed, 19 Aug 2026 20:10:18 GMT  
		Size: 4.2 MB (4247763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:989c236c308c7eb8d063af3ff929d38caaefb5dc3168b7526b76a0fe41739861`  
		Last Modified: Wed, 19 Aug 2026 20:10:17 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; 386

```console
$ docker pull nginx@sha256:d02d635b7a58d62983e9608199bfeb3111fbf2c76ba4d46c3ce3ffa01a18c1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78957096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5af9a2c16cef708e4b33dcd202d51ae560412b0f5f8f1075fe56b83441baf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:14:43 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:14:43 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:14:43 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:14:43 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:14:43 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:14:43 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:14:43 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:14:43 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:14:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:14:43 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:14:43 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:14:43 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:11:20 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af00fc35e26757a0402b1bfdfdafe4549e797d8c06a49a3a373e90a62e0007f9`  
		Last Modified: Wed, 19 Aug 2026 19:14:53 GMT  
		Size: 35.5 MB (35471975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed846a9c8385cbc19c87423e392ada95eac975dc04067bdf4302b5f4d2990493`  
		Last Modified: Wed, 19 Aug 2026 19:14:52 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1424730cf00fa7d0360eaec2299d303bfde2d46ad4925a7dd6461e20f777916`  
		Last Modified: Wed, 19 Aug 2026 19:14:52 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f7ddb763088130da869e991b07aed942427a96a69205c7f0f704db83e79f8`  
		Last Modified: Wed, 19 Aug 2026 19:14:52 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1977db64408b36210ef549a8870aae1f0202aa9144e43d87d15fc221f7fafe4f`  
		Last Modified: Wed, 19 Aug 2026 19:14:53 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8818bddbf7625299edca5e59bd39ce64f04b8fe13a669ab637a114786424a28`  
		Last Modified: Wed, 19 Aug 2026 19:14:53 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268aeaf23f36ea52fd9f7bd6735013aedc1b228a588fb325baf8f641ab313f43`  
		Last Modified: Wed, 19 Aug 2026 20:11:30 GMT  
		Size: 12.2 MB (12184238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:48cb864c2e6976cbbc9e690892dc01e7695f9b111ffa86034512b12cb2543fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4292875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304812839ece2d040ab772d7ccf38bceda2743f852f2952b4b31a4d7f2cce996`

```dockerfile
```

-	Layers:
	-	`sha256:db4cdd5ae61ea9bafb6855bf8baac828be733cd7f373fbc4b9c7fa76d14604e4`  
		Last Modified: Wed, 19 Aug 2026 20:11:30 GMT  
		Size: 4.3 MB (4268479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50b98f6ab21864700fddc173cca730ad0459c35539b6d966e00cabded0ecc04e`  
		Last Modified: Wed, 19 Aug 2026 20:11:29 GMT  
		Size: 24.4 KB (24396 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:b79f7e8bbecb80a18d232fa47ecbbea12a6e7100022de1793931dcd3aab1f016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83763339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d59ba7d892de85e736d5f76507cef8f4468e5fe3f745419c31bf8950d66e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 21:13:34 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 21:13:34 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 21:13:34 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 21:13:34 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 21:13:34 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 21:13:34 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 21:13:34 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 21:13:34 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 21:13:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 21:13:34 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 21:13:34 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 21:13:34 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 23:34:12 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8bdf146af67379ddd1e5e73366a9ba3101eebe6bc86d6095c7f77c0c6ee629`  
		Last Modified: Wed, 19 Aug 2026 21:13:56 GMT  
		Size: 37.3 MB (37255096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370cd727599fa0a68697955029427f6b111d60f216b25f6cdbe84f56c6cb6b03`  
		Last Modified: Wed, 19 Aug 2026 21:00:23 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c3ac0b9d4b7d1e0519a861e2ef4cc2b397208b10ff3aa8d0367c277d89b205`  
		Last Modified: Wed, 19 Aug 2026 21:13:54 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b8ef914140feef284aef2c6397398bb4ae3ad3945da0b91d7131db32bad327`  
		Last Modified: Wed, 19 Aug 2026 21:13:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b36c050433dc628dd5c620298684e8b6a8f5a854b29b4496b770e279ea4557a`  
		Last Modified: Wed, 19 Aug 2026 21:13:55 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9ada5ca8e19300e3e699041b457980b41b6ab38e0f4d455960e40563fbdfbc`  
		Last Modified: Wed, 19 Aug 2026 21:13:56 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ca5ad04aa6abbb4cd5135122c518dbac190fa14edd76ec09cfc32a6d997501`  
		Last Modified: Wed, 19 Aug 2026 23:34:42 GMT  
		Size: 12.9 MB (12902296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:08f4b51f198f26078f8ecaec43fe2533d94c7fdf09181d2aeffab79edf189658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336352d8ff750f687b85ace92852fb642e29f3d96354b3df03c75939ae236752`

```dockerfile
```

-	Layers:
	-	`sha256:ecaff6b72957d9c08866e966cecc1efcbc403a5815d39e318ea4a4b304aa9bb3`  
		Last Modified: Wed, 19 Aug 2026 23:34:42 GMT  
		Size: 4.3 MB (4279699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3776689db2fbcabf42bd959968589094bfb0708d21b9035722c0cddb1dbab441`  
		Last Modified: Wed, 19 Aug 2026 23:34:42 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; riscv64

```console
$ docker pull nginx@sha256:3adc047f0df797c2dafba8241645c15ff464a6f3d683f1d75fbd39ec9b091694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73247732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220b4fd5a86651904bfb2d86055cf509ef538a47dacc0421b8dd3f2dbe666dfc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Sat, 22 Aug 2026 21:04:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Sat, 22 Aug 2026 21:04:11 GMT
ENV NGINX_VERSION=1.31.4
# Sat, 22 Aug 2026 21:04:11 GMT
ENV NJS_VERSION=1.0.0
# Sat, 22 Aug 2026 21:04:11 GMT
ENV NJS_RELEASE=1~trixie
# Sat, 22 Aug 2026 21:04:11 GMT
ENV ACME_VERSION=0.4.1
# Sat, 22 Aug 2026 21:04:11 GMT
ENV PKG_RELEASE=1~trixie
# Sat, 22 Aug 2026 21:04:11 GMT
ENV DYNPKG_RELEASE=1~trixie
# Sat, 22 Aug 2026 21:04:11 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Sat, 22 Aug 2026 21:04:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Sat, 22 Aug 2026 21:04:11 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Sat, 22 Aug 2026 21:04:12 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Sat, 22 Aug 2026 21:04:12 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Sat, 22 Aug 2026 21:04:12 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Sat, 22 Aug 2026 21:04:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Aug 2026 21:04:12 GMT
EXPOSE map[80/tcp:{}]
# Sat, 22 Aug 2026 21:04:12 GMT
STOPSIGNAL SIGQUIT
# Sat, 22 Aug 2026 21:04:12 GMT
CMD ["nginx" "-g" "daemon off;"]
# Mon, 24 Aug 2026 17:50:53 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad692bcbbdc31c48506d0d8723fd079b62572a5e1bc6cb0f536c51ccf9f64ab`  
		Last Modified: Sat, 22 Aug 2026 21:05:44 GMT  
		Size: 32.9 MB (32850275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9a8bfc16dd5f0a960c1cc0e021534acada6d59819dba9414c9f8c3f501dcb6`  
		Last Modified: Sat, 22 Aug 2026 21:05:39 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11aa8dbd276a16d9cbb7e4cffe730956dc5e6e85053db2db833a677ff2c02c7`  
		Last Modified: Sat, 22 Aug 2026 21:05:39 GMT  
		Size: 959.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7dfd1a455ef4cfff95427983327fb78a5f828a3ae784e3dfd1f005d9d4e57a`  
		Last Modified: Sat, 22 Aug 2026 21:05:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6cc4a4f103bbaebd209fed10ebb9f78548b2efa7a5ec138731216b6010d4a5`  
		Last Modified: Sat, 22 Aug 2026 21:05:40 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483d11fc5c30a72aa621f7afea56a8666689e4895489b7ed5ba2ba954c4bf2b2`  
		Last Modified: Sat, 22 Aug 2026 21:05:40 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e685851e0fc682326a5a1999d5a6309ca0a399e6a93560d8551620be999cd`  
		Last Modified: Mon, 24 Aug 2026 17:52:34 GMT  
		Size: 12.1 MB (12114733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:155598e8401dea80803a2d3be4430ecbd21de40f6ed6b921aaa4403c9e39bcdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4288437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec060ca2317a0a3b2cbb8f5493896919c2d048ed292d2afa33e268bcc7d02db8`

```dockerfile
```

-	Layers:
	-	`sha256:9e81527db8d797cb54e649a5aaf9da8072e59f53995bbb184462ef64f78a72a2`  
		Last Modified: Mon, 24 Aug 2026 17:52:32 GMT  
		Size: 4.3 MB (4263899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27aa20238e4de0ae220a8ef5d9c9c4bb87463d8e22517f4ef4f4e56452ee68e`  
		Last Modified: Mon, 24 Aug 2026 17:52:31 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:perl` - linux; s390x

```console
$ docker pull nginx@sha256:8c0e5a98eb4829046814b5127a696f87d5132a6cf4020ba61659a715604e9f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76913515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97175a6c6186b21bb6f1413263858abaaf2f86bc32dc05474f8a30c89af9ec0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 19:21:10 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 19 Aug 2026 19:21:10 GMT
ENV NGINX_VERSION=1.31.4
# Wed, 19 Aug 2026 19:21:10 GMT
ENV NJS_VERSION=1.0.0
# Wed, 19 Aug 2026 19:21:10 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:21:10 GMT
ENV ACME_VERSION=0.4.1
# Wed, 19 Aug 2026 19:21:10 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:21:10 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 19 Aug 2026 19:21:10 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 19 Aug 2026 19:21:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:21:10 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 19:21:10 GMT
STOPSIGNAL SIGQUIT
# Wed, 19 Aug 2026 19:21:10 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 19 Aug 2026 20:10:35 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c042b373346567e3906824ff151b98a319e8c6cde2f140acef8817287285f67a`  
		Last Modified: Wed, 19 Aug 2026 19:21:26 GMT  
		Size: 33.9 MB (33872496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7797589e9c8fa5b8ae775f1e6dad510e9053963ff5a6865b5fedd2c3d4d4d6`  
		Last Modified: Wed, 19 Aug 2026 19:21:25 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ccd45734adda32ba9ff866deb2f8ca33afef70bcba5fd20cd098fbf4d902f`  
		Last Modified: Wed, 19 Aug 2026 19:21:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f79f64fcaad7a2c28afcb15280c79dd67ef918ab9e1519ee052c4d55a11efd0`  
		Last Modified: Wed, 19 Aug 2026 19:21:25 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16abfc9460fad883ab5ca2d0560344550e6db46204133c41b36f58b3897805e8`  
		Last Modified: Wed, 19 Aug 2026 19:21:26 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f07882a2ac0cdd5fc7bd6379ad72845e5d03d693f014c3736794bce99d1af8`  
		Last Modified: Wed, 19 Aug 2026 19:21:27 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e5a25e8166240325c363057d5a6eb1246467f9de24e9d783246bbe3af2f4ed`  
		Last Modified: Wed, 19 Aug 2026 20:10:53 GMT  
		Size: 13.2 MB (13189831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:perl` - unknown; unknown

```console
$ docker pull nginx@sha256:e12a253d63df1144c695c89defc38fb43787436a4abc3972e12ce675fb79b64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ae6f7feda99178f322a190e2db3f1746641f74bd4fbe5fe364f7a3e7dcb75d`

```dockerfile
```

-	Layers:
	-	`sha256:1a09fdcfcff9c4fc669feb94f5e4d50324d48880a213e3215c93f7c78ff545d4`  
		Last Modified: Wed, 19 Aug 2026 20:10:52 GMT  
		Size: 4.2 MB (4182305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bdf6d00896f62fb22e19981261462e22785e6d3e4caf7539589fa4aee9670c6`  
		Last Modified: Wed, 19 Aug 2026 20:10:51 GMT  
		Size: 24.5 KB (24457 bytes)  
		MIME: application/vnd.in-toto+json
