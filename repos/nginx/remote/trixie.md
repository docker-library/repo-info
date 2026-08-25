## `nginx:trixie`

```console
$ docker pull nginx@sha256:4fee1824d2ad02ba8ca5909f2dfb1c53943a3a198e037d3246dad5db92141a8a
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

### `nginx:trixie` - linux; amd64

```console
$ docker pull nginx@sha256:90c24d7f26b915f11b1f8e621ead4706b7e933de986498120310a876bf30dc1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63327223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38becec41bfad1ab0ac77eb1626c569fea6a8f39e59436880f61bdeed477226e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:26 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NGINX_VERSION=1.31.4
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:26 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:26 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:26 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:27 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30576ad53d33c89ecadcf211841487ff9f3db49d744e7096acfc4765f316a1bd`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 33.5 MB (33529974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f66660faa65baebff9440cb28d49109a03eec637fc99fc8074b798417665c2`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657dd7fba849a5fd034c9e4cd084ca62986eef1eb25c3abace4c51cd726cecbe`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90544874aaf280ce79389587c3b890bdcc91a78213e426bae6a058a0db3cd09`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f655e1bd5c1c8c90857796fecd31634110bc8692c96fdb30a5b76070663082f`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a35a4e59186daad02e5ee6e81b05a94b301e1e6faa86f78e93b47ad60dd0d48`  
		Last Modified: Tue, 25 Aug 2026 00:22:37 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:ecda39113c8ab51728c68b85221c0288b5d9b609014ad01dd4292fcfbf74bdda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2853179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe1540f478fd77b20f7a6687a2ffaf7f1f0be40e0b74218dd678d299a69df5c`

```dockerfile
```

-	Layers:
	-	`sha256:1cf64d45fa0f8f69f9d495bcc57bfdc694b0374ccc3cd513db12c3030816a417`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 2.8 MB (2818023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0649adc94d98811d3007086891b38d3fd07a5307e48f98a4594564514aba462`  
		Last Modified: Tue, 25 Aug 2026 00:22:36 GMT  
		Size: 35.2 KB (35156 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; arm variant v5

```console
$ docker pull nginx@sha256:442f3dd549c8750c2a7f1d4d9639f003b08a393d32ed13d02b7285176409b391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57025463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012381571fac072d54c1aae637819dfa14d402855510ed4054b670197d372e16`
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

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:0dfea8046dfa75a40933444052a7a697d5a05387d6460cd3e33822d7aedd5fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2879469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa6fcc09048ff7dd6736dc8aa3d675a6b6a844d0f0f6bbdf89d8ebdb1460fef`

```dockerfile
```

-	Layers:
	-	`sha256:f7aa6087d5db6973870b4382ac320b9cec26b6f91ce500d989e474d7dadf8d5d`  
		Last Modified: Wed, 19 Aug 2026 19:18:07 GMT  
		Size: 2.8 MB (2844185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7faf129aec51f77a262752d8ad84826811ac87e4c32b522fed7af384ef553593`  
		Last Modified: Wed, 19 Aug 2026 19:18:07 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; arm variant v7

```console
$ docker pull nginx@sha256:256c25f61c19be3ef4e7a3af21fe72642bde2c0d69b552122ee5f808d76ca956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52699712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c603dd39915397232f95e54422207775d3adfa9036186400594a42b55d1eb24b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:28:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:28:38 GMT
ENV NGINX_VERSION=1.31.4
# Tue, 25 Aug 2026 00:28:38 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:28:38 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:28:38 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:28:38 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:28:38 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:28:38 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:28:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:28:39 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:28:39 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:28:39 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:28:39 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:28:39 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:28:39 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:28:39 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16edaa7ba8634ad88cfde767974766f1f5e8761d8c97f913a82959bad38f88ea`  
		Last Modified: Tue, 25 Aug 2026 00:28:48 GMT  
		Size: 26.5 MB (26475968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420200f2a7aecf53b81cb3cec92fb92e03af00dc6b3080e9afbb23a78e8335a1`  
		Last Modified: Tue, 25 Aug 2026 00:28:47 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b8b93e6cc12aff5ae3069a496e439159414715fd951e0e242609e7a168fa38`  
		Last Modified: Tue, 25 Aug 2026 00:28:47 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3635d87bfad473118fe9cbc7c9ec7966fc99ff07b260954a456532d308662`  
		Last Modified: Tue, 25 Aug 2026 00:28:47 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af6355eb16b83ba09d7a3902088746c3f0b62e66cb84881cd4e7fda305904f4a`  
		Last Modified: Tue, 25 Aug 2026 00:28:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb489dc42ed150ff8aa94eccda4c4d8cc478dcac2878b47b2c98ebdf086827`  
		Last Modified: Tue, 25 Aug 2026 00:28:48 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:2608dfc26a1da63a9f7c1063e5070ec4846876823b12a65d88089d478b655748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989932f59781e203a27cd3de86604936746e70297bbeebab846541e101f78d90`

```dockerfile
```

-	Layers:
	-	`sha256:3ffe73a92db2c8340a5a94f08c97bcb3525ceb6df77439e4fd8947acd7829ee1`  
		Last Modified: Tue, 25 Aug 2026 00:28:48 GMT  
		Size: 2.8 MB (2842930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:425cde65cf264051a757a1492a5a487be2bd9f56a809f59b795cd4bfd4154693`  
		Last Modified: Tue, 25 Aug 2026 00:28:47 GMT  
		Size: 35.3 KB (35284 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:5d648407b81c4f382e0a5f6cda6679a9c38c04a28474f2d7ef5e2aa54c4b45f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61675989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319a155dfac2f58797f74c6340c7e5204a1555aa6e54dca53c808b142e63e6df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NGINX_VERSION=1.31.4
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NJS_VERSION=1.0.0
# Tue, 25 Aug 2026 00:22:11 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
ENV ACME_VERSION=0.4.1
# Tue, 25 Aug 2026 00:22:11 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 25 Aug 2026 00:22:11 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/mainline/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="3a120b9b79bf0a215a5f24a727e893adaf1190a8ed7ff8f236a19e61ac14b4342f5fc1daee5b2518f929b42868fe3225a72541f94a17e9417a0bc2f0c3a244f5 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 25 Aug 2026 00:22:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:11 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:22:11 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:22:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40321755fda21aa32af303aca1304ef7561cde6ad32d3b9a8a09914299813dd`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 31.5 MB (31511808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd0b5c40378d812e3b1856789e85cdc8ac29a4341e0bc4806b59be8378df36a`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657d8ed3a7e7ea0348e41724f234db186c69060b90642879eaaf6edc7db9ed92`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b736e8f7b87e33bf6c4bac563cea06322c808adb256972bb34a82ed846295665`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4f6f0376f04881e75a5e31a8f021c67751f643df2eee64a2505e710d7e1155`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe80b5eb1db75681be60aaacd907a8ad2d1f51106ce8e7dad1c69272c6e0edb`  
		Last Modified: Tue, 25 Aug 2026 00:22:21 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:26ab054d0f7753ffcfddcdf4f4e691dd416eb301c8a58356ad61beffa4b0448b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2853831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6e31d7723d74b49ef373675fdeb9d7d69ce1a1b899e3f545b73cc219b20f27`

```dockerfile
```

-	Layers:
	-	`sha256:d09a49c647a46bc299bac042cb31e6faeacab7ee7e85423097b63c9b4db07917`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 2.8 MB (2818499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d89aef1bc4ddae599d21e24f58300cbc5ec75c872b4300e4353ff97b530b85d3`  
		Last Modified: Tue, 25 Aug 2026 00:22:20 GMT  
		Size: 35.3 KB (35332 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; 386

```console
$ docker pull nginx@sha256:3205c8e47ec80357934b047db93af7ef86f95f9ae613a8f8d59de3c943821b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0766fb6daef2419e764cd51b65f29e0776584dcbd43e62105030d7b7b84fa7e8`
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

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:fd94091f774ff9385b0b5e1f810398c41072469c624ee7ce92b5dc09d878d19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f2f78aa288e04492c210cb3729964797b78b087d9a247f6bb3a1f028309aeb`

```dockerfile
```

-	Layers:
	-	`sha256:edbfd55244a1c36758b1dd0b70e519cd2b06a5206693a08938ba766e60527e47`  
		Last Modified: Wed, 19 Aug 2026 19:14:52 GMT  
		Size: 2.8 MB (2837881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0fa3ba55549e56b64b0a0d7c5aa91b71a2801459fe238d2ab0d4f19ea7c736`  
		Last Modified: Wed, 19 Aug 2026 19:14:52 GMT  
		Size: 35.1 KB (35094 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; ppc64le

```console
$ docker pull nginx@sha256:079b9e8ddbebf297286162f340ba73f41e2ce45e78df092c8312f1221248796a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70861043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05b52d799850fa9bda8b66c8f2a7d1fcff08f12e649bebbde59f60ee83440cb`
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

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:32d727aea9a254599c2af5bcc8020d73f6c20bdc274898917df73c27083f1874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2880811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467792ad470c685bea9a8437195128223b66d2d97420fe2ad3d8b085761c2261`

```dockerfile
```

-	Layers:
	-	`sha256:8e1ab91f64518d5174a8dfeace19860a3b75d892241e6e48c5530eeec5209c05`  
		Last Modified: Wed, 19 Aug 2026 21:13:55 GMT  
		Size: 2.8 MB (2845575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19824bc18b718f6c6dabbf018cf13d9bff5de32adb25c00e8978298086a33a00`  
		Last Modified: Wed, 19 Aug 2026 21:13:54 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; riscv64

```console
$ docker pull nginx@sha256:3790b715efb7383168389bc071ca3b11fc31f44e1efc9e5350b0b2614c636dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61132999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5feeb489879e5020771c30170f3f086aeac78960b0e11fe6863dd66f5214fabd`
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

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:8fb30758ff9ae1a9cc4b244331c1fa76aa7fc162494efc25743ab11a23e102b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2870598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2cbc6819b8d08eff7079da4f1a57b4628a71becfa5203ce6ea25f0c98e8c53`

```dockerfile
```

-	Layers:
	-	`sha256:59362297aa2700b5754cc0fa2f913b21ddcd61ba4b60ce1bae447ba810aaa938`  
		Last Modified: Sat, 22 Aug 2026 21:05:39 GMT  
		Size: 2.8 MB (2835362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a56338d0b68fa5b7b409afe033617ed9a50663725ce47628477be35ad554ab7e`  
		Last Modified: Sat, 22 Aug 2026 21:05:39 GMT  
		Size: 35.2 KB (35236 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:trixie` - linux; s390x

```console
$ docker pull nginx@sha256:5712f06c8f5a4332596ff30fa16ae6c2ab32fe057ac38105ed8884a12acb1c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63723684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b4009b8b804ac2f24e11aed16730bf779ef5ed26e30059d3fa0809e7103184`
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

### `nginx:trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:dde054910b7a630be1ab8d84c2782d95e0eb7bb0a08a5fc44566290f11e0b7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2786487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d669d0c9dbe2987ad5e1b61db82292cdc6a9f13ca710f9a1fd09c675d28380`

```dockerfile
```

-	Layers:
	-	`sha256:bfca0a3b3a4ed9d4eefb6a363de0b3917d42991141be57de74c4dde41c949211`  
		Last Modified: Wed, 19 Aug 2026 19:21:26 GMT  
		Size: 2.8 MB (2751331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b4d55450224d127d282820a6fe75693d5dbeb66d06ef729580924ed3c56b7e`  
		Last Modified: Wed, 19 Aug 2026 19:21:26 GMT  
		Size: 35.2 KB (35156 bytes)  
		MIME: application/vnd.in-toto+json
