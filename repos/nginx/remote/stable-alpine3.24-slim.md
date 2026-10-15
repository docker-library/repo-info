## `nginx:stable-alpine3.24-slim`

```console
$ docker pull nginx@sha256:3028fc1419f99b95c1c69f844bbaf49dc1b881750c51b497fc721ac4f02a14e6
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
$ docker pull nginx@sha256:cc93106876eedec3e662e46adb019cd1d2cfae7ccdeb7eb411eeb932d90e9701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ab95b6fd6c442e863d07ba514698fec65c09b76133867c3d9d369edbda7e13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:42:52 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:42:52 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 18:42:52 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:52 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:52 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:53 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:53 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:42:53 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:42:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:42:53 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40d04ac48f7946b98c936ccbb07daf62cd6b4c63c41bcba0196d02866163bbe`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 4.4 MB (4358483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bafeab4f16557b40bed8af8bcb4e3d2a50a3ebf922d8a47552997a9c6a7d0a`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258d8d3acc3e2a26bba074c3994d9ded71ac95a550ff756983e12b7cc8c86025`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5202971cfe9d7ea3d5e50c27042a2ebac63194d6691506cb9d3a8c0ea81e4c`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6591080e8dd90768d164b2d35e440e00bf94dca94a6e429a57c4fddd19bb5d9`  
		Last Modified: Wed, 14 Oct 2026 18:42:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aab0913f3044d021b69c7b998f5373994336765dd510256c02e90e5ccc347de`  
		Last Modified: Wed, 14 Oct 2026 18:42:59 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:9f8db82e70c3c6f3941f6dfd879ffc2316777b6fc10bd2e808b9220567f3dc43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.0 KB (503022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c51b5931df12303f59caa0f7e09f4a884a9d0514c94e1967227b1aeeee1cda`

```dockerfile
```

-	Layers:
	-	`sha256:742812179c762e080eb22443e7e1188712e2d34ebe6b23117eab9e7770e1e434`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 472.7 KB (472734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9127ea51e22505594eb2b05cd351a1733b62112ff547e5f2bab9f679962c1a0a`  
		Last Modified: Wed, 14 Oct 2026 18:42:58 GMT  
		Size: 30.3 KB (30288 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v6

```console
$ docker pull nginx@sha256:fc5c75d0d111118f7312815ea4ec8cc19b12b7bff7729239d0a60906f1999550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7601764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f046d87f09ab4e49a995f7b931080b97dab8393faa4b38cfc46ef1dd83dcb42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:42:52 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:42:52 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 18:42:52 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:52 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:52 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:42:52 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:42:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:42:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d7a68af455a2f006602a721ac1596dd369c1672a6558126107609a0d897a24`  
		Last Modified: Wed, 14 Oct 2026 18:42:56 GMT  
		Size: 4.0 MB (4042041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5afb7df0627cbe84f11344cb2a999a4b946ef936d40b723394374602f5ea2cdb`  
		Last Modified: Wed, 14 Oct 2026 18:42:56 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8204774ce704259f0b58e1cf23fd07766648ef6411cab9fd6380b4cb5b972d68`  
		Last Modified: Wed, 14 Oct 2026 18:42:56 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8519f523c8e1d9eb3abb5a2ca7f53d91eca7e38357b91df803a45ea9dd230eae`  
		Last Modified: Wed, 14 Oct 2026 18:42:56 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b431187dc546155b9742965bf0987041f1f0bdf0f876ccf23ba31afed6130f70`  
		Last Modified: Wed, 14 Oct 2026 18:42:57 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cccaf38aef62928bcc1549a93f16c729b6f4e41bd1768f84e7c16ec25d71181`  
		Last Modified: Wed, 14 Oct 2026 18:42:57 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:e0ec85f710aad77efb6f6e447d3fde647cffdbacaba6941a99a156f0d49781ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd815970740afbf305f5a3f141ec3c32a5d6a654e389db79940baf684c7bb51`

```dockerfile
```

-	Layers:
	-	`sha256:791f3810c692c35d9a5db6f7968de3e7cee36f172eb6252b2ae35978f14675e2`  
		Last Modified: Wed, 14 Oct 2026 18:42:56 GMT  
		Size: 30.2 KB (30169 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v7

```console
$ docker pull nginx@sha256:8ea45622522a163d829278798103948e51ed005ac78881f36269fe22501ec6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6968988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3762d8635886e72525bae8eaa6971bb64f01461aacbaa4abf070a33079433014`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:44:06 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:44:06 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 18:44:06 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:44:06 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:44:06 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:06 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:44:07 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:07 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:07 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:07 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:44:07 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:44:07 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:44:07 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e46e7f10a45e72905ae4a85c640bcd00376fa3fd2d6ed7538d0773564cd575f`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 3.7 MB (3699174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6fe0ef8e8604ecb277e499e107885c03cc745feedc5ed98e9dab85c1ca5321`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4b79c4914ee1ba6dc3f26f9499458c147091ec8658d50b210fa8a0a28ae3a9`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b780452ac78d335eddbcdf078348c0eec2aeeff81ef86868d6d7ed11223135e`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848fb668dfa42120b5abbd6527e8b0db92209d331b6318ac37f616d467ba658c`  
		Last Modified: Wed, 14 Oct 2026 18:44:13 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8d6ae706a1cdc668998ab8534ee292e0191e1be0f5fbbfe66946af92eb6e8e`  
		Last Modified: Wed, 14 Oct 2026 18:44:13 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:f5adb43fbbc4ff6f5883151d75806d6a4c0a08e55a17966aa955f3f62d4ca476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cff76291e388a30080d7428cc05e3e3ad868c3f393a152288a1b9d0ecc2c23d`

```dockerfile
```

-	Layers:
	-	`sha256:0ddf8b2a3390247705fe12923dcbb4ac9ffc391cd5a354f76e7aafaede5a28e4`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 472.1 KB (472136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c87bcbd04fd2418acef702e684b3cc5869571ec7a436624396bd42bf2e66f3d7`  
		Last Modified: Wed, 14 Oct 2026 18:44:12 GMT  
		Size: 30.4 KB (30385 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:65378f285ede2435d5201c3f8afc3576963b6723d54c9c7f21d340627ed82329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8870250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d8f5da0359836e44811d0f141ac92b619c2f7d3bf5dde433d165271ecbdd9c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 19:21:05 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 19:21:05 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 19:21:05 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 19:21:05 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 19:21:05 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:21:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 19:21:05 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 19:21:05 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 19:21:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c809fd23846aa71c21c9f8df90b657456e492bcf1fce078dc2f95fe12be659`  
		Last Modified: Wed, 14 Oct 2026 19:21:11 GMT  
		Size: 4.7 MB (4677983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e161b57dfd979ee6047a0c8f3d50dd450617e4c11a2990df802c0bf48b0e160`  
		Last Modified: Wed, 14 Oct 2026 19:21:11 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08804edad18d5c3d65d3b2a9305e5910319105d88dd03ee9c76a503f61e7813b`  
		Last Modified: Wed, 14 Oct 2026 19:21:10 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8016a3b358a0b1bcdb4178b68b14cdfe12d5ce30b205ace919d6acfc2dc9b9`  
		Last Modified: Wed, 14 Oct 2026 19:21:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a24a1b45b092aa7df084650c022f2572b91ef41bed04f9dd4253de6ffcff4fe`  
		Last Modified: Wed, 14 Oct 2026 19:21:12 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b13e5fe41edd63155ae022db47e310536955502eda85a66e31e79c425874609`  
		Last Modified: Wed, 14 Oct 2026 19:21:12 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:745c11bc6eeec6e82f60153197424d6df68905f1e2f9d21ff1dc3ac07a534857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 KB (502581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf35fab51e0360ad9b69134be68d5a7725402e2866fa1510d87af08a69e4194d`

```dockerfile
```

-	Layers:
	-	`sha256:2abdf484304d4904c5a89e561613130b205deba13b31f2cae0067930270c55a0`  
		Last Modified: Wed, 14 Oct 2026 19:21:11 GMT  
		Size: 472.2 KB (472164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe36d9b1cbbadee7551b89c3d819b86e489a8b065b4fc54e35144e86dccc222`  
		Last Modified: Wed, 14 Oct 2026 19:21:10 GMT  
		Size: 30.4 KB (30417 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; 386

```console
$ docker pull nginx@sha256:565e5ae121bd4bef6ae652bdf83c1c3490676159e7c959d3962d6d1ccfdfa673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7978108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5d4920bae2680b4372e39435158a444495bdd7dbc76ce3084c7a447b6d2cb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:44:19 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:44:19 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 18:44:19 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:44:19 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:44:19 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:44:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:44:19 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:44:19 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:44:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cfbc575014f526bebc91289392e0880d5b4813397e071eba25e2f8784b7865`  
		Last Modified: Wed, 14 Oct 2026 18:44:25 GMT  
		Size: 4.3 MB (4296718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041ef852ddaf44745e8cb0aa9e499cf3103c10c509e2fa7c222a4318bc7ecf52`  
		Last Modified: Wed, 14 Oct 2026 18:44:24 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9155ce35092028cf3be35a349023fe4b5c941145dd72a4019cab2f9c3344f8a`  
		Last Modified: Wed, 14 Oct 2026 18:44:24 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ded8a7b23068630f0f6dbaff68b02822c9aa537350f57b96a914af60eec5c6`  
		Last Modified: Wed, 14 Oct 2026 18:44:24 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59775af1924783aefe53c445e668cdeaad0ac26b2c1a06d318e9c40026712908`  
		Last Modified: Wed, 14 Oct 2026 18:44:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452e3c0ecdec661a2110dad63199076a6132b2e540c6c2b1bd466d4c2c7f5571`  
		Last Modified: Wed, 14 Oct 2026 18:44:25 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:01673efee1db75d69ef34c6fa5dc4659dc7bb7ef03913125c72a54f6f5b817bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.9 KB (502946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5efe50eb29793670d0f19ed840937e18792490473eb45ff51c051f7107879b`

```dockerfile
```

-	Layers:
	-	`sha256:c45b9e6ee95fbaa611399271757e1e53e4ae32e487ba1bfd09e3b54d3eded19d`  
		Last Modified: Wed, 14 Oct 2026 18:44:24 GMT  
		Size: 472.7 KB (472699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:268a7e2de093ceeb75243c6b1fcbbfee9f25ed30321a71cf1cf191f0dff3ce5c`  
		Last Modified: Wed, 14 Oct 2026 18:44:24 GMT  
		Size: 30.2 KB (30247 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; ppc64le

```console
$ docker pull nginx@sha256:b75878cd64d6465cdecedd4eb3907c8f15fd1c22bb545089d277e01d8b420fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8202588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e3ee8aaace475a906525412084a980fba16e47bb4ba32da7f36a0ac95dd8eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 19:02:51 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 19:02:51 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 19:02:51 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 19:02:51 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 19:02:51 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:02:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 19:02:56 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:03:03 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:03:04 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:03:04 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:03:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 19:03:04 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 19:03:04 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 19:03:04 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c188287ff495b8f2aac761f2ba42d9a3faffbdd7f5818411703d625f686ee9b`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 4.4 MB (4380502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be38d93f2b725c6bda526e6832b74de82d87f2541dda4f7f411f98e7bce00d9`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e877ece4e85c717e2d4de603aaa4c9905351ff5840d8afadd39a4c9107c7bd64`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0382434c15b81dbee2355d48bfc0ed8b33697c26ade29a22e54d082447cf3772`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ab4bf2302fbff5a6684afcc5b948ccc99f311acc14ebee04b789abd5c80b50`  
		Last Modified: Wed, 14 Oct 2026 19:03:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72bd9ad9a682e7051c6d35bfb6566930fb857fd3bb345039097c0d5ee29cea8c`  
		Last Modified: Wed, 14 Oct 2026 19:03:15 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:7d0308b7fbb5ba8377be42b965e480b530d3196c119ce85f4aa5bae8db4145d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391f2b93a2a5fc7e3900c8418fb9d0ea0c40c2772823b4482691f9f7297d709d`

```dockerfile
```

-	Layers:
	-	`sha256:2b20b3129af77fca1f68b03ce74471dc5d63e828521d12dcd8fd4b50170dd956`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 472.1 KB (472129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b85d9e591e434cfae640c16905465b464566a7f912a0fb3feb308bb3cf879df`  
		Last Modified: Wed, 14 Oct 2026 19:03:14 GMT  
		Size: 30.3 KB (30345 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; riscv64

```console
$ docker pull nginx@sha256:7bbc6f1f82e88324fc550856ff49aa7a9337d834d90830ec7569161ea1d097ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7705619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ab5f28ad33aa098968f412ba4f3e1300b1e6fe1e0731dc8ea27e28767b854f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 02:41:34 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Oct 2026 02:41:34 GMT
ENV NGINX_VERSION=1.30.6
# Thu, 15 Oct 2026 02:41:34 GMT
ENV PKG_RELEASE=1
# Thu, 15 Oct 2026 02:41:34 GMT
ENV DYNPKG_RELEASE=1
# Thu, 15 Oct 2026 02:41:34 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Thu, 15 Oct 2026 02:41:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Oct 2026 02:41:34 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 02:41:34 GMT
STOPSIGNAL SIGQUIT
# Thu, 15 Oct 2026 02:41:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c740e4802ebbb55299440d200982630fbb91f7c3c191c1cdc67134d5d100da`  
		Last Modified: Thu, 15 Oct 2026 02:42:03 GMT  
		Size: 4.1 MB (4125636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9bd6cd73a08f78f067355ebaa69c93ba9bb6001c23d587378e8c29b84f8aac`  
		Last Modified: Thu, 15 Oct 2026 02:42:02 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446494f18239bac41ad440f9861888cf264bc578c2ec241852c5d5e683e5ba2c`  
		Last Modified: Thu, 15 Oct 2026 02:42:02 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1555d4daf650d74cb787b72158bc777b223cb48e6cf79e60bc2bab7c5d7b28e`  
		Last Modified: Thu, 15 Oct 2026 02:42:02 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7ec189bdf80e7eef92aba67b4147c80e313a7ef8ae4834c09e4011b0e8c653`  
		Last Modified: Thu, 15 Oct 2026 02:42:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f305374852a9e5fd77c0a931faec06d4a248cba0eb2aa0115ff0ec0369c51f`  
		Last Modified: Thu, 15 Oct 2026 02:42:03 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:89598d67367751efd9435db241b553736c241ec1941ea8344d790f719372f950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb722bc0774bfb8dc6830692cc39b9cc219f863630c91076661923d4a0e01124`

```dockerfile
```

-	Layers:
	-	`sha256:ed268db1b5b0289b7636237163c86d519964816fe25d9147c04080f4e53300bc`  
		Last Modified: Thu, 15 Oct 2026 02:42:02 GMT  
		Size: 472.1 KB (472125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0edcc52c129618c3dfd264d3a17c910f21f20a30f472d2022970670daf12ba1c`  
		Last Modified: Thu, 15 Oct 2026 02:42:02 GMT  
		Size: 30.3 KB (30345 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; s390x

```console
$ docker pull nginx@sha256:29de93e6d2f7a7daf14d070a56176b4344db9e201664ce38705d8b9af8fbcd75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8029715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0eac7bdc88e414be360636d68e81dec5ee54adc8db8eecf27b84c2452b3060`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 19:31:23 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 19:31:23 GMT
ENV NGINX_VERSION=1.30.6
# Wed, 14 Oct 2026 19:31:23 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 19:31:23 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 19:31:23 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"c16280934a44f7358992d39bb1d876a58e978c58371b96fd212de3f58c7ba40c31a683c54ee46c85d0844ca18fd7addeafbb29a8e06a9d1e164a8628a4739eee *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 19:31:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 19:31:24 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 19:31:24 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 19:31:24 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec635a04e4ef0a957eb3e78a53d3e928b93783503bd4893df4da923ae24f0d8f`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 4.3 MB (4309764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84910ec539e4a07c8b2dfff68c62168d0c97f18af51c43860abdaa463144ee60`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b1a93aa36781af3bca351bdca9a13b4571d0dff252217d72501474648ed122`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57028146c9559f6b353235a2a6b7533ad1c003568fafa968211828c138934cf9`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f96339494bafd8b8c007e478973ce02d8afaeb59e0576b39b1da698156b34ea`  
		Last Modified: Wed, 14 Oct 2026 19:31:37 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752c720fd885545392446229239f93295bc984ece0ec0bd1177c6b79cb904887`  
		Last Modified: Wed, 14 Oct 2026 19:31:37 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:edafdcce9fb37bcd67fcb97806069017d20bb0ac873349565b2de2e877da026d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.4 KB (502372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a452c13d393e04d24cd7049987f524dfbcaca9ad7377438213164bc3699f1023`

```dockerfile
```

-	Layers:
	-	`sha256:5fa83cf2b80713ed6ecd8b7ee924bee98cc314b3a5e0655036a5253bacc3f66e`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 472.1 KB (472083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d25bdd70fa7a26c14c315ac1b5865c08810e48e113c1d1ba4028d12ab3658aa9`  
		Last Modified: Wed, 14 Oct 2026 19:31:36 GMT  
		Size: 30.3 KB (30289 bytes)  
		MIME: application/vnd.in-toto+json
