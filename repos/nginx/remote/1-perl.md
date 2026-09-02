## `nginx:1-perl`

```console
$ docker pull nginx@sha256:4d7e8e2dfdc2f97d7e245735804a16cd4126b84dcad6c4a3ed299d4296d3661f
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
$ docker pull nginx@sha256:d9eaad8250ead51d59ec3794569315b484b5bebbe6668cc0214a2f6849002d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78482724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4749618a4464cf35feae1419ba2db8193a3924c9670d70398c20f0288e7be98d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:04:32 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:04:32 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:04:32 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:04:32 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:04:32 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:04:32 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:04:32 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:04:32 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:04:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:04:32 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:04:32 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:04:32 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:06:53 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956faab5efb34579d85a5c0b79f1b44c111197a0c1fea9c18b2e836821d68480`  
		Last Modified: Wed, 02 Sep 2026 21:04:43 GMT  
		Size: 36.5 MB (36525059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44b5c8be61615ee48a9525b9aa459639de34e8e004ad3b3a6f52b793051da3c`  
		Last Modified: Wed, 02 Sep 2026 21:04:42 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc02c4ab8d7c507d6a06a08833d6b669278849c9533729535984c86ff199cb`  
		Last Modified: Wed, 02 Sep 2026 21:04:42 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12f394dea35bb47b5511557233c5abec5360e40f9fade8f3ff1de488ecdc696`  
		Last Modified: Wed, 02 Sep 2026 21:04:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07db7bf2649b9fe0ccc9c86378fc5ed36e90bdfe6acf529e567c45ee96a2b9c3`  
		Last Modified: Wed, 02 Sep 2026 21:04:43 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340c1b7c1d6861ed76e1adc2630b145227b071b54259bc97e318297cb4b8156`  
		Last Modified: Wed, 02 Sep 2026 21:04:43 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af558f98d400d599d24e583042be81579a75a38cb26ad97b217c7ef6ff5e555`  
		Last Modified: Wed, 02 Sep 2026 21:07:02 GMT  
		Size: 12.2 MB (12160410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:5b7a57cb90abecdb4bb25e71c2726e4ab3bca6ed9355142b9bcebce51b32f4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4265901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a778680b0dc792eef8896f65779505d5ee4042792308d15e93fee50e77906f69`

```dockerfile
```

-	Layers:
	-	`sha256:2ee32221ec262eabe5a0b7ff078dd28686f64ca945951fe4675f815164fdb9e5`  
		Last Modified: Wed, 02 Sep 2026 21:07:02 GMT  
		Size: 4.2 MB (4241443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f8058b7fc7dbe57055eff967085bdbdd05f427a92f7ae7c5908d7430744f2e4`  
		Last Modified: Wed, 02 Sep 2026 21:07:02 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm variant v5

```console
$ docker pull nginx@sha256:fbf29f3ca57b85a77ea9705fbff5c1daf08a0d22ad6742d4fa7fef6e6e0b06ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68704309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003ed688442889ad613dbfe10e1c32689ac90259301f5bc6d186c331651e8dfa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:14:54 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:14:54 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:14:54 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:14:54 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:14:54 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:14:54 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:14:54 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:14:54 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:14:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:14:54 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:14:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:14:54 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:50:35 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25bc6bd65ed48e47b1d88ed9f4b60c6c54ff97d22c4f74d4a3cd536fd6e7e6f`  
		Last Modified: Wed, 02 Sep 2026 21:15:04 GMT  
		Size: 28.8 MB (28783423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c81322dd0f5ebedbd4a9993127779c4806553216d843bc1b9f9cc1330b5483`  
		Last Modified: Wed, 02 Sep 2026 21:15:04 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6638d43c1b1f3251f8a33d7e29e45c82d3ee858bed3d3c87174017ad955e244`  
		Last Modified: Wed, 02 Sep 2026 21:15:04 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58180d2ff765e7a16a309970052aaeaeceb164471ff48ee4f8181961bfa21862`  
		Last Modified: Wed, 02 Sep 2026 21:15:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc3084d97b7a6183ffbe02714a0ea17a7607c80bb1cf86a1feb5cb31ed2c70`  
		Last Modified: Wed, 02 Sep 2026 21:15:05 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bb3244f44f72b947c874c5e7abdfb6859fd0c499b0f5fc4e27766f639565ee`  
		Last Modified: Wed, 02 Sep 2026 21:15:05 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958a3c7e9805b183666ead88142d44e5d9f668ff43041fb9f6590cdd4fb288b1`  
		Last Modified: Wed, 02 Sep 2026 21:50:44 GMT  
		Size: 11.9 MB (11947341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:cddeeb6d5a23329db37350b9594c587b4e6a21f10dbd12226bdb1a1c5abce986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257ba19c9a7322c634fd4a63b3165d08d6bcc7c2b1986a11857480749c09fde4`

```dockerfile
```

-	Layers:
	-	`sha256:22a0c001262598ef42b5daeb7b274e8e069c35e8c16fbb21a291243a3a1c56ad`  
		Last Modified: Wed, 02 Sep 2026 21:50:44 GMT  
		Size: 4.3 MB (4273522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a69b3cc10abd30435e25bea169aae1553e4e45f594238bc0520cac6e539fb49`  
		Last Modified: Wed, 02 Sep 2026 21:50:44 GMT  
		Size: 24.6 KB (24585 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:f2816b4ef5ac62e4d8cbc243479c20e81c4d239de2b89b7ad99ddb12ae3deecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66701132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa65e50a90247208cd8b1c3380d5a1a64233d3c58f27d48bc5bc6897216de9a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:13:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:13:12 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:13:12 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:13:12 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:13:12 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:13:12 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:13:12 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:13:12 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:13:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:13:12 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:13:12 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:13:12 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:51:02 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e96bf30ee3ede93b305ccd5ea9faaea6165731f31e19f0e3778fcd46b94c4a`  
		Last Modified: Wed, 02 Sep 2026 21:13:22 GMT  
		Size: 28.7 MB (28720461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6474d28af1143d551f286efcf1e085cd9941b1327ae6709868330d18e9b1cea`  
		Last Modified: Wed, 02 Sep 2026 21:13:21 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a8326d7d79538b629547c94651e23bb22c8e5ce5ffb9365837b8905c5eebe5`  
		Last Modified: Wed, 02 Sep 2026 21:13:21 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6159c4bd9f4dce55e9d57574afeab875336c53df0ad31b1f2e21137b49d120df`  
		Last Modified: Wed, 02 Sep 2026 21:13:21 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7883c0492de9ee9e24da11bbf2f5670ecd118f52e994fceaa0278e09120800`  
		Last Modified: Wed, 02 Sep 2026 21:13:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e6444b5a69fba38d17adb7d7c93d9317858f35147b63c6888b2394cc6ce974`  
		Last Modified: Wed, 02 Sep 2026 21:13:23 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbeab461330e3a9fbdbd85f6577185d256308700d2f467154b54e7a13f22709c`  
		Last Modified: Wed, 02 Sep 2026 21:51:11 GMT  
		Size: 11.8 MB (11756924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:2edbc3443b5f6839b8950cd0f1a9f1f365d84ebda74462af0371283525262e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4bec18c3cc1e4594a024aebcfb735ec68ec80651dfc2ab25a87be20d8b486c`

```dockerfile
```

-	Layers:
	-	`sha256:23c79538c30bc536af1f6540b306bca9ad9afe847f870f684fb93c92028287c6`  
		Last Modified: Wed, 02 Sep 2026 21:51:11 GMT  
		Size: 4.3 MB (4273043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fa468b0cbc59b72559dc894f1608bbb3a61244582de9755d98f5e65f19e5f8f`  
		Last Modified: Wed, 02 Sep 2026 21:51:11 GMT  
		Size: 24.6 KB (24586 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:458e55d07374313b47f05aec598d7e84ffedb22f925a909e1d86bbb7d2a06be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77134077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf4581c43d84192981b73add13d26bfe4fd09aa95eb3a2ecf0a19713381bf8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:05:47 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:05:47 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:05:47 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:05:47 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:47 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:05:47 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:47 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:05:47 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:05:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:05:47 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:05:47 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:06:57 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3ce1865cbf71ffb4cb1e8a38faa751b340b68868cd6f3904f80ae326353261`  
		Last Modified: Wed, 02 Sep 2026 21:05:58 GMT  
		Size: 34.9 MB (34864509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50355e0ebcbc3c053fbd5e75aa03114809f9f4f1177379c71790757c33b04f5c`  
		Last Modified: Wed, 02 Sep 2026 21:05:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd00b62474a6e527cc71136b97d2c2d0a68aa282b9685568f40d5e399bdb990a`  
		Last Modified: Wed, 02 Sep 2026 21:05:57 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef72342d9bd299793d88c4a3baeb75aac54c538c85bafd45776883f4b8bf78d`  
		Last Modified: Wed, 02 Sep 2026 21:05:57 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225c79b86e9402dd4857cf5d32e29a13acecf02d57bba22bf46f0926f05a177`  
		Last Modified: Wed, 02 Sep 2026 21:05:58 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d95972273c02fbedb65572c40fb5501ce9f8c1514ba62c8d51ff3a9ddaed0e`  
		Last Modified: Wed, 02 Sep 2026 21:05:58 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88778f661abbac07170d082c63a195c90545e645260c05d3ef0df24611dada3a`  
		Last Modified: Wed, 02 Sep 2026 21:07:07 GMT  
		Size: 12.1 MB (12105385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:4979a245e5ecd3590f31b71bc210f798da9b84a5e7b2f2c820bc046c7da02e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2185948759a01ec037fa3001171384a88bc174b78604801cf2ec571ab2bf5d1`

```dockerfile
```

-	Layers:
	-	`sha256:d9e52ac1905e7e159920d88a812c01bde31b43efb95376511d4a627f61601d35`  
		Last Modified: Wed, 02 Sep 2026 21:07:06 GMT  
		Size: 4.2 MB (4247961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b46af7e14dcb6ecd32b9c079e5ddfff92cd089f0087e5cb71a8a5d96328d5f6`  
		Last Modified: Wed, 02 Sep 2026 21:07:06 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; 386

```console
$ docker pull nginx@sha256:992095910bbff53d4eb74446395b9d9cba30186a6b5ed880b76ea5c344ae834c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78890182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad64c7c534bee3d7a42b7c824f4f79244aeff285fabf098d4cf5051d406a6b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:11:10 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:11:10 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:11:10 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:11:10 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:11:10 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:11:10 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:11:10 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:11:10 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:11:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:11:10 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:11:10 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:11:10 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:50:28 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43db7bb1c756e082c120691142b8b8890f345d00daec15cc6282ac04b2d081df`  
		Last Modified: Wed, 02 Sep 2026 21:11:20 GMT  
		Size: 35.4 MB (35398903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9440d5f6da1798a75fe4fcde0af8e28d8bf22ce477b3da840293509a526c3d`  
		Last Modified: Wed, 02 Sep 2026 21:11:19 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe2eec63d5670274f59002c08fce40031af92cfb383844631596aae8fdb27ad`  
		Last Modified: Wed, 02 Sep 2026 21:11:19 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99f2dd8092e399fb3e6c555f879b2064729f9e51f39927eb0265e7edbda23eb`  
		Last Modified: Wed, 02 Sep 2026 21:11:19 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebf4aab616ac5ed2c6b8f8004712ba2487dfb79884f40c8948d2a45ccb4ce38`  
		Last Modified: Wed, 02 Sep 2026 21:11:20 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e761621c765cf37e20f6616a972d6f7e42455a6093dbf730c7883ed16110efad`  
		Last Modified: Wed, 02 Sep 2026 21:11:20 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49638689510b769a929d1ec3b2d0914c5099f06b68b509dd05a8c82028c06014`  
		Last Modified: Wed, 02 Sep 2026 21:50:37 GMT  
		Size: 12.2 MB (12183276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:6676e23b32025b713462ec3a8dd92ea7ea795c854f4aa0c3739eddd00055fda6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4292874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83965744b61d98d15921a14065735c7648e07bfc3f99121728b69a0ca96c3fa9`

```dockerfile
```

-	Layers:
	-	`sha256:f916e7543237a0b0b4aa9e5b080fa9743d7a2c9f894fae2f5b998d8b97a698eb`  
		Last Modified: Wed, 02 Sep 2026 21:50:37 GMT  
		Size: 4.3 MB (4268479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e799ef0fc7b6f00ab00835e608d1f4cafa9da947986a714312cf3573d4f79c71`  
		Last Modified: Wed, 02 Sep 2026 21:50:37 GMT  
		Size: 24.4 KB (24395 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:22a9228b01e82e452bcd28892abee2d0154b621938439cf18e871df1ec99cdc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83712403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f8c030c80830b00fef7486082d51040ec98722387acd9dd65920552f70ce3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:17:49 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:17:49 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:17:49 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:17:49 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:17:49 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:17:49 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:17:49 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:17:49 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:17:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:17:50 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:17:51 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:17:51 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:17:52 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:17:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:17:52 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:17:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:17:52 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:50:47 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa317333772ac348f51a6dda744657b98d9655fcf9d78327ae74756f813d5cc4`  
		Last Modified: Wed, 02 Sep 2026 21:18:11 GMT  
		Size: 37.2 MB (37190191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c18b0de814e095e831d5c59dc7b54a93ae27466d2bc8bad36eb3f377b0049d`  
		Last Modified: Wed, 02 Sep 2026 21:18:10 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccea84b9d62916f22d4f0b0f6fa6700dbf5539c950ac3c565cc2a94b8738ae1`  
		Last Modified: Wed, 02 Sep 2026 21:18:10 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1e04f20c9b5bd34de48d974529a7345cb21f5ec2e5ef1dc3a8eb325213d65c`  
		Last Modified: Wed, 02 Sep 2026 21:18:10 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044d1cc5880594a901bc99d7d9ee26f747130ac5b2aef287cf47c5c64e557c0f`  
		Last Modified: Wed, 02 Sep 2026 21:18:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1864736669c6e3dca48c2e714bd459e8100652a69ce888b183b4adb25e0cf0`  
		Last Modified: Wed, 02 Sep 2026 21:18:11 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907f75b19394835dd1a5efe4f103439af3e354fa79b8e47b63d1c818fccb60d7`  
		Last Modified: Wed, 02 Sep 2026 21:51:06 GMT  
		Size: 12.9 MB (12902144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:c4c3a46d97ec4738fb58d017486a1cd36d9819e617c89ec40d1df62a186521b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd0386c971ee50c16cc9e96bf2c8d47c3178c7cef54c0a15261e46b4211cda5`

```dockerfile
```

-	Layers:
	-	`sha256:d6d40271b94e47c8acb77882cfd2fb46cbf0973995952b17d1aed8af76e2199e`  
		Last Modified: Wed, 02 Sep 2026 21:51:05 GMT  
		Size: 4.3 MB (4279699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57078df27ad08911102d1c19e4d94befa5fabfdca8d674e43d6c557286ad6b42`  
		Last Modified: Wed, 02 Sep 2026 21:51:05 GMT  
		Size: 24.5 KB (24538 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-perl` - linux; riscv64

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

### `nginx:1-perl` - unknown; unknown

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

### `nginx:1-perl` - linux; s390x

```console
$ docker pull nginx@sha256:faffffead7ade8793457f263e8d183911c194020aca714b3fb6d6a55cdf8d94a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76814122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1785df452bfb4e0c14106d0369746f71418ac3a32571645c52e5a18cf3c9608`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 21:12:47 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:12:47 GMT
ENV NGINX_VERSION=1.31.5
# Wed, 02 Sep 2026 21:12:47 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:12:47 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:12:47 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:12:47 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:12:47 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 02 Sep 2026 21:12:47 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:12:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:12:47 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:12:47 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:12:47 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:12:48 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:12:48 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:12:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:12:48 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:50:32 GMT
RUN set -x;     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in module-perl; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make module-perl             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d8f8edfb836d0496735855fbe683172421f56978e955d95db33d2121d4841`  
		Last Modified: Wed, 02 Sep 2026 21:13:02 GMT  
		Size: 33.8 MB (33753237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f0423c49927de354560293dd97420dc5c5d493349baa8bd9e13e3fa7349ca1`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c244d3d925abf4848c8d0147d90a7b8c080dc7293f942692760d09dbe8dda9c`  
		Last Modified: Wed, 02 Sep 2026 21:13:02 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c2cf2dde79e6b21fc9362cbf72e1d5aa3d405acb1dbb5fa41a5298e6581883`  
		Last Modified: Wed, 02 Sep 2026 21:13:02 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3d9c7db650971665e574ee48c069c736f50824c8823e0eaa31e0591d416087`  
		Last Modified: Wed, 02 Sep 2026 21:13:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4306ce7cf326bcfb34ea9049f64692fbe53e08e509ea2ae7038500bf43058317`  
		Last Modified: Wed, 02 Sep 2026 21:13:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1d27f2cf9796971b41720819e89188bf87ad14ebd0a66cc6cdb2dd22384ff2`  
		Last Modified: Wed, 02 Sep 2026 21:50:48 GMT  
		Size: 13.2 MB (13188561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:96bd572b79facaeb4d33031c61699d61c5375e7558a87541d830d2da26f3bdb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4206763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f161a46b7a84c23c60599c746f566929c1aba6556600fe0dfa221fbd9a943db`

```dockerfile
```

-	Layers:
	-	`sha256:42ddfde0c565bc6dd08147b6083f0a6faa0e1e3eb6d068e23d2530c178ae38ca`  
		Last Modified: Wed, 02 Sep 2026 21:50:47 GMT  
		Size: 4.2 MB (4182305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31043595381f17d5a5501335ef4495f0624874b18dfef594fad98416e278f05e`  
		Last Modified: Wed, 02 Sep 2026 21:50:47 GMT  
		Size: 24.5 KB (24458 bytes)  
		MIME: application/vnd.in-toto+json
