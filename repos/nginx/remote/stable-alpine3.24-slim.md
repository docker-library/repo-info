## `nginx:stable-alpine3.24-slim`

```console
$ docker pull nginx@sha256:8e907ab5bf2be45c22b6064ff1c3efa58c0269b76b578da342bb66c2cad81655
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
$ docker pull nginx@sha256:2ffee964b2052318d42de4243ea2a4eca5d2260049f872a95f115987e80cc81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8218613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e185c51142287f75d930a125b8c337f4eaefb14166568fb4aad16d02819ba69d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:54:23 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:54:23 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:54:23 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:54:23 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:54:23 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:54:23 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:54:23 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:54:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9af336fec6bf10b7acd9efa877628437ecfe6ab03068369362469177b29542`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 4.4 MB (4360339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1744e1e40983ded3e58a36699312ea020289609eb194f736477af13003b0ca19`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2538e70241bba5e84b43c1f75b3486c473adcde07c6a597a9832f0cb5d8f28`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef7ac29ea91ed642e7c38d283b1a160f3495aacefb05cbbbc1d0ec5020b26f1`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15837cd02797909a490856082cd67a5bfff5ce5d47040cef79db4dd6dec7e93`  
		Last Modified: Mon, 23 Nov 2026 19:54:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8f70fb44a1cb0319c24d4d976222eac3e6349c497b411ea1c43f89ddf2df5c`  
		Last Modified: Mon, 23 Nov 2026 19:54:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:1cbc6ce95ad5927d1bde04f408903698d75214d9294cadf9ac781f0e54e39b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.0 KB (503022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ead90d8bbf69cf87667b896a244788320cb6a8bdb4f1875a1850df91d17070e`

```dockerfile
```

-	Layers:
	-	`sha256:0d174d9ca48aadc441ade5ae79966f100b7d01a4f54bb1d1a743c9fa4f076a4f`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 472.7 KB (472734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70201b2c8057d60098ea8204814115cf0beb8c090271bec4ee3548052ee6d7d0`  
		Last Modified: Mon, 23 Nov 2026 19:54:28 GMT  
		Size: 30.3 KB (30288 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v6

```console
$ docker pull nginx@sha256:d6459596f52540303ccc8d6efb34944cfa7ac35b2c08dc63dff0980edac3427a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7606092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bebcb93bde9e851e9702c6d5f461b91c18e42d14a13e0d152612647935bec2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:54:48 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:54:48 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:54:48 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:54:48 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:54:48 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:54:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:54:48 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:54:48 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:54:48 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69635450457b992538c5d0c69a736f6a8d999849ef0bb5abfdb564f9a2ea04a8`  
		Last Modified: Mon, 23 Nov 2026 19:54:53 GMT  
		Size: 4.0 MB (4043083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a448adc5b11aa43879b2216988dffd1efa25aed2768c96e44b589aab3c6c2630`  
		Last Modified: Mon, 23 Nov 2026 19:54:52 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2dfd35f7d98800d0c0b98e0362f5345c6ed3f898a33f4eef6f236cd0fb329a1`  
		Last Modified: Mon, 23 Nov 2026 19:54:52 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0804624059b99b59b40685b83709d62f3bd68101fdfea8c6aa26c060da00a6`  
		Last Modified: Mon, 23 Nov 2026 19:54:52 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41122c48994d349e4133aa8c5d903f01b5ed9aa20cd72b4cefaf659a76eee20`  
		Last Modified: Mon, 23 Nov 2026 19:54:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe0fbb7431e7e6323798609dab6a572a326cdea2d5cdfd863b1ec68f1cdd903`  
		Last Modified: Mon, 23 Nov 2026 19:54:54 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:28b301603563afb57dbf336916edb6a9e6358c17ec04e5b3bf1f6faaa08fd7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1de6c539310889ce38bafaa61dc08b28644733947bf6003278332e8e9c7c61`

```dockerfile
```

-	Layers:
	-	`sha256:ec07b40157dcefa0736306fdac803b5fc3c37e2f4223f9462bc351e197f962f9`  
		Last Modified: Mon, 23 Nov 2026 19:54:52 GMT  
		Size: 30.2 KB (30170 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm variant v7

```console
$ docker pull nginx@sha256:14c907668bd01a180b0959c28068ce0fe89abb807fd6da8e454d80f16efa5d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6973894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbdbcc8bb5d27f60b37a09005e74e8700d07713cc95c3e792c2e599db8240d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:58:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:58:03 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:58:03 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:58:03 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:58:03 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:58:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:58:03 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:58:03 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:58:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30bba0235e035cb0366cc1610a100f0fc473c5dec18d6a45ce2048bf47123d3`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 3.7 MB (3701554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fc2f34a2a8dac02f37bbf31d1a130d8bb1e13ea65fa0f09fc661d56b3b46c5`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6a643ed8ad6ec84abe1ccb91bfc8278d81994535c87399237e79df108fe476`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72203d8e3ad1ce5d76f46b8c94bb920e033d18a61d92bc20daf4a29a8b8de30`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ba4f283f003dd77b6f884c0b87058bad430df4dbbcc3fffa039ad9be016868`  
		Last Modified: Mon, 23 Nov 2026 19:58:09 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b235e36c47936becac96da7f342dea5e4261e416bdbef3c1fb21b035e05eb630`  
		Last Modified: Mon, 23 Nov 2026 19:58:09 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:7677299106a1bb01c96f9eb9f08fa23338c3b9d53991363658568b1dee48c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982ce40dd49a64967c1c91309f92cccbf0c76449e0f96aaf5f1680ab971e0262`

```dockerfile
```

-	Layers:
	-	`sha256:f7f358c166b70d207c9b9d5dec2efdec1b0e0219d8addf0ca28638e3e505c0a9`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 472.1 KB (472130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc3053b789bb7b2e0042383645ace4f3cabfec5f467f3306947b57d40c6fea89`  
		Last Modified: Mon, 23 Nov 2026 19:58:08 GMT  
		Size: 30.4 KB (30385 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:c8439eba389cb9bafc07dbeddf35f3706e87094a63ef9f25df9a49b6e0430e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8874547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828048edb894f647250f5988b86289304496b3e67adc2e6ed01741ce6c00dd0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:55:10 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:55:10 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:55:10 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:55:10 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:55:10 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:55:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:55:10 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:55:10 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:55:10 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:55:11 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:55:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:55:11 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:55:11 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:55:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035563a816bc72f9c25b0e21d5782e0f6c84a9207ce77ccd0d797b0946b6d89b`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 4.7 MB (4679352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7018871fc05309f1b16ea7a267acc559e72b5638427c2a8b27e9ff5d16f322`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 627.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80be1286becf0231d305a2e45cba3666850f307d7722ad0439d49ae3b7de1a6d`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5b8b42774760919f6fa5546577bb5a872fe8a9f608f5e8747768629d3fa6c7`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b7681a13d1e6e79b5da649fef53c714baba3ca92a7a10f04efbf30038eeb65`  
		Last Modified: Mon, 23 Nov 2026 19:55:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe4c01dbbfe6a193b9e0ecab305c4ee675eb77c76279dfdd185b356fff1d11d`  
		Last Modified: Mon, 23 Nov 2026 19:55:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:15a2cc12b1daa7ec2be66be950b078a044297302804d09ae4962ce2744fc63df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 KB (502581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600325c169e85774e82b9097888c129fc84c288fc0fca1e37114b51bd73c79d4`

```dockerfile
```

-	Layers:
	-	`sha256:c1afcd0ed126ddc9839bf68ce745fdcd7a664f6a4103e8523afe168e98d3647a`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 472.2 KB (472164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e43a6ff248b8426bf73be4afbc275ae00fa0e9b43a1a7100cb2b6dc7d1f930`  
		Last Modified: Mon, 23 Nov 2026 19:55:16 GMT  
		Size: 30.4 KB (30417 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; 386

```console
$ docker pull nginx@sha256:5fd78b9438ac6294433b74900b89d6c62aae92164b760e09960d7f8530de114f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79904c84b8abd78c9c622bd8aabd393d111ade1281da05b539cf299c42156de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:56:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:56:38 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:56:38 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:56:38 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:56:38 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:56:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:56:38 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:56:38 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:56:38 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a442bd9c1d406e116aa3ed5972692fd8e7997bab59e5dc75cda4f0f21b24c544`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 4.3 MB (4299738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4520e2038e980b5f5aa3e76fcaf5573c549ad81497f7675164332ae4aaaed644`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2d8e79c394c9615ee3f059ff59b5bf007fe2264c6e4a1d7a7d87a9e4980b27`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dfd886eb1e378d02ecca2e74f8cbcb65ec88fbad7a95150cb7ba1056f39ae5`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b34e26004c03409af8a419eec3c2a23d1127d3ef0808ae452f32deb49c45c7aa`  
		Last Modified: Mon, 23 Nov 2026 19:56:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33024edb3d3c148b7af1750c13161cba09d9dc25a1bbbea054b3e5a890f84e0`  
		Last Modified: Mon, 23 Nov 2026 19:56:44 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:a930d0a5ca97e9d554ce0b494943112f4a1bebc169adb3671d4bc093a1c68487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.9 KB (502940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f3969e795944c15cb8d099c8e9cdd346db7b2d3d8df18f4e727b1af7815ebc`

```dockerfile
```

-	Layers:
	-	`sha256:3717b496eb4b71c4d1bfbd5c8105984b88a3ac4826c76a7a12f635cd0405c7fc`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 472.7 KB (472693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb0b44e4b7040422b53de1452852e5acd86d63eccf5fd74a3827442f8ce87f30`  
		Last Modified: Mon, 23 Nov 2026 19:56:43 GMT  
		Size: 30.2 KB (30247 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; ppc64le

```console
$ docker pull nginx@sha256:03b7dda39faf925845c3cf5280962d21e6b98f000a9ec87e0141ca55d870f55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8209146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b44a00b1616c509300ee00fcf3006143a665ef4885453719e10f0ff01ed754a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 20:10:48 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 20:10:48 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 20:10:48 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 20:10:48 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 20:10:48 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 20:10:48 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 20:10:49 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 20:10:49 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 20:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 20:10:49 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 20:10:49 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 20:10:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1911d84b78086e0ddced3a9a1b5891e2ee6f27f7c5b136cb056b0367fc59bc`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 4.4 MB (4382623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0b180abc65e6b2370cbf1990b5831a7da6b736902e4628132dacd2958197ab`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e332455cd6ccd148d3091e4b64a90dd3310fb6a80f1c1df551c94ca23d4e0f1e`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e29601706bd5fa5fc779edfc5bd68e2edbd6f5bf26e4b8baba5be3f734cedb`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851611d8fb68156590439ea59039c7cf187706a3958cc8a7294f5428241f3b17`  
		Last Modified: Mon, 23 Nov 2026 20:11:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8229388c44e8233123616c1cdec39e3c6619a20ef738423439984530fd54cb`  
		Last Modified: Mon, 23 Nov 2026 20:11:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:923c4440ec5ce088be6c7f6386de2e52946d51fff2919303009faf0224d585c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56d6966c0046fea1422b9596e6050fc553a331f087164ea3026f85c8829a677`

```dockerfile
```

-	Layers:
	-	`sha256:a9ea3f69fb7ecaea51569ff5bb2b43336a56267d92db1ee5a9fbdff7d72ed326`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 472.1 KB (472123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1996ead34a3e00adaec178f567a76dec1176cf283e423bb3d1044d7a00b9ee`  
		Last Modified: Mon, 23 Nov 2026 20:11:00 GMT  
		Size: 30.3 KB (30345 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; riscv64

```console
$ docker pull nginx@sha256:af84d8f3b11f070812fc85fd47e146e8c7ef8c72464d70cf3b72bb4de6a01e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5567827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757f1e0a2da7cd79b86a897139a3da6c91b151e68bf252f2278df798b277ab2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 23:40:41 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 18 Nov 2026 23:40:41 GMT
ENV NGINX_VERSION=1.30.7
# Wed, 18 Nov 2026 23:40:41 GMT
ENV PKG_RELEASE=1
# Wed, 18 Nov 2026 23:40:41 GMT
ENV DYNPKG_RELEASE=1
# Wed, 18 Nov 2026 23:40:41 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"ea7a8c2bac050f3def3dcab7c2c3078898288788c08ea48cc2009c001ff9ab45bf675cacbaed208f3234c8336421708ed3dec9d132ab6e27de9a74093237bb4e *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 23:40:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 18 Nov 2026 23:40:41 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 23:40:41 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 23:40:42 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 23:40:42 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Wed, 18 Nov 2026 23:40:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 23:40:42 GMT
EXPOSE map[80/tcp:{}]
# Wed, 18 Nov 2026 23:40:42 GMT
STOPSIGNAL SIGQUIT
# Wed, 18 Nov 2026 23:40:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2260996aa60bdb98db68c93066700e63ad5b4590650c2bf5fb8acda1870cffed`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 2.0 MB (1982604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa83d916e02926cc09d64fda9e3464cdef74ab17e192309b66f9c700b0bf78d`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3823b58d2504052202c4bb066de1aba2e70dac029a3006452e8abb9d1b1bba`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83dd5672ddf6b68c25bc26568cfc8222e2f2c461649a5a1b8f7b9442d0b30f27`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d132e1c2f0ad6d4ec7f167b68d15c4fd5e86ef9c617ae6b0ef286a1f1249ff2b`  
		Last Modified: Wed, 18 Nov 2026 23:41:08 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0bc1dc989ab58ee043764a4bad4e6f4a913c0c39dd1021f70c0b98e7462b7c`  
		Last Modified: Wed, 18 Nov 2026 23:41:08 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:8ced45db2c289d8a1da9def31b286249dc021d9e654d9095bcc2ea5d950a1f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 KB (502463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e81be122a38113ca87a7a4b9412931389b1519b83d8bac0a0d1a364f57dab9fa`

```dockerfile
```

-	Layers:
	-	`sha256:bec4b7e2a29e8cff0acf59fc9ff5554a21f93bcb0168f040362c402a72da6b2a`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 472.1 KB (472119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b379a61393142756566992ff21c9974254b4cb00314abd4dadd9f88dac23d5c`  
		Last Modified: Wed, 18 Nov 2026 23:41:07 GMT  
		Size: 30.3 KB (30344 bytes)  
		MIME: application/vnd.in-toto+json

### `nginx:stable-alpine3.24-slim` - linux; s390x

```console
$ docker pull nginx@sha256:b71d2a0692ad1aa5699b37e1df5545e14d1524d6b03b60fd5a8a12fef6d2fad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8036865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d2bca3d1e60d47a62386aba78aa1c6015ed18e93ef34edfd317d2afd490ffe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:53:54 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Mon, 23 Nov 2026 19:53:54 GMT
ENV NGINX_VERSION=1.30.8
# Mon, 23 Nov 2026 19:53:54 GMT
ENV PKG_RELEASE=1
# Mon, 23 Nov 2026 19:53:54 GMT
ENV DYNPKG_RELEASE=1
# Mon, 23 Nov 2026 19:53:54 GMT
RUN set -x     && addgroup -g 101 -S nginx     && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx     && apkArch="$(cat /etc/apk/arch)"     && nginxPackages="         nginx=${NGINX_VERSION}-r${PKG_RELEASE}     "     && apk add --no-cache --virtual .checksum-deps         openssl     && case "$apkArch" in         x86_64|aarch64)             set -x             && KEY_SHA512="e09fa32f0a0eab2b879ccbbc4d0e4fb9751486eedda75e35fac65802cc9faa266425edf83e261137a2f4d16281ce2c1a5f4502930fe75154723da014214f0655"             && wget -O /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub             && if echo "$KEY_SHA512 */tmp/nginx_signing.rsa.pub" | sha512sum -c -; then                 echo "key verification succeeded!";                 mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/;             else                 echo "key verification failed!";                 exit 1;             fi             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X "https://nginx.org/packages/alpine/v$(egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release)/main" --no-cache $nginxPackages             ;;         *)             set -x             && tempDir="$(mktemp -d)"             && chown nobody:nobody $tempDir             && apk add --no-cache --virtual .build-deps                 gcc                 libc-dev                 make                 openssl-dev                 pcre2-dev                 zlib-dev                 linux-headers                 bash                 alpine-sdk                 findutils                 curl             && su nobody -s /bin/sh -c "                 export HOME=${tempDir}                 && cd ${tempDir}                 && curl -f -L -O https://github.com/nginx/pkg-oss/archive/${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && PKGOSSCHECKSUM=\"029fd2bc1c27492fe6b095f346358692dca4fafd49c82269958ef8383a985d6b0383e5acd8af5603900d037e6f7fe569de15581873e50cc711b1f600259dfd9d *${NGINX_VERSION}-${PKG_RELEASE}.tar.gz\"                 && if [ \"\$(openssl sha512 -r ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz)\" = \"\$PKGOSSCHECKSUM\" ]; then                     echo \"pkg-oss tarball checksum verification succeeded!\";                 else                     echo \"pkg-oss tarball checksum verification failed!\";                     exit 1;                 fi                 && tar xzvf ${NGINX_VERSION}-${PKG_RELEASE}.tar.gz                 && cd pkg-oss-${NGINX_VERSION}-${PKG_RELEASE}                 && cd alpine                 && make base                 && apk index --allow-untrusted -o ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz ${tempDir}/packages/alpine/${apkArch}/*.apk                 && abuild-sign -k ${tempDir}/.abuild/abuild-key.rsa ${tempDir}/packages/alpine/${apkArch}/APKINDEX.tar.gz                 "             && cp ${tempDir}/.abuild/abuild-key.rsa.pub /etc/apk/keys/             && apk del --no-network .build-deps             && DEPS=$(apk query --summarize depends --recursive --no-cache                        --repository "@nginxorg ${tempDir}/packages/alpine/"                        ${nginxPackages/=/@nginxorg=})             && apk add --no-cache $DEPS             && apk add --repositories-file /dev/null -X ${tempDir}/packages/alpine/ --no-cache $nginxPackages             ;;     esac     && apk del --no-network .checksum-deps     && if [ -n "$tempDir" ]; then rm -rf "$tempDir"; fi     && if [ -f "/etc/apk/keys/abuild-key.rsa.pub" ]; then rm -f /etc/apk/keys/abuild-key.rsa.pub; fi     && apk add --no-cache gettext-envsubst     && apk add --no-cache tzdata     && ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && mkdir /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:53:54 GMT
COPY 10-listen-on-ipv6-by-default.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:55 GMT
COPY 15-local-resolvers.envsh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:55 GMT
COPY 20-envsubst-on-templates.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:55 GMT
COPY 30-tune-worker-processes.sh /docker-entrypoint.d # buildkit
# Mon, 23 Nov 2026 19:53:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:53:55 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:53:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 23 Nov 2026 19:53:55 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a688f3c6b38fc41da4a9e6ed8d6af2b682f93cee485618675a63f9d2e98a8c8`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 4.3 MB (4311584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb55eab1e94346d24e2a50948fbac8d9cf005588972cf3a5454d53a973753f95`  
		Last Modified: Mon, 23 Nov 2026 19:54:04 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396407f46fb4592ac98965efa673655daed83cc3fa163fe7cb5f24b92f692814`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd28c96fb49b76f08f172e0501b0b4af9b2bbaf0372eeac35f1caa25e7061f3d`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aff970746697148a9506c372d2da8aba12037ec4f3fbae3e8428319e19f91c6`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0522d41bb787c311bedfb4ed39c8a1557026b572667d0089d4482582e7c2d7`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nginx:stable-alpine3.24-slim` - unknown; unknown

```console
$ docker pull nginx@sha256:ce30a49a3ac8e7643b99ba80d59deed1460b85eb69f37a39591d4db747a401ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.4 KB (502366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345d4057a5e1ddc1818b6f71fe0b375582e1026412e7525dac973b2fcd038580`

```dockerfile
```

-	Layers:
	-	`sha256:bd3b1306dee34204147e3b7875889ec1d5c5a0d63ed7393a3be191843ee6744c`  
		Last Modified: Mon, 23 Nov 2026 19:54:05 GMT  
		Size: 472.1 KB (472077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae61f3aae9325f78fa4187336a9c6c56bf6ebc852a72a6cc8a13d3b6141715d7`  
		Last Modified: Mon, 23 Nov 2026 19:54:04 GMT  
		Size: 30.3 KB (30289 bytes)  
		MIME: application/vnd.in-toto+json
