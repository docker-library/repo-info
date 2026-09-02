## `nginx:stable-alpine-perl`

```console
$ docker pull nginx@sha256:cc74cdfa3d2293b5ba9b4f56914bf10f6de4e8fe23c3f5fb2b6beace06c32c8a
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

### `nginx:stable-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:f2d999c92d4fe81750c53bc366ead6ea9b23d238d2628ae046396060d262e357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38822601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8cc3d035fe6dc0c52f16701a752e1734612ef55444716ac5e0cd8d1a008a77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 21:05:10 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:05:10 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:05:10 GMT
ENV PKG_RELEASE=1
# Wed, 02 Sep 2026 21:05:10 GMT
ENV DYNPKG_RELEASE=1
# Wed, 02 Sep 2026 21:05:10 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:05:10 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:05:10 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:05:10 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:07:28 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:07:28 GMT
ENV NJS_RELEASE=1
# Wed, 02 Sep 2026 21:07:28 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:07:28 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Wed, 02 Sep 2026 21:48:19 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45fdf63315816ec6bd937d40fb4450c1364e299cf7bdb48c14d19ee26ce32a0`  
		Last Modified: Wed, 02 Sep 2026 21:05:16 GMT  
		Size: 4.3 MB (4347545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ff5ce9d4e9e840b2a802e06f9db7aa2526032b11972f065750ca6082d06f2c`  
		Last Modified: Wed, 02 Sep 2026 21:05:16 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ec9c021a5aa5f4b4e020396c3080d9434d71d75288c5f4b06bfc78104310fe`  
		Last Modified: Wed, 02 Sep 2026 21:05:16 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e5f432b4d0343ae580ca491ee35e51f51000f5694efd025a8af08e0be7c729`  
		Last Modified: Wed, 02 Sep 2026 21:05:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6710fa5752a599abf4c9f536edfe5be7952768135b5050ac9afdefc0533834a2`  
		Last Modified: Wed, 02 Sep 2026 21:05:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfd0ed0041486dd19ac2807088044b7b750d7ce008314ef49e75d92f42b9c19`  
		Last Modified: Wed, 02 Sep 2026 21:05:17 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39233542455bfb494d68089ebb1b8eb3f0104ef0f676e7bc78fc637a0bad7bf`  
		Last Modified: Wed, 02 Sep 2026 21:07:36 GMT  
		Size: 20.3 MB (20333532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300f214f74825f873d0fe67f45e8ff7744b35c1f7d871f7baa98762b674ac6e8`  
		Last Modified: Wed, 02 Sep 2026 21:48:26 GMT  
		Size: 10.3 MB (10290543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:1552cc8c17e49fd9cb7334415879659041b9b782378a3f5d30be95042eb04b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1853250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79dd4ffd2c90579610521426683311c3c7f08b9b0df21495dee7fc1e6265714d`

```dockerfile
```

-	Layers:
	-	`sha256:307d82b766f730747a870493694907041e543eb8fabe36929b1779136dda7e87`  
		Last Modified: Wed, 02 Sep 2026 21:48:26 GMT  
		Size: 1.8 MB (1832899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:148a65b217c70a7dce8d204b45fb0950e931209ea70c5d936e80e31e86443ea5`  
		Last Modified: Wed, 02 Sep 2026 21:48:26 GMT  
		Size: 20.4 KB (20351 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; arm variant v6

```console
$ docker pull nginx@sha256:11872a595ae19e6aeedea0413fc0ee6b6c93c6a6ed69f9d9743e46545820cce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31304496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e8c53c0ad9c78f0f8c872e9e5f40ea1294d3510118431141026b1c02ce732e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 21:07:33 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:07:33 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:07:33 GMT
ENV PKG_RELEASE=1
# Wed, 02 Sep 2026 21:07:33 GMT
ENV DYNPKG_RELEASE=1
# Wed, 02 Sep 2026 21:07:33 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 02 Sep 2026 21:07:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 21:07:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 02 Sep 2026 21:07:33 GMT
STOPSIGNAL SIGQUIT
# Wed, 02 Sep 2026 21:07:33 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 02 Sep 2026 21:51:23 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:51:23 GMT
ENV NJS_RELEASE=1
# Wed, 02 Sep 2026 21:51:23 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:51:23 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Wed, 02 Sep 2026 21:53:34 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40001e14f9e9a89170d7c35ec4185790f3943b66756b485788cd35afcd3bb157`  
		Last Modified: Wed, 02 Sep 2026 21:07:37 GMT  
		Size: 4.0 MB (3983279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7d3497bedfe8f7a0eedc4b1eb3b304ac3113c7e40ac37640eb1c2a83737ff`  
		Last Modified: Wed, 02 Sep 2026 21:07:37 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a11d47c73eded20e5b6a6574f36016c887fc82097c6b798e9a7d69f760c2f2`  
		Last Modified: Wed, 02 Sep 2026 21:07:37 GMT  
		Size: 958.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fc82271511f49fa04616e396fd16e2ed5744a466ab22c773e80190a11c2cca`  
		Last Modified: Wed, 02 Sep 2026 21:07:37 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1235644811a715629afce2cac5c025e397234474eb0a8c7ff2ba1f5a4a36e243`  
		Last Modified: Wed, 02 Sep 2026 21:07:38 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52732806571b494d350c3ef1fd1f3c74807ef4f8a7ac989a7f1afb7c3d61806`  
		Last Modified: Wed, 02 Sep 2026 21:07:38 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70541b912adb142b2774fbeeea783128f6f8edfe409abf03598bc8c659fd6f09`  
		Last Modified: Wed, 02 Sep 2026 21:51:28 GMT  
		Size: 14.2 MB (14246835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d290542402847abb9a8340b3bf8c8aa6085a3729eb0bf5129c9555dc0de73abf`  
		Last Modified: Wed, 02 Sep 2026 21:53:39 GMT  
		Size: 9.5 MB (9516323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:eb3e5b477544d2109754d06e43c009d5cc136193b8b06628d5382ecd80bc1e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a68ce717225e52001e5ec82e8eed29a21168847a51e94d842b5e96ca886ea29`

```dockerfile
```

-	Layers:
	-	`sha256:a3f4813cd1cf79e41bed1e2b2682dfe18312c428f9a6aae635a65425d756d973`  
		Last Modified: Wed, 02 Sep 2026 21:53:38 GMT  
		Size: 20.2 KB (20231 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:cb64d996586eea7c2966da5123702361fbfc69f6d14e1f201aab109ba864e014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.0 MB (31012661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec24b17f9ed6effd9c958ede9fbd46600903ecfbc3df0de986b6caf990452146`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 23:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:32:15 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 15 Jul 2026 23:32:15 GMT
ENV PKG_RELEASE=1
# Wed, 15 Jul 2026 23:32:15 GMT
ENV DYNPKG_RELEASE=1
# Wed, 15 Jul 2026 23:32:15 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:32:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:32:15 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:32:15 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:32:15 GMT
CMD ["nginx" "-g" "daemon off;"]
# Thu, 16 Jul 2026 00:01:47 GMT
ENV NJS_VERSION=1.0.0
# Thu, 16 Jul 2026 00:01:47 GMT
ENV NJS_RELEASE=1
# Thu, 16 Jul 2026 00:01:47 GMT
ENV ACME_VERSION=0.4.1
# Thu, 16 Jul 2026 00:01:47 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Thu, 16 Jul 2026 00:19:08 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662d6126fa74d5ada781e85a27633d135c0617ee7412f29dea591f003927148d`  
		Last Modified: Wed, 15 Jul 2026 23:32:20 GMT  
		Size: 1.7 MB (1698914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9a6d29ae638f23fd5d8de0901ff2ec99c646f007a12422b34c5fafa0514396`  
		Last Modified: Wed, 15 Jul 2026 23:32:20 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331b56b3ade37fb68580fd366d53bad0230c79cf9d496be72196e775b1bab940`  
		Last Modified: Wed, 15 Jul 2026 23:32:20 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c653b83489d070847d9a5c615cca43a32b2001a507bf5b2bfa1e0b7695da46`  
		Last Modified: Wed, 15 Jul 2026 23:32:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a09eff10be9ae38a335ca4f87c320b0ee0bf1fdd96d24788bceea751fdfc201`  
		Last Modified: Wed, 15 Jul 2026 23:32:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e29d110e7ac60d0dfce6271bc0cd905697d6bcd145e2f924844dd32059d1138`  
		Last Modified: Wed, 15 Jul 2026 23:32:21 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f7f346346541af5b7184256acdf7e481fa1add3af07d8640ef6724e5c994d5`  
		Last Modified: Thu, 16 Jul 2026 00:01:54 GMT  
		Size: 16.7 MB (16698583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b28b41db0ef32d2aa3ff4f15c60a53cd8b78b7b74c9303f5dde7495b1c36d11`  
		Last Modified: Thu, 16 Jul 2026 00:19:16 GMT  
		Size: 9.3 MB (9349954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:a78679d3f0bed00dfcf3c795b7033354c4b4c2b85fb967d86a01f77012d65619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1852654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9541665b03676c700ce5df302592057055c5c7813fd0520678cb18c95bccf4`

```dockerfile
```

-	Layers:
	-	`sha256:2cf9dc90264459de18622908c9b8f24a2dd7485e5640b3481dddb1da1cc16725`  
		Last Modified: Thu, 16 Jul 2026 00:19:15 GMT  
		Size: 1.8 MB (1832313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85cd9cb148b4cfb2825188bc999e9b99f271c208d7efbcb364d2d0b3ea596dda`  
		Last Modified: Thu, 16 Jul 2026 00:19:15 GMT  
		Size: 20.3 KB (20341 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:743c6d9eff722964a6c5d665a76603ff68c0e15609791fd56088cc8b1f24b563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38957574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84ae2e1b83a8d9167a250efe5183b07dfc3cbf1b00c66084b4994d2b12edd48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 21:06:08 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 02 Sep 2026 21:06:08 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 02 Sep 2026 21:06:08 GMT
ENV PKG_RELEASE=1
# Wed, 02 Sep 2026 21:06:08 GMT
ENV DYNPKG_RELEASE=1
# Wed, 02 Sep 2026 21:06:08 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
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
# Wed, 02 Sep 2026 21:49:48 GMT
ENV NJS_VERSION=1.0.1
# Wed, 02 Sep 2026 21:49:48 GMT
ENV NJS_RELEASE=1
# Wed, 02 Sep 2026 21:49:48 GMT
ENV ACME_VERSION=0.4.1
# Wed, 02 Sep 2026 21:49:48 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Wed, 02 Sep 2026 21:54:16 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2386d276a8b49a80c7d742614dba427566b2fba86d662a1e8639c322628c9d2e`  
		Last Modified: Wed, 02 Sep 2026 21:06:14 GMT  
		Size: 4.7 MB (4666679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cbb2a14c554f976a6f82f2fbce53fb06c985b1303f68b13bce9a4cdbbeffec`  
		Last Modified: Wed, 02 Sep 2026 21:06:14 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb2bb8dc4c0eda06b225fc14cf0ee9be0e0892281ed5e5db02f7b32679c64ba`  
		Last Modified: Wed, 02 Sep 2026 21:06:14 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29d26d8a8f0f587fbef76505e7f91c6a96a0d96be501e53c995bc52ce2ff3c3`  
		Last Modified: Wed, 02 Sep 2026 21:06:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295820e5f97334192b62331e080e75e6ec5aaa7d1ae89b99adfa859ede80b4fd`  
		Last Modified: Wed, 02 Sep 2026 21:06:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20da4803ae7b0da21a3453af67d2c2a2fb35adc004e991f770f1f0778cff3214`  
		Last Modified: Wed, 02 Sep 2026 21:06:15 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57dd8e2239f294e88de1d0785b1018303320ebb9c2982db99884fb99354f8617`  
		Last Modified: Wed, 02 Sep 2026 21:49:55 GMT  
		Size: 19.9 MB (19866609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fefe10ae9371e45c6ac951e16baf44e691227e3174065d0db73eecb9c435572`  
		Last Modified: Wed, 02 Sep 2026 21:54:23 GMT  
		Size: 10.2 MB (10236657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:abdbc6c70f7ceec365ebab5c26982d2de116be72927fab5bdafd733a77eca81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1852810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e731eaf40b3e47d195c6d5fd51fadd060522461ab383623b5fedfeeac36d3e3a`

```dockerfile
```

-	Layers:
	-	`sha256:8b235a2688383dcd9efed68dac6245cd2e20881632a539c644d6ab4fa813c2f7`  
		Last Modified: Wed, 02 Sep 2026 21:54:23 GMT  
		Size: 1.8 MB (1832331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6b5874067586d981002b585935ee0260d49a2ddb0b30835ca5c8941738fbeaa`  
		Last Modified: Wed, 02 Sep 2026 21:54:23 GMT  
		Size: 20.5 KB (20479 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:eb4ebf140198409f94d11a88d2301f34faf929611cb2013035f1867b525435d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35113090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080c85541a6766f3a28fa1959d0183d23a2ab84535855f502e70ae60f5af1ba2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 23:33:31 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:33:31 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 15 Jul 2026 23:33:31 GMT
ENV PKG_RELEASE=1
# Wed, 15 Jul 2026 23:33:31 GMT
ENV DYNPKG_RELEASE=1
# Wed, 15 Jul 2026 23:33:31 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:33:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:33:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:33:31 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:33:31 GMT
CMD ["nginx" "-g" "daemon off;"]
# Wed, 15 Jul 2026 23:59:39 GMT
ENV NJS_VERSION=1.0.0
# Wed, 15 Jul 2026 23:59:39 GMT
ENV NJS_RELEASE=1
# Wed, 15 Jul 2026 23:59:39 GMT
ENV ACME_VERSION=0.4.1
# Wed, 15 Jul 2026 23:59:39 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Thu, 16 Jul 2026 00:19:05 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2d19d657364218520b467f12fbdfa85f03f8ec351ff3f6847b9cc8d02c0c43`  
		Last Modified: Wed, 15 Jul 2026 23:33:36 GMT  
		Size: 1.9 MB (1947382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fde8eb6549fdb51b6f90063c852145050cb3f88c4b9c750b20711345c38544`  
		Last Modified: Wed, 15 Jul 2026 23:33:35 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5f542b8f7cfeb355725e39b76301aa226b046f7a2f2f6bd0996a0808e3dc89`  
		Last Modified: Wed, 15 Jul 2026 23:33:36 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5a354dc162987e2e2bafed8dedf1646e941cb0afcdd288cb47faa151cd9995`  
		Last Modified: Wed, 15 Jul 2026 23:33:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ae6616cddd95d050d7c01dc46f2658328e9f22634a6788b203e617557c0164`  
		Last Modified: Wed, 15 Jul 2026 23:33:37 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e068671310e85ffde864771017b8ed54a7342466d8b057482b15afd7b8fab936`  
		Last Modified: Wed, 15 Jul 2026 23:33:37 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1061be1af821fe42602c85afba80ba8eb424f16c4a5774cc8895b7a4f3e891eb`  
		Last Modified: Wed, 15 Jul 2026 23:59:46 GMT  
		Size: 19.7 MB (19663844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f657d5c8ac6c2f4e3e6622ed269e2cf66d3522e0d25d68d1cc832dfefba331`  
		Last Modified: Thu, 16 Jul 2026 00:19:12 GMT  
		Size: 9.8 MB (9827125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:c15cd17c02f83f7117ed4e6a23a1736606c0131b81b4cf202cee27810904fae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1853075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96cb701298ea66632be74558af2dcab857a14508c92cd31ec3108539d316116`

```dockerfile
```

-	Layers:
	-	`sha256:37f4188f75e4a88bc1354227fd27ed22c768b421caba3d14054eee43f1559a72`  
		Last Modified: Thu, 16 Jul 2026 00:19:11 GMT  
		Size: 1.8 MB (1832872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d0c9b327f6551795479eb3737ecab9f0f902b241b49bb9d66ff5533415d6163`  
		Last Modified: Thu, 16 Jul 2026 00:19:11 GMT  
		Size: 20.2 KB (20203 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:a7ce6bd8586fb9d097951371ade883ce5f97515ac524bc688c1da601cafacfbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36800740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393f4610189b8a716445515772c68800aaaab2a2c7ce9b4b3780010f5927cfb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 23:45:24 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 15 Jul 2026 23:45:24 GMT
ENV NGINX_VERSION=1.30.4
# Wed, 15 Jul 2026 23:45:24 GMT
ENV PKG_RELEASE=1
# Wed, 15 Jul 2026 23:45:24 GMT
ENV DYNPKG_RELEASE=1
# Wed, 15 Jul 2026 23:45:24 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:45:24 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 23:45:25 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:45:25 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:45:25 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:45:25 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 15 Jul 2026 23:45:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Jul 2026 23:45:25 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 23:45:25 GMT
STOPSIGNAL SIGQUIT
# Wed, 15 Jul 2026 23:45:25 GMT
CMD ["nginx" "-g" "daemon off;"]
# Thu, 16 Jul 2026 00:04:07 GMT
ENV NJS_VERSION=1.0.0
# Thu, 16 Jul 2026 00:04:07 GMT
ENV NJS_RELEASE=1
# Thu, 16 Jul 2026 00:04:07 GMT
ENV ACME_VERSION=0.4.1
# Thu, 16 Jul 2026 00:04:07 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Thu, 16 Jul 2026 00:17:52 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120acb81e4b238968d41695c4f29be35af8c9d774bd15707a69ef1f5c7d381af`  
		Last Modified: Wed, 15 Jul 2026 23:45:34 GMT  
		Size: 2.0 MB (1965924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ecdd1741c7762ecfd0d9325ca4b984d53749e97dadda5de1552e31b8a7e719`  
		Last Modified: Wed, 15 Jul 2026 23:45:34 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c2b056cfdb866d9d42d0b145147ca77a317e1ae49e83aed6a31845f91dc061`  
		Last Modified: Wed, 15 Jul 2026 23:45:34 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0409fbd769ce9f9195293345b2e1a949922649f1647d5e757f0a0687eb47fe4a`  
		Last Modified: Wed, 15 Jul 2026 23:45:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ada5375654f586d15c41870d608bbca4f3e0b19a1f7ca4b8d484bf5d0994d6`  
		Last Modified: Wed, 15 Jul 2026 23:45:35 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb1c57c807ba9e4d2ef9b2a5f31196830c1cb5616a7e438e47d777c3b1c2b70`  
		Last Modified: Wed, 15 Jul 2026 23:45:36 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3b8dde243ccb391efdab0cfb37fe5948b35b93494ed5cffff1aa6b550df1bb`  
		Last Modified: Thu, 16 Jul 2026 00:04:20 GMT  
		Size: 20.5 MB (20511591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be400e5123670c28bd81c43928b88d1d505e0abe586095e4c9b5544d39cbcd1`  
		Last Modified: Thu, 16 Jul 2026 00:18:06 GMT  
		Size: 10.5 MB (10505229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:7a2459f667b14f58b22b9f626876eecbe05211d5826350e1454aeb5faf315dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1852598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dde2a603fe9f06c0aed68ae04f4130161b688c127939477e69c651f8007fb02`

```dockerfile
```

-	Layers:
	-	`sha256:942840f50b2cc5107441c1f3713711c68090bccc9206eddd23f28961068d1db7`  
		Last Modified: Thu, 16 Jul 2026 00:18:06 GMT  
		Size: 1.8 MB (1832296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:590636eaca343ad442b031f78a28e3cdf71478144ac28726272d67ca20b6d35e`  
		Last Modified: Thu, 16 Jul 2026 00:18:06 GMT  
		Size: 20.3 KB (20302 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; riscv64

```console
$ docker pull nginx@sha256:74ef8545d5ecc991452b88b9b979f55ae932307f5342a2f2760439064c1ea207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33208644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4637f7d4ab15945a4dbc86cff10fc866c36faabbd2fa9bcf4a94e5df85528cea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:43:29 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 16 Jul 2026 18:43:29 GMT
ENV NGINX_VERSION=1.30.4
# Thu, 16 Jul 2026 18:43:29 GMT
ENV PKG_RELEASE=1
# Thu, 16 Jul 2026 18:43:29 GMT
ENV DYNPKG_RELEASE=1
# Thu, 16 Jul 2026 18:43:29 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 16 Jul 2026 18:43:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 18:43:29 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 16 Jul 2026 18:43:29 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 16 Jul 2026 18:43:29 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 16 Jul 2026 18:43:30 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 16 Jul 2026 18:43:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 18:43:30 GMT
EXPOSE map[80/tcp:{}]
# Thu, 16 Jul 2026 18:43:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 16 Jul 2026 18:43:30 GMT
CMD ["nginx" "-g" "daemon off;"]
# Sat, 18 Jul 2026 09:25:55 GMT
ENV NJS_VERSION=1.0.0
# Sat, 18 Jul 2026 09:25:55 GMT
ENV NJS_RELEASE=1
# Sat, 18 Jul 2026 09:25:55 GMT
ENV ACME_VERSION=0.4.1
# Sat, 18 Jul 2026 09:25:55 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 libxslt-dev                 gd-dev                 geoip-dev                 libedit-dev                 bash                 alpine-sdk                 findutils                 curl                 cargo                 clang-libclang             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && export BUILDTARGET=\"module-geoip module-image-filter module-njs module-xslt module-acme\"                 && if [ \"\$(apk --print-arch)\" = \"armhf\" ]; then BUILDTARGET=\"\$( echo \$BUILDTARGET | sed 's,module-acme,,' )\"; fi                 && make \$BUILDTARGET                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed 's,nginx-module-acme=.*,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache curl ca-certificates # buildkit
# Mon, 20 Jul 2026 10:29:30 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"884cbfae1bfc1f8025795c4232780c71086837022321a2c6eba3654b6507e87f9446c7e88a711fdb6f7360000e25bea4b75bdcac13b32db8acd7e0e9fe1dcd3d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3094b50ae007715396f0164a89fc304f8ca414f98cf150e4b47ab03ad7423d`  
		Last Modified: Thu, 16 Jul 2026 18:43:55 GMT  
		Size: 1.9 MB (1922027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d6aa81a7d5bfee67126c167f8f24bc17acac107f49a60945ac8588ca8d90fb`  
		Last Modified: Thu, 16 Jul 2026 18:43:54 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3417b4d748e4039b34bd38dd609b5f054c63878fe0051e3f7d52190869900c`  
		Last Modified: Thu, 16 Jul 2026 18:43:54 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4882035b41cd246d84edce1ed96b4f45b2ff3996ff2f6d93a60b6abacb55153`  
		Last Modified: Thu, 16 Jul 2026 18:43:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bebdf2a854970d3732b6be477a8476adb260ca11fc6bb3bd60766dc3ff3668`  
		Last Modified: Thu, 16 Jul 2026 18:43:56 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3070dd09fc0af545579e6b978e8c45d2bdd7d18ba0901b88ae145bab18707175`  
		Last Modified: Thu, 16 Jul 2026 18:43:56 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379ef6605b01b2863fc8b547f5e9712124284da4ad277f3e27b9e96c8ed16aac`  
		Last Modified: Sat, 18 Jul 2026 09:26:46 GMT  
		Size: 18.0 MB (17978316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826a6bfd5fa9a32fe501e857d7a8d69e6d6130429038ef4209fe249a335f945f`  
		Last Modified: Mon, 20 Jul 2026 10:30:29 GMT  
		Size: 9.7 MB (9729340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:401251e82aa9b46a74fe633be703a7f191da25ab28f45373847084c56ed81114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1852593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a04ba2655edefef8b45ff03af349686deeab1b607ae18dd5ce8c462bb91209`

```dockerfile
```

-	Layers:
	-	`sha256:6205c327cb6c18b8b54bbc5bd5b6166120eb191fd28bcdb352d119ca1cc29d19`  
		Last Modified: Mon, 20 Jul 2026 10:30:27 GMT  
		Size: 1.8 MB (1832292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2178da3c01552c7b30e39c499ba363c467cd0fad6fd690a248f7d3aea74e7c94`  
		Last Modified: Mon, 20 Jul 2026 10:30:27 GMT  
		Size: 20.3 KB (20301 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:57772abd54963a9787fedc0c7431221fe4ba235a76d87f1fad6fcd2f47ee6254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39132833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec2e33addb45f2208313bd846a39d0a9cda67991f9f3876a24b3861f0f74efb`
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
# Wed, 02 Sep 2026 21:49:13 GMT
RUN set -x     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}         nginx-module-xslt=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-geoip=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-image-filter=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-perl=${NGINX_VERSION}-r${DYNPKG_RELEASE}         nginx-module-njs=${NGINX_VERSION}.${NJS_VERSION}-r${NJS_RELEASE}         nginx-module-acme=${NGINX_VERSION}.${ACME_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             apk add -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 perl-dev                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && PKGOSSCHECKSUM=\"53182fa1aa214ed690c8729695e9f6cad71489efa99b016e57314a29b9f0f3f42082819977dfc5569d800d693c9849fc1b48719fa35692e88de9807e6ab6e976 *a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz\"                 && if [ \"\$(openssl sha512 -r a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf a8a4da8b4916b7adc193d3694cddeb4e6d771e8f.tar.gz                 && cd pkg-oss-a8a4da8b4916b7adc193d3694cddeb4e6d771e8f                 && cd alpine                 && make module-perl                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && if [ "$apkArch" = "armhf" ]; then nginxPackages="$( echo $nginxPackages | sed -E 's,nginx-module-acme=[^ ]+,,')"; fi             && apk add -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi # buildkit
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
	-	`sha256:3a24353c29f5a34ce5eca527f5ca5e4061ddc20ccf695c37bf72354b331fc8ad`  
		Last Modified: Wed, 02 Sep 2026 21:49:32 GMT  
		Size: 10.8 MB (10839758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine-perl` - unknown; unknown

```console
$ docker pull nginx@sha256:c6c0d982b9e4d58a9b139e58a9ac3935840b1c2d41044ee2773591a124ce000e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1852597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040db5018b6a1e444d15475b1b1aa5b016347d0a15c575b443b2b51bd781f912`

```dockerfile
```

-	Layers:
	-	`sha256:1c6b3a6f7da99bdde6c53549b95ea598e2f0421cd52b5bdd744f5075bd7299b0`  
		Last Modified: Wed, 02 Sep 2026 21:49:31 GMT  
		Size: 1.8 MB (1832246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cc883d9f888a161aaac28c0b53035ec3ced31d485adcc6d8cf5b18226e2ae60`  
		Last Modified: Wed, 02 Sep 2026 21:49:31 GMT  
		Size: 20.4 KB (20351 bytes)  
		MIME: application/vnd.in-toto+json
