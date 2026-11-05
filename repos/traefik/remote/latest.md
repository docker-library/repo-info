## `traefik:latest`

```console
$ docker pull traefik@sha256:92627e6a99f71b8e46634acea28130b9f14bec5d9887ad15161007e1b652afe1
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

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:e15b8921020b4fd81de5746b170dfceec221d2450711449f6427e4692881511a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55163609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d848e658dbc9653fc3fbe2fc5ffce860a508a62cf6351027a9336e9a3bcb2e21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:33 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 19:11:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 19:11:35 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:35 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:35 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 19:11:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c901ba6ff9e02bb88aa5c028ee85c00bde7e63d0c2aad634e54c4fe53143b625`  
		Last Modified: Thu, 05 Nov 2026 19:11:54 GMT  
		Size: 412.0 KB (412007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f376259b112481ca7673390eaf330d979276ccfd261c19b6664ae3826e9e1ce`  
		Last Modified: Thu, 05 Nov 2026 19:11:56 GMT  
		Size: 50.9 MB (50897559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7705a4c1b3f8902c635a405e4efb183a55a960ba43dc38f7fcff0f37529abf0e`  
		Last Modified: Thu, 05 Nov 2026 19:11:54 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:9a8ce15a8ce8079c519cd7dbb0e5113ca564eaf72fe7d94cf69a4a31df93f845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.6 KB (843559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4728e8a2e1cbc0157180ddb47964afbe3ac11d14761667467180776539c875`

```dockerfile
```

-	Layers:
	-	`sha256:a6dcf0e1eb0e12fe42fe9ffbab5138780ddaa5720c20bd4ba61ff9fde5a8754a`  
		Last Modified: Thu, 05 Nov 2026 19:11:55 GMT  
		Size: 830.7 KB (830670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab6779b081bb68ce378f622b0c7824a7e27e1687ef3c5900d9775a3be149eedb`  
		Last Modified: Thu, 05 Nov 2026 19:11:54 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e6ced4d92201879b153340f3df9585e91ab7e0f9c5c159223c806a335e72f729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50587989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f25ff148ad2cd0b53ea69f1a1a5d1057f0b30493e0af647af7ac21560673e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:53 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 18:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 18:48:56 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:48:56 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 18:48:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:56 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 18:48:56 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c571715db13e668ff734cc259b0bca16f38da6bd2a8057480a4f289b29e76b4`  
		Last Modified: Thu, 05 Nov 2026 18:49:05 GMT  
		Size: 413.7 KB (413705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd73519025a2bacc6f16a3ef0bd1e1f1a6673f6021c40052b4b203976caabd3`  
		Last Modified: Thu, 05 Nov 2026 18:49:06 GMT  
		Size: 46.6 MB (46615513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad830ef2b87f944d3d8b968b1065a8fa5a730ab6dd453bb49cc9f802d77b1528`  
		Last Modified: Thu, 05 Nov 2026 18:49:05 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:3a3d2bc3affc2dfcafe44df8e106b09469cf82a1f73ba04ecd7dd106c45f9e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3f52d4bd891cac0e11ea7bb44d497338ee26bef5c532e05cd13316c171d54`

```dockerfile
```

-	Layers:
	-	`sha256:cdbd2b353ef04649b60a3d08371019251805812dee496b5e1ad089ec10ee54a8`  
		Last Modified: Thu, 05 Nov 2026 18:49:05 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7d059b49c28f167021156e8e7b448823eb8cfd681fdb97fd7e097d6c4e655190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49874436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b96839c7d420e4755ae064f6d1699e06f3268a655f70608abe1f3a612919fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:07:13 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:07:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:15 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 19:07:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d76b6c76f270b2358df07335f352f4b1752e3cd95096b512c307ad4b3d2506`  
		Last Modified: Thu, 05 Nov 2026 19:07:37 GMT  
		Size: 415.5 KB (415546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c96ea8f483c6864854ecd750fed2390a910ed96c199035f79dec3e115368344`  
		Last Modified: Thu, 05 Nov 2026 19:07:38 GMT  
		Size: 45.3 MB (45267926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e231167159fd3bf1badf46fb3d2dbb59c16c19fdc49001e89d28e48c42c132`  
		Last Modified: Thu, 05 Nov 2026 19:07:37 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:e8d5ff769e8d4324b74331059bfeae10651774f0f3ce23e4f92e86c5f6961d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.2 KB (843180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22cc712b9c043746fc5c7f51b2fa57ab40cb9a2494e1286d3d2a9c602613116`

```dockerfile
```

-	Layers:
	-	`sha256:418dfe4365667922161841db93c8f16193f9bf14c3a26e9f0b12c2ef1094a941`  
		Last Modified: Thu, 05 Nov 2026 19:07:37 GMT  
		Size: 830.1 KB (830124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d3137009d25d1a74e59142b230287adda7ae9c3688d3a7ddbdf9513042be3a4`  
		Last Modified: Thu, 05 Nov 2026 19:07:37 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:aa5145ef5de1d7e865b122aa5aae26103fe6c340b9a051dd86c8bb169ec66409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48274622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9850713e23da132ff97d76a239fbf4ad68270eb3aa5048d25f00a1ff68ca176`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Fri, 30 Oct 2026 20:17:44 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 30 Oct 2026 20:17:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 30 Oct 2026 20:17:53 GMT
COPY entrypoint.sh / # buildkit
# Fri, 30 Oct 2026 20:17:53 GMT
EXPOSE map[80/tcp:{}]
# Fri, 30 Oct 2026 20:17:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Oct 2026 20:17:53 GMT
CMD ["traefik"]
# Fri, 30 Oct 2026 20:17:53 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a38b0a4403e85e3020cc5867ee16f4bb39017b7f9c97560f5904bd59a51b78`  
		Last Modified: Fri, 30 Oct 2026 20:18:41 GMT  
		Size: 416.1 KB (416085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b278450190a801d15f3b8a768bc83214eea6084d62b98b9f16cdce19df23d1`  
		Last Modified: Fri, 30 Oct 2026 20:18:42 GMT  
		Size: 44.0 MB (44037346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411c6c8dbd1deee5e4f67f10c3a9edc175dbc1ac3595c158e20a2b601fa6ca6b`  
		Last Modified: Fri, 30 Oct 2026 20:18:41 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:9568d7286bb3eeed6699d4dc99ff2d7a841ad07fd496c8c2dcd9f60eb86534b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.0 KB (843034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ebca9adbedd950dac84e85f7c4269e16aefe25211b822d7c77534b5a27f57f`

```dockerfile
```

-	Layers:
	-	`sha256:0e1fe102ce4653417d9188597f906cd07e4cc37c647395d17a93a33e9332f917`  
		Last Modified: Fri, 30 Oct 2026 20:18:41 GMT  
		Size: 830.1 KB (830077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c66e48b798de64f0b88d5726ebaf034b58e08567d33f8963dc41fc0080359c57`  
		Last Modified: Fri, 30 Oct 2026 20:18:41 GMT  
		Size: 13.0 KB (12957 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:c8d73c9b656effa97070e258b26e3723a328ca5b8fbd1874d6bf9630469270fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52919164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba185cc06c1f00e5767f25e687faa006c41bb261248e50387d5ec3418e4aaf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 02:38:49 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
COPY entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
EXPOSE map[80/tcp:{}]
# Tue, 03 Nov 2026 02:44:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 02:44:06 GMT
CMD ["traefik"]
# Tue, 03 Nov 2026 02:44:06 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d195904108c4681dfaee3eb6927da17c789c8c06e9f508aa53d7e59651289`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 412.5 KB (412544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e2eb96fca6ab26658a6c12b132bdea323a5a579c40968800a7282651abe975`  
		Last Modified: Tue, 03 Nov 2026 02:48:25 GMT  
		Size: 48.9 MB (48925604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338482f781ef47d37428df20fa5e3ef2439981004c969ad7b89f0e1cc76be9b8`  
		Last Modified: Tue, 03 Nov 2026 02:48:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:8436fd172beb837b7aec2cd8af389f9d5ac20a5de2a90c11e99f48e01d966e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.0 KB (843031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c4067cd8f87154e59773177afcd2dc3d89b2231c130c7ff586b403cdb2acbd`

```dockerfile
```

-	Layers:
	-	`sha256:df506404bd30a25d844a2723842bf24deb065b6d1556c038e91df21d3ceddac4`  
		Last Modified: Tue, 03 Nov 2026 02:48:18 GMT  
		Size: 830.1 KB (830073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0bd61157f67a2125a207a59966776263cc4952ec90cdfe59582dedee7327074`  
		Last Modified: Tue, 03 Nov 2026 02:48:17 GMT  
		Size: 13.0 KB (12958 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:aca21a198423dff438dcc35e0fee6b208372e15fe30f7ec2e335c53c85eeac4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53190667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee288f47d7f088229b655b800d52ee619fd2ee4309504779fdbe5bd36db94523`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:18 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:21 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 19:14:21 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aec81ffd203dd901e0e43624c5cee00ea8e833cbd01df0351494ca4a24d689a`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 413.4 KB (413400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5dd7984353c7408b1b6eb56ab937c8341dc53027fb153da04d73e217d80abc1`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 49.1 MB (49056228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f78bfa8538435c85ae8584585b4b0189c2051497cdc68e473286a81d2c4fca`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:efa1b4c8b7ed10f4f2207da1a549bc0f979c298a02b0902a67ad26dd43f4d3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.9 KB (842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9582883c6f24dd7396473803ce44e7d7869131123e7962c146ca98105dda62f5`

```dockerfile
```

-	Layers:
	-	`sha256:d209b896094fb4a781f9318a7af32166817e3b69f860bee38f125f11a5d8a35a`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 830.0 KB (830017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02fc19f584ecd84a08ee077730ba63886782336d8c8d12d59da69cbc03b15d49`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
