## `nginx:1-trixie-perl`

```console
$ docker pull nginx@sha256:3586847dfb3f7368f59306a91dc7bd9c4a3436c40ff7a9f370ccf63da4438396
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

### `nginx:1-trixie-perl` - linux; amd64

```console
$ docker pull nginx@sha256:f731706a86fcb35e1a56cb390ef504966a1eac166a4a27204e7122cc181511fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (76042051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae42d4cb7857e2bc271485b19b71cef8b43a00f16f9ee9a9753cf40b0bdc8282`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:17:13 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:17:13 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:17:13 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:17:13 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:13 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:17:13 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:13 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:13 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:17:14 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:17:14 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:17:14 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 22:37:23 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f3a4724daf7ef265e822b9e7bc813f81fa874021416f85600b1a50f8f31668`  
		Last Modified: Wed, 21 Oct 2026 22:17:24 GMT  
		Size: 34.0 MB (34034143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2c3eb3312e060544ab843916778df87bdfd1ccc2f900f4c7b5b6621cafb969`  
		Last Modified: Wed, 21 Oct 2026 22:17:23 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd00b11a22aa6edf682f44c616708dccfcc2513833ae3332fa592a274c8d0b46`  
		Last Modified: Wed, 21 Oct 2026 22:17:23 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24bf03b6a474380c0028556fb90b12481507ce72a8eb2c47bf7cb5821ff67ed0`  
		Last Modified: Wed, 21 Oct 2026 22:17:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856bfc2a772ef056c042c1d609d713c6680e83575dccfce4ac133a74ada04e2`  
		Last Modified: Wed, 21 Oct 2026 22:17:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8334177aa35bb8b1c2047c4160eb0fa0326f21dfc924d1d6968a85ccf283ac57`  
		Last Modified: Wed, 21 Oct 2026 22:17:25 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f177d00eb50041f9b6d65c13b3145b1e76a18431eef95b09e01a5ee4fbb1392c`  
		Last Modified: Wed, 21 Oct 2026 22:37:32 GMT  
		Size: 12.2 MB (12159725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:412dc421278202a95e64ed115d56f6f43550d0e596523455a5c965ccaa0f56a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5e713a06b22a452417c36a46fec132bbb9ac6cd90f86472be63e43854c6985`

```dockerfile
```

-	Layers:
	-	`sha256:af03f35b21e00d55b65233c1296cc280a75e1f64b387494daf846a101c796567`  
		Last Modified: Wed, 21 Oct 2026 22:37:32 GMT  
		Size: 4.3 MB (4252398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c3b2ae2bd6e3d0e56b9b27b937a5ee3aa0ef368e3ad8b321cc86f27f9e76ed`  
		Last Modified: Wed, 21 Oct 2026 22:37:32 GMT  
		Size: 24.5 KB (24457 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; arm variant v5

```console
$ docker pull nginx@sha256:90a2e2c70999f1e4a00196591d38edd85ad51c228fa51ab9dc5450d656199f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66820269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9291dce8241824519a136103ea4bd5b7b0ba7cd72bdac78e015662998659a5f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:41:02 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:41:02 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:41:02 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:41:02 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:02 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:41:02 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:02 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:02 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:41:02 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:03 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:03 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:03 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:41:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:41:03 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:41:03 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 23:11:45 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb372e6dcb89a2f66dff3d849c28e841c7fdcae608466287e784fae3e7cc1a9`  
		Last Modified: Wed, 21 Oct 2026 22:41:13 GMT  
		Size: 26.9 MB (26855930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1ad806ac194b54d2a6269dcf8ff73bea60748a16a6da52cecef3e528a7fa3f`  
		Last Modified: Wed, 21 Oct 2026 22:41:12 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1e2b90c4319875833b4c8053be372dcf889367897599a99ab8effc19b5b1e6`  
		Last Modified: Wed, 21 Oct 2026 22:41:12 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c66b889a612d7882b17faea9ebce3b4b6f040c8dfe7a0253ec04c3d144173c`  
		Last Modified: Wed, 21 Oct 2026 22:41:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd7ecab2c1ab43b752d160e562f76d17d93b1367f376a83e0a48057cf723379`  
		Last Modified: Wed, 21 Oct 2026 22:41:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33292fdd74147331cd9ff7fd4b825537fd5e31b7ddcf390a97fd46d7f9aca031`  
		Last Modified: Wed, 21 Oct 2026 22:41:13 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d464192c73e547f00f866b834624e6550dc88908ad940adaf223000dacb15b`  
		Last Modified: Wed, 21 Oct 2026 23:11:54 GMT  
		Size: 12.0 MB (11951932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:5e0e958cbb5850b6abcd6b779f0d77d87ce6e33c3d6c504e541c12f270869da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3386bda25970254992e920e29cc5145c3c309aaba4d14ba1b9f96bc96da24e`

```dockerfile
```

-	Layers:
	-	`sha256:7558cadb44ea1980a7134d93f1134ed337d14a242e34d042a7ad3d627218cbb9`  
		Last Modified: Wed, 21 Oct 2026 23:11:54 GMT  
		Size: 4.3 MB (4284478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfc93063932569cf32f26e93e1f63d5c841746b02f61ad06d13502e6b9e30ad5`  
		Last Modified: Wed, 21 Oct 2026 23:11:54 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:83c6c445b835ccf41c640b3f8b701ea4634478dfbb2c465923bd58c185f06a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64946071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5816cf2f4758b59e0087a8f7330f675266d7a7bb12b684b03ad23df2cad55398`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:22:19 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:22:19 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:22:19 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:22:19 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:22:19 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:22:19 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:22:19 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:22:19 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:22:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:22:19 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:22:19 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:22:19 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 22:53:33 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2765a54f1d00f9fe21b578c6c577404766bc0ef7ed4b1f9fd6418cdf14f54c`  
		Last Modified: Wed, 21 Oct 2026 22:22:28 GMT  
		Size: 26.9 MB (26920472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b74533d991b9b785c3c241157f69cb0c16e13f40163e782e555d32cf5055bc`  
		Last Modified: Wed, 21 Oct 2026 22:22:27 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec2bed765e418afc51f862600a2ad6adc78b3b6a3eeb65a0c4f10dcd914f79a`  
		Last Modified: Wed, 21 Oct 2026 22:22:27 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b08bf584d42dc355f726d0d165b6331335981dee2ecbb9066033778afdc040`  
		Last Modified: Wed, 21 Oct 2026 22:22:27 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8e6928be637c652b1eaad16e79c80de1494fb79058ae12f1c68ad25ec653d8`  
		Last Modified: Wed, 21 Oct 2026 22:22:28 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a2f77e27151515ee55e2c7d7632c4a7b5fd4e622ab5ef4307164c21e2d5c90`  
		Last Modified: Wed, 21 Oct 2026 22:22:28 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8328ef60fbe42e15cc01a599ccf330016420107aa9005cf3c1c06f21932300`  
		Last Modified: Wed, 21 Oct 2026 22:53:42 GMT  
		Size: 11.8 MB (11762586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:b478f3aa0d5a48c1cbe45cac89d3494bb761ffc8749ab2ab0b407edd3db07f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e82f70193f98cb2fef7df0c4810677bf6e122d92c1a16065d9ea455d309a3f`

```dockerfile
```

-	Layers:
	-	`sha256:68a972fe85d6b183c20db1ce7624204759127d0107e7d92c0b1eff721cad519c`  
		Last Modified: Wed, 21 Oct 2026 22:53:41 GMT  
		Size: 4.3 MB (4284001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77fe7c9ddfe1075aef9468c9bff87e31f233c5861f951f3c70aa0b5479dc0574`  
		Last Modified: Wed, 21 Oct 2026 22:53:41 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:5419b4434b4facab84807574bc5ec997e182c9e5d0638fd3c8b90837b3fbf990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74299669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0df7d0169d23f6e4bd62aacdec8add6bb922545bb6562b4297c85920179432`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:17:21 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:17:21 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:17:21 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:17:21 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:21 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:17:21 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:21 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:17:21 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:17:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:17:21 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:17:21 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:17:21 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 22:51:54 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19a8811bc420ff0c978f59b6be6883bf288449b03b4cfd3b8bd68ed9cafecbc`  
		Last Modified: Wed, 21 Oct 2026 22:17:32 GMT  
		Size: 32.0 MB (31979894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eabdac2814883bb812982729bbb1125d0286d47e5af12a07fb867ef71502ee9`  
		Last Modified: Wed, 21 Oct 2026 22:17:31 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5caf4832d59561fcf30ed3d17a4ebf882c50f0b853554557e8c0cdb92f7b0659`  
		Last Modified: Wed, 21 Oct 2026 22:17:31 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1417c3c48a25f225387bc381b17d8e314b5112c3c35fdc920523f4cc0bf71742`  
		Last Modified: Wed, 21 Oct 2026 22:17:31 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aa21f6b6a8139e7a58516488698ee7b6996f393303eee76b344c21f7a25ad2`  
		Last Modified: Wed, 21 Oct 2026 22:17:32 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8b7961f011e0d82bf82cbd7d1c53cd8807dc70d45e9d6915807f7fc8244923`  
		Last Modified: Wed, 21 Oct 2026 22:17:32 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2f784136d75454694796078e42b690b5ac7f50ea8a1f07a8855e3f34de7f91`  
		Last Modified: Wed, 21 Oct 2026 22:52:06 GMT  
		Size: 12.1 MB (12114693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:096657652f54a2fb3dad7ee030941a05fe0ca5ffbeb980347e83a56a4ed3a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4283551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5242a6747df24872d8c818b4422c264db6d17096c28cfe993f24d62243eb1d6`

```dockerfile
```

-	Layers:
	-	`sha256:93a5b21619addfea88625762969b9a3a1ce56f768ba938029c13e2e3f5478817`  
		Last Modified: Wed, 21 Oct 2026 22:52:05 GMT  
		Size: 4.3 MB (4258917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83af870eed2eedb659ddbe0e9fc10a2ca0776f465a1f7c4363240e9596307947`  
		Last Modified: Wed, 21 Oct 2026 22:52:05 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; 386

```console
$ docker pull nginx@sha256:159f22c4a13434bd402cdb32ccc978df96e22df9c99dac2e12a16df1b32ebe52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76589848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7183cf035479efeae5012527ce2b98a6b7c8ac8e9b3e5f146b06f21652412eb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:14:28 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:14:28 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:14:28 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:14:28 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:14:28 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:14:28 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:14:28 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:14:28 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:14:28 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:14:28 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:14:28 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 22:52:00 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e813375d4dc640f3161dfc89bc119cefaa6553a98b4d39384504104cf26e0e`  
		Last Modified: Wed, 21 Oct 2026 22:14:39 GMT  
		Size: 33.0 MB (33048995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1497fd9248286e1ccfec5d8e11829b4ea084a764938617843c8a8aeb729c9f7f`  
		Last Modified: Wed, 21 Oct 2026 22:07:59 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0ba7df738e7b47f3f482a3e92999e4a28efc8a4f1e9a80e78fbcce465378d4`  
		Last Modified: Wed, 21 Oct 2026 22:14:38 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1222ac2ac1b9d9a6755d1b8e9d2f211c3c6c9cde28308798388520a1c976cc27`  
		Last Modified: Wed, 21 Oct 2026 22:14:38 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779ae2313326f1b58511bbd2ebc9c050c48cab8bf7c47e9de8a6cd151675d848`  
		Last Modified: Wed, 21 Oct 2026 22:14:38 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939facf713ade23c71b92d56aeed20960d2a2ac26334530e76d962c068957109`  
		Last Modified: Wed, 21 Oct 2026 22:14:39 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49543b2b4d01f61c6afc5d8c23955b7a61ae343549c01fc6b0c89e660364f0f8`  
		Last Modified: Wed, 21 Oct 2026 22:52:10 GMT  
		Size: 12.2 MB (12182708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:ef28b11c571d1b3f6184cfaf4c279909cd28cc5d73446381154abe6cb2bbde9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c5fe79094aad2b580f535f1fd3c09ddc74841b233a9cffbc3b2cb2a14abf02`

```dockerfile
```

-	Layers:
	-	`sha256:14287e64694964ecc4f98fb398e99e3e97033767ee28bdd098e83b359c713f87`  
		Last Modified: Wed, 21 Oct 2026 22:52:10 GMT  
		Size: 4.3 MB (4279432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae2b353abac62007a20dc2e8af4a27475eb83b395adfbd9aaab55ea71680b17a`  
		Last Modified: Wed, 21 Oct 2026 22:52:10 GMT  
		Size: 24.4 KB (24396 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:4c739ffe00cc87f115a1fd143619a48e3b9e1dca088d186116473d4cea26da79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81120296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a92a63dd528810f021edef85460e7a8f9d77bbcb3ae277f71fb3bcf94444a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 03:02:04 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 22 Oct 2026 03:02:04 GMT
ENV NGINX_VERSION=1.31.8
# Thu, 22 Oct 2026 03:02:04 GMT
ENV NJS_VERSION=1.0.2
# Thu, 22 Oct 2026 03:02:04 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 22 Oct 2026 03:02:04 GMT
ENV ACME_VERSION=0.4.1
# Thu, 22 Oct 2026 03:02:04 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 22 Oct 2026 03:02:04 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 22 Oct 2026 03:02:04 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 22 Oct 2026 03:02:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 03:02:05 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 22 Oct 2026 03:02:06 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 22 Oct 2026 03:02:07 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 22 Oct 2026 03:02:07 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 22 Oct 2026 03:02:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 03:02:07 GMT
EXPOSE map[80/tcp:{}]
# Thu, 22 Oct 2026 03:02:07 GMT
STOPSIGNAL SIGQUIT
# Thu, 22 Oct 2026 03:02:07 GMT
CMD ["nginx" "-g" "daemon off;"]
# Thu, 22 Oct 2026 10:37:38 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5756caf02f3e688e547c6cc72cfe2cda622607c366992df6707c72e16d0165`  
		Last Modified: Thu, 22 Oct 2026 03:02:37 GMT  
		Size: 34.5 MB (34542639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6296c80dec94ddc034a274e27956315c572cb20d34d75f98631604f3488b09`  
		Last Modified: Thu, 22 Oct 2026 03:02:36 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531730a81a0d4574db290b6d1c93fd5b0a43931eea09eb71a1b2265af0b65b9d`  
		Last Modified: Thu, 22 Oct 2026 03:02:36 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa3fc28b263c7c4e2b39e8caa8ba036b047867a694e6556221eb3857dd3d4aa`  
		Last Modified: Thu, 22 Oct 2026 03:02:36 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec9fd901ad6193df2942ae8593eea1729a9f13dc7a46cf67ec4f1d2b658d039`  
		Last Modified: Thu, 22 Oct 2026 03:02:37 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8dc3ecf54666402f66cd6c53b08c04376a82224fbcedccace6efd788fd7355d`  
		Last Modified: Thu, 22 Oct 2026 03:02:37 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17caa7dcb5e2a15e7e96d341169e77023645503665b6810403e89a6b6700cd85`  
		Last Modified: Thu, 22 Oct 2026 10:38:01 GMT  
		Size: 12.9 MB (12921108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:60b76e29222d42a65b14a5380af94db57c61d4f1c00c3a4bc90a9c9e673b3fea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4315200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1797caa63182cd77664fa51018cf72959f8eb37236874fd25bdc1d878df40a6c`

```dockerfile
```

-	Layers:
	-	`sha256:160ac0a79a02f71d1d31e6bcc23032e06e75b2a6c6df400e4d2071220b57a8b7`  
		Last Modified: Thu, 22 Oct 2026 10:38:01 GMT  
		Size: 4.3 MB (4290663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16532112222ffa2c6d8083bf6ef920637489e5cf741770849986afcbb3dc3f4e`  
		Last Modified: Thu, 22 Oct 2026 10:38:01 GMT  
		Size: 24.5 KB (24537 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; riscv64

```console
$ docker pull nginx@sha256:f4014960683d4adb6039198640194d2e5c69c405b3df9371cff9c5c0d835fa4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70851973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44eeecea2365f3969a55237bbf5b8aaabd9feae17429e50ba4c475bf0ff4660`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Sun, 18 Oct 2026 22:00:14 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Sun, 18 Oct 2026 22:00:14 GMT
ENV NGINX_VERSION=1.31.7
# Sun, 18 Oct 2026 22:00:14 GMT
ENV NJS_VERSION=1.0.2
# Sun, 18 Oct 2026 22:00:14 GMT
ENV NJS_RELEASE=1~trixie
# Sun, 18 Oct 2026 22:00:14 GMT
ENV ACME_VERSION=0.4.1
# Sun, 18 Oct 2026 22:00:14 GMT
ENV PKG_RELEASE=1~trixie
# Sun, 18 Oct 2026 22:00:14 GMT
ENV DYNPKG_RELEASE=1~trixie
# Sun, 18 Oct 2026 22:00:14 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Sun, 18 Oct 2026 22:00:14 GMT
COPY docker-entrypoint.sh / # buildkit
# Sun, 18 Oct 2026 22:00:15 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Sun, 18 Oct 2026 22:00:15 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Sun, 18 Oct 2026 22:00:15 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Sun, 18 Oct 2026 22:00:15 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Sun, 18 Oct 2026 22:00:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Oct 2026 22:00:15 GMT
EXPOSE map[80/tcp:{}]
# Sun, 18 Oct 2026 22:00:15 GMT
STOPSIGNAL SIGQUIT
# Sun, 18 Oct 2026 22:00:15 GMT
CMD ["nginx" "-g" "daemon off;"]
# Sun, 18 Oct 2026 22:20:01 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609653dc0d8ed1086e4f192fa01a2cc192ec4fe13e517197a0d39106eec350a6`  
		Last Modified: Sun, 18 Oct 2026 22:02:00 GMT  
		Size: 30.4 MB (30399486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7686afc1ae4c381d113df7c6c51f4ffcbc6dec1375e537d5813bb7d632a3b1a`  
		Last Modified: Sun, 18 Oct 2026 22:01:55 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0741d8282fa73d5042375b1bd86252717b13ccd8e214e0a4aa44be5063dc839`  
		Last Modified: Sun, 18 Oct 2026 22:01:54 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf390c6bc90c9607224ac7d0e91e46bf6fb06b93e4573d37ec4f9bbc62be38de`  
		Last Modified: Sun, 18 Oct 2026 22:01:55 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c97043ba6902fa7609193ecb81466baeca6070c0362fb43171c58a9587ef4c`  
		Last Modified: Sun, 18 Oct 2026 22:01:56 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0773c216fb77f8fb7b6bdf050bffd1b10b76908de839cc914b840b156e5fcabe`  
		Last Modified: Sun, 18 Oct 2026 22:01:56 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a0fd69bdbfbb47fafa56ad28e098eba3ce1b7ac7e6ec2335aa3331259336ef`  
		Last Modified: Sun, 18 Oct 2026 22:21:52 GMT  
		Size: 12.1 MB (12114108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:75c2877ca166a9d26a69577c73ed0503a7bc336b2e0035803a1435147ae07837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5767a84bbfb97df8323dc1ae30fe1d17e0336edaaae5615c38ed56fe204819a9`

```dockerfile
```

-	Layers:
	-	`sha256:8e653ef068bd580f97f2158e4d89ab68ccf47fb527fd34c178aee7e37a0d402d`  
		Last Modified: Sun, 18 Oct 2026 22:21:51 GMT  
		Size: 4.3 MB (4276136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a97aaf284abdca687af09c079675b59dbe40e467b56e9480486faa10a2f1b116`  
		Last Modified: Sun, 18 Oct 2026 22:21:50 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-trixie-perl` - linux; s390x

```console
$ docker pull nginx@sha256:c72e4f47e3cad6ee29ebee2f83070a62064ccbfc4ca642416e25d2e1f26045ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74811811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fba06e15b1ddaf8c0065a020f7741009a4a68564480b873dad09be4b3e2a2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:41:57 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 21 Oct 2026 22:41:57 GMT
ENV NGINX_VERSION=1.31.8
# Wed, 21 Oct 2026 22:41:57 GMT
ENV NJS_VERSION=1.0.2
# Wed, 21 Oct 2026 22:41:57 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:57 GMT
ENV ACME_VERSION=0.4.1
# Wed, 21 Oct 2026 22:41:57 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:57 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 21 Oct 2026 22:41:57 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:57 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:41:57 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:57 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:58 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:58 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 21 Oct 2026 22:41:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:41:58 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:41:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:41:58 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 21 Oct 2026 23:19:46 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e5f00e946092f1e50144db1d26e52d43efb2bc2cbb93b3b5b468aaf78516afab169af9f21d115276c60de8bfc6da1615acc0d092cc99f7b0ed1abb182af56d0d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d1ffc42f1df5ba22483441251362b189985edd141bcc6a00184d6decdbc46b`  
		Last Modified: Wed, 21 Oct 2026 22:42:11 GMT  
		Size: 31.7 MB (31702575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95255ae5e9eceadb0130e2d1211762637e7607281eb040eaa032ec891d07dd35`  
		Last Modified: Wed, 21 Oct 2026 22:42:11 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393982aeb5cacebf1bca73893e1f15bc53bc6e99662d35bb52bf3c0f84907d85`  
		Last Modified: Wed, 21 Oct 2026 22:42:11 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf34f149e49eeac986a0b1117a20e37cfcd82a0f12e2f3724e9fc2510e1f3266`  
		Last Modified: Wed, 21 Oct 2026 22:42:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7f8e30abe45b1980b7fa1a7085ae64d7dc4e777d24bf5f998c23deae076142`  
		Last Modified: Wed, 21 Oct 2026 22:42:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc02c4aa0bd6aa9c4379a40fb0834adff5a11976c18fa536ea1d1b4d862060e`  
		Last Modified: Wed, 21 Oct 2026 22:42:12 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ed63bbb723d2f40355db3eef56c4a63adf8200de9400fb76f602bcaa2c233a`  
		Last Modified: Wed, 21 Oct 2026 23:20:01 GMT  
		Size: 13.2 MB (13193187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-trixie-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:3b51a841871a47b33c55db58d05230dffd75a89dd22b8ccc7e2864f516d7af08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4217717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f812bcc4ea8085a3522cec1f6c965874f6a959d70b1b2b1f885e8756949b7d5`

```dockerfile
```

-	Layers:
	-	`sha256:b8b74bcc1313eaaa71366c490e32d2f50b2a29220013a4543fc085f1795d8d27`  
		Last Modified: Wed, 21 Oct 2026 23:20:01 GMT  
		Size: 4.2 MB (4193259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df2685a4f11366e41e7a8361a4c6393254bdf9b9526ec90e03c7f214c2d61db8`  
		Last Modified: Wed, 21 Oct 2026 23:20:00 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json
