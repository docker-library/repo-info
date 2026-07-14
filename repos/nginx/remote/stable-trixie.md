## `nginx:stable-trixie`

```console
$ docker pull nginx@sha256:b6edb43d9e6e3df4914ffee84030c41f84a9a8c38d9af9b0d44ee4ee295a0a2b
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
$ docker pull nginx@sha256:f1b57b559d612ec43ab3132f921121c0fb014770d748aea74fae138b8de4c953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63085843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3d0670b564a245501d0d88e0c02c8ba1f5b8989d0276e039a5857da4fdeb8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:44 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 14 Jul 2026 01:22:44 GMT
ENV NGINX_VERSION=1.30.3
# Tue, 14 Jul 2026 01:22:44 GMT
ENV NJS_VERSION=0.9.9
# Tue, 14 Jul 2026 01:22:44 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:44 GMT
ENV ACME_VERSION=0.4.1
# Tue, 14 Jul 2026 01:22:44 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:44 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:44 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:22:44 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:22:44 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:22:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6abab64a36a67445805419daf76f5ead08558c7cc1ba33a2a2884154c59b5a2`  
		Last Modified: Tue, 14 Jul 2026 01:22:55 GMT  
		Size: 33.3 MB (33300343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aacb9935344a5d8c0295436d9f09fc7c624ff303c37844cdcc5af3f91fb68b9`  
		Last Modified: Tue, 14 Jul 2026 01:22:54 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf044264be615393abb856b3256874c06e892ceae1301c08c996528a826a8e8e`  
		Last Modified: Tue, 14 Jul 2026 01:22:54 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0b599fd026d451aa5762f7856b57dbc94bbb3259ef3af780fdb13945087de`  
		Last Modified: Tue, 14 Jul 2026 01:22:54 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c78083f938f8e2a75b75df1c3d66704fedb2bb067ee1b29941082305b3628cd`  
		Last Modified: Tue, 14 Jul 2026 01:22:55 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11667ad8393c212ca3dad0a7551cd270c6b1380560a7b12d4dbb4aa06ddf82e3`  
		Last Modified: Tue, 14 Jul 2026 01:22:55 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:a45fb866bb1d3d04ceb43e33e0f71127034f654a4888ac8581198acf990d45c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2850382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679cf2712de1d0e5842176f1faf6002155978dc3b249480d72522e07dcd79c2d`

```dockerfile
```

-	Layers:
	-	`sha256:e0ccf88d599c754a225dc683a12b83a466ccfdd1f629343c5ca88ccefd83727a`  
		Last Modified: Tue, 14 Jul 2026 01:22:54 GMT  
		Size: 2.8 MB (2816439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d18932f6076c4c40119276f7faaf1a5ab4c0cd93ca4ea888efdd052340b2bbd0`  
		Last Modified: Tue, 14 Jul 2026 01:22:54 GMT  
		Size: 33.9 KB (33943 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm variant v5

```console
$ docker pull nginx@sha256:72cb41ee19d97d6680530a123370eb002cc95e422355cbb46cfc817871767e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54246002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf07d7fae2c030133c507041c4a41abce5b8ebab75f801e36f4461ef663297f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:28:02 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 14 Jul 2026 01:28:02 GMT
ENV NGINX_VERSION=1.30.3
# Tue, 14 Jul 2026 01:28:02 GMT
ENV NJS_VERSION=0.9.9
# Tue, 14 Jul 2026 01:28:02 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:28:02 GMT
ENV ACME_VERSION=0.4.1
# Tue, 14 Jul 2026 01:28:02 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:28:02 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:28:02 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:28:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:28:02 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:28:02 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:28:02 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a72c177c201322f8db89196c1462371896c4cd40701fdd4ca6715ecb21e96b`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 26.3 MB (26286586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c1a7a55599c00e9f7fe81b3ac6a29f4554566edf5fe890734185ea8a30d0b`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0babbf062bb608409311200fcbb82a7fa521dffa613cf1abc77c4743e6372cb`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93389b560e161373108eeefeb6832d978b4a8a089f4a8738d078b636623369c7`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8fa3d6acfb9b3c462b0ea30e2b269bf413cf3883c5cb33619748f0e2051412`  
		Last Modified: Tue, 14 Jul 2026 01:28:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59d6d779eb3686da50bf97d0bbb5c5365df6259e4e611ce472d6f82940d9c99`  
		Last Modified: Tue, 14 Jul 2026 01:28:12 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:22b38bbee025d744db2a7ad46f0618dba14c17ebdd6f41a75143bc760f94f6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002bbac3090571101fb8d88f82b3159e419b4664a7c220ab2f803aa5f6d83ecb`

```dockerfile
```

-	Layers:
	-	`sha256:2c33ca549a01024d46b6279b22470e5d8072e9753266a9e26ac0154bb7f183f1`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 2.8 MB (2842547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56096cef01f748018b4131d5a2dddd6cf9a367903f0c496a21d0a9bfa29b8857`  
		Last Modified: Tue, 14 Jul 2026 01:28:11 GMT  
		Size: 34.0 KB (34039 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm variant v7

```console
$ docker pull nginx@sha256:838f41c31131787e96fc761d3b6b99cd99f18db6da37442995dcf6953ac5691d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52447533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba92f9c311ed8197a38b884e90b6b63c90a7e7a90bf3dd915d090585dd2fd05b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:39:55 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 24 Jun 2026 01:39:55 GMT
ENV NGINX_VERSION=1.30.3
# Wed, 24 Jun 2026 01:39:55 GMT
ENV NJS_VERSION=0.9.9
# Wed, 24 Jun 2026 01:39:55 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:39:55 GMT
ENV ACME_VERSION=0.4.1
# Wed, 24 Jun 2026 01:39:55 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:39:55 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:39:55 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:39:55 GMT
EXPOSE map[80/tcp:{}]
# Wed, 24 Jun 2026 01:39:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 24 Jun 2026 01:39:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb307f8752a7773e96f112e30aacef8d82c7735943be978e94911a068d1fbe8`  
		Last Modified: Wed, 24 Jun 2026 01:40:05 GMT  
		Size: 26.2 MB (26231883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5999e26e8be696cbbbfa0bc11a600daff65f61e77bfd6982f23a8c4da34ea90`  
		Last Modified: Wed, 24 Jun 2026 01:40:04 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29439d9a71a06075fa3e2de098dcca083da1b9c64b68517716aaaa17b09048c4`  
		Last Modified: Wed, 24 Jun 2026 01:40:04 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc46d074f60dd6b62898450a1550ea78e892589006d8bb0a0ea8126443e80b01`  
		Last Modified: Wed, 24 Jun 2026 01:40:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c622098b286fa4d560266ec8b44c2ee57df1e96afc8a00d03a3217c9e235a133`  
		Last Modified: Wed, 24 Jun 2026 01:40:06 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014ffd6856e7797214902a6e464e44efa8de4b682eff7bc9a6c62eae9c7642c0`  
		Last Modified: Wed, 24 Jun 2026 01:40:05 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:b0757d84c224cb24d97f93bd6d3d90c341f33ffc82ed3ab7aab16dce44e2703b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f8272d28aeaf0f6a74ecbc20e57f7de1fe0588e102a8dfe3a74b0a365d83cb`

```dockerfile
```

-	Layers:
	-	`sha256:4cd48ff2ff07d22f40e83bbe7820c80117beaa3b0c0477e74ec41d2a3315236b`  
		Last Modified: Wed, 24 Jun 2026 01:40:04 GMT  
		Size: 2.8 MB (2841150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d23c3907885913ae05e88730a4154d20fbda7d539148996bfe1c35b7f68f85`  
		Last Modified: Wed, 24 Jun 2026 01:40:04 GMT  
		Size: 34.0 KB (34039 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:c2cba96986eb9208d257870ccce5b137588be15f8c3f78707b379d390dbd50f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61394683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59126ed2860fdc82c10efb5b17306fb4d5b251aa2be33c774f6e3a85187f365d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:42 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 14 Jul 2026 01:22:42 GMT
ENV NGINX_VERSION=1.30.3
# Tue, 14 Jul 2026 01:22:42 GMT
ENV NJS_VERSION=0.9.9
# Tue, 14 Jul 2026 01:22:42 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:42 GMT
ENV ACME_VERSION=0.4.1
# Tue, 14 Jul 2026 01:22:42 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:42 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:22:42 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 14 Jul 2026 01:22:42 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:42 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:42 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:43 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:22:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:22:43 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:22:43 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:22:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09759f22e4262b411ef23eec6559c94f205ccbb86c08c4968b2e74104b36c24a`  
		Last Modified: Tue, 14 Jul 2026 01:22:52 GMT  
		Size: 31.2 MB (31246382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a3ea29deaed91bbd0519f1b54f03e40181743ed26272d83cdb2ea86bd47610`  
		Last Modified: Tue, 14 Jul 2026 01:22:51 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86108659876b9901a0e61c6791de5614d4e51d4cb41a48cb27c3ab827f0d81e`  
		Last Modified: Tue, 14 Jul 2026 01:22:51 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e16a11221300b919a2007c4553bf3021f2ee542112146ffbaaa13eb55a577d3`  
		Last Modified: Tue, 14 Jul 2026 01:22:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0961aae1ced3215402163648b7a0b26638fd0922510b0648d1ee56523edae4f`  
		Last Modified: Tue, 14 Jul 2026 01:22:53 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f484ce4e9c91396441f6fff685ae95af5b44ac51b98f96f85e8d3f9d193501cf`  
		Last Modified: Tue, 14 Jul 2026 01:22:53 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:6603274a8cc7c46b6c96a79d96f567f7a01225a4af7bd16b8150340b2e33469f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2850938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3eff3045f47c13cebea608216e5edad8227eb15306e9e74ab27dbbcc28d01ca`

```dockerfile
```

-	Layers:
	-	`sha256:ada09eebdba04c203d05b990e6404655033d916e0f089332fe7d0c90ab5c1f18`  
		Last Modified: Tue, 14 Jul 2026 01:22:51 GMT  
		Size: 2.8 MB (2816867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26022a315218f71bea4e6678212053adc504fa12a228c39387ed1c1ff975059b`  
		Last Modified: Tue, 14 Jul 2026 01:22:51 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; 386

```console
$ docker pull nginx@sha256:ee6eb34c308d7c1c82062d46c896f3634c93ee9beeb65332e34239b4ecb9969b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63458616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2db8e0d1a1fa1f5a0d410824042e00cd7e1738faeccefc74e909d4f4584b465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:44 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 14 Jul 2026 01:38:44 GMT
ENV NGINX_VERSION=1.30.3
# Tue, 14 Jul 2026 01:38:44 GMT
ENV NJS_VERSION=0.9.9
# Tue, 14 Jul 2026 01:38:44 GMT
ENV NJS_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:38:44 GMT
ENV ACME_VERSION=0.4.1
# Tue, 14 Jul 2026 01:38:44 GMT
ENV PKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:38:44 GMT
ENV DYNPKG_RELEASE=1~trixie
# Tue, 14 Jul 2026 01:38:44 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 14 Jul 2026 01:38:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:44 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:38:44 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 01:38:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f167bda5528c37898cd1d547ffcbe75ee351a7059afd226d7be6b33b52c18e46`  
		Last Modified: Tue, 14 Jul 2026 01:38:54 GMT  
		Size: 32.2 MB (32157711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf426e5f10960a7d3656ae1a3be629372877e802a393a91d73a2c5c78853c1b`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084d67d398f53b358c516f81a7a0053561a4e11642ab9cb39957e8fcb71c8b7d`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bc39cdd671d0f397acdaccc7ae2b387f3f41adbafb48147b0d0cd38f2496a`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab7a595ef24baebb5dfa772a933e5c639ea8d918ac54ff9444819af60456022`  
		Last Modified: Tue, 14 Jul 2026 01:38:54 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9575fe7fabab26d6b6c120035904b5c68ddd9b44a5526dd795b2b0ad84511eaa`  
		Last Modified: Tue, 14 Jul 2026 01:38:54 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:fc5677431a353657a6519cbda3d6b3415f7452085f76a2bf9c4cb3923fc2c380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2870196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cbd2c74dc557ca8adcd68e2c860ed5d6db3771d8ac3b8086b44c16e2006f4`

```dockerfile
```

-	Layers:
	-	`sha256:9ade716411bd79a9cea077e06af84fb1d9267089f9a2494edbaf81f7901dc011`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 2.8 MB (2836295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b4afd61730e71480fd22e0fe130ca9a900cd6991b3352b1d28bb17c5b73b2bf`  
		Last Modified: Tue, 14 Jul 2026 01:38:52 GMT  
		Size: 33.9 KB (33901 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; ppc64le

```console
$ docker pull nginx@sha256:cceb91ed436974998c9f51e3a9d1a41a17462f9804604d469594b7306949f611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67212049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7eabe3bbfec83a2596701a16d6f41f9e17a45f209065522214880c20480f8d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:49:54 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 24 Jun 2026 01:49:54 GMT
ENV NGINX_VERSION=1.30.3
# Wed, 24 Jun 2026 01:49:54 GMT
ENV NJS_VERSION=0.9.9
# Wed, 24 Jun 2026 01:49:54 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:49:54 GMT
ENV ACME_VERSION=0.4.1
# Wed, 24 Jun 2026 01:49:54 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:49:54 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:49:54 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:49:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 01:49:55 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:49:56 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:49:56 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:49:57 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:49:57 GMT
EXPOSE map[80/tcp:{}]
# Wed, 24 Jun 2026 01:49:57 GMT
STOPSIGNAL SIGQUIT
# Wed, 24 Jun 2026 01:49:57 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a71d7b1319acfa074a9b394999a1e4b5928e2d114f088706a88d92b6726ffe8`  
		Last Modified: Wed, 24 Jun 2026 01:50:23 GMT  
		Size: 33.6 MB (33601059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2410bcca708dd6bd80c3987946446e1d4dc0150b370db50e31f2400c3ac9f2f`  
		Last Modified: Wed, 24 Jun 2026 01:50:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e47892743d6ee281ec06393647fe4f880a6c0880a135dbc559531bafcee542d`  
		Last Modified: Wed, 24 Jun 2026 01:50:22 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b36f2895356ef03bcefc3bc346c548b8e35e309317550968888563450d787c`  
		Last Modified: Wed, 24 Jun 2026 01:50:22 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0bd8d9dca87f66ccd2d2870e834e2462c56c33acf5191c54c79284f815876a`  
		Last Modified: Wed, 24 Jun 2026 01:50:23 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc25e016539ba89b57bcc2f56a5f6c6fd816d74086c70e0800047abd26cd5de`  
		Last Modified: Wed, 24 Jun 2026 01:50:23 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:1c831f96f8d2bb4399ed89162514cb01aae0ad12c0cf99dbf5d42b2b196dfaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3e6e68dcdeafb87e41ad121938e043f800190bd47e6678554394a1642dbeee`

```dockerfile
```

-	Layers:
	-	`sha256:d662c87fa40d109d0b5d92157ac280b2523b9e8a7f5ba9b69c600ba239260698`  
		Last Modified: Wed, 24 Jun 2026 01:50:22 GMT  
		Size: 2.8 MB (2843803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63ecb78e70d363c59879fcf780ee4e53579bcd98df0b8b7805a6dd1eef2577e3`  
		Last Modified: Wed, 24 Jun 2026 01:50:22 GMT  
		Size: 34.0 KB (33999 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; riscv64

```console
$ docker pull nginx@sha256:add3bcb095a518088a0f0bf557c84bf121ee47210bda48a41c21a9a4f4e8976e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57755357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20197fe93866138c6a5abb53109266e444506c48d6f0f1c59f2977cfc1bc49c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 02:57:59 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 25 Jun 2026 02:57:59 GMT
ENV NGINX_VERSION=1.30.3
# Thu, 25 Jun 2026 02:57:59 GMT
ENV NJS_VERSION=0.9.9
# Thu, 25 Jun 2026 02:57:59 GMT
ENV NJS_RELEASE=1~trixie
# Thu, 25 Jun 2026 02:57:59 GMT
ENV ACME_VERSION=0.4.1
# Thu, 25 Jun 2026 02:57:59 GMT
ENV PKG_RELEASE=1~trixie
# Thu, 25 Jun 2026 02:57:59 GMT
ENV DYNPKG_RELEASE=1~trixie
# Thu, 25 Jun 2026 02:57:59 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 25 Jun 2026 02:57:59 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 02:57:59 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 25 Jun 2026 02:57:59 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 25 Jun 2026 02:57:59 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 25 Jun 2026 02:58:00 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 25 Jun 2026 02:58:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 02:58:00 GMT
EXPOSE map[80/tcp:{}]
# Thu, 25 Jun 2026 02:58:00 GMT
STOPSIGNAL SIGQUIT
# Thu, 25 Jun 2026 02:58:00 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08bdb7d969e273ce641819b7215dc311482d55308ec944b2d3ec1b884594581`  
		Last Modified: Thu, 25 Jun 2026 02:59:31 GMT  
		Size: 29.5 MB (29468370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2106deb023e2ddaaae574bb2321b86fd4942101d0503547a2632927a6563ab8`  
		Last Modified: Thu, 25 Jun 2026 02:59:26 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1796fde07d708d55969f9cceb15b7feef0b799957ccd6694af7d6d11b1d8e4fe`  
		Last Modified: Thu, 25 Jun 2026 02:59:27 GMT  
		Size: 959.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ffc0ec092a4e1d65362682f6e184ac7b1ab316c970f8ab7e469be7ac5ce2f1`  
		Last Modified: Thu, 25 Jun 2026 02:59:27 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ffef7769a92eca8891654d9cd8277c172682c3e054e804be58b066d03dae08`  
		Last Modified: Thu, 25 Jun 2026 02:59:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fefc74f1ea6f2a4b6e14ae6232d2f6c6540ee71e4c89ddeeef567740676a4f7`  
		Last Modified: Thu, 25 Jun 2026 02:59:28 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:589b3381796423f8279afb1a10c61ff7df1f2dbda9a4ab48f835aa9ed6adfd42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2867589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbc2a6a806d578610d0a978e52c3aa9161ea32f74568bc724198f1a65d91c33`

```dockerfile
```

-	Layers:
	-	`sha256:bc5be3dfdb002a8d9e92d83d07a547f2694b29d7f77e4e203eba1ce37f88ff90`  
		Last Modified: Thu, 25 Jun 2026 02:59:27 GMT  
		Size: 2.8 MB (2833590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a67ad2cd2e801225bab6facaab1291849dd5aced3438ddf1018113d914598ac`  
		Last Modified: Thu, 25 Jun 2026 02:59:27 GMT  
		Size: 34.0 KB (33999 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-trixie` - linux; s390x

```console
$ docker pull nginx@sha256:8d1d53f3e0be8a4fb9f030b329a1a35526cfdc517d6cabf4be68fd507413147b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60639785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee36f144bdf8c31f62c88c0db26a129fb53eb04012e31ab3f448fbd078248f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:27:43 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 24 Jun 2026 01:27:43 GMT
ENV NGINX_VERSION=1.30.3
# Wed, 24 Jun 2026 01:27:43 GMT
ENV NJS_VERSION=0.9.9
# Wed, 24 Jun 2026 01:27:43 GMT
ENV NJS_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:27:43 GMT
ENV ACME_VERSION=0.4.1
# Wed, 24 Jun 2026 01:27:43 GMT
ENV PKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:27:43 GMT
ENV DYNPKG_RELEASE=1~trixie
# Wed, 24 Jun 2026 01:27:43 GMT
RUN set -x     && groupadd --system --gid 101 nginx     && useradd --system --gid nginx --no-create-home --home /nonexistent --comment "nginx user" --shell /bin/false --uid 101 nginx     && apt-get update     && apt-get install --no-install-recommends --no-install-suggests -y gnupg1 ca-certificates     &&     NGINX_GPGKEYS="573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 8540A6F18833A80E9C1653A42FD21310B49F6B46 9E9BE90EACBCDE69FE9B204CBCDCD8A38D88A2B3";     NGINX_GPGKEY_PATH=/etc/apt/keyrings/nginx-archive-keyring.gpg;     export GNUPGHOME="$(mktemp -d)";     found='';     for NGINX_GPGKEY in $NGINX_GPGKEYS; do     for server in         hkp://keyserver.ubuntu.com:80         pgp.mit.edu     ; do         echo "Fetching GPG key $NGINX_GPGKEY from $server";         gpg1 --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1;     done;     gpg1 --batch --export $NGINX_GPGKEYS > "$NGINX_GPGKEY_PATH" ;     rm -rf "$GNUPGHOME";     apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/*     && dpkgArch="$(dpkg --print-architecture)"     && nginxPackages="         nginx=${NGINX_VERSION}-${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}+${NJS_VERSION}-${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}+${ACME_VERSION}-${PKG_RELEASE}     "     && case "$dpkgArch" in         amd64|arm64)             echo "deb [signed-by=$NGINX_GPGKEY_PATH] https://nginx.org/packages/debian/ trixie nginx" >> /etc/apt/sources.list.d/nginx.list             && apt-get update             ;;         *)             tempDir="$(mktemp -d)"             && chmod 777 "$tempDir"                         && savedAptMark="$(apt-mark showmanual)"                         && apt-get update             && apt-get install --no-install-recommends --no-install-suggests -y                 cargo                 curl                 devscripts                 equivs                 git                 libxml2-utils                 lsb-release                 xsltproc             && (                 cd "$tempDir"                 && export CARGO_HOME="$tempDir/.cargo"                 && REVISION="${NGINX_VERSION}-${PKG_RELEASE}"                 && REVISION=${REVISION%~*}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${REVISION}.tar.gz                 && PKGOSSCHECKSUM="e602521342632b9cd61ff29049864eb5e233dea98918f1a4d842c4fb8304af1f916a9630e9cd00236366f713a011ed6b05e068ebcc136d3d820af0c31f932a71 *${REVISION}.tar.gz"                 && if [ "$(openssl sha512 -r ${REVISION}.tar.gz)" = "$PKGOSSCHECKSUM" ]; then                     echo "pkg-oss tarball checksum verification succeeded!";                 else                     echo "pkg-oss tarball checksum verification failed!";                     exit 1;                 fi                 && tar xzvf ${REVISION}.tar.gz                 && cd pkg-oss-${REVISION}                 && cd debian                 && for target in base module-geoip module-image-filter module-njs module-xslt module-acme; do                     make rules-$target;                     mk-build-deps --install --tool="apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes"                         debuild-$target/nginx-$NGINX_VERSION/debian/control;                 done                 && make base module-geoip module-image-filter module-njs module-xslt module-acme             )                         && apt-mark showmanual | xargs apt-mark auto > /dev/null             && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; }                         && ls -lAFh "$tempDir"             && ( cd "$tempDir" && dpkg-scanpackages . > Packages )             && grep '^Package: ' "$tempDir/Packages"             && echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list             && apt-get -o Acquire::GzipIndexes=false update             ;;     esac         && apt-get install --no-install-recommends --no-install-suggests -y                         $nginxPackages                         gettext-base                         curl     && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list         && if [ -n "$tempDir" ]; then         apt-get purge -y --auto-remove         && rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list;     fi     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 24 Jun 2026 01:27:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:27:43 GMT
EXPOSE map[80/tcp:{}]
# Wed, 24 Jun 2026 01:27:43 GMT
STOPSIGNAL SIGQUIT
# Wed, 24 Jun 2026 01:27:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14dfd1514a8b8f28e16ca53a698fcf12deddb517c7de9508e1e7d568327cf69`  
		Last Modified: Wed, 24 Jun 2026 01:27:59 GMT  
		Size: 30.8 MB (30783800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd7fa6e82b7b619f7e7923b043d06248c817550ecfd64e690eca5c54b53f6f`  
		Last Modified: Wed, 24 Jun 2026 01:27:58 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49fd23b701a0b68f1754485dda9aa9ff364ce585290e4d334bedf95bcadfe35`  
		Last Modified: Wed, 24 Jun 2026 01:27:58 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3385f9659316ad2ec31806b0b5bd2654ac3e89ade3cb88e3aac420b0306aa350`  
		Last Modified: Wed, 24 Jun 2026 01:27:58 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d45783f132a698f02d0e5436eb8c9973c2cb2e7f2c433a4f0e1bd8925c1d708`  
		Last Modified: Wed, 24 Jun 2026 01:27:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a455e120b5625c00b6a0468fca0f648387905753ee94ce276d0131cdac1f430`  
		Last Modified: Wed, 24 Jun 2026 01:27:59 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-trixie` - unknown; unknown

```console
$ docker pull nginx@sha256:0c97ac6e649a44fa8ad78b20ba8e4d9d71c3f025acc3f78ba70635596b9941f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2783525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76dcb6fa915295f62f3dc9d37321681dd636022551b26ff4e02b07f3d5aa419`

```dockerfile
```

-	Layers:
	-	`sha256:b19cd33e8da1b3adb8c9e4b7b5e528746f30fd1d8181429899475f90a7ec8309`  
		Last Modified: Wed, 24 Jun 2026 01:27:58 GMT  
		Size: 2.7 MB (2749583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec16e45a32422537feff42e040df675bfd454032b02ccb572fee088ab41e231b`  
		Last Modified: Wed, 24 Jun 2026 01:27:58 GMT  
		Size: 33.9 KB (33942 bytes)  
		MIME: application/vnd.in-toto+json
