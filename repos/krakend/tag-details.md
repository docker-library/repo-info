<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `krakend`

-	[`krakend:2`](#krakend2)
-	[`krakend:2.13`](#krakend213)
-	[`krakend:2.13.10`](#krakend21310)
-	[`krakend:latest`](#krakendlatest)

## `krakend:2`

```console
$ docker pull krakend@sha256:1e24d6f5f942dc7259e769733aec3ced58998c10ba42207dda4a13530c839858
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2` - linux; amd64

```console
$ docker pull krakend@sha256:4f78e4e10cdcc077f35e760525724a68a39a86ebfde1a2f24622d46f4bcc4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59962693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a0173f7d55380be7435a095a5ee288f15b00289884e7fda573bd8d29c1b02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:17 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:22 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:22 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be6a0dd4a6556790e05404ea518a60fddb3e9a40e941913e8e30b1141839f87`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 412.0 KB (412042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa17f9b33b259046f2a7648ded9eae60d9572167b6a987aaff97a0e074a0e862`  
		Last Modified: Fri, 14 Aug 2026 18:27:31 GMT  
		Size: 55.7 MB (55705553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf71761941355110827fce3c57d89c12aba9e8db7aad668d70939f94d0f59ad`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 645.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:937ded805b2cf990f0e7167cd2bd59173138382e438e1677a9cdaf295f928df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b0ae677f1358d7ef58496b99a6bb61de0684a17c36b034bb0236cd7851496`

```dockerfile
```

-	Layers:
	-	`sha256:22e831ea4093e2005c90d4bc7db26ffa54e73c719531160ed96773cc34c21cfc`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:f4410eb6f2fbcbf9849bbf64ec4a6d64ad01fa9bdeed363064fad8ba4e52d9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56890032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d60cc2facd98b2000aa49fc900e8184cccb97c5b07b2ebf37c9477324589f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:02 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:07 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:07 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0e51fa68c298d0df05a7af1a690937954ad43b1bcaba90435918190ab4ae8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 416.4 KB (416442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7993efd824e83dce6283b5de514621722bca69a0d8fbc9c944c52f20d07158`  
		Last Modified: Fri, 14 Aug 2026 18:27:16 GMT  
		Size: 52.3 MB (52291056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0121857b88524327bed3c8cb27b3a370f7c80c843c59f16e8fa4f4e553c7b0f8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:8f15ad9f5305a85003e9cfedd90dead0375fd7485ddc476fd718b89c0bd852ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b738fa1373d8522e9c707e1fd60be49ef252ad30418c14b48a78be32d953e44b`

```dockerfile
```

-	Layers:
	-	`sha256:4a223ae7ea314b4036a74d88c427ef2febb1a3c3bd21f69569df9a47a1c6d883`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 15.3 KB (15260 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13`

```console
$ docker pull krakend@sha256:1e24d6f5f942dc7259e769733aec3ced58998c10ba42207dda4a13530c839858
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2.13` - linux; amd64

```console
$ docker pull krakend@sha256:4f78e4e10cdcc077f35e760525724a68a39a86ebfde1a2f24622d46f4bcc4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59962693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a0173f7d55380be7435a095a5ee288f15b00289884e7fda573bd8d29c1b02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:17 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:22 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:22 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be6a0dd4a6556790e05404ea518a60fddb3e9a40e941913e8e30b1141839f87`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 412.0 KB (412042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa17f9b33b259046f2a7648ded9eae60d9572167b6a987aaff97a0e074a0e862`  
		Last Modified: Fri, 14 Aug 2026 18:27:31 GMT  
		Size: 55.7 MB (55705553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf71761941355110827fce3c57d89c12aba9e8db7aad668d70939f94d0f59ad`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 645.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:937ded805b2cf990f0e7167cd2bd59173138382e438e1677a9cdaf295f928df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b0ae677f1358d7ef58496b99a6bb61de0684a17c36b034bb0236cd7851496`

```dockerfile
```

-	Layers:
	-	`sha256:22e831ea4093e2005c90d4bc7db26ffa54e73c719531160ed96773cc34c21cfc`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2.13` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:f4410eb6f2fbcbf9849bbf64ec4a6d64ad01fa9bdeed363064fad8ba4e52d9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56890032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d60cc2facd98b2000aa49fc900e8184cccb97c5b07b2ebf37c9477324589f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:02 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:07 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:07 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0e51fa68c298d0df05a7af1a690937954ad43b1bcaba90435918190ab4ae8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 416.4 KB (416442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7993efd824e83dce6283b5de514621722bca69a0d8fbc9c944c52f20d07158`  
		Last Modified: Fri, 14 Aug 2026 18:27:16 GMT  
		Size: 52.3 MB (52291056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0121857b88524327bed3c8cb27b3a370f7c80c843c59f16e8fa4f4e553c7b0f8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:8f15ad9f5305a85003e9cfedd90dead0375fd7485ddc476fd718b89c0bd852ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b738fa1373d8522e9c707e1fd60be49ef252ad30418c14b48a78be32d953e44b`

```dockerfile
```

-	Layers:
	-	`sha256:4a223ae7ea314b4036a74d88c427ef2febb1a3c3bd21f69569df9a47a1c6d883`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 15.3 KB (15260 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13.10`

**does not exist** (yet?)

## `krakend:latest`

```console
$ docker pull krakend@sha256:1e24d6f5f942dc7259e769733aec3ced58998c10ba42207dda4a13530c839858
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:4f78e4e10cdcc077f35e760525724a68a39a86ebfde1a2f24622d46f4bcc4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59962693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a0173f7d55380be7435a095a5ee288f15b00289884e7fda573bd8d29c1b02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:17 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:22 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:22 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be6a0dd4a6556790e05404ea518a60fddb3e9a40e941913e8e30b1141839f87`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 412.0 KB (412042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa17f9b33b259046f2a7648ded9eae60d9572167b6a987aaff97a0e074a0e862`  
		Last Modified: Fri, 14 Aug 2026 18:27:31 GMT  
		Size: 55.7 MB (55705553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf71761941355110827fce3c57d89c12aba9e8db7aad668d70939f94d0f59ad`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 645.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:937ded805b2cf990f0e7167cd2bd59173138382e438e1677a9cdaf295f928df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b0ae677f1358d7ef58496b99a6bb61de0684a17c36b034bb0236cd7851496`

```dockerfile
```

-	Layers:
	-	`sha256:22e831ea4093e2005c90d4bc7db26ffa54e73c719531160ed96773cc34c21cfc`  
		Last Modified: Fri, 14 Aug 2026 18:27:29 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:f4410eb6f2fbcbf9849bbf64ec4a6d64ad01fa9bdeed363064fad8ba4e52d9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56890032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d60cc2facd98b2000aa49fc900e8184cccb97c5b07b2ebf37c9477324589f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Fri, 14 Aug 2026 18:27:02 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Fri, 14 Aug 2026 18:27:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=8b295989871d0cfaf7f38fd93d7a97461c0994a191c6b42236e9908cb4e6614a758ce8be3576b8ced7dfb97ebbfd97bf8358e36c2ef3bd4232b345133634f963; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=3618d40c1f135128d5493b56cebdf2cdd1e3afd0f2517dc726efd14f6fd158fdb4950db2286552f75b9fc5c3f22a2529b88fe8a1c60c0b667545d560291498b8; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.9/krakend_2.13.9_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
WORKDIR /etc/krakend
# Fri, 14 Aug 2026 18:27:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 14 Aug 2026 18:27:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Aug 2026 18:27:07 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Fri, 14 Aug 2026 18:27:07 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0e51fa68c298d0df05a7af1a690937954ad43b1bcaba90435918190ab4ae8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 416.4 KB (416442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7993efd824e83dce6283b5de514621722bca69a0d8fbc9c944c52f20d07158`  
		Last Modified: Fri, 14 Aug 2026 18:27:16 GMT  
		Size: 52.3 MB (52291056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0121857b88524327bed3c8cb27b3a370f7c80c843c59f16e8fa4f4e553c7b0f8`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:8f15ad9f5305a85003e9cfedd90dead0375fd7485ddc476fd718b89c0bd852ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b738fa1373d8522e9c707e1fd60be49ef252ad30418c14b48a78be32d953e44b`

```dockerfile
```

-	Layers:
	-	`sha256:4a223ae7ea314b4036a74d88c427ef2febb1a3c3bd21f69569df9a47a1c6d883`  
		Last Modified: Fri, 14 Aug 2026 18:27:14 GMT  
		Size: 15.3 KB (15260 bytes)  
		MIME: application/vnd.in-toto+json
