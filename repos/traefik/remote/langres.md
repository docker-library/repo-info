## `traefik:langres`

```console
$ docker pull traefik@sha256:575fa15b135078fe5e50aa847987d96dbddd7b093c172429618404df73f3fa7c
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

### `traefik:langres` - linux; amd64

```console
$ docker pull traefik@sha256:5902d68e00708015736416b62faa49d23a2e1d4415649e5831d20b79ba301508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55384543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a93040e5abdf181145d7c242964eca7999ffd700e0447b242ef212f3ee44d55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 17:48:01 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 06 Oct 2026 17:48:04 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 06 Oct 2026 17:48:04 GMT
COPY entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 17:48:04 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 17:48:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 17:48:04 GMT
CMD ["traefik"]
# Tue, 06 Oct 2026 17:48:04 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd8a8e2424e5e427f424e55d2a702143e24b09438ab37a002901eaad10acfd4`  
		Last Modified: Tue, 06 Oct 2026 17:48:25 GMT  
		Size: 416.3 KB (416303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0636b0e13742a0422c25d5bb3bfd726e1925d94a80bdff0833888debe3d8ac98`  
		Last Modified: Tue, 06 Oct 2026 17:48:27 GMT  
		Size: 51.1 MB (51118133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180b1d300e74eb1c935237077f2af319b311062e314974a57a185fcf6ae4baa3`  
		Last Modified: Tue, 06 Oct 2026 17:48:25 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:6a2b8deccd094d26c0e25d7e470fdde943833a0a7a6bd213a3e38824bf340d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.5 KB (844537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c841a7052378efcf50a85cec2d2a018b256e84faaec7327ccdcf00ceaf760c4`

```dockerfile
```

-	Layers:
	-	`sha256:4ae4fef5ab2ef92bcd34bf5d4b12bd14dd715709aafe5eca9b9eb489949eaed5`  
		Last Modified: Tue, 06 Oct 2026 17:48:25 GMT  
		Size: 831.6 KB (831648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab42dc032dbca779ebae6754c72bc38149db8b738bb0ec917632476cb4910540`  
		Last Modified: Tue, 06 Oct 2026 17:48:25 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a7c4b04ed495c4a7da77155d8c190f2fbf28875ce0b15b3437ba9f3ca05e9aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50708827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99bd2f8934bb7dbcc28e4b177f98e7a45f27ab14adcf5ff4750fc38fe8fd655`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 17:47:33 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 06 Oct 2026 17:47:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 06 Oct 2026 17:47:37 GMT
COPY entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 17:47:37 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 17:47:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 17:47:37 GMT
CMD ["traefik"]
# Tue, 06 Oct 2026 17:47:37 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0893a776b4fd86488f9dc95b4c5127d5960f04c7b94ca30caa88cf2fee5ed027`  
		Last Modified: Tue, 06 Oct 2026 17:47:46 GMT  
		Size: 417.5 KB (417549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ddd9bcf40d593e4bfd3edbd6fdf99ea7afe998213d708c53a52c5f67f514ce`  
		Last Modified: Tue, 06 Oct 2026 17:47:48 GMT  
		Size: 46.7 MB (46735796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8dc10f0b61137f7968f254e13b70fa0fa265ead5f5e9d43e0d2ebf5b0a04ff`  
		Last Modified: Tue, 06 Oct 2026 17:47:46 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:f253d10c76717f57191f04211e917284189de8926816190fd92474eccf543ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467af58ef6df249a8a7f64bbfbf9c9c20fd673bad74b646a1b528bc40737c7ec`

```dockerfile
```

-	Layers:
	-	`sha256:e19d617617fa24d873a737e6e799464d5a176d88714c4ec551130845ad745b07`  
		Last Modified: Tue, 06 Oct 2026 17:47:46 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:060f4c0328bebb33be8a73694ea613055c4591ba26493202a1830f964e171995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50202597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd29f8f70396c38a7322c536b590532a39bb4e727353d96949c8bb0aef8836a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 17:47:31 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 06 Oct 2026 17:47:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 06 Oct 2026 17:47:34 GMT
COPY entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 17:47:34 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 17:47:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 17:47:34 GMT
CMD ["traefik"]
# Tue, 06 Oct 2026 17:47:34 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d15c45c2dfab46e70fa8b2632e1803a445e9021a17240237709f5aa243d486f`  
		Last Modified: Tue, 06 Oct 2026 17:47:58 GMT  
		Size: 419.1 KB (419120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5129ff00aefc2d72a352751180b2d7c70d33609c03c921bca79ace0db94d9c23`  
		Last Modified: Tue, 06 Oct 2026 17:47:59 GMT  
		Size: 45.6 MB (45595450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e4bf0ed1ae401c549a5955e04c620e36d45c2de9e370f0bb80eae79b947c1b`  
		Last Modified: Tue, 06 Oct 2026 17:47:58 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:56830f2657284071c32a9fe7cf411895c5c93325779de9afc086a78fd0769d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.2 KB (844156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4e735918c26606f34a65f4d330cd22a4462eb069dc323aaf48cf8aae122496`

```dockerfile
```

-	Layers:
	-	`sha256:d577e599a14a9f66e50fb19cad28b8265851ba28f175f209dab2f1596e713434`  
		Last Modified: Tue, 06 Oct 2026 17:47:58 GMT  
		Size: 831.1 KB (831102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee1cd59165e5ff2946078f4ae07aeebdfc3ddbefd40bb5856b6e0620823ace2d`  
		Last Modified: Tue, 06 Oct 2026 17:47:58 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; ppc64le

```console
$ docker pull traefik@sha256:97e742fda04a375ad9062acaed72eafba84bdea5fb3654e91b9072c224c39643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48539864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d12679729252296075a332195fe998ee17c270197a1a39194345075a9b4f1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 18:55:39 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 06 Oct 2026 18:55:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 06 Oct 2026 18:56:00 GMT
COPY entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 18:56:00 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 18:56:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 18:56:00 GMT
CMD ["traefik"]
# Tue, 06 Oct 2026 18:56:00 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d257b36cbf4abc45a24d73f57981ca9acc76bb5af73375751dcecda533b5120c`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 419.5 KB (419533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304b42bdeae7b53ab31863e56892f904aeb22d2afd0d6fbec88cfc41a886ff61`  
		Last Modified: Tue, 06 Oct 2026 18:57:08 GMT  
		Size: 44.3 MB (44302485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e09d2e31a47ac69feb8b0ec7f3c97458944e3b6e7f89a45d42c0799174e87a`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:bee470802943f14719f06a7e1f37b7379164be8ac3d7c1f9be0af7e7bb08a77c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464e65ca7ad165b7c51d894dfae0a2b8212482a3b7ec5725f16407a07c5caa82`

```dockerfile
```

-	Layers:
	-	`sha256:5f1881e5a0ed1f873d7f740c54d5d1e088885a273a46316ee96d6600a618b36e`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 831.1 KB (831055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d27ca3add5df2504d0a8584c2b947439a0aaa0efc6c80d8ecfc6d77edb725c5`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; riscv64

```console
$ docker pull traefik@sha256:4445d9793ae8876217bcebd29016b2802dcc5566743760761adf5d4e00a420e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52930106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7ec1246fc2d31908c854668028cbe087c4bc27798760e627584f6950aaeae8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 11:10:41 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 08 Oct 2026 11:10:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 08 Oct 2026 11:10:53 GMT
COPY entrypoint.sh / # buildkit
# Thu, 08 Oct 2026 11:10:53 GMT
EXPOSE map[80/tcp:{}]
# Thu, 08 Oct 2026 11:10:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Oct 2026 11:10:53 GMT
CMD ["traefik"]
# Thu, 08 Oct 2026 11:10:53 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a597668b12e2c91ef1ce84d48d4002924de2931d50279bb27698b4dbcca894c`  
		Last Modified: Thu, 08 Oct 2026 11:15:29 GMT  
		Size: 416.8 KB (416751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457575d419fd8894ec14f186295ca5739f6a4d788c1faf00c4a35ea2fa68869f`  
		Last Modified: Thu, 08 Oct 2026 11:15:36 GMT  
		Size: 48.9 MB (48937614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d84827b3935359c6c13c736e0d469f6f73154b25623555996acfda47ca26f6f`  
		Last Modified: Thu, 08 Oct 2026 11:15:29 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:205edfbf65c2dc2926de21c46659e9dbc2d94c4da90d8db00b42ab2918a87c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5113768d53228af431803b50ae31426dbba7e9ac7bf4158a0209f13f67c8fffa`

```dockerfile
```

-	Layers:
	-	`sha256:568e86ac521ab3728a023e09628f42040c5df72b2a288d50f2c8ad2bddc1c9a0`  
		Last Modified: Thu, 08 Oct 2026 11:15:29 GMT  
		Size: 831.1 KB (831051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:162a1b0111b2a870fa5715945e2d088045d68a966ffd9bc2e5153a92f8c08e2b`  
		Last Modified: Thu, 08 Oct 2026 11:15:29 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; s390x

```console
$ docker pull traefik@sha256:0afb6a68322a0d7434e4107e215f6830dcc299414abc7844256b8840f09a695c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53391272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245eff44a1e0bd1e000eb91c835dc1536eb1ef9b6d7a6c0b591fbeba7ac6f4f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 17:46:43 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 06 Oct 2026 17:46:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 06 Oct 2026 17:46:45 GMT
COPY entrypoint.sh / # buildkit
# Tue, 06 Oct 2026 17:46:45 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 17:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 17:46:45 GMT
CMD ["traefik"]
# Tue, 06 Oct 2026 17:46:45 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724907384581294bccaa3ad2b3967c764b6204f9b6eb917a9d814d596e50419b`  
		Last Modified: Tue, 06 Oct 2026 17:47:33 GMT  
		Size: 417.4 KB (417445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade2da253754686563b3a388a0de0f14e711b5fe1ee69a0e02f654766ce3f426`  
		Last Modified: Tue, 06 Oct 2026 17:47:34 GMT  
		Size: 49.3 MB (49258119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf41e63a9c9c3c31636ced70fc40e086365ac3ab2d213f00c0f4e0f2c778e83`  
		Last Modified: Tue, 06 Oct 2026 17:47:33 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:9a3b94dbab408752cfc45fba194099b7301a34bba667b7718ebd4d8a8821498d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.9 KB (843884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05da4fb7a9ac37e9ec03dfc1675ae339bdee9743efc3887042b4d325ce286071`

```dockerfile
```

-	Layers:
	-	`sha256:6dac8e282b56cc8789a5bb9088cf29384effb4688daaf6ca1cd60414eac3d32e`  
		Last Modified: Tue, 06 Oct 2026 17:47:33 GMT  
		Size: 831.0 KB (830995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8c6156943098fe54319e772011b3b915c04214d4c538da799d538c849b51ad4`  
		Last Modified: Tue, 06 Oct 2026 17:47:33 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
