## `nginx:latest`

```console
$ docker pull nginx@sha256:6a3df739b6312289e87d70947d900669c1b3087474ece5814b9c01bbf2e6dde3
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

### `nginx:latest` - linux; amd64

```console
$ docker pull nginx@sha256:9aa9949a8f50829ed3e3f5e14c95afd99caa00b0b5a5444ded23aca599458add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63900654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f603a61590af41c726dca7900c169a4c4768f834e540170da73e295f6726ba9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:59 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:17:59 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:17:59 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:17:59 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:17:59 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:17:59 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:17:59 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:17:59 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:17:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:17:59 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:17:59 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:17:59 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7863f34d5b1807b78ace418a4a5a7123ad0bdd2ccb2c7836dc3fcf33d8f2d69c`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 34.1 MB (34053867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2c223cd4363caaf9bfdc994bdc81d943b024d24537b2711a541ea9280d01ba`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e963785aec68c5e5f5b0a75f59d71f602736d9609a9e2dc9a9f184981c6baad`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf84a1d9ec18581769b23e2a8541c7701bcfb653bb593d03ad3d09c8893caaab`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2930fe57ac18da0d75b3dbffa3f7ed7a90f6ab7a8a397d00aca4d8decd0da219`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b93a1524c53e46e7fa18467a3ed31ba975dab008aa55bde9930f093a6d240b`  
		Last Modified: Tue, 24 Nov 2026 04:18:10 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:f3edfe6f7e7a7eb53221415e4ac64cba8dcf07bf7ee20f94a2df97961e59b631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2864175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927e48c04dc7973f700fdae2e8670a1853b1d655534167eca596a836043cdba5`

```dockerfile
```

-	Layers:
	-	`sha256:93dea5ffef3a2bc5548ae0bb40ce7a40ba3c9adee658b4b535b0d870a6dbecee`  
		Last Modified: Tue, 24 Nov 2026 04:18:09 GMT  
		Size: 2.8 MB (2829014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49964ceee462cc05760ea1df0988e7b9d9f6801ce263531e048ff3878c4889e3`  
		Last Modified: Tue, 24 Nov 2026 04:18:08 GMT  
		Size: 35.2 KB (35161 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; arm variant v5

```console
$ docker pull nginx@sha256:11573744cc7026dd18fb1d704d4467c6fc0c1577084a689e27155e6ad168f3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54877119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4a8c95f4b15873f118dcea8f767283f6dc6c3613d92adbe3ed9858eb6437b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:23:53 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:23:53 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:23:53 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:23:53 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:23:53 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:23:53 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:23:53 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:23:53 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:23:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:53 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:23:53 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:23:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2495165ff358448464d026291550d30907ee48155077ebddc36ce7a135b2fe9f`  
		Last Modified: Tue, 24 Nov 2026 04:24:03 GMT  
		Size: 26.9 MB (26863718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6f394acf59b743fdd7ee3753d5a2410644bde60dae205b7938fc018fe737c7`  
		Last Modified: Tue, 24 Nov 2026 04:24:02 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c0ae32af3fff02fb0ab88f885f35cc69e773e35f989ab2682e0efd55cbda15`  
		Last Modified: Tue, 24 Nov 2026 04:24:02 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf06ca8d8e0f57743d3e3084484b11a795f29a4953cadc7f43c3516b9b4e4d2e`  
		Last Modified: Tue, 24 Nov 2026 04:24:02 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cd698f61268ec47a0b259eaaa195f60ef8a3302667553ae23dad8fe16187b9`  
		Last Modified: Tue, 24 Nov 2026 04:24:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7414a4d330a32e6e604e261736d765e3b7961db560903810c548abe34ec9b80`  
		Last Modified: Tue, 24 Nov 2026 04:24:03 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:cc7d98de0f6a4d24b7414e84c1e180d5ae057b67d940ef5ee7845a3dfad47e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2890466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc01a9d732c82fef17cb6765590dc4709a8c11c9180fa4405ffcff72d900075c`

```dockerfile
```

-	Layers:
	-	`sha256:00d07fcd62c985ecf18999476c950c61b6c7b9430b2c7828a617c4fa02776b7a`  
		Last Modified: Tue, 24 Nov 2026 04:24:02 GMT  
		Size: 2.9 MB (2855177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f64e698e75fa1f0cabc178757411d86eddc8d3c97b71044a246c7e751af91bae`  
		Last Modified: Tue, 24 Nov 2026 04:24:02 GMT  
		Size: 35.3 KB (35289 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; arm variant v7

```console
$ docker pull nginx@sha256:3a919c630d82635d0133ebbb7c9bae6a38d27d64a9b290f0aaf5cc4b88c071ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53196325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15689a8dc232d59d39ec02a9759180a7ba8364a59ca99a29f19bfbd8cb7d0a84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:21:19 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:21:19 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:21:19 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:21:19 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:19 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:21:19 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:19 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:19 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:21:20 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:21:20 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:21:20 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9499835462b9437f3928af20267dc6b34f8ff92ed03dc97bd3d45c730db0fe`  
		Last Modified: Tue, 24 Nov 2026 04:21:29 GMT  
		Size: 26.9 MB (26929262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f017ef3332e46a09582186440071595b372be1010ea1b1bd5e12497b02ff46a`  
		Last Modified: Tue, 24 Nov 2026 04:21:28 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8bb9a5da82a9e0bbf372046514c67a18ffd0bff54d3f16349317bba3af47e`  
		Last Modified: Tue, 24 Nov 2026 04:21:28 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c12b68e89c3735ed1e7d33d8f35b7ec00bab372055d16f3de8e76dac43fe530`  
		Last Modified: Tue, 24 Nov 2026 04:21:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a090267c1f5f5152e85598d9ee51642f93a176808ab1b1af6cd661ed9661401`  
		Last Modified: Tue, 24 Nov 2026 04:21:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9bf9d0e1041e91a0b556d6dc99c93a5e34dd4b5295b2774fc7cff9b97cccc7`  
		Last Modified: Tue, 24 Nov 2026 04:21:30 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:a63b6870f4e3e557d507fca7d02d34768055e7439db22f0fb89ebf5b55ce0b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d59d5e418a648757f3183d441ba30e873a3f92fe9a4578445491cd3e06df52`

```dockerfile
```

-	Layers:
	-	`sha256:48a184122bb57b41cf8e1892cc2913967ef3000ac978e6eb227d1c12867f9414`  
		Last Modified: Tue, 24 Nov 2026 04:21:29 GMT  
		Size: 2.9 MB (2853924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a742ba8a3ce6406c09b78e4c9eeaaa1dc8b8a84511b2d2407ad14f4c8d6b40d`  
		Last Modified: Tue, 24 Nov 2026 04:21:28 GMT  
		Size: 35.3 KB (35289 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:fc7fc95759b787b066d1a0242f7e3f2f930f6fda5fab96dd7548072f593f25ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62212848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c155a6bebc3cde493e21033f14c3fc731c2ca46ba162568c3458871c8af9c318`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:18:25 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:18:25 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:18:25 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:18:25 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:18:25 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:18:25 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:18:25 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:25 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:18:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:18:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e9e661183b49a02f4cb6869e1cb20bad78e24e2a1638dbc62dc8a821880e68`  
		Last Modified: Tue, 24 Nov 2026 04:18:35 GMT  
		Size: 32.0 MB (32010202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc3c072f7b6d7887f9c791a426cbb618244454d9c8bd03b081beae04fad646a`  
		Last Modified: Tue, 24 Nov 2026 04:18:34 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac7e31e2c81bddc5de0eb648fb5d8f762a1541b3c9d624dd803a72699f63ac7`  
		Last Modified: Tue, 24 Nov 2026 04:18:34 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ffb119deacc8c7a3bf268f832d79acb8dfc2bb4ae4f8d8243d82f7141975bd`  
		Last Modified: Tue, 24 Nov 2026 04:18:34 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7e9c25fd18a3034fb1c7062cf230d88513fec36d4c6a7af195822c8e0831dd`  
		Last Modified: Tue, 24 Nov 2026 04:18:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48457119d4a609df81076b8526f32ad6112753adfe51fda11deef844cb559a90`  
		Last Modified: Tue, 24 Nov 2026 04:18:35 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:33a770d7a3d442c6ddb2ff3b62f2cb69c3927b71026651fc073155205af80afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2864828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a07959b396182f6b309f8087fe6fb145dd33f530c29eb70942c0d7ef81edf9f`

```dockerfile
```

-	Layers:
	-	`sha256:2e987ae7b85b0ae66aaa4ae42777c48b0a63bc35bb15dce95e2f8ac6a3db0483`  
		Last Modified: Tue, 24 Nov 2026 04:18:35 GMT  
		Size: 2.8 MB (2829491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fe4b6916f891250fbdc21fe056463b7c2c912c0e6beeaa9feada27a2ff8fc55`  
		Last Modified: Tue, 24 Nov 2026 04:18:34 GMT  
		Size: 35.3 KB (35337 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; 386

```console
$ docker pull nginx@sha256:2bfa6819d2409ee2eedc43afc8b01a5660e4d7024130990f456402a5f64122c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64436031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425adcf0585e03a9a97f6fc348e86511c47b75b8ea9098b8ceaa2aa51e058121`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:21:59 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:21:59 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:21:59 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:21:59 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:59 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:21:59 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:59 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:59 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:21:59 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:21:59 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:21:59 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68a49743820be1a80b0e0078c3c9a494aa35419232d2458c580db246f8d5a28`  
		Last Modified: Tue, 24 Nov 2026 04:22:09 GMT  
		Size: 33.1 MB (33073495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb413ecc870d92a843d50539c9508d7a96ba4482fdaa8a8a7a8c8f5570dd5dd`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b2d5dae31c84db574e313b1794275401e3c7e2d943890cce0de698d86f6f45`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcaa62e07977b23c3d8eb501dae1859a52f67ec4a77100a491acf1dedd36fc5`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53beb584a1e43606b1fc1860f2b07893da9f2a7a842b23d49953b54e51de9f18`  
		Last Modified: Tue, 24 Nov 2026 04:22:09 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f74b43422c99adf9b0f578795f0c368320333342513f6d312887f3c59f8dbe`  
		Last Modified: Tue, 24 Nov 2026 04:22:09 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:c600a4c35608f61746bdb03921b19e7399ca2f1d2cc8fdba376713438c6b02e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2883969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6892185353f5bcb237e4f1a8aca2ea18db650725deae57d8685b20b48ffd73c`

```dockerfile
```

-	Layers:
	-	`sha256:6acaa1f3bbaf6429c68eb221c4099e5dc31d8c124b2791f2f5c7c654b3ef4c51`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 2.8 MB (2848870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed0ff96fd1a60ff6385bb745489b550a6c34f601587741c621f4b5f5950180de`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 35.1 KB (35099 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; ppc64le

```console
$ docker pull nginx@sha256:e1e6c7d3d45a37d11da1e97d91f333950f5f758ece19e0fe561563a9fe386bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68224479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e41882220488d90e2e5b3ded4cbe4c398b84d2738f874d686099112edd2e9e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:44:20 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:44:20 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:44:20 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:44:20 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:44:20 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:44:20 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:44:20 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:44:20 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:44:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:44:21 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:44:22 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:44:23 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:44:23 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:44:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:23 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:44:23 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:44:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9053582abc303d61644217221b67da80d5eab78a423d9ee9a389e66d925aa8`  
		Last Modified: Tue, 24 Nov 2026 04:44:47 GMT  
		Size: 34.6 MB (34567228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f9e8d9299f415447a7cc91846da06e676d83cac6909285d41fc1ff1ef6c380`  
		Last Modified: Tue, 24 Nov 2026 04:44:45 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cb77090dfb9d14401b400f1ed939d03e70a856458fcc47507f9079dfad8f46`  
		Last Modified: Tue, 24 Nov 2026 04:44:45 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c59396834191405038b4b78da5c854630953d274c2720bca298742456269daa`  
		Last Modified: Tue, 24 Nov 2026 04:44:46 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c1a52e292eb6a15c32acda79890b3f56e6b57312c01c711a1a2e90e1c28ad6`  
		Last Modified: Tue, 24 Nov 2026 04:44:47 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eec8967aea6c5660ba56e29813af2d30b8ace38b7fe07f8cd4c93ce72df09d`  
		Last Modified: Tue, 24 Nov 2026 04:44:47 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:15b523d3652cc8a9fe2a3bae1dfee6b64f931a177dfb97c514fd4f676ceb8650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2891816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92e3c29b60048f3172e1278250481af48a1b5368ddfc34549c960689356a347`

```dockerfile
```

-	Layers:
	-	`sha256:6ad8ece0a1c2cb6a63fc7e2eb7f3228d7e8461c3bc8188433d562f5c5c59c505`  
		Last Modified: Tue, 24 Nov 2026 04:44:46 GMT  
		Size: 2.9 MB (2856575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beb8a890f24573cf2569a84075c6e5d0d3460f546bd4da20817cdfd842d20aae`  
		Last Modified: Tue, 24 Nov 2026 04:44:45 GMT  
		Size: 35.2 KB (35241 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; riscv64

```console
$ docker pull nginx@sha256:4e3207dbe76d871ed58114fe1561a9bda4b5f46981fdaea7d3d2486d88670613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58711354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016a4b0dc063fab5ee35211e3329dd1c39fe769b594bc455905ad7083afe4520`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 20:18:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 20:18:39 GMT
ENV NGINX_VERSION=1.31.9
# Wed, 18 Nov 2026 20:18:39 GMT
ENV NJS_VERSION=1.0.2
# Wed, 18 Nov 2026 20:18:39 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 18 Nov 2026 20:18:39 GMT
ENV ACME_VERSION=0.4.2
# Wed, 18 Nov 2026 20:18:39 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 20:18:39 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 18 Nov 2026 20:18:39 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="220da8433bf53265cf51abeaa0b6fdd9b6c77d16ee75340cb7bfd6412513d4d0a5b82e38bdf24a0343956906ea43748eb9c8615e917f6488915c7d6b69ccb8c0 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 20:18:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 20:18:40 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 20:18:40 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 20:18:40 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 19 Nov 2026 18:13:41 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 19 Nov 2026 18:13:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 18:13:41 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 18:13:41 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 18:13:41 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338498cdbe0a7bc2bfd37c111118dc1292240aa9e0053dc7a162061eef42235d`  
		Last Modified: Thu, 19 Nov 2026 18:14:49 GMT  
		Size: 30.4 MB (30360562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bd98edf53959410f8660d6ddaa6da8fdf0f1d47178e047948d557c6d7d9430`  
		Last Modified: Wed, 18 Nov 2026 20:20:17 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e12a509d265d1e27b8973a20b7014b1505952a75c0e7e4632490ed578468a37`  
		Last Modified: Wed, 18 Nov 2026 20:20:17 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597b183119d23b938449617ee66c02e813678a831e2fdd8a4170b37fd4f3d813`  
		Last Modified: Wed, 18 Nov 2026 20:20:17 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8ed539f83164f7269cbe42b15af0b0ee345741c6d537e1514cba9c00aef9cd`  
		Last Modified: Wed, 18 Nov 2026 20:20:18 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11877fa4ab912cbb840a0b4f35bad9157fd80a6f96897eaeea5ee0006dbc60d`  
		Last Modified: Thu, 19 Nov 2026 18:14:44 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:af430d252c65d3cd85f1329b0e80afe991ada2ea5796fda1adad0560632a5ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2881578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188e01ca42f1c552fd185237d030aef7c178c678013c67396d57d554551a735b`

```dockerfile
```

-	Layers:
	-	`sha256:c7cee7bd9e9f29e04eee7241b606e5f4c54d8d65b134e86e4059b96fd09d5d14`  
		Last Modified: Thu, 19 Nov 2026 18:14:45 GMT  
		Size: 2.8 MB (2846342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:905b5f2cbd9e5e72e16246e9028696e5ebe2063a66cfa193c82a197bc7c29294`  
		Last Modified: Thu, 19 Nov 2026 18:14:44 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:latest` - linux; s390x

```console
$ docker pull nginx@sha256:bb915f780bbcae1dc612a88e7802c6f9923850c1cc547f2a1932764dee48811c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61628144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2821635abf48ad7764adbd6243e42859b5991126de512cb24df3fd373dc29ae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:21:30 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 24 Nov 2026 04:21:30 GMT
ENV NGINX_VERSION=1.31.10
# Tue, 24 Nov 2026 04:21:30 GMT
ENV NJS_VERSION=1.0.2
# Tue, 24 Nov 2026 04:21:30 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:30 GMT
ENV ACME_VERSION=0.4.2
# Tue, 24 Nov 2026 04:21:30 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:30 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 24 Nov 2026 04:21:30 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="7cb563d74d8b6574dff31fc1f09f8512ed6b7a4fbdafd209d01188d8cd1b3b7eb98ac1876ce49882efeb8385be14600fa24a95ef97c8f26200ee40f92c27bb2d *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 24 Nov 2026 04:21:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:21:30 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:21:30 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:21:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae0340a246ba1d68fd65e567d6e1023d0b59c1b7102bdb438fa525698d5b532`  
		Last Modified: Tue, 24 Nov 2026 04:21:44 GMT  
		Size: 31.7 MB (31713511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1eea5ba6e9ac1393351bdb27fd4a03696d44a158a7a1893fa54df3e62bc92`  
		Last Modified: Tue, 24 Nov 2026 04:21:43 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f362bdc35cd37e9dbec3d85711551bad1bf010b257b94f0d1e1f43bf13eb1d1`  
		Last Modified: Tue, 24 Nov 2026 04:21:43 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4eecb7e1aff6074ef57f64fdb7b07b43a95b6aae4f233e32fa827d8dcca907`  
		Last Modified: Tue, 24 Nov 2026 04:21:43 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8181f3add5f8d0ab4ec00d1f292f7550e744cc05e1294c7715b320e4637207`  
		Last Modified: Tue, 24 Nov 2026 04:21:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2d76789aa6a9c5077ebc7885982042f370590f515f47cfb5d16ebc4cd3071`  
		Last Modified: Tue, 24 Nov 2026 04:21:44 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:latest` - unknown; unknown

```console
$ docker pull nginx@sha256:20fafe00c99c0279efda7a6a1915e51848e81e5aa5454c27f099e5bd775e59fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a6267e7cca3f0ab5cdbbada2991f89dd0fe9409b7cb427f89acb9684238461`

```dockerfile
```

-	Layers:
	-	`sha256:ade5a715342b4362d71195c390258402c1fa8e6caec10c9371b89dfa54c081ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:43 GMT  
		Size: 2.8 MB (2762321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9367e84c2e44edc8791d08a6a3f3809f92de1d7723c27cd518dfabd5735fddc`  
		Last Modified: Tue, 24 Nov 2026 04:21:43 GMT  
		Size: 35.2 KB (35161 bytes)  
		MIME: application/vnd.in-toto+json
