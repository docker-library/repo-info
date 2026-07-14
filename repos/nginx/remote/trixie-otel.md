## `nginx:trixie-otel`

```console
$ docker pull nginx@sha256:dca22eefad82aa78d7017e23a8e271531dd42e5b830c72d9864066c6bcf78ad0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:trixie-otel` - linux; amd64

```console
$ docker pull nginx@sha256:a2c092eedc8ca395b83aedc40fe835b9884f886a4eddfd056b2bb19abfe63634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66822361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da3f5386f98b415761ebd408062595a1ac4354b9ba927d3a97e23988999d3d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:21:58 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 24 Jun 2026 01:21:58 GMT
ENV NGINX_VERSION=1.31.2
# Wed, 24 Jun 2026 01:21:58 GMT
ENV NJS_VERSION=0.9.9
# Wed, 24 Jun 2026 01:21:58 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:21:58 GMT
ENV ACME_VERSION=0.4.1
# Wed, 24 Jun 2026 01:21:58 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:21:58 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:21:58 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="4bba39eed68bcc887d119ec5079e9824c0a0e4602e6443bee1df396eb9181437eae481e83d533475951e39675d6e1ff54901bdd208262c4b34e74f5c7984e82c *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:21:58 GMT
EXPOSE map[80/tcp:{}]
# Wed, 24 Jun 2026 01:21:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 24 Jun 2026 01:21:58 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 24 Jun 2026 02:26:03 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 24 Jun 2026 02:26:03 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="4bba39eed68bcc887d119ec5079e9824c0a0e4602e6443bee1df396eb9181437eae481e83d533475951e39675d6e1ff54901bdd208262c4b34e74f5c7984e82c *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df68ee7e7a00fb761abece5f9fc7184d02b9cfd37cb24cf01e6afa91734a3b1c`  
		Last Modified: Wed, 24 Jun 2026 01:22:08 GMT  
		Size: 33.3 MB (33320993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b30016634d50c4b4867ec44713ef09137ddf5ecea056ba8d13e092c3479471c`  
		Last Modified: Wed, 24 Jun 2026 01:22:07 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf093e7a04f53b16d65757d4fba7a9174e5332a74f9aacf463b40f16899ed0f`  
		Last Modified: Wed, 24 Jun 2026 01:22:07 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9307c9ecd85b9e13dad05ec99ec40d3abb9cd297a4d272e293810514755f6b`  
		Last Modified: Wed, 24 Jun 2026 01:22:07 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb6fd84b2a0c1f97cc70a8898cd1a9436e27c469f9c7d4dd1a8e4cb9123009d`  
		Last Modified: Wed, 24 Jun 2026 01:22:08 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1645c1e06f466d45c9286f69adcebaca84e17d0ec6de5ff52542822f41dccd44`  
		Last Modified: Wed, 24 Jun 2026 01:22:08 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd82a0aa0c87050bcc6fca6155495b7f782d382929e61d0c8732c8bb99518bf4`  
		Last Modified: Wed, 24 Jun 2026 02:26:11 GMT  
		Size: 3.7 MB (3711352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:757c85cb6a0bffac35a9add3ce85e7a15ffcb9d4dd629f213ea2285e6c8ba314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2853725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91338b9e224c717db4ccd683d4a8b93574047a890e42a1e1d91a665be8318c71`

```dockerfile
```

-	Layers:
	-	`sha256:3afdaeecb7d825089aadc69bcfb61763e9d7c58c4ee81970e324de972d49aa9b`  
		Last Modified: Wed, 24 Jun 2026 02:26:11 GMT  
		Size: 2.8 MB (2829170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7e55b3f18ef4ec6f7ac3d1826194071e5a4e2d5737aaa6e92c76be507a2b48f`  
		Last Modified: Wed, 24 Jun 2026 02:26:11 GMT  
		Size: 24.6 KB (24555 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0f42fb55aae0b20bf9cf61cd0feca810643d9f7ad678fe7234f729a5dda98dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64881907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866b23467e26752560617ef6bb8a4cc44e98ad8f67ab9ba00e0f1e13710b5def`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 14 Jul 2026 01:22:39 GMT
ENV NGINX_VERSION=1.31.2
# Tue, 14 Jul 2026 01:22:39 GMT
ENV NJS_VERSION=0.9.9
# Tue, 14 Jul 2026 01:22:39 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:39 GMT
ENV ACME_VERSION=0.4.1
# Tue, 14 Jul 2026 01:22:39 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:39 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:39 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="4bba39eed68bcc887d119ec5079e9824c0a0e4602e6443bee1df396eb9181437eae481e83d533475951e39675d6e1ff54901bdd208262c4b34e74f5c7984e82c *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 14 Jul 2026 01:22:39 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:39 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:40 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:40 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:22:40 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:22:40 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:22:40 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 14 Jul 2026 02:33:56 GMT
ENV OTEL_VERSION=0.1.2
# Tue, 14 Jul 2026 02:33:56 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="4bba39eed68bcc887d119ec5079e9824c0a0e4602e6443bee1df396eb9181437eae481e83d533475951e39675d6e1ff54901bdd208262c4b34e74f5c7984e82c *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46991aa75e8d4ae87b6b8af922c47856d8e74fd7c206533f4971b013cc753fb3`  
		Last Modified: Tue, 14 Jul 2026 01:22:49 GMT  
		Size: 31.3 MB (31262748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce446f9168ce52d9487092d8c4dc86b7a054ab06b16cfd1e380a92d7e0dcfd5`  
		Last Modified: Tue, 14 Jul 2026 01:22:48 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92caf8f5f6300c8aada37f8dc7f36577b68a3feafcf53952cdd5310579d8b27`  
		Last Modified: Tue, 14 Jul 2026 01:22:48 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9777e4844c03f7839373786fdc75423e8da34048cb9615ae502ca66089d67d`  
		Last Modified: Tue, 14 Jul 2026 01:22:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff907a768d2683a930760498d055be4335778cd73400cdab28b1361e927ef530`  
		Last Modified: Tue, 14 Jul 2026 01:22:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d731777dffd1ffce618b0aec1d70ffb68b09eee4a7a4745fadd82ab08aa8436`  
		Last Modified: Tue, 14 Jul 2026 01:22:50 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29b3475504b63766ecc65df60fcc9a0e1aa1ebd4ef1512cd9e010631c83542b`  
		Last Modified: Tue, 14 Jul 2026 02:34:04 GMT  
		Size: 3.5 MB (3470862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:70bb9e6f4e9225ca62cec5963d3440185de12c667a0e493c247b3476cd0143bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2854520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8162313691263e4b7aa3b2c0d2046436480258180629c1bdc26ed0f80edfd1d`

```dockerfile
```

-	Layers:
	-	`sha256:2935b22d7ec74dd3782a3bacf054ed7f3c339516b3d16f6b0c3f077fa3a6dd28`  
		Last Modified: Tue, 14 Jul 2026 02:34:04 GMT  
		Size: 2.8 MB (2829789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b285149d3fe52b745617ad94a0f04eaec472f4b2c2169f3dce881700c38346`  
		Last Modified: Tue, 14 Jul 2026 02:34:04 GMT  
		Size: 24.7 KB (24731 bytes)  
		MIME: application/vnd.in-toto+json
