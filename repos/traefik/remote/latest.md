## `traefik:latest`

```console
$ docker pull traefik@sha256:b7b1b31e6440de0b1f7c4e0f6cf0a0f3f004866761d30c025fe00c80daaf7d9c
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
$ docker pull traefik@sha256:44b61e76a251fe586d17d881fc900452d0a7b4a4b08c97ce6eac86d45b4c8b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55284998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8944b2f2cff92fb467db5d2abe00ede4d3582a8fb1f7b7e468cd076e80ddff8a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:52:08 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:52:10 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:52:11 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:52:11 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:52:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:52:11 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:52:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50cdb47fcd9301227c00a4b8bd5a7b83db135aa113b0286cbd797e486125738`  
		Last Modified: Fri, 13 Nov 2026 18:52:30 GMT  
		Size: 412.0 KB (411990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce54642ab56988d622c903ca9ca69735988afe2b901af6accf016fe0f8e32786`  
		Last Modified: Fri, 13 Nov 2026 18:52:31 GMT  
		Size: 51.0 MB (51018965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30cf81fa565f56d6dc39988ecb051cd31bb914295c0e81d57b7d6c3492a1e7fb`  
		Last Modified: Fri, 13 Nov 2026 18:52:30 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:61d6bcdac9ef0cdbfce897410f8ea26a8dcb72c383401febf5cc5b1e17560af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.7 KB (842697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b4ab5fe3a6d72a78ffedd3a9ccf8f463073e5b731889bee8708cdcfbb62ffc`

```dockerfile
```

-	Layers:
	-	`sha256:b75d4f6222211d73ddb42c7e6fe644bb70478bc229a320d65830ebcc78e695ae`  
		Last Modified: Fri, 13 Nov 2026 18:52:30 GMT  
		Size: 829.8 KB (829809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:477c55628d1d8c9afb469d9709bd972a136543dc3030806f40f6e5d77a408f52`  
		Last Modified: Fri, 13 Nov 2026 18:52:30 GMT  
		Size: 12.9 KB (12888 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e94d2469757aad70b2a51ed07523536ac7c3540853e853f2412bb36dafd13d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50691059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71abfac4871bf63c560bda8c8ef5855567414577505d08080daf870d630e8441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:54:25 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:54:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:54:28 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:54:28 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:54:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:54:28 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:54:28 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c12b587046c2695864f35dfc8d5d0a2bb693046752416e46f59f6cbf8d79fb8`  
		Last Modified: Fri, 13 Nov 2026 18:54:37 GMT  
		Size: 413.7 KB (413718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867af1667cdb4052819851b5d360967bb88a5ab583e1c5a261c854c749fd736e`  
		Last Modified: Fri, 13 Nov 2026 18:54:38 GMT  
		Size: 46.7 MB (46718570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da583808f92bd488a369266425c21dd26bf20f6761e324c06db1f094d79121bb`  
		Last Modified: Fri, 13 Nov 2026 18:54:37 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:8bd921172f80c9ba3eee8b8dc96e1448f46144e74bddac9a655501d9962eb31b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674aff837d50076e262c130de6d29b8b1358a2b8db7c872edf972d981e3d2a15`

```dockerfile
```

-	Layers:
	-	`sha256:17e813369dc4295a919dcabf55819943cffb84c7550bd2924d364180d6c7abcf`  
		Last Modified: Fri, 13 Nov 2026 18:54:37 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:c9913a1db46a68ba0e72e9aa6cbb236dc1c33159f49b53d9ea20ad4df7b746c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49983356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dba2e86053db518a11ca7623e106a1759dba0ce59af00493b0ba032ea13f4c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 13 Nov 2026 18:51:22 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 18:51:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:51:24 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:51:24 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:51:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:51:24 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:51:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a5adc037cb29eb848ef05075fbe1c3b87bdf5af4df274d85d488c492683ec4`  
		Last Modified: Fri, 13 Nov 2026 18:51:46 GMT  
		Size: 415.6 KB (415570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd906aefe98de6341c9263a9d17f879bc95d31b4e97d9aa3c8d0e31d4dd7a8e3`  
		Last Modified: Fri, 13 Nov 2026 18:51:47 GMT  
		Size: 45.4 MB (45376821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8bbf7bd513196008c6e6985833320b0fb441089ea313721bd762404a82478c4`  
		Last Modified: Fri, 13 Nov 2026 18:51:46 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:b49ef6c0ae457dc1082a9f49b26024b6208d3f435954267368d03beb3348d7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.3 KB (842319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a118e1fdbc614b331c24fb4de3d6f1b1819f00777518a94c68c4fd2717cbc881`

```dockerfile
```

-	Layers:
	-	`sha256:920261a4d82c0a1e74b1615b35d5545a3dc662529846c43832b0536da331dfa5`  
		Last Modified: Fri, 13 Nov 2026 18:51:46 GMT  
		Size: 829.3 KB (829263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d7ef1d8e95d59b06006a6b552b20c40ba810e94f21c8cf69044a0d4985e183f`  
		Last Modified: Fri, 13 Nov 2026 18:51:46 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:5a0e202b1ea55a0b943e768c1cd73519d1c2c9f8e81baeb7d33d782d67da1649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48385830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c368c57be1c752ca146c8ad5281551400275088f321f4a1ca884bdee56405fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 13 Nov 2026 19:17:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 19:17:38 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 19:17:38 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 19:17:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 19:17:38 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 19:17:38 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:1c5102f4ee222a4b779a856044d940954e1f72f821d522410753e160c3cc7da8`  
		Last Modified: Fri, 13 Nov 2026 19:18:31 GMT  
		Size: 44.1 MB (44147502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1699b0f115d95b22c8df127752d4d36a96948a2f24094961d29e2db14c933331`  
		Last Modified: Fri, 13 Nov 2026 19:18:30 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:4891ec9be00d2132f08c094be11f7df8faeaf088b1b452c3d28dbb9100b8315f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.2 KB (842175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8877178e0f5cf154004e6836e33529e6ece9210a9d94e173a86fc21e00dbb6f8`

```dockerfile
```

-	Layers:
	-	`sha256:b6f5805541af605d11f869ad821a7ea544c995be6b26cd2229c5b4c356df6ec2`  
		Last Modified: Fri, 13 Nov 2026 19:18:30 GMT  
		Size: 829.2 KB (829216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef81473ca463efe48049f524559643ea348d21361893b44bf36a415bf6d73d80`  
		Last Modified: Fri, 13 Nov 2026 19:18:30 GMT  
		Size: 13.0 KB (12959 bytes)  
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
$ docker pull traefik@sha256:720332b899afcc53c785f6c427c36af147ef82e640255f3a03ab2e826a344ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53306644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36169c9228df9a213467e0d4bace4cfc4bcbe72e65bda8666c7ef323c1cd0362`
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
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 13 Nov 2026 18:55:25 GMT
COPY entrypoint.sh / # buildkit
# Fri, 13 Nov 2026 18:55:25 GMT
EXPOSE map[80/tcp:{}]
# Fri, 13 Nov 2026 18:55:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 18:55:25 GMT
CMD ["traefik"]
# Fri, 13 Nov 2026 18:55:25 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:8be7f8f4a18cd0bd17686cbdf60f613ea40156584a53c4b74292b0d27e9c6a80`  
		Last Modified: Fri, 13 Nov 2026 18:56:18 GMT  
		Size: 49.2 MB (49172204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bf9ef791090722067d6337cbeb01000064f1bce4b1fd69ce2e7a956d1da813`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:a4f59eb9c653d2fbd2d179719182acdc86255a2a2389ce53a31d02891aa56400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.0 KB (842045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a125e6c46dc096bdfa5fd71da1949feb67b821ae705cabbe8277b2b212a7366`

```dockerfile
```

-	Layers:
	-	`sha256:bb31c32022bd409c4348023dd2532ee59e37c76ef58279f292a48192b512a3ae`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 829.2 KB (829156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3a03bd8078762ddeb1aff0a6545d0b666da81c69f4e93609be61da0a883acb1`  
		Last Modified: Fri, 13 Nov 2026 18:56:16 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
