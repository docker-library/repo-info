## `traefik:mimolette`

```console
$ docker pull traefik@sha256:8629558ca77ce31ece7e1d726a14e1389a0bab39d1e3edb552301d1b56885845
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
$ docker pull traefik@sha256:c8f3ae72852b2b947c03ac3f9c0937b4fd489cb03c9f4d1aac14aafcd0f8babf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54501793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219b2360c72e9d55a89f049545923b650ebf168c00fd4b8e5b419ac2c5daefbb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:52:10 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:52:13 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:52:13 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:52:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:52:13 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bb84ac5b13ddac555c31ee36a5fd23b07c0052d78059994b6e22347a3578cf`  
		Last Modified: Fri, 13 Nov 2026 18:52:35 GMT  
		Size: 412.0 KB (412001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e6232f4705ec10fc74db0ce0aa180195b397970d8764b5f327eeb162f818a3`  
		Last Modified: Fri, 13 Nov 2026 18:52:36 GMT  
		Size: 50.2 MB (50235749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656f155daf62159035f9e4dd269d4788c1d5c52dd21f55666996aa683a92fac4`  
		Last Modified: Fri, 13 Nov 2026 18:52:35 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:e5957f8b58061d96bdcf45127f7e8c6be08cc09a4de8c8c1e0709216682de951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **857.6 KB (857641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bbb11e7e3935bf934293d292af256631d1a22dff0357d5497cbd121815dd4`

```dockerfile
```

-	Layers:
	-	`sha256:7f80a9cc400f92215e5f53749b12fa19981471ad81c365a52ab6a2e6985c87de`  
		Last Modified: Fri, 13 Nov 2026 18:52:35 GMT  
		Size: 845.0 KB (845031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07972f259c2b17dd81ca64566a5d66e011a46f75f0dd930b1fbb0710193ce6f5`  
		Last Modified: Fri, 13 Nov 2026 18:52:34 GMT  
		Size: 12.6 KB (12610 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a397273ce020ecc911273ab238e472fe0189f3e0f155dd911101b6497c412f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50115431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096e7e0eb6c98fff8185a02cc0f3d91e731db20c27ba81430f4ec646dd4d3136`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:54:13 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:54:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:54:17 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:54:17 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:54:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:54:17 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:54:17 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8288912db6d9d0757a2b0c4352f1e059d23a5c630bdfaeef3a28dcab2c6fa6d`  
		Last Modified: Fri, 13 Nov 2026 18:54:26 GMT  
		Size: 413.7 KB (413703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4846ee3877fe954233180bc66fb64c344ecbd48deb0c123c91bf24598d361b10`  
		Last Modified: Fri, 13 Nov 2026 18:54:27 GMT  
		Size: 46.1 MB (46142957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d0b846b83193c55254c6474ee91726a3191d0bb744e7e16710e3ee152ed2ea`  
		Last Modified: Fri, 13 Nov 2026 18:54:26 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:5b7e551de211296fa6cfdc6447e8b63a3f2294c97ff5d063504c0869c39bebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 KB (12511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccdbe4fa23b6c607f3b21cdbaa11060731df7b27d32da7d08395053d9d5e197`

```dockerfile
```

-	Layers:
	-	`sha256:47b561225731fc669b2216100cab44e9c3974896df831ba3fbdbf784e9a73a04`  
		Last Modified: Fri, 13 Nov 2026 18:54:26 GMT  
		Size: 12.5 KB (12511 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0a1a36fa9935fb9ef0961404ad94de7df11ad85752fe7d8b2dd981b9028b3d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49281637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d766cecf539ac032fa1c9769305d534cd838d331280bb3d68019f767564c8ce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:51:24 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:51:26 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:51:26 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:51:26 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:51:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:51:26 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:51:26 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d783836c116e3bed1f4e51f6b6b82cf906244e541578318df85a4778249d2c`  
		Last Modified: Fri, 13 Nov 2026 18:51:48 GMT  
		Size: 415.6 KB (415555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2b74b34d6e21a98a077c8fc45e0e6ff4fc17ab6ec010f13274eaf76110f03b`  
		Last Modified: Fri, 13 Nov 2026 18:51:49 GMT  
		Size: 44.7 MB (44675117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8bbf7bd513196008c6e6985833320b0fb441089ea313721bd762404a82478c4`  
		Last Modified: Fri, 13 Nov 2026 18:51:46 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:588fd9e5ffe8554041c5648af610fa7359b6e92281330a9dc0f225e0005069d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.4 KB (856433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ca8f50c93b8217f4b77a13830f3821f5863f497835cd499dd59698f9a8a5c0`

```dockerfile
```

-	Layers:
	-	`sha256:321e446abcd2c40c6c0050eb099271f426c936d3b36bbc8ec8f70cfccc239a68`  
		Last Modified: Fri, 13 Nov 2026 18:51:48 GMT  
		Size: 843.7 KB (843668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c780c6d5979164234818b76862954818b5068a29eab7b0b8084dc9f6cdd5e8e1`  
		Last Modified: Fri, 13 Nov 2026 18:51:48 GMT  
		Size: 12.8 KB (12765 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; ppc64le

```console
$ docker pull traefik@sha256:e8320f41cc28ba90701aa8e45f7820632afae5ecc717d271541f00fdf4d3663b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47816431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43df3d7f06a03dcc5799f209bc8d3d0fd993327bbc2ef6c4d26074a88876edc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 19:18:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 19:18:47 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 19:18:47 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 19:18:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 19:18:47 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 19:18:47 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ddb339a25aee19cd0de0fbeea29538765149acdf22d74d0f73d059e32d3dd7`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 416.0 KB (416038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2369249ffd0d1db9a46db5eff5ee2e378db4939200757f1f254300537c7834c3`  
		Last Modified: Fri, 13 Nov 2026 19:19:48 GMT  
		Size: 43.6 MB (43578104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06889a915f3a76af2f27d0fd75f42d7c6a121de320f05e91b9c7026d33a0be13`  
		Last Modified: Fri, 13 Nov 2026 19:19:46 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:1effaf05bf91a24fec0362aaead6b912b4f629435bdcfd8f54156dd80295faa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.3 KB (856301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54026baea4461fe0e35d80cedaf461ca0b60d31afbfefe7d91d25b5d05621bae`

```dockerfile
```

-	Layers:
	-	`sha256:966bd047ba3c216e5960f227289a5accc12fc3a1154255553511d11dc2aa939b`  
		Last Modified: Fri, 13 Nov 2026 19:19:46 GMT  
		Size: 843.6 KB (843627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63a4e4079cb584b31e80e3d4bee8e7ea3fd21d1a781bba00fcc2215780b5d32e`  
		Last Modified: Fri, 13 Nov 2026 19:19:46 GMT  
		Size: 12.7 KB (12674 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; riscv64

```console
$ docker pull traefik@sha256:83f76c54188db0ea9f399adac54c7a851c7d1897c2aa948b4ab5c50ec84cc300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52562530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da748dc49ff2cf723d7a878f5a9435407be9e6e5ebcf8b3293c9a510d73f80d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 02:38:49 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 03 Nov 2026 02:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.61/traefik_v2.11.61_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 03 Nov 2026 02:49:05 GMT
COPY entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 02:49:05 GMT
EXPOSE map[80/tcp:{}]
# Tue, 03 Nov 2026 02:49:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 02:49:05 GMT
CMD ["traefik"]
# Tue, 03 Nov 2026 02:49:05 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.61 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:0af32720a073fa1893295fbd4ed6be158b344ae26aa9b409f61d559f7af61ba8`  
		Last Modified: Tue, 03 Nov 2026 02:53:20 GMT  
		Size: 48.6 MB (48568969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac8c4ec3590f1afac6e15eb7c4108b4639afdd211c6177647c45bc9094034ba`  
		Last Modified: Tue, 03 Nov 2026 02:53:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:aa5514033b2ad9f5d2428a45e6d9c3d0bd65259146e6983e7e02cc586abb11de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.3 KB (856297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714758909e8e87b8197f8a2f0da7042596141d7e1e52f8a1e027a1a8b86bf064`

```dockerfile
```

-	Layers:
	-	`sha256:7971d8ecc9a1973d2e470dd044816a644a4d724c36b515f4bfae1b22519245d8`  
		Last Modified: Tue, 03 Nov 2026 02:53:11 GMT  
		Size: 843.6 KB (843623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c55e8a150ec8bc44b4c17619bfae2079568e2403d42febbee1bd2b0a272767ba`  
		Last Modified: Tue, 03 Nov 2026 02:53:11 GMT  
		Size: 12.7 KB (12674 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; s390x

```console
$ docker pull traefik@sha256:552259e62381c7cacb407329da932f4d81c7bd0e21ecbb2215ab8e289b744d0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52786509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f31374143a44178b7dd3cfb60c6f8939e6b2c3870d65d015731719e60e99a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:18 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:55:25 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:55:25 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:55:25 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:55:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:55:25 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:55:25 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:7504be10ab385ced9f9069318e7e730e71d9ac82beff47f29f114ebdf1aa0b8c`  
		Last Modified: Fri, 13 Nov 2026 18:56:18 GMT  
		Size: 48.7 MB (48652069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5d58ea89f668d437e375eec9caad3971bf6672f9818b2d43ea663d2f52404a`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:02a11da846c9905b9104b74c9ca4639da79f626baf3951276517e17de59b710f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.2 KB (856181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8d2098cf4e4e53f345cbeca7531c299571ef89de60b71de425ec5ba822cb74`

```dockerfile
```

-	Layers:
	-	`sha256:775665ad6637d43055eaa56e1dfb0d9ee1259ed271f1643aff48778b5746b0cd`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 843.6 KB (843571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4897e8e94b56f978c93fed151bb30692b06400e521ba0102fbc3fc1dff7e62`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 12.6 KB (12610 bytes)  
		MIME: application/vnd.in-toto+json
