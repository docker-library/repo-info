## `nginx:stable-otel`

```console
$ docker pull nginx@sha256:ac02634d3935070cc59ecb057650d92f544fc235f52ba5e7176e86ee8cd03635
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:stable-otel` - linux; amd64

```console
$ docker pull nginx@sha256:22531c63e788675ecc6ded959ab1da1e80759e19dfdd75371ddb44dd4211dc50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69795829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1876032e60bdb13cfaa55174c2bac8598f5ce0e0288bf3bc4e29831167c6217d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:05:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:05:12 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:05:12 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:05:12 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:12 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:05:12 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:12 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:12 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="a8a4da8b4916b7adc193d3694cddeb4e6d771e8f"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:05:12 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:05:12 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:05:12 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:07:10 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 02 Sep 2026 21:07:10 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="a8a4da8b4916b7adc193d3694cddeb4e6d771e8f"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b08cd0de4e0a9283c032a69af2a84c50ed3574fa61ceb0661f08fc8bb1c7adf`  
		Last Modified: Wed, 02 Sep 2026 21:05:23 GMT  
		Size: 36.3 MB (36286911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c7fd8ab61cc502694cd06e6afb5495b8fa45ab4580ecf7e8277d73c5105e1e`  
		Last Modified: Wed, 02 Sep 2026 21:05:21 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04b8fd1dd8d3e862e3b1ba18aa55d40aba065dd3d540697dc8db870c130400d`  
		Last Modified: Wed, 02 Sep 2026 21:05:21 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7803ef1d418e62e1baea4667703b25dbb1a64146367ce8866d080deee3f09ada`  
		Last Modified: Wed, 02 Sep 2026 21:05:22 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0525b6a65f36034053765128e7192c2482a535e9f37b98303060f945c083fd9a`  
		Last Modified: Wed, 02 Sep 2026 21:05:23 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887ef3017df6c532eb1f3f8f9745f9ba50dbd4753b5ea572637f79fac06970d4`  
		Last Modified: Wed, 02 Sep 2026 21:05:23 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9decb80fef535dce1cb23ba044568c003b43f130a245cca6b0b60b1b326804a`  
		Last Modified: Wed, 02 Sep 2026 21:07:17 GMT  
		Size: 3.7 MB (3711660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:4e2c03a4af6ba8d04f034f6bdf9c504af6dfc8ea878e8a112662aea445143def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2851837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14c3109ca4d190c06bac8dee38f531fcbd80739b402295b3ae7cf20aacdc0f9`

```dockerfile
```

-	Layers:
	-	`sha256:2caf2f9fa2fb9c6b878a6213d3e46a99bfdf49849b2748edf260bf0f236677d5`  
		Last Modified: Wed, 02 Sep 2026 21:07:17 GMT  
		Size: 2.8 MB (2828498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7856fbc292de86e0788a4fb29c79d649b2a8b901dc969008dea2a984c2dc665d`  
		Last Modified: Wed, 02 Sep 2026 21:07:17 GMT  
		Size: 23.3 KB (23339 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:2648d12f87ba6a291998db136eb7b1b230dce7fa0b92ebac240a90f94d5f4b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68230777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15422af211b0a7d40eba7937cf5fa3960a6c56137be639711fe26028a7303566`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:06:08 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:06:08 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:06:08 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:06:08 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:06:08 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:06:08 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:06:08 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:06:08 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="a8a4da8b4916b7adc193d3694cddeb4e6d771e8f"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:06:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:06:08 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:06:08 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:06:08 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:49:47 GMT
ENV OTEL_VERSION=0.1.2
# Wed, 02 Sep 2026 21:49:47 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}+${OTEL_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="a8a4da8b4916b7adc193d3694cddeb4e6d771e8f"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-otel; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-otel             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b1b91b440eebd420cce1332c59df4b222634c58ec73a37836642cd093ac92b`  
		Last Modified: Wed, 02 Sep 2026 21:06:19 GMT  
		Size: 34.6 MB (34595476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d7e324b8056b87e361c78a0e3290992c7e656a388a1413b9ad65a6d7be3099`  
		Last Modified: Wed, 02 Sep 2026 21:06:18 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dcab2e9d07bcb2844e77885ce32272dd1a38b2faabbbb0f5e5fb2c2a46d456c`  
		Last Modified: Wed, 02 Sep 2026 21:06:17 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bebc696c8be365087ad3c4e0b231f0bad348f8534ec83d83bfbbc94dd0cc1f8`  
		Last Modified: Wed, 02 Sep 2026 21:06:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b68a175fd2723251e6a44b5483a943add2c6fdc89ca756324713432839395b5`  
		Last Modified: Wed, 02 Sep 2026 21:06:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599c0dadf72613b1d6dd0388c8442c5a636b46e9be80f1d52cb9c22693ac6414`  
		Last Modified: Wed, 02 Sep 2026 21:06:19 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2cf7bc73970a7fd069d5cd569159cd13f544a53784ad3174a28a93838d1386`  
		Last Modified: Wed, 02 Sep 2026 21:49:55 GMT  
		Size: 3.5 MB (3471128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:45f7022aa947af149bb2ecf4cca9c9c91bc6ccb938a231208c0e27402f5f2d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2852394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d9372cee99fa17a86ad425b834100bc89b7a501757d3d05fcaf9f0ee1f4224`

```dockerfile
```

-	Layers:
	-	`sha256:000c94dbae899155ae0dc9447753f3af6211a195c06fafade9680b8ee3a0c870`  
		Last Modified: Wed, 02 Sep 2026 21:49:55 GMT  
		Size: 2.8 MB (2828927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef7d5415e5ba59902950da86788a269a9435395eb0a6f32ca84d5596ae288b1`  
		Last Modified: Wed, 02 Sep 2026 21:49:55 GMT  
		Size: 23.5 KB (23467 bytes)  
		MIME: application/vnd.in-toto+json
