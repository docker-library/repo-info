## `nginx:stable-trixie`

```console
$ docker pull nginx@sha256:f12e4e280502f79dae4488c9f677ab3ebe8a7079818bbfbf3242f236bac64d34
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

### `nginx:stable-trixie` - linux; amd64

```console
$ docker pull nginx@sha256:909063468649748c84e0fa2a67869c7b0b2d431c72b73cf654e4052f1e2d2937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63618151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d8f012a1a7659f355c0930b4c8c8768a17a9f44a1d38d4fd7276a5096fcccd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:04 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:18:04 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:18:04 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:18:04 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:18:04 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:18:04 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:18:04 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:18:04 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:18:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:18:04 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:18:04 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:18:05 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:18:05 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:18:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b532f970185097f99c95d02432040865c414d22e6f477fcbe901918da15ba909`  
		Last Modified: Thu, 05 Nov 2026 07:18:15 GMT  
		Size: 33.8 MB (33757420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7214361b33f0462b6899f091dc02e3a9123bce3fb5234b253eb60f1c9709f0e`  
		Last Modified: Thu, 05 Nov 2026 07:18:14 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbdc282ecf59ed1b62770eec8081ef3d61b2bc671a336515863bf7fcb0eb4cf`  
		Last Modified: Thu, 05 Nov 2026 07:18:14 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0452afd4ee7e22be5a91fc48a2d9350f8cbc6f4fe3a063deca564de85f8d97`  
		Last Modified: Thu, 05 Nov 2026 07:18:14 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e2dd8a623684051a13ec78e047265bf497c1d10dd2e60c00874d7fb0a9d926`  
		Last Modified: Thu, 05 Nov 2026 07:18:15 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc2bc44a8d35bd01dcdb2bf973fc8a4d23fad4582432a3f5739919bf277119d`  
		Last Modified: Thu, 05 Nov 2026 07:18:15 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:0278a24367108a270289df0903a8c2633fce956df18e0456a83822202bc77e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe84b71bb63d7b7009dcfe2119a889ce8f4d29099d2d8a012c610790539710c`

```dockerfile
```

-	Layers:
	-	`sha256:47835a5e6782fe2d0bf81abe0597a5f5b3a9aab5c12d3ffa7729526804f1b905`  
		Last Modified: Thu, 05 Nov 2026 07:18:14 GMT  
		Size: 2.8 MB (2821290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e24db3ea44b530b1c78e6813aa918518c9b7bd06f754b82cbb4a42ef12132a1`  
		Last Modified: Thu, 05 Nov 2026 07:18:14 GMT  
		Size: 33.9 KB (33943 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm variant v5

```console
$ docker pull nginx@sha256:6acc0b0ae42700d272432d6c3fc5a9ea4729bf9c9e0dc635cfc8246871dcfc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54747914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e92c3d5c81d157bc64a0ecc5434655683c2048cfcfb221bfe919b432422958d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:23:49 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:23:49 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:23:49 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:23:49 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:49 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:23:49 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:49 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:23:49 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:23:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:23:49 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:23:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:23:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f62e7b4ae5f9ef1f664de823ab2cba9ae26fa03b2c90c1d5819f5c0d77cb3b`  
		Last Modified: Thu, 05 Nov 2026 07:23:58 GMT  
		Size: 26.7 MB (26723690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc86d8854417b91506f4c7c831a542929deabfd7c4f16d028936d70f7492683`  
		Last Modified: Thu, 05 Nov 2026 07:23:58 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b32b3a09ce34544b3e574d39288428f7c04806686d62bcea79af15b2e4359a`  
		Last Modified: Thu, 05 Nov 2026 07:23:58 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05144cf357e1864081d77fa5e5d67c97457e95b2e1a7cf629bafb1473e817c05`  
		Last Modified: Thu, 05 Nov 2026 07:23:58 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed0192ffd8e54f59cd37b8f301275c0886e5ab60188b882db8076fa2fc297db`  
		Last Modified: Thu, 05 Nov 2026 07:23:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37caec42a167c7b0bab686ba4262a4a1e9b37f009da1de6d20c6cb8d6df8a6b`  
		Last Modified: Thu, 05 Nov 2026 07:23:59 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:041f2032ebfcbe0361ee6e7306548c65bceb7fa5663b8e925019d7f44704a641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2881459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a44ac353299d1976bd166aa4f8c3fc7bc9775fa1c5ef8dc49c56ebb1365165`

```dockerfile
```

-	Layers:
	-	`sha256:ccb6ff622164caa7c3d9014db122d15f20e24ee2a0f5a88f468b765f6d4b9cb7`  
		Last Modified: Thu, 05 Nov 2026 07:23:58 GMT  
		Size: 2.8 MB (2847420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee9c2519aedbebd3f071c2e78b4a0b8b0613285e3031f5f902b9d40cb8c3644d`  
		Last Modified: Thu, 05 Nov 2026 07:23:57 GMT  
		Size: 34.0 KB (34039 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm variant v7

```console
$ docker pull nginx@sha256:46a711fec4929bac9f1e0fc3ef0a2cde16c8f7da6122b025c6e8810230d69ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52924303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7ed8173fc53da392903fc67ca9647b9fa6955243dfce16525fbb44b12cf5d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:27:49 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:27:49 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:27:49 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:27:49 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:49 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:27:49 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:49 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:27:49 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:27:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:27:49 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:27:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:27:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efbf6ed5a83887da0e8fdb58566981bd9097432893cc4e035ec38c071b65fc5d`  
		Last Modified: Thu, 05 Nov 2026 07:27:58 GMT  
		Size: 26.6 MB (26646779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531c04eb5eca6ad62780c5fa5529a743bfadd6e4a41f8061a63aa5354f015529`  
		Last Modified: Thu, 05 Nov 2026 07:27:57 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0102511e9f8eda28cba5b97a038fc89b787f4a17fddb7da2eb82a50ac7a64f73`  
		Last Modified: Thu, 05 Nov 2026 07:27:57 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa3dedc57f4a95ef9a47767c01fbcec6dbe2e8d8e863192152a94c84556f459`  
		Last Modified: Thu, 05 Nov 2026 07:27:57 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20eb80e6a7e563362abff2aede11074ec040e9aa30fc37dc03ea4ee36561d4`  
		Last Modified: Thu, 05 Nov 2026 07:27:58 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102a87df93eb20a2faf953ab5f1833f871928c1fee82c55a15537c012b9a592e`  
		Last Modified: Thu, 05 Nov 2026 07:27:58 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:8d5e42ae9ad05f5c1dfd01ed33dfc9d83d127faa87fb5459928b8d3889e9e8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2880204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddf3fc62149da4c13b29b7720cd8fd302d08f62be1322bf76e6ecf403a86317`

```dockerfile
```

-	Layers:
	-	`sha256:88c464c4af19b8bf73d4a71dfe4868a01bf4796d22395adda089c840d1722475`  
		Last Modified: Thu, 05 Nov 2026 07:27:57 GMT  
		Size: 2.8 MB (2846165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d4c4dc7d2c64e51c6e1ff9b6e4e6d4d67c26d01cffdcab3892504521585e876`  
		Last Modified: Thu, 05 Nov 2026 07:27:57 GMT  
		Size: 34.0 KB (34039 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:7741be97ccd75a002a9a6a86a50fda07fdc990b71c486ee170af517749f0aef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61888749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad89dd605752159fd852de0a3aba245fd27fea42ab318a1a220471c1585cccad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:51 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:17:51 GMT
ENV NGINX_VERSION=1.30.6
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
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
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
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11abe7511847a54f412dc1ab76eca8d89e7c6d595aee03782ad94ccf0eabc20b`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 31.7 MB (31670107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7344a66c22e15aaad06520679cc7daf8f865c675b3de84350bdf8887b98a5d28`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ad868b57bd6dac70797aeb676bf4df6fb0d05cf650abcf6a149072aebeae60`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bdf64844a8b79c792437923a41710a447ec7ec7e366588df2daad2aa316ca9`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440e9f4fbfdca01ccfd418e60ee4b5ec9d3092aa03c8bdd884c0ccf3879efc08`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8222263e11bb0b6971ab88f9f80e84fb7f661ec0e3c4167ca870e525d7619089`  
		Last Modified: Thu, 05 Nov 2026 07:18:01 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:c1f673b7d0bb0b4768bb213e372ff24b34481fc63403b5466159bda13c47de7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2855789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fb2a0f56540fa7d86dda0622c07701377443feaa2db7d7dd89ee8f5f1be5f3`

```dockerfile
```

-	Layers:
	-	`sha256:f19fdec61154dad88d35b6ac591cee734417f0a6459430f9f42c8c23c5d7b5f4`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 2.8 MB (2821718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8126989f03832ecadef235f7ed27ca9d6e3d9a46d94af20826aac06cce9a567c`  
		Last Modified: Thu, 05 Nov 2026 07:18:00 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; 386

```console
$ docker pull nginx@sha256:c7fa43f1c9551a7b200c553a5c3781380b5153d3b887b5fd2b11e62de03c2387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64104682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984c43dfa3bf7013fa8f1ed9174cb631d1c917b24069420c50844fb4e8c6995f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:21:50 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:21:50 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:21:50 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:21:50 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:21:50 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:21:50 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:21:50 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:21:50 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:21:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:50 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:21:50 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:21:50 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d21522dcc2cacbda90ffd23a1529cca83d374932d8570006d1a72621b20b0c`  
		Last Modified: Thu, 05 Nov 2026 07:22:00 GMT  
		Size: 32.7 MB (32729311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597be4eac9c5cae0a4fa17f7f06b463a10a6efabb07588ff82b2c552a2111829`  
		Last Modified: Thu, 05 Nov 2026 07:21:59 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989afd80918e8bd706e45e9c99a1824f6b814bd05b8623de5f9d40b33f3a185b`  
		Last Modified: Thu, 05 Nov 2026 07:21:59 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b3ff2beb3207b4f3971683ab7e7dbc59abe3d716525b5fb44c182db11d1d1b`  
		Last Modified: Thu, 05 Nov 2026 07:21:59 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e9647588887f2cfccbe7c9249a07de044ba5e7af6786ace896be7039326017`  
		Last Modified: Thu, 05 Nov 2026 07:22:00 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716742e0d4c04ef01eb925e3c97b558fe2e1bd05cc1016c7fb1be873aec72718`  
		Last Modified: Thu, 05 Nov 2026 07:22:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:0fe5ff72067e4b708f2bc9f240ee427d4091fb3af2857c3e714666f098d4fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5745ab876acc4e7d5ab6c58c85755351d8d0604423addc2c6198bbdae974f3`

```dockerfile
```

-	Layers:
	-	`sha256:4822d6a64aabdbdeaa36359ef7c3b44e40b2b0b7484f4abb3bff9be805ec74eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:59 GMT  
		Size: 2.8 MB (2841168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffa8b25a71a0ca09552007d2aaf4997bda78b8c0f2e1e5dd5b92341ed4f6c299`  
		Last Modified: Thu, 05 Nov 2026 07:21:59 GMT  
		Size: 33.9 KB (33901 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; ppc64le

```console
$ docker pull nginx@sha256:ccc9bbc95085c6d21c22e17f4131626b92d381c388d1fb5b1d1604feecf270df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67834420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0d43d36870cfdcde45e9357fc9aa10c6b0b0d3be0295ba600da46d43d03e44`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:59:54 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:59:54 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:59:54 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:59:54 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:59:54 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:59:54 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:59:54 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:59:54 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:59:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:59:54 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:59:54 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:59:55 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:59:55 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:59:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:59:55 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:59:55 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:59:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e84288c96faafac1220f32e5c23ddfdaf2fb93645e307c7614994a5930472`  
		Last Modified: Thu, 05 Nov 2026 08:00:19 GMT  
		Size: 34.2 MB (34162174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c78846b1d065ea2b2c124f43ac7c82da4d3f4488ef814355d041ffc63911bd`  
		Last Modified: Thu, 05 Nov 2026 08:00:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0331e68458b6b33700f3af4c2e1a153378ff094b1a32129f5c133ec99d90f6df`  
		Last Modified: Thu, 05 Nov 2026 08:00:16 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152dd1751f7824a46a95fe781b819746a58f5394222eace061c3d8521d6e6c0d`  
		Last Modified: Thu, 05 Nov 2026 08:00:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e148089e01731dc697dbf7daa4b11eee1e6aa54c079db0c9cd9e91def99597d7`  
		Last Modified: Thu, 05 Nov 2026 08:00:18 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75d0a7cd14016a715134853e9c78ce525a600c441ba4b89ed226cc17b0a0946`  
		Last Modified: Thu, 05 Nov 2026 08:00:18 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:4931e2d180a1f4e0bd982ca47e190609a744f00129ad0fe9ab55483a5a2c31cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2882817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd647f0d12186030e6b5d0aa12a486c7375feda286e0a760751d339a9cad9cdf`

```dockerfile
```

-	Layers:
	-	`sha256:2d8d3e27661d5b03f80e4ed241b25d05259c7b87ef095714d32823b8ce4ac636`  
		Last Modified: Thu, 05 Nov 2026 08:00:17 GMT  
		Size: 2.8 MB (2848818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a03cc89facb24111cfb5212fdbbfc626ac9722a5a7a352c8f6ab303c8eb114`  
		Last Modified: Thu, 05 Nov 2026 08:00:16 GMT  
		Size: 34.0 KB (33999 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; riscv64

```console
$ docker pull nginx@sha256:7b1e13abdd678c4fd04b4169c06b765e48bb62464775bd76619a70692940409e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58286205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c91a19b4597c77fb58cc3e1a855fefa11c5f74b0fcd729b316acb0c0dab918a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 23:41:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Oct 2026 23:41:39 GMT
ENV NGINX_VERSION=1.30.6
# Fri, 30 Oct 2026 23:41:39 GMT
ENV NJS_VERSION=1.0.2
# Fri, 30 Oct 2026 23:41:39 GMT
ENV NJS_RELEASE=1~trixie
# Fri, 30 Oct 2026 23:41:39 GMT
ENV ACME_VERSION=0.4.1
# Fri, 30 Oct 2026 23:41:39 GMT
ENV PKG_RELEASE=1~trixie
# Fri, 30 Oct 2026 23:41:39 GMT
ENV DYNPKG_RELEASE=1~trixie
# Fri, 30 Oct 2026 23:41:39 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 23:41:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 30 Oct 2026 23:41:39 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 23:41:39 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 23:41:39 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 23:41:40 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Fri, 30 Oct 2026 23:41:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Oct 2026 23:41:40 GMT
EXPOSE map[80/tcp:{}]
# Fri, 30 Oct 2026 23:41:40 GMT
STOPSIGNAL SIGQUIT
# Fri, 30 Oct 2026 23:41:40 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c32c0904a685b0e7154d9bd3189b8c645a02e2fc235055307e6703193eb8aa5`  
		Last Modified: Fri, 30 Oct 2026 23:43:14 GMT  
		Size: 29.9 MB (29935919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ba07cdd80f333eecd71900ac631af933379fe9d6cee426dba01b6b00c4ac9`  
		Last Modified: Fri, 30 Oct 2026 23:43:09 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c845c6df0def85bafe00181280f4573ff9c28074ef79b87cdde51637e95817c7`  
		Last Modified: Fri, 30 Oct 2026 23:43:09 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fe3da42e4f4bd5e9b9b602683a82b9886de08bc1eddebfa496b723c4d8f999`  
		Last Modified: Fri, 30 Oct 2026 23:43:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4bc47177e2aa1576bcbd948c09149c5831634bcf002261747d0a637e66944c`  
		Last Modified: Fri, 30 Oct 2026 23:43:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6718cc8ce594c89b9e7881e27fa297d55b31ce934e3683751be29c90c23427a`  
		Last Modified: Fri, 30 Oct 2026 23:43:10 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:64c6da463feba70bb59a7ae015dcbef94c2a25a85f658ed79cab6605971d8121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f21f14a1fca9e87523b7c1e8cd4168d8a15fad1e0f530123db2e1dc341af64`

```dockerfile
```

-	Layers:
	-	`sha256:1b44738dc2d6155b7f493cf1c0593161ee6252ba2346d7b2962747b413b6a212`  
		Last Modified: Fri, 30 Oct 2026 23:43:10 GMT  
		Size: 2.8 MB (2838605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4145413b7c74a5d7774fc5f707eef0d6c7fcf0c70f395b982e4757584cc3b0d8`  
		Last Modified: Fri, 30 Oct 2026 23:43:09 GMT  
		Size: 34.0 KB (33999 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; s390x

```console
$ docker pull nginx@sha256:42032cb108078a878901271d217741ff92ffa5553f83c64d2c80c3e8248a4217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61238126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f79645ac4302ff20d4948e150778511585597f6b96a2188b085af4d91b31246`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:22:31 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 05 Nov 2026 07:22:31 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 05 Nov 2026 07:22:31 GMT
ENV NJS_VERSION=1.0.2
# Thu, 05 Nov 2026 07:22:31 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:31 GMT
ENV ACME_VERSION=0.4.1
# Thu, 05 Nov 2026 07:22:31 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:31 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 05 Nov 2026 07:22:31 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 05 Nov 2026 07:22:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:22:31 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:22:31 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:22:31 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1360a7dba9ea21003f4b61a998cfb44018b422e698df283ec3d43766bcd9b283`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 31.3 MB (31309394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65545400b8f41b88347a6113e9d5d6e3a99d8b5e88c9e63d2d77c93b71fea35c`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3fb4fad8a64a984b3f33c2813adb76d5bb017bce47aa586f10a9fce65eb257`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b0a6e0f1746af217b649ad6aec1d95bf8164316aa77aeeddf40d75cec8fac0`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93be0e0cee4f4d8bdf96c8293f04723f8b4b963acd0f895d6a005d1efd214bc`  
		Last Modified: Thu, 05 Nov 2026 07:22:49 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356f233b3097a7304ddbb36696c350536f013ca8c99c1ae78d99bdd613c55be4`  
		Last Modified: Thu, 05 Nov 2026 07:22:49 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:ed40a6df36a70db35fb2da90c4f2959a2ee3733d7da304695a00536503b4d2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2788541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffe991379da664a7dcac4c078dbcae6094c69d05063a4ebed6f331367b1e1f8`

```dockerfile
```

-	Layers:
	-	`sha256:2be505587579bbd40b96eab0a3dae02261aa3d4f35cdd264616abe7624a96dd8`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 2.8 MB (2754598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2662dae75a59a5ba1054c8720418d54bc6327d77e7870a51ebccd6b76a8d43e`  
		Last Modified: Thu, 05 Nov 2026 07:22:48 GMT  
		Size: 33.9 KB (33943 bytes)  
		MIME: application/vnd.in-toto+json
