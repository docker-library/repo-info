## `nginx:1-alpine3.24-otel`

```console
$ docker pull nginx@sha256:1576598600a50c170efe259bd8e2022b604be939d3ec0ef4898727b92fb22586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nginx:1-alpine3.24-otel` - linux; amd64

```console
$ docker pull nginx@sha256:6c68deed4b45ae167a10954e46b13f97d5ce81f5e5827926cd1100da84f45c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43089724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d026cb5aa6c374ae36893655927020a438077d10d63c907316ae1ddb4c3ca329`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 23:31:20 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:31:20 GMT
ENV NGINX_VERSION=1.31.3
# Wed, 15 Jul 2026 23:31:20 GMT
ENV PKG_RELEASE=1
# Wed, 15 Jul 2026 23:31:20 GMT
ENV DYNPKG_RELEASE=1
# Wed, 15 Jul 2026 23:31:20 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:31:20 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:31:20 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:31:20 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:57:33 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:57:33 GMT
ENV NJS_RELEASE=1
# Wed, 15 Jul 2026 23:57:33 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:57:33 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Thu, 16 Jul 2026 00:18:39 GMT
ENV OTEL_VERSION=0.1.2
# Thu, 16 Jul 2026 00:18:39 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}.${OTEL_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 cmake                 bash                 alpine-sdk                 findutils                 curl                 xz                 protobuf-dev                 grpc-dev             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-otel                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd534fe98c64d68a1f4f1c83abb8d5cba7ecfd7be88e592389929d12e6253da`  
		Last Modified: Wed, 15 Jul 2026 23:31:25 GMT  
		Size: 1.9 MB (1890698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1223f016b4e4a2c21f7c49d4837fbfd47a9da6436b511690ca1e582fc2810d59`  
		Last Modified: Wed, 15 Jul 2026 23:31:25 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bec68d7c31c4c8a19d812d84da5f7748e54690c037979945b6c5b6c924b142`  
		Last Modified: Wed, 15 Jul 2026 23:31:25 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f977ee452f4399c208714afa034868d6056864f8a0cf3c643ab143dd802c80`  
		Last Modified: Wed, 15 Jul 2026 23:31:25 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0008c891db48b5f526d914bce9e8d889fe1a9d1f08291ae03fe97f871726f38`  
		Last Modified: Wed, 15 Jul 2026 23:31:26 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390dc935348d8070e695fbaae2a4bb114fb9e69c59f628e7576036ee9d5244c9`  
		Last Modified: Wed, 15 Jul 2026 23:31:26 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46519e7231d2eb5604df229beb44d59719a489eaa7aca52982535a010b07a9ed`  
		Last Modified: Wed, 15 Jul 2026 23:57:41 GMT  
		Size: 20.3 MB (20313073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b7783772718692a3ab4d431a4329582956aee4bb2e89d8097dfa59c3d41f76`  
		Last Modified: Thu, 16 Jul 2026 00:18:47 GMT  
		Size: 17.0 MB (17034965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-alpine3.24-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:5278f2546ded7c600f925f6153a5fbb462114bbfbf1bafe3961ac0de661ad0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1076992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafdf48418b2aef9934b659f1ab5d71831454b21ecf132478729abc9e5973da3`

```dockerfile
```

-	Layers:
	-	`sha256:5280b715fc050164a6f692344f735b2681e3761f6f76ac8e55f5133ba26dfad8`  
		Last Modified: Thu, 16 Jul 2026 00:18:47 GMT  
		Size: 1.1 MB (1055450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd171b09b75f1b1e4aef4a0186341df3472d467bc4cd1d1caa73f104a00358b9`  
		Last Modified: Thu, 16 Jul 2026 00:18:47 GMT  
		Size: 21.5 KB (21542 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:1-alpine3.24-otel` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:2ef035ee8a0fc9944be639381f9b51511e1d825345e778ad45b02e76e9536bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41945648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a78a612b47ed66da5632cc563bffc2211509c8cc661e55a6abc94737289b4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 23:31:16 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:31:16 GMT
ENV NGINX_VERSION=1.31.3
# Wed, 15 Jul 2026 23:31:16 GMT
ENV PKG_RELEASE=1
# Wed, 15 Jul 2026 23:31:16 GMT
ENV DYNPKG_RELEASE=1
# Wed, 15 Jul 2026 23:31:16 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:31:16 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:31:16 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:31:16 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:57:22 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:57:22 GMT
ENV NJS_RELEASE=1
# Wed, 15 Jul 2026 23:57:22 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:57:22 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Thu, 16 Jul 2026 00:18:33 GMT
ENV OTEL_VERSION=0.1.2
# Thu, 16 Jul 2026 00:18:33 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}         nginx-module-otel=${NGINX_VERSION}.${OTEL_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 cmake                 bash                 alpine-sdk                 findutils                 curl                 xz                 protobuf-dev                 grpc-dev             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"524b75cc72657ce77d90cd25c305aba0a19a7f8a3e5dec8e1cc585cd7985663a444c7873e9040b4576285b49ac117c1ea4bb4077dc592eca52316935e1f75adf *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-otel                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1fb50ff9dc606dba8c8c0e8eb4e98c650c5b289506f01724309ebf71a69d45`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 1.9 MB (1909562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42993d4c6ecb26b388e945cbe5f03be1f7858226750c1f8375883db2aae1243`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e9565ba4ff139c848073b3358bb2c9b31a93cb9b744a5b0903b22f5a3ddc0f`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a042f5cf717d2e64d2176a41624344a2f1ad0475f6ac6dae092aefbbd07b37`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f13a453c9dd406f331a3efefeb846cd18b068d73177c0d57c6f3d5169eacb4`  
		Last Modified: Wed, 15 Jul 2026 23:31:23 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4be3b26f08037fa63337d7a425d3253b887bff559447733e71759f65b0f8c8`  
		Last Modified: Wed, 15 Jul 2026 23:31:23 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977aedb192ade9f4f62ce4c6df02d8f62abe1e8710e006854398f8a7cda030e7`  
		Last Modified: Wed, 15 Jul 2026 23:57:29 GMT  
		Size: 19.8 MB (19848667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fd31d49d64ec0558a0315552ec05d2360aeef4055569c33c9abb7175ca8e91`  
		Last Modified: Thu, 16 Jul 2026 00:18:40 GMT  
		Size: 16.0 MB (15999786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:1-alpine3.24-otel` - unknown; unknown

```console
$ docker pull nginx@sha256:92b1fb0eddeef331fba0f23551b61c26c2c68a753fab83dbb9d582c1015a69ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1076646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a23992468808cd4ad187f9c40cab46685a902834a2e8dc320f963bde938264c`

```dockerfile
```

-	Layers:
	-	`sha256:b9e6859815fcb450db6ecb0c440f7c6bad86bc4abf42196a5a2ca319b4ee86e0`  
		Last Modified: Thu, 16 Jul 2026 00:18:40 GMT  
		Size: 1.1 MB (1054928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e94485c28d988b07ebb69d56c411401a5201e10bf778a43684ebb505181f92cf`  
		Last Modified: Thu, 16 Jul 2026 00:18:40 GMT  
		Size: 21.7 KB (21718 bytes)  
		MIME: application/vnd.in-toto+json
