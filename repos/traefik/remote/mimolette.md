## `traefik:mimolette`

```console
$ docker pull traefik@sha256:7a30dafe7ca6295adc0276a9bfa53cd3c4759b531449307ecde56da1a0838461
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `traefik:mimolette` - linux; amd64

```console
$ docker pull traefik@sha256:724253bbe311d4f756efd61c6964f66517523ff1641f5672dc31ee6513456909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54817522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ed1745991995416d436673073bbf48f4479975f86eb9e5ec41fe6922474436b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:37:28 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 26 Aug 2026 17:38:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.56/traefik_v2.11.56_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 26 Aug 2026 17:38:03 GMT
COPY entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 17:38:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 17:38:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Aug 2026 17:38:03 GMT
CMD ["traefik"]
# Wed, 26 Aug 2026 17:38:03 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.56 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebe965d9107086788a11140d0b98428f5901846222952ec29f06f92089fea1f`  
		Last Modified: Wed, 26 Aug 2026 17:37:53 GMT  
		Size: 408.1 KB (408097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e326205e73421d08b941b581e6376db047967e92db17056236ec132dc17ca890`  
		Last Modified: Wed, 26 Aug 2026 17:38:26 GMT  
		Size: 50.6 MB (50562665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762cb3c80ba7e7dbb09a99c22d72413eff00538d957bd8174e3cf73ffab27cc0`  
		Last Modified: Wed, 26 Aug 2026 17:38:24 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:e9852459c67151e98cc3fcd4cea213310b00ec6118eb5c3a6898897b62ce4520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **858.3 KB (858281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6245d95d40179dc2e7d28f282c5d89287d0af09cae8041ba9dea71d4fc4364`

```dockerfile
```

-	Layers:
	-	`sha256:b6ede6527d613354deb186c5145d9393c01c520ca790f14b6aac353d83c5cc27`  
		Last Modified: Wed, 26 Aug 2026 17:38:24 GMT  
		Size: 845.7 KB (845671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e11bd4e1aabbc9448478d5562b4273111d6b40fd37d01076a0101291bf1b9863`  
		Last Modified: Wed, 26 Aug 2026 17:38:24 GMT  
		Size: 12.6 KB (12610 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm variant v6

```console
$ docker pull traefik@sha256:f4b5190ebce93fe1cc9270a3223c568f01adab7846f106d000ab32a581028c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50422232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd9d1c3d5354fa8957f75f76e66b4b5ed1b98f0eefe47fb755498b709179462`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:37:51 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 26 Aug 2026 17:38:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.56/traefik_v2.11.56_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 26 Aug 2026 17:38:20 GMT
COPY entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 17:38:20 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 17:38:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Aug 2026 17:38:20 GMT
CMD ["traefik"]
# Wed, 26 Aug 2026 17:38:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.56 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b87feba108ecd4e846b1f5eadd1045ad7e1b5af6a3c14409923e7ecd8e1771`  
		Last Modified: Wed, 26 Aug 2026 17:38:03 GMT  
		Size: 409.9 KB (409943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6149e98fd04d80cffe1fad86a37ebbc18b1ca352ae07b95042a65d99e88c5b`  
		Last Modified: Wed, 26 Aug 2026 17:38:29 GMT  
		Size: 46.5 MB (46458470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c605e7f99b4b91329b36d5c10a270ca47d5b6ab5be7733a81ad9ac6c76a1e5`  
		Last Modified: Wed, 26 Aug 2026 17:38:28 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:115f5942bafc5c40772cadb0ddc6d021f652e914926c2b3d8c1b8d7347b5f8be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 KB (12512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c932916bd76d79f94935a09a289deba8ef384587dcd0937ecc471b763fb8193`

```dockerfile
```

-	Layers:
	-	`sha256:12274774117e7ea517671cf6d59b084b563dad1f3e6c1c6377763487185324a2`  
		Last Modified: Wed, 26 Aug 2026 17:38:28 GMT  
		Size: 12.5 KB (12512 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e8e03ca0536a340736f404c3807ad22fa6b1cbc4751e1a6d53f4b3364ee5ffb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49762788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d1861f1550c959f5e5c48a670a5ee948de2403af0c9d529e2eb76d1bc29700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:37:55 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 26 Aug 2026 17:38:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.56/traefik_v2.11.56_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 26 Aug 2026 17:38:45 GMT
COPY entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 17:38:45 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 17:38:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Aug 2026 17:38:45 GMT
CMD ["traefik"]
# Wed, 26 Aug 2026 17:38:45 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.56 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1a6b6f433081ac0511189f498162f8970364e9cc0f8f8ddeab6f529880d95b`  
		Last Modified: Wed, 26 Aug 2026 17:38:23 GMT  
		Size: 411.7 KB (411749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff6cf4df2e58c4f195d24c1e3cb29d326da97f54886388a50131e79ac8b7a64`  
		Last Modified: Wed, 26 Aug 2026 17:39:11 GMT  
		Size: 45.2 MB (45167632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ea8ab41f41c5a5996f5c56db0a24b2c01bd4325d71bdba37f0674e347b76be`  
		Last Modified: Wed, 26 Aug 2026 17:39:09 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:45df52c10f8407f4dae3857bd43d47a2fecf18a30f4d001a7072aead1e5a30b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **857.1 KB (857073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb84d3ce9e63501e75080730a1e9f9f6df404aec1dd9163046b38cfa09d2b5f`

```dockerfile
```

-	Layers:
	-	`sha256:4621a21bd7f621e61fe8461adf31bea2b7ef191348994aad3e864c1695d89bfc`  
		Last Modified: Wed, 26 Aug 2026 17:39:09 GMT  
		Size: 844.3 KB (844308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4247025b30ed39659106a0e226361fe3ec2a13200da053e6b05c813b8c80954f`  
		Last Modified: Wed, 26 Aug 2026 17:39:09 GMT  
		Size: 12.8 KB (12765 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; ppc64le

```console
$ docker pull traefik@sha256:474af04058527ec5198fa5b9b641267615675738f184a885d181e588d8387fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48225738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbaace9b30abd556df1450c45f6ead7dea67c1b16d8e02a48b20ec87556f5c6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:35:59 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 26 Aug 2026 17:36:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.56/traefik_v2.11.56_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 26 Aug 2026 17:36:09 GMT
COPY entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 17:36:09 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 17:36:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Aug 2026 17:36:09 GMT
CMD ["traefik"]
# Wed, 26 Aug 2026 17:36:09 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.56 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd7bc5221f2168eb2c843f9419436b3f798587cb8347c4cacb61c581d786ffe`  
		Last Modified: Wed, 26 Aug 2026 17:36:57 GMT  
		Size: 412.3 KB (412293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888560aeca309bb597a398677488b44f31c93e1ee64507c4979b72772a142ea5`  
		Last Modified: Wed, 26 Aug 2026 17:36:58 GMT  
		Size: 44.0 MB (43999675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae6c2881f473fac2951b42e087d9e26531ee64c1e6a631302eafc5a85a14d8c`  
		Last Modified: Wed, 26 Aug 2026 17:36:57 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:c388bda862b51bbc887995d714a4e49446ac4513ead77071c95b1cce162bc132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.9 KB (856941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745956d6c945eb0a530ec76658a52441668aaed8738d6f7abda94c80ecfca57b`

```dockerfile
```

-	Layers:
	-	`sha256:762762cd96644caff7fb6f82dce1696969ae8b0f9e54e30b638f52e4af0efb38`  
		Last Modified: Wed, 26 Aug 2026 17:36:57 GMT  
		Size: 844.3 KB (844267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea31d8fea9cb8839e20bf892e7373561f15f30430073307da5b7619ecab1b24`  
		Last Modified: Wed, 26 Aug 2026 17:36:57 GMT  
		Size: 12.7 KB (12674 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; riscv64

```console
$ docker pull traefik@sha256:f7da5b1e6dcbd08ddf6b9f7cdcb4105b02b67fa427693ac802895d3343dfd182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52766918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6a06cacafbbb7534afd1e80173d8d549f9f81042c5f38c85f8e11ae1b09e36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:14:14 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 19 Aug 2026 17:19:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.55/traefik_v2.11.55_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 19 Aug 2026 17:19:52 GMT
COPY entrypoint.sh / # buildkit
# Wed, 19 Aug 2026 17:19:52 GMT
EXPOSE map[80/tcp:{}]
# Wed, 19 Aug 2026 17:19:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 17:19:52 GMT
CMD ["traefik"]
# Wed, 19 Aug 2026 17:19:52 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.55 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cbaefa4ef826e9be0f62540480351c9eb9b94502338a5199fce6e81f5f2c13`  
		Last Modified: Wed, 19 Aug 2026 17:19:02 GMT  
		Size: 408.7 KB (408652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5110aa1a8c126599c468fdbeb63f8c58078bcaf1de413b24d030270288ab23`  
		Last Modified: Wed, 19 Aug 2026 17:24:29 GMT  
		Size: 48.8 MB (48783538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6480dd3d7b9e29e0218d7eda82ee17a2d99e61612357a5b72a064a69870b4f78`  
		Last Modified: Wed, 19 Aug 2026 17:24:21 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:e44e0a460198ad5584471703edcab3f3fa9f6755d6a07e3e4025846204ae80a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.9 KB (856937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320bd994b81c81b7dab70251631d92722b07842027d63b37827a06ba657b56d5`

```dockerfile
```

-	Layers:
	-	`sha256:8e542bdcdbb393896e18812cc91dcd52dc18d22f6cb4eb55da0acc858fb3545f`  
		Last Modified: Wed, 19 Aug 2026 17:24:21 GMT  
		Size: 844.3 KB (844263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2362251c87a081a543f3b98b7c43ab847f40d8c257b4bf366934c75f9cf6cbc8`  
		Last Modified: Wed, 19 Aug 2026 17:24:21 GMT  
		Size: 12.7 KB (12674 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; s390x

```console
$ docker pull traefik@sha256:af59fc8de5ce8f5f5e3ced062c0d4116dcc1f5868667930d232ab5b7a8af146e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52994377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba423b0e8e412219aed321876be6c0393377be5ef704f3641b84cb6be955cce3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:36:28 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 26 Aug 2026 17:36:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.56/traefik_v2.11.56_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 26 Aug 2026 17:36:37 GMT
COPY entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 17:36:37 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 17:36:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Aug 2026 17:36:37 GMT
CMD ["traefik"]
# Wed, 26 Aug 2026 17:36:37 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.56 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2464cf9cb55b0ec44d57682e945848c0514e7b9ff3dbf7899afa71bf94ef32f6`  
		Last Modified: Wed, 26 Aug 2026 17:38:02 GMT  
		Size: 409.5 KB (409502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd93a17f6abf70977061eb471409d2946ac4fb603778e42c56cf22765e6495e`  
		Last Modified: Wed, 26 Aug 2026 17:38:06 GMT  
		Size: 48.9 MB (48875186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b0abe113a6c35cd27475502c131b8a92d48ac4687c1ca7c4f83144de083f99`  
		Last Modified: Wed, 26 Aug 2026 17:38:01 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:21a72e7be1131391848dc34cff9173e4a8250a20e836fe8bf826158af5b4c66e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.8 KB (856818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa79f5d5b20bb4e40b25809f921a84c4f8b9d56373cef2256851de4b88bfbd6`

```dockerfile
```

-	Layers:
	-	`sha256:39b011e6b103794b0da4d609040595eb824ef7f164361e48e9c950cd647b5948`  
		Last Modified: Wed, 26 Aug 2026 17:38:02 GMT  
		Size: 844.2 KB (844211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26f8e6c14f08f89fd748bcba8adedc448b303aaa02b4fd711badcb229a5ddd35`  
		Last Modified: Wed, 26 Aug 2026 17:38:01 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json
