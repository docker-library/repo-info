## `nginx:mainline-perl`

```console
$ docker pull nginx@sha256:21ecf766a44e6eeb0e6249bfcd463feb6fe260f8728b51b551f9ee52b2bc2bee
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

### `nginx:mainline-perl` - linux; amd64

```console
$ docker pull nginx@sha256:8451f239ab5a5d54f84eab22627abc0c4dd37125228ad0127f639f1535bc831d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76072090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464fc4003b5f542a25bcca2152c6bfea34b1e12cc842464af310518ce72ed5db`
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
# Thu, 05 Nov 2026 08:23:23 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:dd4b1cd8811aed3891930bd8a9ded527940608d8bba2a5714ffd185d4a0ff5a0`  
		Last Modified: Thu, 05 Nov 2026 08:23:33 GMT  
		Size: 12.2 MB (12159837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:56d4ed89bd90223bbe240b44e6157cd466fd2efc1c8aec55b5a6f5559bddcf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ecbda6c7ae8829e583704c21b91b14ca6b14fca8ec68016bbbbc3326d12290`

```dockerfile
```

-	Layers:
	-	`sha256:665c05e82a9572428832f519e7eccf8612dca91a41a929e5e34cdf287bfb5144`  
		Last Modified: Thu, 05 Nov 2026 08:23:32 GMT  
		Size: 4.3 MB (4252426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaf9f28f4ad321545bee22994470e58fcb3bf2c30a47164821eaba1d60dfc175`  
		Last Modified: Thu, 05 Nov 2026 08:23:32 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; arm variant v5

```console
$ docker pull nginx@sha256:7abe45340a0396c8fd96a3d94a2ea9383d269a17a5b150392a876680c8a6a82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66845078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c2c59171038795e3fc05920da5961eb21dcd093d9b48e3308e27aac2d048ec`
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
# Thu, 05 Nov 2026 08:58:46 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:cb34838d9ff920bc8c5ae5b5cea6afda35a29eaafb71e4f1e17c250babca1b73`  
		Last Modified: Thu, 05 Nov 2026 08:58:56 GMT  
		Size: 12.0 MB (11951694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:d857180c9f6a542129e664c6370b9976db607c5f00d55eac1f605543b2aa60c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174f10da18ca59e8cf1080394a7c05a8f053f2f3f09be8f158bd662d6b31300e`

```dockerfile
```

-	Layers:
	-	`sha256:25087041861906827a93240ea38c64f9fef6456641addb85970d43ac414a3762`  
		Last Modified: Thu, 05 Nov 2026 08:58:55 GMT  
		Size: 4.3 MB (4284506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29afabb27842b2dbbe22fa22a01775a6e89bdc23cc6a8c915eb855a4c087a006`  
		Last Modified: Thu, 05 Nov 2026 08:58:55 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:e8b16162ce529251ba470cbef7769823268a6ac322affe2210d87eadb375692e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64978824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551e3525730cb91d53c679462fbf8a69f1a18a5150dd96715c1ca13f01ea6666`
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
# Thu, 05 Nov 2026 09:12:27 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:7f7eb06f3136abbb00da901cd3163a48143b11872e55b0110f21f9cbf5a43aa4`  
		Last Modified: Thu, 05 Nov 2026 09:12:37 GMT  
		Size: 11.8 MB (11762479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:e05f4200aafaa74f4a57186203b07a4d2ff94cf53dc6456014c3a7c9afa2179c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8e29ae533d42b97dd480753005088fcfbadf6eb1906e6ad911bd4e3c736ba6`

```dockerfile
```

-	Layers:
	-	`sha256:a820b06811af52020de91845b3692e77016fcd06985ce14204981faea88b7d34`  
		Last Modified: Thu, 05 Nov 2026 09:12:37 GMT  
		Size: 4.3 MB (4284029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed6d3b58fc6163f854472405f280c655c4533491a908e467320d3d9569f63ccc`  
		Last Modified: Thu, 05 Nov 2026 09:12:36 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:8ea2d1136122f9f13b59706437b6d44c7b9b59fde4362518b38cebfab103b9fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74333833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75a986eb14dcc61232e2d4ce2c38cc8faafb0795da44d494457ccff876a9035`
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
# Thu, 05 Nov 2026 08:24:11 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:84af0529843ed06540e91beedfe24e127bd1d9e3ec2dc0cad25b4082f4752b47`  
		Last Modified: Thu, 05 Nov 2026 08:24:21 GMT  
		Size: 12.1 MB (12114837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:ad2409296026cdd70d1956f3bc46f93cfdc41bb5b9a9e8e4d73ac15e76f62a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4283579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de12ba960389396001b4323046c57637cd6394f54bba5f270e40918c89f97b9d`

```dockerfile
```

-	Layers:
	-	`sha256:b6bc851ab3b48c176bd15cf026a40f605cb76acd85aee452706bb7fb9cda9dbf`  
		Last Modified: Thu, 05 Nov 2026 08:24:21 GMT  
		Size: 4.3 MB (4258945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688174a39f40b7f05babe98758b47e896b5256b4884e83ff13d89a33994e67b0`  
		Last Modified: Thu, 05 Nov 2026 08:24:21 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; 386

```console
$ docker pull nginx@sha256:5ad924a817015dcf65de67eaa07f52a1ae5cec3027cc501b2a937f8415e0eee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76631731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abca9a8ceb61fc2f9d74e525913d61822a47815882220206eb3f78fc226e1b3`
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
# Thu, 05 Nov 2026 08:17:12 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:b5ab5e0ca219810a8ba94eedcae43748aecc8fe54f78f5f6e144623284dfb149`  
		Last Modified: Thu, 05 Nov 2026 08:17:22 GMT  
		Size: 12.2 MB (12182665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:f772e8f3b4058557beaa3c4f2edbd63b080a103bfd3d59b90960ec9e83aa5081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e1deafd9b48df7ddf6614707d4356830ffd291c0d3499cc64bc2e7c781c9dd`

```dockerfile
```

-	Layers:
	-	`sha256:c67fd5cf28cf161080044008a3d774bf4689b453cdff30d48b5fd1bd351b303e`  
		Last Modified: Thu, 05 Nov 2026 08:17:22 GMT  
		Size: 4.3 MB (4279460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7261f23d3342205fbdb3b93528e42fe1b94e7e725a96177e4e87b650fc51b87`  
		Last Modified: Thu, 05 Nov 2026 08:17:21 GMT  
		Size: 24.4 KB (24396 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:a821e8af62bd4fe5904b7f324839e8b00123c088238efe806c1cb9691de8f2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81162760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8847d8b5e32fb569e2e542ef9e1c62851e83e89caf2253c6ca32f84a5fc8df99`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:02:22 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 28 Oct 2026 02:02:22 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 28 Oct 2026 02:02:22 GMT
ENV NJS_VERSION=1.0.2
# Wed, 28 Oct 2026 02:02:22 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 28 Oct 2026 02:02:22 GMT
ENV ACME_VERSION=0.4.1
# Wed, 28 Oct 2026 02:02:22 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 28 Oct 2026 02:02:22 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 28 Oct 2026 02:02:22 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 28 Oct 2026 02:02:23 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 02:02:25 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 28 Oct 2026 02:02:25 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 28 Oct 2026 02:02:26 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 28 Oct 2026 02:02:28 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 28 Oct 2026 02:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:02:28 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 02:02:28 GMT
STOPSIGNAL SIGQUIT
# Wed, 28 Oct 2026 02:02:28 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 28 Oct 2026 11:18:24 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbbf628055adab2456237cbb7dd942fc54b4d10c67abfa625540b3a42ea5922`  
		Last Modified: Wed, 28 Oct 2026 02:02:50 GMT  
		Size: 34.6 MB (34570303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec7f797d0855f9e7fc66a397cd091e671f2a805653d5fc34e9795762229a603`  
		Last Modified: Wed, 28 Oct 2026 02:02:49 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f271fabb02d386eba55b85cfefca9e60c61239bdb8dd3a72b3771acd62465e2f`  
		Last Modified: Wed, 28 Oct 2026 02:02:49 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71f3e335d8bdd5d9ff1382cbd971d9b62d14c688bcf70aa52366947908afb9e`  
		Last Modified: Wed, 28 Oct 2026 02:02:49 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a30351435e85f21c34fe8d6d466c4dde8d91ec6abc0e77a3c2bd426e94ff867`  
		Last Modified: Wed, 28 Oct 2026 02:02:50 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae181837df1002c93c7832eb71e57361dee903ff334eaf707548ea42a5a4c3e`  
		Last Modified: Wed, 28 Oct 2026 02:02:50 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50c44d4ef1dab4486893dc719f07cd78b291e1bcc7c9b356a392a9f94a7dbf7`  
		Last Modified: Wed, 28 Oct 2026 11:18:55 GMT  
		Size: 12.9 MB (12921581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:fc5d7e52f8b72a63e64bbef1f87b757108631e1e2b5cf698357d7aeb8ea7203d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cdee3f8dbd6142f6668d281fa0a3d731837ad985d9d3594078255dad89a69`

```dockerfile
```

-	Layers:
	-	`sha256:5b26caa054965cd56d37709af0f4968b4decc244e2c3d013fe2a639249d68e3f`  
		Last Modified: Wed, 28 Oct 2026 11:18:55 GMT  
		Size: 4.3 MB (4290691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12f3b96590555869f1db5bdb0c2072c897305560eff654352625a5746c8c0635`  
		Last Modified: Wed, 28 Oct 2026 11:18:54 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-perl` - linux; riscv64

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

### `nginx:mainline-perl` - unknown; unknown

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

### `nginx:mainline-perl` - linux; s390x

```console
$ docker pull nginx@sha256:4f58ab1a9d10e7a978e1d54f887a1ce4e934d91b571df787a70037ecc659c05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74834183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea54e673961132f4c6297b42f9c7d86dd5de7f07f8b605c887e2938f216a9f1`
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
# Thu, 05 Nov 2026 08:42:04 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
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
	-	`sha256:61c657577b5578f8ed5b7b0c20dc68ca4dd78f65318ea6a3d58ab842f93a8d42`  
		Last Modified: Thu, 05 Nov 2026 08:42:18 GMT  
		Size: 13.2 MB (13192489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:f50d6ba16570e624fe1df21a512ca79b0a2d5520f2dc1881705091aa50023e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4217745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9964a412a4eb99bfa17d68b6d0f96929cd8c754bec5293101e87c09f8980500d`

```dockerfile
```

-	Layers:
	-	`sha256:0124b658733176147b2cfe5911161b1fbd8abe11d499e6f815f75d831baa6cbe`  
		Last Modified: Thu, 05 Nov 2026 08:42:18 GMT  
		Size: 4.2 MB (4193287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30375b4890511d084836780997fac072f9cc2a931de1b6f417987b24e2141000`  
		Last Modified: Thu, 05 Nov 2026 08:42:18 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json
