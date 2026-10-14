## `nginx:mainline-alpine-slim`

```console
$ docker pull nginx@sha256:1c6f9a6ebf234291f397dad90ce3c65099656f629532b584b16c8650f4684a69
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

### `nginx:mainline-alpine-slim` - linux; amd64

```console
$ docker pull nginx@sha256:ee49b03f56b9a8b01fbbef655495d9feaa2e22169b2a4f8a3f2972f16e05f711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8270770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ff468d4acd98a05e7ad0950ab24b270a68b60548a743f1f93939d2e86425a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:42:01 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:42:01 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:42:01 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:01 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:01 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:42:01 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:42:01 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:42:01 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6711e0c4f5a79e8db637a3412394f29da647e54476d67c5b211a11527568ddc5`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 4.4 MB (4416420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf3671a4e6a18510ca49e3a4a226c2ef734a646e01e34e1ad0eff5faa01e3a0`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44956913298a55652fa97af34d296339c089250911e46e1a1c0eab8a88538c7`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710ec83ca6cd71fa5636d861343b5660636728f71992fd1b68914e03c7af3ad4`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70683d58fa5c20b5b31c9998a16f6634720d3393dc62934a608754abe449fe3b`  
		Last Modified: Wed, 14 Oct 2026 18:42:07 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6638b436592c96dd194db76a6b786b60b344d80ebe160e646c871d4e7eff25b5`  
		Last Modified: Wed, 14 Oct 2026 18:42:07 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:b546b95a045f5d45c2be1136ad63b417ca0fc58ee7e7627994e127717aa0b093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.2 KB (506185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92e01b2f07a6f055c41ef159f5625f18647e740c2f1ad63ceae89027b903fcb`

```dockerfile
```

-	Layers:
	-	`sha256:fda64e4acc74746df544a8480558a17492417a049638958ca4253e75750a5dea`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 474.6 KB (474592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84969067fefd33e15e496fe290818bfb95f0cde87b4560cb8d97623f97d60495`  
		Last Modified: Wed, 14 Oct 2026 18:42:06 GMT  
		Size: 31.6 KB (31593 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; arm variant v6

```console
$ docker pull nginx@sha256:a7e3196a62730814d7a6175be1673e46104b600176dd31d07feb3b2e4dfca9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7658611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce6f28232aacb4fdc7d5535c14fbd09cccdb511fc0e64c4484dd461f2442368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:41:51 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:41:51 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:41:51 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:41:51 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:41:51 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:41:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:41:51 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:41:51 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:41:51 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c37b33b844f49e4b2a460144712183a0de701bc7b0ec67c10f655ec6d200d5`  
		Last Modified: Wed, 14 Oct 2026 18:41:55 GMT  
		Size: 4.1 MB (4098889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05df6140ee06907201be4d7b77506e9d8cd395061711495f1e2fa203921b8311`  
		Last Modified: Wed, 14 Oct 2026 18:41:55 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00666e2ef8c1070f531797751bf4347f57ce769c6e14d0cea8f64253555f2bf`  
		Last Modified: Wed, 14 Oct 2026 18:41:55 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8dbcc839cdb875fc7e2b8274cb4a398336ceaa8220e552d48376b4c2d00318`  
		Last Modified: Wed, 14 Oct 2026 18:41:55 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f236d192a1b29bb98f825ffc602267104970c10811c1f0478dc531268d9108`  
		Last Modified: Wed, 14 Oct 2026 18:41:56 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290a3471d9f0b5f59085259615a8ec01d9b1586143982bad76dbc8f4c5d023d3`  
		Last Modified: Wed, 14 Oct 2026 18:41:56 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:4d2f9829d759f4cc35c2120f03592592d8f5f1fefb117075e36cc98cb7960e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.5 KB (31505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a31e7c868b99850078bcf4e640472f447b2c92bf010d204645cc59735487b05`

```dockerfile
```

-	Layers:
	-	`sha256:8eb114fc63a391bc65b973d365230b6efb1b40f3fa01b4f71acab3484cf561ba`  
		Last Modified: Wed, 14 Oct 2026 18:41:55 GMT  
		Size: 31.5 KB (31505 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; arm variant v7

```console
$ docker pull nginx@sha256:28ad9bc9f1e4f89cda3020cf0ea9af2c2c0d4b8c9fda31ce398e17e9ec429bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7021412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b55271e346f4ec7c9f837e42bb8658b8585788ff5551de30e5404a81a193c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:43:28 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:43:28 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:43:28 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:43:28 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:43:28 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:43:29 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:43:29 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:43:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd54f2d2ff6c6238f760b9c8afd895b8a8fe4901dd020d39d575fa4853afbc5`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 3.8 MB (3751602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee235763acf216853dda2ef4d5a64867faf434246e7501430310a362e908494`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccf117c7d25d1cce31873b533ea85735febef3de7a6921706688410041b1c3f`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33e1f10bff3c2741a84b2caadeba0f250a6f1521291a52420d936ae6ec4e603`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a6246e33fa29617a4087e4ab8df504e095dfd6d809df9ca4974120dda920ce`  
		Last Modified: Wed, 14 Oct 2026 18:43:35 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0eb86f250d507e219cdc965136d368d9969be47dab64cb811926496704b853`  
		Last Modified: Wed, 14 Oct 2026 18:43:36 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:4bc0c52d390825cd6ec571d4d67ffc1e60c0d8c91d5ca2492a361bb9e625d766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.7 KB (505747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b0bd98a0777ca0870e112392c7363541c782fc02573d644ad83dfa26f0610b`

```dockerfile
```

-	Layers:
	-	`sha256:a86d07a3e979ec832feded9e2cdae8de078c356bf05eb071e8d95bab8bc747b9`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 474.0 KB (474026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86f9daf20f78af8f76a56496305166e7043dee7948342581d15ac00ee20c780d`  
		Last Modified: Wed, 14 Oct 2026 18:43:34 GMT  
		Size: 31.7 KB (31721 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:13af7e69067e55c0776a9510739167f7fc67c212dd709e82c6689c812feba079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6140971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde239c0305d90afaeeea449cae6e842f66031a9b81fd8d851dece54c7a2a230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 21:18:21 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 22 Sep 2026 21:18:21 GMT
ENV NGINX_VERSION=1.31.6
# Tue, 22 Sep 2026 21:18:21 GMT
ENV PKG_RELEASE=1
# Tue, 22 Sep 2026 21:18:21 GMT
ENV DYNPKG_RELEASE=1
# Tue, 22 Sep 2026 21:18:21 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"2c5d692f7ffad335e20376eca8a94f21ec11acd32c2a043e12681546b05503e6e1eb4ad03ca145ff944e8851a16514d692faf39da80d83dda5f34ec5353ecf14 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 21:18:21 GMT
EXPOSE map[80/tcp:{}]
# Tue, 22 Sep 2026 21:18:21 GMT
STOPSIGNAL SIGQUIT
# Tue, 22 Sep 2026 21:18:21 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858f76146c129bf634d0fef4a2780c3a34b40ba9bf9ef45173e0553414be267f`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 1.9 MB (1948711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766d3311d5dfcea79009b222ef4b3f88dfb0fa79944ccdd730ad164a01598605`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccea4a153c591cd6756c0a003489efb511a7d9692e5a8463b3152efce5f671e6`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943c389642fab1a496f66d9b0ae09288798bb42bd6cd7fb0c06f5e48ad788474`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc862a9910f586c671851634646f9747fdad971ca2988bf1c36b333a26677daf`  
		Last Modified: Tue, 22 Sep 2026 21:18:28 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d766d06974faca2e3bc47f067832c4d6469e6db75cbb597baa943ab30b822e60`  
		Last Modified: Tue, 22 Sep 2026 21:18:28 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:ad9b40b75b61fa586d2c2c19294e9bc250a387ad4e6cde35f8f8b12c5f3ddae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.8 KB (505838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c683ff3c7cba75744884c15ff41ca15067a630d8a15b971839928a1a0db61d6f`

```dockerfile
```

-	Layers:
	-	`sha256:e32facb8583d899445dc89968319617a5c3eb7ab2e93b61797318e3a1fa6e4c7`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 474.1 KB (474070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95875be9d250e5dd5fb56b8d2bb130b6c2ac05d9d906f5e35c3fc8c08c04e614`  
		Last Modified: Tue, 22 Sep 2026 21:18:27 GMT  
		Size: 31.8 KB (31768 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; 386

```console
$ docker pull nginx@sha256:1ca7b3a2c557571cec647a74462e6c34ce466dd2aa32db864e6833ff13cb975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2895d5f2df2ffe7f400de6daff72867434152720ce0beebb9cd26a414cdef7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:43:17 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:43:17 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:43:17 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:43:17 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:43:17 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:43:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:43:18 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:43:18 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:43:18 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8244105a396584bf76497471c9a52382be45c2c0d636741b0824171078d8dce3`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 4.4 MB (4354656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83b8c20d7063d256bd5573879fd2bd34a88da2234180751006ab95869b335a0`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf04c24043796a8522866e210a1267b9592f719404a64ac504fc7137456a156`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f812e8778ae1d66feaa6a935c46c6de058d77b1520b4684f84b9244164f1497`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7976332c34ea9d5e54eea913aff40ac193fe2d49983fcc3a9875dd307aeaf808`  
		Last Modified: Wed, 14 Oct 2026 18:43:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa138b78bbd5905fabb43b11a25d8550ad5fcbb4448cf87bb19f5bf65f1ebd18`  
		Last Modified: Wed, 14 Oct 2026 18:43:24 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:4a4d3ecaaf9a69d296aa53573286f2b434724df069d3b48738c643fdc52f0a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.1 KB (506067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba8f1e4f5f17928f2251049343c5537374cf229d74fc599cabc09a36fe180e0`

```dockerfile
```

-	Layers:
	-	`sha256:cc7510a52954184cbfe27b8e6c68bfc03139cd633dcb0f72d8e0c3223cab79c1`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 474.5 KB (474537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09c34f7351e3602308543668890cf2fac80909c455d591db02a2782e4ba60645`  
		Last Modified: Wed, 14 Oct 2026 18:43:23 GMT  
		Size: 31.5 KB (31530 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; ppc64le

```console
$ docker pull nginx@sha256:abf0aa0abd59ab54bc3c3f1cdd433dca5cc69b8cad4167e942480dca6141c97c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8260114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1eda636ce76383fb6bdfab9529f969a94c20f7dae98a2df1137377fc14e8e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 18:42:10 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Oct 2026 18:42:10 GMT
ENV NGINX_VERSION=1.31.7
# Wed, 14 Oct 2026 18:42:10 GMT
ENV PKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:10 GMT
ENV DYNPKG_RELEASE=1
# Wed, 14 Oct 2026 18:42:10 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"572a673ad92851bb6deff13b93d4cef579a2c4f5fee807689f85e45b8d10d7499b10a413ffb16eafd2a8559117d56cdc5bed8910247e77b90342d7a045c6a186 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 14 Oct 2026 18:42:10 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:11 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:11 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 14 Oct 2026 18:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:42:11 GMT
EXPOSE map[80/tcp:{}]
# Wed, 14 Oct 2026 18:42:11 GMT
STOPSIGNAL SIGQUIT
# Wed, 14 Oct 2026 18:42:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9757606462cf6a6e05d6782d8359579671c38a56d40d2848cdda3f87aa54e472`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 4.4 MB (4438028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8728117192dd3631bb5ebbb4d2bc724d9c30cb48105084f4d5b5e5579562ca21`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcebb415c2321ca20fa5e94b6aa6f70a0dd1f532516c323bd43722c6edcb673`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458310b5ccd090e3daedb1942d8e262bf7912f5a457b3ff704f6d89712064dc4`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f84f487b85fdba33efce22b1844430f9586e7cef8489877f47e763682c102a`  
		Last Modified: Wed, 14 Oct 2026 18:42:48 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912844d5d60d28672e28f5374092334bc33916f623046d26e1d988d995e085aa`  
		Last Modified: Wed, 14 Oct 2026 18:42:48 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:fd3bde197a21e74eaf3c264da03ee38865bb16fb395ddffdcdef46551dc6af18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.7 KB (505683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5cb0397d913037580232cb8229117eeecd9270b6522297b3c70c473b072980`

```dockerfile
```

-	Layers:
	-	`sha256:6693ba7f434387cb4d669e92713546ce4afc060b128ad2b8ef976119661bfd62`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 474.0 KB (474011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8c8ffea7e667b1b0a875da9c415a315a3ebe330693fe455805dc165a5993f82`  
		Last Modified: Wed, 14 Oct 2026 18:42:47 GMT  
		Size: 31.7 KB (31672 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; riscv64

```console
$ docker pull nginx@sha256:31dd681270d3364bb31b91a34e4e6005aee94b2e12b7d12870cf11bc4a1c8d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5556144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8430237d2511bb9d517c8a6cbc49e450180aa25c362d666d8d27eda34cbdcd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 07:15:31 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Sat, 19 Sep 2026 07:15:31 GMT
ENV NGINX_VERSION=1.31.6
# Sat, 19 Sep 2026 07:15:31 GMT
ENV PKG_RELEASE=1
# Sat, 19 Sep 2026 07:15:31 GMT
ENV DYNPKG_RELEASE=1
# Sat, 19 Sep 2026 07:15:31 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"2c5d692f7ffad335e20376eca8a94f21ec11acd32c2a043e12681546b05503e6e1eb4ad03ca145ff944e8851a16514d692faf39da80d83dda5f34ec5353ecf14 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Sat, 19 Sep 2026 07:15:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 23 Sep 2026 10:55:46 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 23 Sep 2026 10:55:46 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 23 Sep 2026 10:55:46 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 23 Sep 2026 10:55:46 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 23 Sep 2026 10:55:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Sep 2026 10:55:46 GMT
EXPOSE map[80/tcp:{}]
# Wed, 23 Sep 2026 10:55:46 GMT
STOPSIGNAL SIGQUIT
# Wed, 23 Sep 2026 10:55:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22a3487608a0f4f69285adf8143de640d165b08af6229212dd5026651e67825`  
		Last Modified: Sat, 19 Sep 2026 07:15:57 GMT  
		Size: 2.0 MB (1976175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4d149e3aef78e66ee528f3da20642e902afc032942c2866cec54fad8b25b40`  
		Last Modified: Sat, 19 Sep 2026 07:15:57 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db83711d18b2c7d56b7895dca6fcb089124750732e5315abcea9af3def05af7d`  
		Last Modified: Wed, 23 Sep 2026 10:56:10 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65309e0ae121ee8f676bad489821dab2c759a58bcbf1c0090f180a2c27553f13`  
		Last Modified: Wed, 23 Sep 2026 10:56:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1741329e04155b452664fbe68d6c1562641f97f13da7603e9db05202aff37ed`  
		Last Modified: Wed, 23 Sep 2026 10:56:10 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bf696699e04e59f98e276c96bd4d5306b29fd6c358452ade7b2750df7de0a2`  
		Last Modified: Wed, 23 Sep 2026 10:56:10 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:5b34648249da4d9ddca2b4c4cc62265686239572de59dc89d395d94785d96be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.7 KB (505680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96df0c172c0c5521441b6195976c573a535d5392fb1ccd908cddd03a1cf6c278`

```dockerfile
```

-	Layers:
	-	`sha256:05e1bcc813a82abd5fec56b32a21a44074ebf2440899dfe9afb30266840588c3`  
		Last Modified: Wed, 23 Sep 2026 10:56:10 GMT  
		Size: 474.0 KB (474007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:323dd5b74730cd231fb0a57735b4d1642f396fea4ea75e9111f6dbbd2b350a3b`  
		Last Modified: Wed, 23 Sep 2026 10:56:09 GMT  
		Size: 31.7 KB (31673 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:mainline-alpine-slim` - linux; s390x

```console
$ docker pull nginx@sha256:34106368f40f8c136ec32928a9f9156774f8e0a832b87106b32adc9f804a4b25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5772317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe689d0fc9122ffa06728f2aa76dd47b7f0dc0024b0be5d9010efaf7b890519`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 21:18:42 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 22 Sep 2026 21:18:42 GMT
ENV NGINX_VERSION=1.31.6
# Tue, 22 Sep 2026 21:18:42 GMT
ENV PKG_RELEASE=1
# Tue, 22 Sep 2026 21:18:42 GMT
ENV DYNPKG_RELEASE=1
# Tue, 22 Sep 2026 21:18:42 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/mainline/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"2c5d692f7ffad335e20376eca8a94f21ec11acd32c2a043e12681546b05503e6e1eb4ad03ca145ff944e8851a16514d692faf39da80d83dda5f34ec5353ecf14 *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 22 Sep 2026 21:18:42 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:42 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:43 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:43 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Tue, 22 Sep 2026 21:18:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 21:18:43 GMT
EXPOSE map[80/tcp:{}]
# Tue, 22 Sep 2026 21:18:43 GMT
STOPSIGNAL SIGQUIT
# Tue, 22 Sep 2026 21:18:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010de3932bae403ac711a2051e2403cfc184668e51032967de42a17e44b2f58b`  
		Last Modified: Tue, 22 Sep 2026 21:18:51 GMT  
		Size: 2.1 MB (2052377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26264250658417ee03911bb4996a97e3c3cb79de9dcd8dc1d4f7b1cde2ef3064`  
		Last Modified: Tue, 22 Sep 2026 21:18:51 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1edb533a6346544b33918d22b0bf75faabf0ac6c029e0b58a7756d87b867b3`  
		Last Modified: Tue, 22 Sep 2026 21:18:51 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52aae125a6fab80cf2584366d13cd91605e0ea092d9637540f022901ef2b1d1d`  
		Last Modified: Tue, 22 Sep 2026 21:18:51 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7d5e2ce3325f2396929ce6b54bf1ac33964a01a5aa380f806f9cbd8259188e`  
		Last Modified: Tue, 22 Sep 2026 21:18:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02faafbc9044fa80a78fbb697f58bea122d5989ed1af1d96e55b884332dc97b0`  
		Last Modified: Tue, 22 Sep 2026 21:18:52 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:mainline-alpine-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:a21f2a6c62b572335c95e042a80da4a76d04912c95e118c0706637bb176b0985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.5 KB (505534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f4d0c24c3f8a5c306d11d67ec98c65cf8488e389dd7d99d430244f25efc2a8`

```dockerfile
```

-	Layers:
	-	`sha256:5bed0a191ae0d50fd22982d7c09df8d704370727e94ff76feee9cb263d127f8b`  
		Last Modified: Tue, 22 Sep 2026 21:18:50 GMT  
		Size: 473.9 KB (473941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce388126912ea1f0aebcd32990b4b9c985a7613b5d9c81d100a02a4a567ba3d6`  
		Last Modified: Tue, 22 Sep 2026 21:18:51 GMT  
		Size: 31.6 KB (31593 bytes)  
		MIME: application/vnd.in-toto+json
