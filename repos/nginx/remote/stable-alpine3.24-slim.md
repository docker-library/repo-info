## `nginx:stable-alpine3.24-slim`

```console
$ docker pull nginx@sha256:34e26d3ef21f4820ebba948226364423c417bd2542d014c5aa9f17493dabd9d6
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

### `nginx:stable-alpine3.24-slim` - linux; amd64

```console
$ docker pull nginx@sha256:510e9bf00cd2e86431aee4df5d3def318868d5adc7ccc4d3183dc4d943476c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8203375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b75e64967cdc5f344171eacb7677e73484ba7de43732fb574cb151bf411bd9`
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

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:7719350178643648d838edb4c331caea8e4f29312d67fe3fb81cf571940519fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.0 KB (503023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2facff44885c21d493d2d71c84e5e3f773da701a136f53c961f92efc9e31521c`

```dockerfile
```

-	Layers:
	-	`sha256:7cfbbe1a96b3eb31e7c8a1f0ef92ed0a1870a484cb4e277f20822cedc5e786b9`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 472.7 KB (472734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdaa7d973538bed61523c1bc5ff5ae7e515e8d48bb47f3e992a06ff5346d8c6c`  
		Last Modified: Tue, 15 Sep 2026 22:48:31 GMT  
		Size: 30.3 KB (30289 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v6

```console
$ docker pull nginx@sha256:49ff59269c3d93f1a8fa1317aadec4802532a6555fb61a432a60cc8f04b05ef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ab692bba35975a5431076b96ecddabaa8f422eabd562bfa798459bf2e9a1ed`
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

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:e2565d35ec76a54016e43525152e02af57531fa9693058d94b6c084aa934fb6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d2acc781d0ed982e528c15475b018a53361446274f2499bcc577bbd0a5ec8b`

```dockerfile
```

-	Layers:
	-	`sha256:a06232485a11f584c8e2afce8aaaa2dc07337e022bc01052124f9b6e5f0dd5c4`  
		Last Modified: Tue, 15 Sep 2026 23:19:38 GMT  
		Size: 30.2 KB (30169 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v7

```console
$ docker pull nginx@sha256:17a01bc8c4c3324cbe646b48342bd2f0f4ccdd60f771ff574e0051fe661cad88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6919224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763a2edd0ca827778e935733f910104d32d515114e105971d975c66ad85aa3d3`
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

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:f463279b8633a9375a621f400ba1dd30e67941c88f7d8cdcf9c1ed082d7c083f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e58cdf98a6d2def264d658f69460ead006025b51c5dcc7f045bf50ca2589f4`

```dockerfile
```

-	Layers:
	-	`sha256:f9a8260d8092c0b4b4e142936dd4753e13ac1b752210a47da9299af96df55109`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 472.1 KB (472136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d2bf39a8f8d4b60c5c2368fd29555794a77d98fc17e5600fea5e222b78c84e8`  
		Last Modified: Tue, 15 Sep 2026 23:09:10 GMT  
		Size: 30.4 KB (30383 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:f641ff4131a5033a8941c43e73d8dc05c182b7aa89c0554d4822bedc40a13c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6093233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c650bd2d7f1258c4607b93c7d02c8cd536070e7f3fc4efc13de31a649fac9a34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 17 Sep 2026 21:16:11 GMT
ENV NGINX_VERSION=1.30.5
# Thu, 17 Sep 2026 21:16:11 GMT
ENV PKG_RELEASE=1
# Thu, 17 Sep 2026 21:16:11 GMT
ENV DYNPKG_RELEASE=1
# Thu, 17 Sep 2026 21:16:11 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 21:16:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:11 GMT
EXPOSE map[80/tcp:{}]
# Thu, 17 Sep 2026 21:16:11 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:16:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca2f415db2e16e3430949c91322e26fdca3c31ab48a3c49390ab84e840c6421`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 1.9 MB (1900980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe73ebe2e3a09df6103c91dc68ce40405c573da20a81904a4e1c0a23535e82c`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8670c12c24174d2d5d6739cee6d5a6ab15bde03a9385bde3d1fa22383243a0c`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c813cb36f2de9343a555f0f732b5844c83a68b3f2d081e12801c720eb3925aa0`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97302f3d52260b724f3bcf84af56afafb151824ad25fedda8d5fb1c1c3e8d266`  
		Last Modified: Thu, 17 Sep 2026 21:16:17 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1826c19e49402aec32bdb3d4322ea247842745e7a94ac459b497d770ae79ba`  
		Last Modified: Thu, 17 Sep 2026 21:16:17 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:bf80408f64cf74c64b6c8a3a490fac75abe429c4d4d02edd15e0d652456786cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 KB (502580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064d90fb7ed4198b08f7bd16b10630c9f351644ade5f14f85c4f01dbdec31642`

```dockerfile
```

-	Layers:
	-	`sha256:581c7ae4f374403b309a5c077dea27225682a107113acf363c091df329d877e6`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 472.2 KB (472164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e20e0c8918e92a154e39d8282998bd7b9b6aefa57603dc05acce891dbd6d888c`  
		Last Modified: Thu, 17 Sep 2026 21:16:16 GMT  
		Size: 30.4 KB (30416 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; 386

```console
$ docker pull nginx@sha256:7b2fa1f372065a46d122b1bb6dac342a2e73d78c705a78fb72946bc6056e08ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7910615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3fed1a4201891fe23c61764dde889b485c1a6e89ad41775af3c3ce09348693`
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

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:cd88a05e8e71b31315b2250a033cde36499c884b897bcb680002ecbdb3f7b716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.9 KB (502946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c093699b2fa55b4012561b3b5fbc5c6294aceb1acb17547f316e4a84a7dd201c`

```dockerfile
```

-	Layers:
	-	`sha256:fa38e9bd7ffaa14b8c792f7be22e6881c9c45cd4f918428127e60f3d5d7f8cce`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 472.7 KB (472699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc7ece28393a9b47349c53c5e4135bf52fbe5da30c799ca8f617f28c481e8c46`  
		Last Modified: Tue, 15 Sep 2026 22:44:29 GMT  
		Size: 30.2 KB (30247 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; ppc64le

```console
$ docker pull nginx@sha256:847cc5c67a1b4713abc9bb4df20da77a3ee6b2673825d82f8ed08e8659f15897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8134099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bfa3f39bde276c045425d1661080f19c622fd7c67c659b2cd802bda5dd97cbc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 01:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 16 Sep 2026 01:18:37 GMT
ENV NGINX_VERSION=1.30.5
# Wed, 16 Sep 2026 01:18:37 GMT
ENV PKG_RELEASE=1
# Wed, 16 Sep 2026 01:18:37 GMT
ENV DYNPKG_RELEASE=1
# Wed, 16 Sep 2026 01:18:37 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 16 Sep 2026 01:18:37 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 01:18:37 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 16 Sep 2026 01:18:38 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 16 Sep 2026 01:18:38 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 16 Sep 2026 01:18:38 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 16 Sep 2026 01:18:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 01:18:38 GMT
EXPOSE map[80/tcp:{}]
# Wed, 16 Sep 2026 01:18:38 GMT
STOPSIGNAL SIGQUIT
# Wed, 16 Sep 2026 01:18:38 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acacbeefd099a0e23c6683beeac38bdd4a22e7c69cfe8ae1b4e93444a0c4f2c`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 4.3 MB (4316099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7723cf2beecbea2c1a5312181d13ccf38e6541e206062c23d10cb5c499d2f1dc`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a638ba6a149f947cb18313aad334a98f3de7803d494cf411bfc0fde59d3b7422`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705171240564c99774be94110ee8142363da795aadbe2d3838bd0116345fe064`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a958599502ebec36138deb95da8d588ed80a30efd0cbcc84b1383f6f38b34c7`  
		Last Modified: Wed, 16 Sep 2026 01:18:57 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae0c1faebf8ef5edd2328c8444d2d7460207754f070c33b5f1a465c61a5e5d0`  
		Last Modified: Wed, 16 Sep 2026 01:18:57 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:d623af534fc89daf1a671df76de8ef17d16bc361bdbabe5c5ce321caa596276b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4db9c1994f7476e51136a52e397c304c60638bf84195411c9ae78b499289c`

```dockerfile
```

-	Layers:
	-	`sha256:8230150489ea6341bd302f94e8029f4dc3232b2c76ab0d900dbc519d6868a823`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 472.1 KB (472129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7c325dcdb83d20bf72db1063472de3bf1268810fb1541ceb386292ed8daccb8`  
		Last Modified: Wed, 16 Sep 2026 01:18:56 GMT  
		Size: 30.3 KB (30345 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; riscv64

```console
$ docker pull nginx@sha256:79daea091ccbdd00e5ef7a86cd961dadd4dfa12bbb20d976e35498b47d0e9031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7644170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76db19769e720e6d78a209cc2b4ed535a5a1f7a127e970a54f6c2b16534d05c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 09:37:52 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 17 Sep 2026 09:37:52 GMT
ENV NGINX_VERSION=1.30.5
# Thu, 17 Sep 2026 09:37:52 GMT
ENV PKG_RELEASE=1
# Thu, 17 Sep 2026 09:37:52 GMT
ENV DYNPKG_RELEASE=1
# Thu, 17 Sep 2026 09:37:52 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"feaa7c9e587e59a01e229c2396433a9f0bccd6ce381afae9311b7496d1c2b53f93b2b0b2adece8f76fa06b92ca6b6a706103ef2c0a26e00afe82dfcdf8135a23 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 17 Sep 2026 09:37:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 09:37:53 GMT
EXPOSE map[80/tcp:{}]
# Thu, 17 Sep 2026 09:37:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 09:37:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85c72b0c5b1133f33b642f8e4304245d6c3129eac056876f2e58e9e19ee8188`  
		Last Modified: Thu, 17 Sep 2026 09:38:22 GMT  
		Size: 4.1 MB (4065208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32ec3d59c5bf7b91ea1149a44de6529c748d45144967d45d852a118602eae12`  
		Last Modified: Thu, 17 Sep 2026 09:38:21 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b90a2974513b02b3bc18c69bbecf88718b4473a434be584c5c1eb3a21d665c`  
		Last Modified: Thu, 17 Sep 2026 09:38:21 GMT  
		Size: 957.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac345612a495b93e9655cbb1b8016b30594af407b09727fe801cdbe972821438`  
		Last Modified: Thu, 17 Sep 2026 09:38:21 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3013421e5095390340f080021a756838e51a3b13e3200ea05b602a833dcf1539`  
		Last Modified: Thu, 17 Sep 2026 09:38:22 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c541477f166e7fcfc9b66eec90d15ac6837de9a329bf69575a4b9c6935e2095c`  
		Last Modified: Thu, 17 Sep 2026 09:38:22 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:94058787dce077eec1e68cde4f62d56c11cf997342ce1103917a1414a86c02b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2b507712e4ddf605bd7f00152026542e55113539efcd6c13ada3569571e86d`

```dockerfile
```

-	Layers:
	-	`sha256:5f1d10f799e4c9ae88e6e84638c6ac9114a3f2aa911db564f7011cb81181b61b`  
		Last Modified: Thu, 17 Sep 2026 09:38:21 GMT  
		Size: 472.1 KB (472125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce5fd655255416f89f541b44a53330537c3e404414be1d864ec469eb71ff080c`  
		Last Modified: Thu, 17 Sep 2026 09:38:21 GMT  
		Size: 30.3 KB (30345 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; s390x

```console
$ docker pull nginx@sha256:5431ecaae3f6b0bec3332017297832598b2aa64bd97286d75d16e1f02438ef45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7956259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89310312b34842ac8e48289e67fa596a697a5a0b6175bfb0ac91becc1426a49b`
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

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:4a63ce2bdd441b19a3e0e1ba58385f22fe4f55fd78936bf8ed1dc47b2aad52d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9241757818a495320fcc4603059aeac6ef60a66981b2b523a83ddfa9344cdc9`

```dockerfile
```

-	Layers:
	-	`sha256:8922d485e726e124fc38123715fcfe36f5227af80806598bdad4df5d249ce3ec`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 472.1 KB (472083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:305215084da628c12a93e41a6596d237f23b3131ce165786ee2e8575e8b0425e`  
		Last Modified: Wed, 02 Sep 2026 21:05:20 GMT  
		Size: 30.4 KB (30394 bytes)  
		MIME: application/vnd.in-toto+json
