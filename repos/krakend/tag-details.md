<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `krakend`

-	[`krakend:3`](#krakend3)
-	[`krakend:3.0`](#krakend30)
-	[`krakend:3.0.0`](#krakend300)
-	[`krakend:latest`](#krakendlatest)

## `krakend:3`

```console
$ docker pull krakend@sha256:e93eed25554145dc4f2727d203e96c655bd2e609459f05e13afcbf590582496f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:3` - linux; amd64

```console
$ docker pull krakend@sha256:97f67b18342a83e04165186c201c4dcc8b002473e07ad773aa9e30a0ccd96496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49319643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256d585a0d162322e273405041f8f7a6b4930c34830229dc85c95f91640a1230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:37 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:42 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:42 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84781d756a48b697b6cd1d82ca922b943ccf2055416d7baf10a6c671d9cafa95`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 419.5 KB (419479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801458cd25442162226e75040fa443388febd5ce2a0d3d987243da88735ad018`  
		Last Modified: Wed, 30 Sep 2026 19:07:50 GMT  
		Size: 45.1 MB (45050997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e83354eb35ef03b5b48be651d0a6f7df027d8e3950dce170ea3b0f5d7ba5dc`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3` - unknown; unknown

```console
$ docker pull krakend@sha256:68b9b22d653584e9db98b0789624c18dd4fc9174991c061aa033906c7813c6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c438b40f51eeaff0a0c312a64f560bea30266e9c9a9f4d248e42acd67765da8`

```dockerfile
```

-	Layers:
	-	`sha256:96f5a4ba77afc3a0bf8ff9af52b815b7fe4a386e73654e9b95033eb99951ed28`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 15.1 KB (15125 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:3` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:0cf99a91091fbac25cf12a731c353f5da77ebc6e7f5e9c4292196b621f75c7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46062494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f757cf32e91b27a82883240b762ac2b30ae509434afd53f0ef59b358d9c8f629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:48 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:52 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:52 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5904628eb61189c89f97714f5b6774019fb413caa4a8cc9bac247f3bb105579`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 422.9 KB (422902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c663d70fc6364e8e78f142f1ad5d3afbdd0dfa3f03f7ccc0bc9a73b4f18c5be`  
		Last Modified: Wed, 30 Sep 2026 19:07:59 GMT  
		Size: 41.5 MB (41452876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb269709e5b8c75ce3d0df2bc001e11c2ee9953162257247998d5f8832eaeee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3` - unknown; unknown

```console
$ docker pull krakend@sha256:d95591d54f3fc27d4ce6ee2fdf8f174683cc207b442c81eb44c0336715d13674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc0300549d5f1dcde4a385330d3fb2ed6d9b9832a795c34a4e4f01b965d5080`

```dockerfile
```

-	Layers:
	-	`sha256:162acf710e7f86ed7aff4db9ce731e945d80b2786584aec822a235d148ec61ee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 15.2 KB (15246 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:3.0`

```console
$ docker pull krakend@sha256:e93eed25554145dc4f2727d203e96c655bd2e609459f05e13afcbf590582496f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:3.0` - linux; amd64

```console
$ docker pull krakend@sha256:97f67b18342a83e04165186c201c4dcc8b002473e07ad773aa9e30a0ccd96496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49319643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256d585a0d162322e273405041f8f7a6b4930c34830229dc85c95f91640a1230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:37 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:42 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:42 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84781d756a48b697b6cd1d82ca922b943ccf2055416d7baf10a6c671d9cafa95`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 419.5 KB (419479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801458cd25442162226e75040fa443388febd5ce2a0d3d987243da88735ad018`  
		Last Modified: Wed, 30 Sep 2026 19:07:50 GMT  
		Size: 45.1 MB (45050997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e83354eb35ef03b5b48be651d0a6f7df027d8e3950dce170ea3b0f5d7ba5dc`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3.0` - unknown; unknown

```console
$ docker pull krakend@sha256:68b9b22d653584e9db98b0789624c18dd4fc9174991c061aa033906c7813c6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c438b40f51eeaff0a0c312a64f560bea30266e9c9a9f4d248e42acd67765da8`

```dockerfile
```

-	Layers:
	-	`sha256:96f5a4ba77afc3a0bf8ff9af52b815b7fe4a386e73654e9b95033eb99951ed28`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 15.1 KB (15125 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:3.0` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:0cf99a91091fbac25cf12a731c353f5da77ebc6e7f5e9c4292196b621f75c7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46062494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f757cf32e91b27a82883240b762ac2b30ae509434afd53f0ef59b358d9c8f629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:48 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:52 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:52 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5904628eb61189c89f97714f5b6774019fb413caa4a8cc9bac247f3bb105579`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 422.9 KB (422902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c663d70fc6364e8e78f142f1ad5d3afbdd0dfa3f03f7ccc0bc9a73b4f18c5be`  
		Last Modified: Wed, 30 Sep 2026 19:07:59 GMT  
		Size: 41.5 MB (41452876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb269709e5b8c75ce3d0df2bc001e11c2ee9953162257247998d5f8832eaeee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3.0` - unknown; unknown

```console
$ docker pull krakend@sha256:d95591d54f3fc27d4ce6ee2fdf8f174683cc207b442c81eb44c0336715d13674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc0300549d5f1dcde4a385330d3fb2ed6d9b9832a795c34a4e4f01b965d5080`

```dockerfile
```

-	Layers:
	-	`sha256:162acf710e7f86ed7aff4db9ce731e945d80b2786584aec822a235d148ec61ee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 15.2 KB (15246 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:3.0.0`

```console
$ docker pull krakend@sha256:e93eed25554145dc4f2727d203e96c655bd2e609459f05e13afcbf590582496f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:3.0.0` - linux; amd64

```console
$ docker pull krakend@sha256:97f67b18342a83e04165186c201c4dcc8b002473e07ad773aa9e30a0ccd96496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49319643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256d585a0d162322e273405041f8f7a6b4930c34830229dc85c95f91640a1230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:37 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:42 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:42 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84781d756a48b697b6cd1d82ca922b943ccf2055416d7baf10a6c671d9cafa95`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 419.5 KB (419479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801458cd25442162226e75040fa443388febd5ce2a0d3d987243da88735ad018`  
		Last Modified: Wed, 30 Sep 2026 19:07:50 GMT  
		Size: 45.1 MB (45050997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e83354eb35ef03b5b48be651d0a6f7df027d8e3950dce170ea3b0f5d7ba5dc`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3.0.0` - unknown; unknown

```console
$ docker pull krakend@sha256:68b9b22d653584e9db98b0789624c18dd4fc9174991c061aa033906c7813c6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c438b40f51eeaff0a0c312a64f560bea30266e9c9a9f4d248e42acd67765da8`

```dockerfile
```

-	Layers:
	-	`sha256:96f5a4ba77afc3a0bf8ff9af52b815b7fe4a386e73654e9b95033eb99951ed28`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 15.1 KB (15125 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:3.0.0` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:0cf99a91091fbac25cf12a731c353f5da77ebc6e7f5e9c4292196b621f75c7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46062494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f757cf32e91b27a82883240b762ac2b30ae509434afd53f0ef59b358d9c8f629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:48 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:52 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:52 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5904628eb61189c89f97714f5b6774019fb413caa4a8cc9bac247f3bb105579`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 422.9 KB (422902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c663d70fc6364e8e78f142f1ad5d3afbdd0dfa3f03f7ccc0bc9a73b4f18c5be`  
		Last Modified: Wed, 30 Sep 2026 19:07:59 GMT  
		Size: 41.5 MB (41452876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb269709e5b8c75ce3d0df2bc001e11c2ee9953162257247998d5f8832eaeee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:3.0.0` - unknown; unknown

```console
$ docker pull krakend@sha256:d95591d54f3fc27d4ce6ee2fdf8f174683cc207b442c81eb44c0336715d13674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc0300549d5f1dcde4a385330d3fb2ed6d9b9832a795c34a4e4f01b965d5080`

```dockerfile
```

-	Layers:
	-	`sha256:162acf710e7f86ed7aff4db9ce731e945d80b2786584aec822a235d148ec61ee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 15.2 KB (15246 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:latest`

```console
$ docker pull krakend@sha256:e93eed25554145dc4f2727d203e96c655bd2e609459f05e13afcbf590582496f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:97f67b18342a83e04165186c201c4dcc8b002473e07ad773aa9e30a0ccd96496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49319643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256d585a0d162322e273405041f8f7a6b4930c34830229dc85c95f91640a1230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:37 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:42 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:42 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84781d756a48b697b6cd1d82ca922b943ccf2055416d7baf10a6c671d9cafa95`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 419.5 KB (419479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801458cd25442162226e75040fa443388febd5ce2a0d3d987243da88735ad018`  
		Last Modified: Wed, 30 Sep 2026 19:07:50 GMT  
		Size: 45.1 MB (45050997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e83354eb35ef03b5b48be651d0a6f7df027d8e3950dce170ea3b0f5d7ba5dc`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:68b9b22d653584e9db98b0789624c18dd4fc9174991c061aa033906c7813c6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c438b40f51eeaff0a0c312a64f560bea30266e9c9a9f4d248e42acd67765da8`

```dockerfile
```

-	Layers:
	-	`sha256:96f5a4ba77afc3a0bf8ff9af52b815b7fe4a386e73654e9b95033eb99951ed28`  
		Last Modified: Wed, 30 Sep 2026 19:07:48 GMT  
		Size: 15.1 KB (15125 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:0cf99a91091fbac25cf12a731c353f5da77ebc6e7f5e9c4292196b621f75c7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46062494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f757cf32e91b27a82883240b762ac2b30ae509434afd53f0ef59b358d9c8f629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 19:07:48 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 30 Sep 2026 19:07:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=82f3eb45b7680394e00b94b45fa4696fcacf3592b4753098fa9826bde7d43366c47f586e8314dc2f88572e6fa447384596ac3678f4d76cbf3ce8f81a94059fe7; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=f2f9bb8ac9058c61cd438586c829de20a12773fb840f5a6e36a3414f06c5ce417fb72b693687886b1fff500a52a9cb316d4010a10c9d398149b64820193383c0; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.0/krakend_3.0.0_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
WORKDIR /etc/krakend
# Wed, 30 Sep 2026 19:07:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 19:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 19:07:52 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 30 Sep 2026 19:07:52 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5904628eb61189c89f97714f5b6774019fb413caa4a8cc9bac247f3bb105579`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 422.9 KB (422902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c663d70fc6364e8e78f142f1ad5d3afbdd0dfa3f03f7ccc0bc9a73b4f18c5be`  
		Last Modified: Wed, 30 Sep 2026 19:07:59 GMT  
		Size: 41.5 MB (41452876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb269709e5b8c75ce3d0df2bc001e11c2ee9953162257247998d5f8832eaeee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:d95591d54f3fc27d4ce6ee2fdf8f174683cc207b442c81eb44c0336715d13674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc0300549d5f1dcde4a385330d3fb2ed6d9b9832a795c34a4e4f01b965d5080`

```dockerfile
```

-	Layers:
	-	`sha256:162acf710e7f86ed7aff4db9ce731e945d80b2786584aec822a235d148ec61ee`  
		Last Modified: Wed, 30 Sep 2026 19:07:58 GMT  
		Size: 15.2 KB (15246 bytes)  
		MIME: application/vnd.in-toto+json
