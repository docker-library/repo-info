## `nginx:stable-alpine`

```console
$ docker pull nginx@sha256:16be905121d05b70e1f069096cfc727353f7e31aae50480acb8dfd51a76b7ced
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `nginx:stable-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:9874b7a098bbd4e9454941c9e3f87600d7a6e2bb081a06f453202933fe7520d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28538467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6b1af7ad2a9c8e517cd5f70a2ec92815177f8a0238c1c1c6d9a3719e17de84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:26 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 15 Sep 2026 22:48:26 GMT
ENV NGINX_VERSION=1.30.5
# Tue, 15 Sep 2026 22:48:26 GMT
ENV PKG_RELEASE=1
# Tue, 15 Sep 2026 22:48:26 GMT
ENV DYNPKG_RELEASE=1
# Tue, 15 Sep 2026 22:48:26 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:48:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:26 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 22:48:26 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 22:48:26 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 15 Sep 2026 23:13:27 GMT
ENV NJS_VERSION=1.0.1
# Tue, 15 Sep 2026 23:13:27 GMT
ENV NJS_RELEASE=1
# Tue, 15 Sep 2026 23:13:27 GMT
ENV ACME_VERSION=0.4.1
# Tue, 15 Sep 2026 23:13:27 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57a2d5adcf624d860440eda0751197834a37175fd555f9bb3969d0bcb0fd2b3`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 4.4 MB (4352385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e7aa0bb73bd20b7931b7fa56d00becede0a777436b5bab85168c47e89b365a`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16720f76a6c9de7581783bf4d55fead5d0360ebdb9fde075e92bc44d64ad0cef`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8b0d805e5c3713753e89ee1f9dfe90fb19eb0ff78e274c37661599c5e2f064`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac3a72f1123b823f55acd996a59133f46feb86faa909181b083d4c78e64316a`  
		Last Modified: Tue, 15 Sep 2026 22:48:32 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f709c26bfc6a0474abd2851641ff6b209dd577025f696ed892d37b061664b865`  
		Last Modified: Tue, 15 Sep 2026 22:48:32 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54fe1bc3d0f7b98a9f073704ec44ed96642b9b65259c0b04a60e5378468d577`  
		Last Modified: Tue, 15 Sep 2026 23:13:35 GMT  
		Size: 20.3 MB (20335092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:c70f4a3e41dd513ee577bfc13794424bea153cad9d406fa937ce3decab6dc21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.7 KB (886699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7447035d1b0d5b2e964e29700f93983bc474365d40c6cf1202b78b30bc2c072b`

```dockerfile
```

-	Layers:
	-	`sha256:d26ce2746f19a58e5228f632a39f8940fcf7ae3326783106d5c53b2074b65402`  
		Last Modified: Tue, 15 Sep 2026 23:13:35 GMT  
		Size: 865.4 KB (865404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71362585bd63f3e8f522db0c90f43db2f57507fce0fbfe0e3f010c1439ab8bad`  
		Last Modified: Tue, 15 Sep 2026 23:13:34 GMT  
		Size: 21.3 KB (21295 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; arm variant v6

```console
$ docker pull nginx@sha256:24e238bb821c18296d2a49809f9ac3058c3138fffda6963cd55230aeb1a72739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21793594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c047162a60818709ce73526c23fc7698f09f9b4393fdf01ef409067241aed301`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:19:34 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 15 Sep 2026 23:19:34 GMT
ENV NGINX_VERSION=1.30.5
# Tue, 15 Sep 2026 23:19:34 GMT
ENV PKG_RELEASE=1
# Tue, 15 Sep 2026 23:19:34 GMT
ENV DYNPKG_RELEASE=1
# Tue, 15 Sep 2026 23:19:34 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:19:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:19:34 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 23:19:34 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 23:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 15 Sep 2026 23:39:34 GMT
ENV NJS_VERSION=1.0.1
# Tue, 15 Sep 2026 23:39:34 GMT
ENV NJS_RELEASE=1
# Tue, 15 Sep 2026 23:39:34 GMT
ENV ACME_VERSION=0.4.1
# Tue, 15 Sep 2026 23:39:34 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3775ff746650b05ba55e08b8352bebc5188d4e8dcf019f10f527697008a55b`  
		Last Modified: Tue, 15 Sep 2026 23:19:38 GMT  
		Size: 4.0 MB (3987604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892616667568c395f2a0e1783f539d362c67cebd3ac2894385c6b554bd92727f`  
		Last Modified: Tue, 15 Sep 2026 23:19:38 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32dd1ee685597ab58f60ac22c4237d1ddc0084dfd2bf4132e1f909d56c57460`  
		Last Modified: Tue, 15 Sep 2026 23:19:38 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76d18ae2d2ad0377b1a6182c4c758b82f9022211a838e4924096049d28bdbe0`  
		Last Modified: Tue, 15 Sep 2026 23:19:38 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61d87451635afb6528075009fad77fa52817770d1b19fcf0bc0e269cb00d0bc`  
		Last Modified: Tue, 15 Sep 2026 23:19:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b51d5912f86f9cdf2f2671649679302c9dbc4d5e67d8cce42c37011d621a395`  
		Last Modified: Tue, 15 Sep 2026 23:19:39 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8fd68af054a4acb763ecadd4bb397f01eb21e5aa258a7ef937079499c53431`  
		Last Modified: Tue, 15 Sep 2026 23:39:40 GMT  
		Size: 14.2 MB (14247943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:b237c4c5786d21fa0e0340fbd8d176bc6b3b9f13a68ecbf14c168808d6f24dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c0f7929a16a77af9c4263782219e906fe268430fe76b18cc13321622a86a98`

```dockerfile
```

-	Layers:
	-	`sha256:d7c676ab799929ec75354c8c12ec96c9372796489566aeef0f2d46d007b45074`  
		Last Modified: Tue, 15 Sep 2026 23:39:39 GMT  
		Size: 21.2 KB (21175 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; arm variant v7

```console
$ docker pull nginx@sha256:25c4ddc37a860b0e7bc43ba0428a6899f712a133c0a8ddcc5908eae1b926ed54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23632160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b586bc1250ca5e7f70dcb1018a18971cc436f0732c64a64af165881caa690`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:09:05 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 15 Sep 2026 23:09:05 GMT
ENV NGINX_VERSION=1.30.5
# Tue, 15 Sep 2026 23:09:05 GMT
ENV PKG_RELEASE=1
# Tue, 15 Sep 2026 23:09:05 GMT
ENV DYNPKG_RELEASE=1
# Tue, 15 Sep 2026 23:09:05 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 23:09:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:09:05 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 23:09:05 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 23:09:05 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 15 Sep 2026 23:25:51 GMT
ENV NJS_VERSION=1.0.1
# Tue, 15 Sep 2026 23:25:51 GMT
ENV NJS_RELEASE=1
# Tue, 15 Sep 2026 23:25:51 GMT
ENV ACME_VERSION=0.4.1
# Tue, 15 Sep 2026 23:25:51 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36704cc04fe77757cd7ccd3d0685fca3b98b5bcdbcece81b06223e7153f7de1b`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 3.7 MB (3654005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8c468add96758d559a336634398b517e5fa03156a6fead3bb4476007411159`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b554fce962a94d901f779a6ed817e4a6b265a81c9e45f7c127b8e2860f8acbd0`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5273cbd1ccf5dbccf9300c7fb56daeb1c0be0a1ba085acadef4ad5280eb6df74`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78b713df4a6c032cc2be7206b4c41b74fca263b7e0a3e743acd869b57c3922b`  
		Last Modified: Tue, 15 Sep 2026 23:09:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f00a991598af5d12e0aedfc12f2bcd4eca890a6f023ea1479f9c8299f36138`  
		Last Modified: Tue, 15 Sep 2026 23:09:11 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df23345c605b4c9a9658b7ad1903f01dbe5728d692a0e7f238a6364d29cc4d0`  
		Last Modified: Tue, 15 Sep 2026 23:25:57 GMT  
		Size: 16.7 MB (16712936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:f1dfacc677e6f6e76a073efb9e6cf4315a17b51d22e75fc35873563139669ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.2 KB (886197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25a94c40ef0dd978df6d09822a2981666ff25bcbfebcdb2e6da5ce29793af3c`

```dockerfile
```

-	Layers:
	-	`sha256:fe50eb5827b6505aa9a3e650c3a405a0cfad88bd27eaabb42b46f73e2e0a668a`  
		Last Modified: Tue, 15 Sep 2026 23:25:57 GMT  
		Size: 864.8 KB (864806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:618fc99f985d2282f426fd193c5f9225d816feedc71c784f6f5f6b05acc12e46`  
		Last Modified: Tue, 15 Sep 2026 23:25:57 GMT  
		Size: 21.4 KB (21391 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:91a721cb65549a08e262394511ab99761e8529bb800a4928d14f43c737c3dacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28726685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cce61bb7fc64ec01361e4eac378082617eb699767c27b698acda5fc84c9136`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:53:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 15 Sep 2026 22:53:46 GMT
ENV NGINX_VERSION=1.30.5
# Tue, 15 Sep 2026 22:53:46 GMT
ENV PKG_RELEASE=1
# Tue, 15 Sep 2026 22:53:46 GMT
ENV DYNPKG_RELEASE=1
# Tue, 15 Sep 2026 22:53:46 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:53:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:53:46 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 22:53:46 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 22:53:46 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 15 Sep 2026 23:13:27 GMT
ENV NJS_VERSION=1.0.1
# Tue, 15 Sep 2026 23:13:27 GMT
ENV NJS_RELEASE=1
# Tue, 15 Sep 2026 23:13:27 GMT
ENV ACME_VERSION=0.4.1
# Tue, 15 Sep 2026 23:13:27 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74005313fd6c0d0c5d30cd701dcfa83bc6416e5e6ca1708e48a447acf6ef26f6`  
		Last Modified: Tue, 15 Sep 2026 22:53:52 GMT  
		Size: 4.7 MB (4670872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081e45e2f7557bf6c282c8edf84354b5f1744b391162069ece71cf1b988f8532`  
		Last Modified: Tue, 15 Sep 2026 22:53:52 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9a578a814b4c0277d4d0ffd18d6780fe35a68e532ebbbd15837ba069b67af3`  
		Last Modified: Tue, 15 Sep 2026 22:53:52 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8b8ac23a30a2c5ea24da2a3b25a0a4d28e8db958183b7cc045c35c6e82518c`  
		Last Modified: Tue, 15 Sep 2026 22:53:52 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7fcdd5a9d03e1c767fcd5498cc12345dd8c37686a192b73e620b47b10e77a3`  
		Last Modified: Tue, 15 Sep 2026 22:53:53 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8436fa6a97ea475c7ab5906273edbb4f6042083e412050cf0a6a0cf0499361`  
		Last Modified: Tue, 15 Sep 2026 22:53:53 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4965b6bc2086999503c6a6a9c834496ed18b199618429cda7edeefff0b51724`  
		Last Modified: Tue, 15 Sep 2026 23:13:35 GMT  
		Size: 19.9 MB (19868180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:ff339dd72936a7e2c09893d95d1ee865304b95a8cb2ba7daab694767385a057e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.3 KB (886257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d99d2897e625a904a8641fef9a5e33783746d98d7779ca19fba9bb1ebae67c`

```dockerfile
```

-	Layers:
	-	`sha256:2cf39df6451f77ea1afb08236585d7062800700fcf86f7cd9383354a44b9f045`  
		Last Modified: Tue, 15 Sep 2026 23:13:34 GMT  
		Size: 864.8 KB (864834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dff93c71c433c468ef10e16ac6ba4f80c98bd4578e598b3e84feee03873b3b6`  
		Last Modified: Tue, 15 Sep 2026 23:13:34 GMT  
		Size: 21.4 KB (21423 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; 386

```console
$ docker pull nginx@sha256:465c5a986b5c64af8d2fa02850551c72aac62a96f996bcdf3bf2beddaf7a9680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27598127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a043066f71116ab36475743ce738d331c356bb39950a5c26d4ba2a488441710`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:44:24 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 15 Sep 2026 22:44:24 GMT
ENV NGINX_VERSION=1.30.5
# Tue, 15 Sep 2026 22:44:24 GMT
ENV PKG_RELEASE=1
# Tue, 15 Sep 2026 22:44:24 GMT
ENV DYNPKG_RELEASE=1
# Tue, 15 Sep 2026 22:44:24 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 15 Sep 2026 22:44:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:44:24 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 22:44:24 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 22:44:24 GMT
CMD ["nginx" "-g" "daemon off;"]
# Tue, 15 Sep 2026 23:18:16 GMT
ENV NJS_VERSION=1.0.1
# Tue, 15 Sep 2026 23:18:16 GMT
ENV NJS_RELEASE=1
# Tue, 15 Sep 2026 23:18:16 GMT
ENV ACME_VERSION=0.4.1
# Tue, 15 Sep 2026 23:18:16 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8d1e359a0b1004264c8b45c6885675a415457f314b629251c683a9ae9b4a0f`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 4.2 MB (4235880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad74aafe2336798d1e9a3bbbd15cca986620e9c08f3593e16795459d053ca964`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5c69fc63012666dcae6fe26b22c1a12bd0f035ebe2bd4cd7a31847efef465b`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4fcd0c571e8a1958a7dc02de5bb1dd192557b8e4cef78da53ddb8581b7eafe`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ea46dadd2a6e58f570485f0b080f3eb571739675365a264f4c433a2bd24847`  
		Last Modified: Tue, 15 Sep 2026 22:44:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95a4d863ba54ac167269024df10d4ec7f0bd3c6d594f9f231dcba70434e0619`  
		Last Modified: Tue, 15 Sep 2026 22:44:30 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5688d1b2094107d30bf05ebd562158bd626c3148877c70704a988bd92e8474bd`  
		Last Modified: Tue, 15 Sep 2026 23:18:23 GMT  
		Size: 19.7 MB (19687512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:090be0a4e7d9c56c33709a77ff57e2103ab5a3bbce2f4f8778fe690248fcf625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.6 KB (886622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632a126481dfcf218bbc6ebfad56d1fdda6da862a86b876c4f335d990110ba1a`

```dockerfile
```

-	Layers:
	-	`sha256:ee3301a3cc4b73d05ce89f7aaa5fac0f3739f0691ce7ddd3f77d7ec0b502e442`  
		Last Modified: Tue, 15 Sep 2026 23:18:23 GMT  
		Size: 865.4 KB (865369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:970b84f00ee20107f976a600110750e16dbfbacca88e96add495977360bbe672`  
		Last Modified: Tue, 15 Sep 2026 23:18:23 GMT  
		Size: 21.3 KB (21253 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:f04a44fc32d76bbe431620b14fa0b5fdeccf665dbce5ac65d272ba152a3778bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28667126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468354e9f20a51fcc9ef519fd6985bb0ef959dc7316170bde7b422cdda6a85bc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 21:19:14 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:19:14 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:19:14 GMT
ENV PKG_RELEASE=1
# Wed, 02 Sep 2026 21:19:14 GMT
ENV DYNPKG_RELEASE=1
# Wed, 02 Sep 2026 21:19:14 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:19:15 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:19:16 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:19:16 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:19:16 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:19:16 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:19:16 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:19:16 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:19:16 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:57:53 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:57:53 GMT
ENV NJS_RELEASE=1
# Wed, 02 Sep 2026 21:57:53 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:57:53 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d970b13e76ec61378444e5a3309a0ff39b7e334b32c1de07cf3d4fe3750f3a95`  
		Last Modified: Wed, 02 Sep 2026 21:19:25 GMT  
		Size: 4.3 MB (4311920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c945ad6dd4927a89d062089801f4b5e82c516b527110143e5d0526daae2ee4`  
		Last Modified: Wed, 02 Sep 2026 21:19:25 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ce8d97ab66aceb4e474ce6c255d2137640839df4042126bbcec094ec9bf30f`  
		Last Modified: Wed, 02 Sep 2026 21:19:25 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c71d60d550092ee7fd66905f48434b20bb910ba26f9cad3d911729a0fb7b7cc`  
		Last Modified: Wed, 02 Sep 2026 21:19:25 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc87cafb4fc8fa42d39ca347ea742cc17f97b1ffa8d81cc5e42f0e57bd23ff11`  
		Last Modified: Wed, 02 Sep 2026 21:19:26 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a975b35bf3d6416d6a93260f6280481bbd874ef3e36c692d89446db670b132e8`  
		Last Modified: Wed, 02 Sep 2026 21:19:26 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55cc85545ebcb7f8fda68a6bd2ed93fb9f13d587f2ebfb73ce4dd922672b221`  
		Last Modified: Wed, 02 Sep 2026 21:58:07 GMT  
		Size: 20.5 MB (20537209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:b5ff0a361d10ad9fad4a2d1b0bb6efb8f98d9721ba40b8d78c05079a50ae0976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.3 KB (886255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8804f2274bcd2df91fc25f33a77e21ca832f61b8b65d07d578a0482ce31d5c`

```dockerfile
```

-	Layers:
	-	`sha256:4b74abe84d46be4b12cf1f4bda7569ff6a56b1b9b8b464f0bec2c828ebaa68cd`  
		Last Modified: Wed, 02 Sep 2026 21:58:06 GMT  
		Size: 864.8 KB (864799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3bcc6cd1e34f5f2576434d0fdb1175f38ddb1809873e9f7fecf413df5d553c9`  
		Last Modified: Wed, 02 Sep 2026 21:58:06 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; riscv64

```console
$ docker pull nginx@sha256:7a02dcae11bc697da6b33772aad6428740ca4195f2bccc0890d55a3aec20633b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25642380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ba32e46e3a84f804504998362dfb5c2c4f1d59a9bc9d88b06f6fac2acf09ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 03 Sep 2026 15:26:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 03 Sep 2026 15:26:39 GMT
ENV NGINX_VERSION=1.30.4
# Thu, 03 Sep 2026 15:26:39 GMT
ENV PKG_RELEASE=1
# Thu, 03 Sep 2026 15:26:39 GMT
ENV DYNPKG_RELEASE=1
# Thu, 03 Sep 2026 15:26:39 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 03 Sep 2026 15:26:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 Sep 2026 15:26:39 GMT
EXPOSE map[80/tcp:{}]
# Thu, 03 Sep 2026 15:26:39 GMT
STOPSIGNAL SIGQUIT
# Thu, 03 Sep 2026 15:26:39 GMT
CMD ["nginx" "-g" "daemon off;"]
# Thu, 03 Sep 2026 21:53:37 GMT
ENV NJS_VERSION=1.0.1
# Thu, 03 Sep 2026 21:53:37 GMT
ENV NJS_RELEASE=1
# Thu, 03 Sep 2026 21:53:37 GMT
ENV ACME_VERSION=0.4.1
# Thu, 03 Sep 2026 21:53:37 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd422fbe89292829e67b19ebdc11ce4118996ea02382fc7fa1ff01fbc3f7adf`  
		Last Modified: Thu, 03 Sep 2026 15:27:07 GMT  
		Size: 4.1 MB (4060974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0abf6f2610be30ee556d1a8e28fc34f2d0b237cf459cc0032f71fc915cc888`  
		Last Modified: Thu, 03 Sep 2026 15:27:06 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5ca59beebafa855beb70b2814dc91cae3f82f340a97cd9dd7610eefae572bf`  
		Last Modified: Thu, 03 Sep 2026 15:27:06 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e58f197f233a4009d8c2909650ce0bbb9eaec342dc2903fad64d4a4068bebaf`  
		Last Modified: Thu, 03 Sep 2026 15:27:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16cdac1dee6e8eddc19a18689626d9d1289c70ebd789036063955c4ec5c1453d`  
		Last Modified: Thu, 03 Sep 2026 15:27:07 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c710dbfcc096294a72997ef39517a1c61d7bac83e9ba439455f76c6992d8a`  
		Last Modified: Thu, 03 Sep 2026 15:27:07 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c80dba3c85403f4f65f93407ebf2a1f707b4047b3ca7b8ec9f0ad6e325db7aa`  
		Last Modified: Thu, 03 Sep 2026 21:54:28 GMT  
		Size: 18.0 MB (18002440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:88206db5f4fc626673123bf54289c50d806f55440e612f39f3712a81388e7c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.3 KB (886251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef8f601683381aa558e24dea77a102d91dda7d031ca57ee0c14ea27ae184d9`

```dockerfile
```

-	Layers:
	-	`sha256:0c6e72071188bb29696053f882745ef03b5ef5e5d4f92aeea6502cb640afe212`  
		Last Modified: Thu, 03 Sep 2026 21:54:25 GMT  
		Size: 864.8 KB (864795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5655fa0e9751490fe901ca39e1c91f3453f88f966e341ad694f01427b4405a`  
		Last Modified: Thu, 03 Sep 2026 21:54:25 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine` - linux; s390x

```console
$ docker pull nginx@sha256:4b67604c94548fd18dfb213411b92d9d5d0e6338891a0a7595e434a715b5341a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28293075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d08a59e137d3df168f7d896e9f10d25eac4b55d44a561d9c55dcd241afb2d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 21:05:01 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:05:01 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:05:01 GMT
ENV PKG_RELEASE=1
# Wed, 02 Sep 2026 21:05:01 GMT
ENV DYNPKG_RELEASE=1
# Wed, 02 Sep 2026 21:05:01 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:01 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:05:01 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:01 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:01 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:02 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:05:02 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:05:02 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:05:02 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:17:42 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:17:42 GMT
ENV NJS_RELEASE=1
# Wed, 02 Sep 2026 21:17:42 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:17:42 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a81d9ad909c666e0b3d386e7477f68cd31e6bd8131e0b80c51fada7c7d7de52`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 4.2 MB (4242338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f0423c49927de354560293dd97420dc5c5d493349baa8bd9e13e3fa7349ca1`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf2523646da8a87c0e4dae5f7d975acd507d5f04ea571fa263a7d99756db886`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110f74cfa6a9c21cfe4e7791fc875fd21ab8a7b23a89bda215d99448cca6e8e0`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01229341ad639f04927b5194c9887ac387a62e17f2e8083be71e93cebaacee01`  
		Last Modified: Wed, 02 Sep 2026 21:05:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c09109a9147602a8bc7cbd5346c67b6121cd4763c27b94fb79ef9e6808082f3`  
		Last Modified: Wed, 02 Sep 2026 21:05:21 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f6d9a2b16e0d3a04069a47399452670c558b67ee3255381fc33941dc347b8d`  
		Last Modified: Wed, 02 Sep 2026 21:17:55 GMT  
		Size: 20.3 MB (20336816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine` - unknown; unknown

```console
$ docker pull nginx@sha256:56612a8378d58956563c8e064aff5b3873eb221f6cdf5c73a825891818a8e21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.2 KB (886153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1fa018dfd8c4e0c68728d06c7bb87bf3e66c6b2a97c5169b644b804e93fef7`

```dockerfile
```

-	Layers:
	-	`sha256:130fd9994bb376e387a6bed1f547e9f53514d3333bf4f25eb216a2c4d03b9604`  
		Last Modified: Wed, 02 Sep 2026 21:17:54 GMT  
		Size: 864.8 KB (864753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52baf15ba1547058b5b7802830769b559b8a3e3a93945112498c57683879a122`  
		Last Modified: Wed, 02 Sep 2026 21:17:54 GMT  
		Size: 21.4 KB (21400 bytes)  
		MIME: application/vnd.in-toto+json
