## `nginx:mainline-trixie`

```console
$ docker pull nginx@sha256:eadee7f433e6757b5148fabac9c7a1cc51b5248ca8b9b8ab27697cb3dd274f4b
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

### `nginx:mainline-trixie` - linux; amd64

```console
$ docker pull nginx@sha256:6c7972b94d62ce93357d1e0d0ef6d3db8a2e9b8b6f3234d943d60ecbc4f4eb31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63878241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5e66f340c769281edb187cf330c9246ab0cab9291bd1d6750dd356db26ab45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 18:41:41 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:41:41 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:41:41 GMT
ENV NJS_VERSION=1.0.2
# Wed, 14 Oct 2026 18:41:41 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:41:41 GMT
ENV ACME_VERSION=0.4.1
# Wed, 14 Oct 2026 18:41:41 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:41:41 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:41:41 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:41:41 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:41:41 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:41:41 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113d9139ada274048223ea25978cba92fe0909af2f948b774cd1e4920886640e`  
		Last Modified: Wed, 14 Oct 2026 18:41:52 GMT  
		Size: 34.0 MB (34030283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19352c605155b5054de1fa27f7e08bac797b81eb12f3e8fc4d0b733666870c0`  
		Last Modified: Wed, 14 Oct 2026 18:41:50 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188e9077f350f759003baed76d4a431bf5b69670eb15506dd1b9c4662ec6517a`  
		Last Modified: Wed, 14 Oct 2026 18:41:50 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792a76c59dbdf946e36e340b0796dbba10b08beb71ff211eb9b1e36ea7ff56fa`  
		Last Modified: Wed, 14 Oct 2026 18:41:50 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ec797c69edb58fa5b0a18196db6cc8641ef04ebab5e27cd79dab1efc70c7b1`  
		Last Modified: Wed, 14 Oct 2026 18:41:52 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6757ab48b1101049bc370d1b338f05a3f7cb46b430cf3e20348408d2e3634e`  
		Last Modified: Wed, 14 Oct 2026 18:41:52 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:b011f3016af71e6395678d21e36f69af264d67404f62fbdb5720eecc1c49acaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2865374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53defffeeed6948b5c3c7c9c2b5e0f5fc713705043b02ccbf81645f85890d086`

```dockerfile
```

-	Layers:
	-	`sha256:2b7d75aa46525a15dbefcce68efa47e142d5f0d05bbd195f548d011e71436482`  
		Last Modified: Wed, 14 Oct 2026 18:41:51 GMT  
		Size: 2.8 MB (2830219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5a894bf2b2310d1e9d7f51750d82afaecdc46edca3da6c80aa867548c86b98`  
		Last Modified: Wed, 14 Oct 2026 18:41:50 GMT  
		Size: 35.2 KB (35155 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; arm variant v5

```console
$ docker pull nginx@sha256:eb43f419aa7992710bc3afefa85f9785333bcee1c877239aab2065363c0fa57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54972346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a8dbea21d2eb88a0549cd5cfdc5c8ca70ee5579ca6beeaf43311930fe33dcb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 18:50:55 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:50:55 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:50:55 GMT
ENV NJS_VERSION=1.0.2
# Wed, 14 Oct 2026 18:50:55 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:50:55 GMT
ENV ACME_VERSION=0.4.1
# Wed, 14 Oct 2026 18:50:55 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:50:55 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:50:55 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:50:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:50:55 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:50:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:50:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2c114628c7fe263e1bbb5be977045178dee231a4045992f206fccaf56a1560`  
		Last Modified: Wed, 14 Oct 2026 18:51:05 GMT  
		Size: 27.0 MB (26960245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd90058d11e71df7fc9cfe0b6914ef31ba330d7e1399531a3cb9ede8e6538981`  
		Last Modified: Wed, 14 Oct 2026 18:51:04 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc945d736cef02327ac3d81d8d6cbc97a4a181d9854df75befaf1bee2a333272`  
		Last Modified: Wed, 14 Oct 2026 18:51:04 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b799d8f9c1c81c55669ab64ee19d771db66cbb7e44943843a7b42f8e907ee0`  
		Last Modified: Wed, 14 Oct 2026 18:51:05 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9bad41fcdcd28e783ecfb9d5abae656b9043b6f8d6805e747de6738423601d`  
		Last Modified: Wed, 14 Oct 2026 18:51:06 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55708ef1e984da458656d685d7c471ee06fcc76386a3403b0a3207f7d0c0af89`  
		Last Modified: Wed, 14 Oct 2026 18:51:06 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:058f2ca495eb23e552351c3d7c02ed35ab0f4bf956a777b429f676f53b58a8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2891666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f2829d7939da9e8de2f9351b0022c57c1e379695f20ecdc9d985badee30e17`

```dockerfile
```

-	Layers:
	-	`sha256:8fe251dd298a616a837764166917c66c81c87a564429116a2e5ab2764009d699`  
		Last Modified: Wed, 14 Oct 2026 18:51:05 GMT  
		Size: 2.9 MB (2856382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e617fb444f706ce5d6ae55c492c4cfa7f23ce0ed42f65c4d4e0c34cbc20dce2d`  
		Last Modified: Wed, 14 Oct 2026 18:51:04 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; arm variant v7

```console
$ docker pull nginx@sha256:f0d9c93ec657dc6480e8ec9f6f1322aee68fc2b6f2468b378c38c0ae7b39b42d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53274521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6f7bef87e128c76cd8808b179311747135100fb90251a5cdbcc2c46eccdc5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 18:49:43 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:49:43 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:49:43 GMT
ENV NJS_VERSION=1.0.2
# Wed, 14 Oct 2026 18:49:43 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:49:43 GMT
ENV ACME_VERSION=0.4.1
# Wed, 14 Oct 2026 18:49:43 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:49:43 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:49:43 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:49:43 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:49:43 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:49:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19d69070928dde3dbed8bd592e11cab498f01eeb73d2c3ade4e7706c8adff2d`  
		Last Modified: Wed, 14 Oct 2026 18:49:53 GMT  
		Size: 27.0 MB (27011729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab99560d1d09a7500b08c9f7a1acd9a09aac471ef754324dda5b8a6ea2a0d442`  
		Last Modified: Wed, 14 Oct 2026 18:49:52 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba8d12159923301190b224c2b51494c94ec24493fe7a6a1ab418dbbcef6a3ec`  
		Last Modified: Wed, 14 Oct 2026 18:49:52 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45104b66a645cfff3ccb1669db14de0dc503fde50dbc9aabe482505fa571d3a0`  
		Last Modified: Wed, 14 Oct 2026 18:49:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f9cc4b27b7fee38bfe45055929f4df220bb922b6c58f1997d9292b1aff4175`  
		Last Modified: Wed, 14 Oct 2026 18:49:53 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba5434ec459b7835e39abaa708fea512e21c30a1865ac5d50051fd8c7d10851`  
		Last Modified: Wed, 14 Oct 2026 18:49:53 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:20ba76a3f46e26ca2a9fbaf1efd3606bfb228d09280d85a2af59c113ed97671f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2890413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6c89a2b23aa04e3660a88e4ea7b845af24dc67eabd2a8bff7a606a056fd7e1`

```dockerfile
```

-	Layers:
	-	`sha256:470ba6af75d5556c9b900e05a652d24d05b8ffbe1cf66829ea562efdd781e173`  
		Last Modified: Wed, 14 Oct 2026 18:49:53 GMT  
		Size: 2.9 MB (2855129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:118bbea6e6e2bc0c136515b2bd5f495be0844f7b658fcc8d6ee03b4c6cdf7d4f`  
		Last Modified: Wed, 14 Oct 2026 18:49:52 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:f9cceabdc075607fcdca9d7d5714fb82044bff57ae2fe160b39b822ffc31c46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62145429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4766b8404b1d7dddf0408498394a3ca78ac0f26882e8ff70289a19624135b3a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:04 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 06 Oct 2026 01:20:04 GMT
ENV NGINX_VERSION=1.31.6
# Tue, 06 Oct 2026 01:20:04 GMT
ENV NJS_VERSION=1.0.1
# Tue, 06 Oct 2026 01:20:04 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:20:04 GMT
ENV ACME_VERSION=0.4.1
# Tue, 06 Oct 2026 01:20:04 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:20:04 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:20:04 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="2c5d692f7ffad335e20376eca8a94f21ec11acd32c2a043e12681546b05503e6e1eb4ad03ca145ff944e8851a16514d692faf39da80d83dda5f34ec5353ecf14 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:20:04 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:20:04 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:20:04 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0eaca4f4a896724fcb490d9097423e57e960670bf37724cbfaabc417054ee2e`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 31.9 MB (31940545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848dbae53a0f1433b02cf9bc8659e49e3276c4ab8b10eb0f554d897dc78c5d46`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d8c112974b549fceda2d1617f4b11bc095b1bba824413f20bc29ec61e6e3fe`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95266651b1b541574d83631cf675aa3dc817ade54cb6af37d26c13dc749ff884`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74db6078a267237a135673d3411d5a1b28737ba0ce5630fec63d5159054fe73c`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b496ef725cba787e61a6f2b964f763fac7eb6930c6730e7f78790db9ca0356d4`  
		Last Modified: Tue, 06 Oct 2026 01:20:14 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:b59f2c40f5844a1b55b0cedc9a6667322d79f60f0d9417c6aa64ea00b916965b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2859533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6549e8e2e314e8a6a061d3ddac572f369b4f1ea666e44bfa1417928c11b9dcbe`

```dockerfile
```

-	Layers:
	-	`sha256:10ef391a6a6609997610838b92aab10ba27ce0d4add9f6c1c2c7c0e729d49e8f`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 2.8 MB (2824201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58f461baacaf10867e23527fdc261458bad565870ab9fb44bc6c9d8efd20ae65`  
		Last Modified: Tue, 06 Oct 2026 01:20:13 GMT  
		Size: 35.3 KB (35332 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; 386

```console
$ docker pull nginx@sha256:08da49e7dbe959c3082b2ec7086171946aa917c17db70ff7fe7add1687595688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64526191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab7e94ea3e830b8f5d510d33de3764645ce2ea7edc3d67db1ff5a750be20257`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 18:48:53 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:48:53 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:48:53 GMT
ENV NJS_VERSION=1.0.2
# Wed, 14 Oct 2026 18:48:53 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:48:53 GMT
ENV ACME_VERSION=0.4.1
# Wed, 14 Oct 2026 18:48:53 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:48:53 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 18:48:53 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:48:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:48:53 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:48:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:48:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87d5a733c889cae7175f35dbfde5e1a4fc5292956f80e9ec1334ce48ffc291b`  
		Last Modified: Wed, 14 Oct 2026 18:49:04 GMT  
		Size: 33.2 MB (33168282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743dedc1b11b684ca18f21badef5a53a92bde8b945817bc0a1ec855842f8901a`  
		Last Modified: Wed, 14 Oct 2026 18:49:03 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452941180a17a1f10c6d5916f1d3ca20248f5224939400f7fe46b8d4fe68d55`  
		Last Modified: Wed, 14 Oct 2026 18:49:03 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450b270f206d9b780cb60bb24390237f885a499f6a8e34819db75b998aae65d3`  
		Last Modified: Wed, 14 Oct 2026 18:49:03 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d106e38e7db2eb7c48d6bab8c78b119609552a91c4124973ab573b219d336b3`  
		Last Modified: Wed, 14 Oct 2026 18:49:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e252ae8f26139551b810965111ce1b1fb0657db55e51e48d27b4d6898339d507`  
		Last Modified: Wed, 14 Oct 2026 18:49:04 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:7eb7f3c98fb6755c2b0e0a5906256766cb6788a627870a9583e6d60b1f8e7164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2885169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942430f8d2eb564cebbc2f48da880633d73643de11cc6950f3f8c75527857449`

```dockerfile
```

-	Layers:
	-	`sha256:d34f2461c4b5d1167d6f20b33d08e765c1dab4a0af125a389ff83ce18598ac89`  
		Last Modified: Wed, 14 Oct 2026 18:49:03 GMT  
		Size: 2.9 MB (2850075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e71606366f4cf478cc8ab82a15cd54ede85e46baf97df549d6d119816f45a45`  
		Last Modified: Wed, 14 Oct 2026 18:49:03 GMT  
		Size: 35.1 KB (35094 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; ppc64le

```console
$ docker pull nginx@sha256:62fb280e72986681013df7ebd82f5d62fc8b7947a7ab8c8b9e3267297fece451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68321446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f3eec002e417fe8e46106e4e93bb666500acb2da8b4d5c3025fedad26a2ad2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 19:00:28 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 19:00:28 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 19:00:28 GMT
ENV NJS_VERSION=1.0.2
# Wed, 14 Oct 2026 19:00:28 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 14 Oct 2026 19:00:28 GMT
ENV ACME_VERSION=0.4.1
# Wed, 14 Oct 2026 19:00:28 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 19:00:28 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 14 Oct 2026 19:00:28 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:00:32 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 19:00:35 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:00:35 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:00:35 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:00:36 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:00:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 19:00:36 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 19:00:36 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 19:00:36 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ebf5fde0bf959ac84ffbe50d621d599e64f26a9f5870cd23c3b718325b35580`  
		Last Modified: Wed, 14 Oct 2026 19:01:01 GMT  
		Size: 34.7 MB (34665229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed25a284fbd43c7f4db50e9dab90fcc6b6c164a9cc9ca61d835ce3573b37da2f`  
		Last Modified: Wed, 14 Oct 2026 19:00:59 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5345cab053d459d9357e08bb4c54f20f07738a3c66e4a28e0fafb1c34d94f8bb`  
		Last Modified: Wed, 14 Oct 2026 19:00:59 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68388c130745c77e9aa7ea8154626e831c0f3ad15ee5239919446ca16fb72d48`  
		Last Modified: Wed, 14 Oct 2026 19:00:59 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e06b95ef894102c3e800ba4807f367d3d77d2c77a7f0486577cc2ce15b524f4`  
		Last Modified: Wed, 14 Oct 2026 19:01:01 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fff08c4a72d639dacfa03c8d72ac97ee3d7cec51ab2abbeade58769d1e15faa`  
		Last Modified: Wed, 14 Oct 2026 19:01:01 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:6a9e6683e8653cb571a39758a4d217f4bb924e97bc585847892044f3ae4bbc20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40d9f7e38db8ce7011a2c018d1bf7555b47f2023f5ff000351b20ed5326c971`

```dockerfile
```

-	Layers:
	-	`sha256:a0c7f7141b7c69425d7a1edc078b95a322119faab2060d4d35481f56c473267c`  
		Last Modified: Wed, 14 Oct 2026 19:01:00 GMT  
		Size: 2.9 MB (2857780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4809cf4d7d4afb423b2f372f7162db77ef88bd5acaa098557ba8d1f02f25dc06`  
		Last Modified: Wed, 14 Oct 2026 19:00:59 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; riscv64

```console
$ docker pull nginx@sha256:9f1d10e21b690941793f76cbc6df29a8974ac2815dcbbb6d850144fdd53369ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60724615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f608302f44f25bf44359e295fa3275e9805bba91daff196ff31c20e166e86f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 03 Sep 2026 12:24:29 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 03 Sep 2026 12:24:29 GMT
ENV NGINX_VERSION=1.31.5
# Thu, 03 Sep 2026 12:24:29 GMT
ENV NJS_VERSION=1.0.1
# Thu, 03 Sep 2026 12:24:29 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 03 Sep 2026 12:24:29 GMT
ENV ACME_VERSION=0.4.1
# Thu, 03 Sep 2026 12:24:29 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 03 Sep 2026 12:24:29 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 03 Sep 2026 12:24:29 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="1af7a14fb6b8810a4dbeb7dd793c8ce63dc78247041a529738ee220033cb6ec1cf74026e0849842f334894bf4725b4e03500eb6c2c809e628d54cdc8431f33ac *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 12:24:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Sep 2026 12:24:29 GMT
EXPOSE map[80/tcp:{}]
# Thu, 03 Sep 2026 12:24:29 GMT
STOPSIGNAL SIGQUIT
# Thu, 03 Sep 2026 12:24:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c01a4f9af004592ad31a072eac1bcc9d65943926eef65a977e185440edd3cc`  
		Last Modified: Thu, 03 Sep 2026 12:26:04 GMT  
		Size: 32.4 MB (32423539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69f15f17897fb3b0a343c1b77ca624fe6d93350e5971056557b556a5a8b704d`  
		Last Modified: Thu, 03 Sep 2026 12:25:59 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794243aabb3709cd46b24eec1cdb53fade9efdbfcec8756c78ab0ef05e839357`  
		Last Modified: Thu, 03 Sep 2026 12:25:59 GMT  
		Size: 959.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4aee3a98641446b442580195df84016ac154a42ac3aca03c64afbc8300ba35`  
		Last Modified: Thu, 03 Sep 2026 12:25:59 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d578da7633d7e42c19f232f4f326e3d3515f2dcfd21f7ce7a150c33b3709917`  
		Last Modified: Thu, 03 Sep 2026 12:26:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c1562664d170dfd0746e1a3bff52dc7ecf763f95bb794f2900e09600995253`  
		Last Modified: Thu, 03 Sep 2026 12:26:00 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:aebba161d93e7ba5e9b3d337b3e1d56cfc562b3c56321b2f1f6e6d886f2ae6bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2870598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6692401de739a4878b2092386ea7da0c2b4b420e702b2ece1a0f1d62948fff`

```dockerfile
```

-	Layers:
	-	`sha256:5493ca9053612d26a0a5d0d1caea9fc8b75c80acd6d0f9cf0b283ad2147e19ae`  
		Last Modified: Thu, 03 Sep 2026 12:26:00 GMT  
		Size: 2.8 MB (2835362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:921c1330c40b14dc442987119a09fc3925f3a69bbc6ccce624a4076e5ac68ace`  
		Last Modified: Thu, 03 Sep 2026 12:25:59 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-trixie` - linux; s390x

```console
$ docker pull nginx@sha256:c2c3dc7c36f4a57036bebcf420304ce7b5595719282c0cf92172e82461195c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61517752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d13dd7d3d15de9e96b9c8a5eb93143740d7105ada9359fb8f5b148f11fcb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:23:36 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 06 Oct 2026 01:23:36 GMT
ENV NGINX_VERSION=1.31.6
# Tue, 06 Oct 2026 01:23:36 GMT
ENV NJS_VERSION=1.0.1
# Tue, 06 Oct 2026 01:23:36 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:23:36 GMT
ENV ACME_VERSION=0.4.1
# Tue, 06 Oct 2026 01:23:36 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:23:36 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 06 Oct 2026 01:23:36 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="2c5d692f7ffad335e20376eca8a94f21ec11acd32c2a043e12681546b05503e6e1eb4ad03ca145ff944e8851a16514d692faf39da80d83dda5f34ec5353ecf14 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 06 Oct 2026 01:23:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:23:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:23:36 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:23:36 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdc5fcc8e86043b42df97bc2866e648c2a65a6e929f333a11964c7504bfb94`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 31.6 MB (31603899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0333337039cffa8e201656dfbc443a82cd4a203e9da9386ae45db41d887f49c6`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c36034e8f9a42d96fa56ffa69cfacf87df462cd82cd8eb83f49b8339ff71e8c`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d49f7c521df8185ecd3dadaf7ee4e16f169708446f9f39d3450fbe94b151df5`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681d602676618d58be22bc064a9d3a9b75b4008529dd673e0a203feecc9f7c2c`  
		Last Modified: Tue, 06 Oct 2026 01:23:51 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3fb1e08b8affa09a7158c3e0cc3889243686b0b8a4afad007e5a09043dd3a4`  
		Last Modified: Tue, 06 Oct 2026 01:23:51 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:0a703cc914a9e2f06f66dc078fd3d8298c2a1f346f2bf79e732a6c01d70a52d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2792189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0505aa5925bd31f0dd149afc3279e4d88cba54d3fdda69523bdd44f27ab7e594`

```dockerfile
```

-	Layers:
	-	`sha256:a91ecf71a576e3bc21e6a6f05925aa1bbe56daf84fe0329655ec61b1e6eeabb7`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 2.8 MB (2757033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85171a18c19c2b46f186c5099e670c62acfad6264b74fbeae6be1eb90b84d627`  
		Last Modified: Tue, 06 Oct 2026 01:23:50 GMT  
		Size: 35.2 KB (35156 bytes)  
		MIME: application/vnd.in-toto+json
