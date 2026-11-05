## `registry:latest`

```console
$ docker pull registry@sha256:88604dfe2f457935aafbb96755d0511e8216eb1b8df6b94329d530706eb8b906
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:1290056e2357eceb0c047cb60ae9abb370305a218e2df650eb8d3ea021b1c151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20450746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6936a3291f1ddd0e9a88108f4739553a2cfff91489df98c0e24def15701a1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:55:29 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Wed, 21 Oct 2026 22:55:29 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Wed, 21 Oct 2026 22:55:29 GMT
ENV OTEL_TRACES_EXPORTER=none
# Wed, 21 Oct 2026 22:55:29 GMT
VOLUME [/var/lib/registry]
# Wed, 21 Oct 2026 22:55:29 GMT
EXPOSE map[5000/tcp:{}]
# Wed, 21 Oct 2026 22:55:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:55:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:29 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf9c5d068e48bcfa3b7ff2b60a08e8d03eb25148b5349febd497d188d8e5cc8`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 244.5 KB (244470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30513d5b3b2d766fe64435042c67a778220ceffb3a5182ee4055f4a1e72c58a3`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 16.4 MB (16352558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0bafd2eac62b05ba320fd673bdd8184765111526f44f50657d4f359a13c577`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d795448ea05671582d35b5c7817a2643795b6d72fc4bc7f15fd64a04d3e94b`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:657af736ad99dd62226285bf1db1b99a7a9ca4a438913585665f3024f890a795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 KB (259885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939cec50d5b70b05d8ca35245315a4b409a8782180daf97e3be10460248b0868`

```dockerfile
```

-	Layers:
	-	`sha256:828a4dc4d650c3f10d7b60c2330dc3c0a2396bdc1e1c3f7c760c835d5ea8ef0a`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 245.6 KB (245560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b07f1fa18b67f4738a84b71f71e620e153f56051c5325a3443fcda6c1bda73e`  
		Last Modified: Wed, 21 Oct 2026 22:55:36 GMT  
		Size: 14.3 KB (14325 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm variant v6

```console
$ docker pull registry@sha256:964acd67653b77105d6f6533604aba56808d1c68d400943fd3af95ffecf516bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19091608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20537467f347f5de4f6595e9c68b0f53087889a296201f8ff79a9e0f20ae8903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:48:53 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 05 Nov 2026 18:48:53 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 05 Nov 2026 18:48:53 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 05 Nov 2026 18:48:53 GMT
VOLUME [/var/lib/registry]
# Thu, 05 Nov 2026 18:48:53 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 05 Nov 2026 18:48:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:53 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58185ca79f1a886ebb840f0948ad798bcf8ecdc34fa6a6ab449f1a684b395e5`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 245.6 KB (245565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d603184b4df2561e2a57c910be03eb7052a1106ed9f694fccc88a5cc350981`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 15.3 MB (15287031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78974351d49b4593abbef3418ca9b39898f5691c949545883314c43701514ff5`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e738e790be8b1e1d9e4aa47328a84723c768ed52359d250a0fb9e0a2997088d`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:f1da5aeccd80420da7941bbc5b087fb916297db4a870898b3d00dc8150debdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4953d21cb75d806b4592a2121a64f643c9710d998848db7d5e58dc1c15ce00a5`

```dockerfile
```

-	Layers:
	-	`sha256:7e856bb0594eccd221345fdfe94804ca36ff29f1b030b87e04681373fca08287`  
		Last Modified: Thu, 05 Nov 2026 18:48:58 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm variant v7

```console
$ docker pull registry@sha256:d36868ce5f652a758ca5801c539f8c392f58d225836b90baf2afb327839c0ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18789612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be3f50e9e5c8547b02915b0bd93f1451ff16935d036163723bfd5010f43b42a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 05 Nov 2026 18:48:15 GMT
VOLUME [/var/lib/registry]
# Thu, 05 Nov 2026 18:48:15 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 05 Nov 2026 18:48:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:15 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b852c2d6183156ff5a35236afa63ee5a082b1a3f0908f4bab961fc00903bb70d`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 244.5 KB (244522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521088b1be5878f9cb9e1eeeddf41afb407f1412d4eb7ad069ab113941123a02`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 15.3 MB (15276746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477bcd92e49f689fef03467e5230d4d6d3e4a1599311a06b813d86fec5129ca2`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6afd19f08a353f16698d751df2600dcfe014006ab0b2cb3e34b952f987b07f2`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:8dfdccc03c62b534e792df0b09d64ecd1659c631469ed2bcfdd0d36a7618a313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 KB (259364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313cea27dac9e47a46ca6f1441aafcfe24d4fc04ca5551f34a03b0bba5e64709`

```dockerfile
```

-	Layers:
	-	`sha256:f831ff1531d75df168b0472ebe1f8ee3f3562aefbc56366203214e1376054071`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 244.9 KB (244946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047a0f26dba0f49bb37b2463c953296db6484aa79a2fa1a3516b4bc545ec5102`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:271591ba794f68af935b71c1c7c353e6b9b242d6a4a7ee1b3e1c2f1b290dc341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c922d46158ce6e7d062337afbef4367aa80e2601de34522171ad8de06fd5b87`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:18:42 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Wed, 21 Oct 2026 23:18:42 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Wed, 21 Oct 2026 23:18:42 GMT
ENV OTEL_TRACES_EXPORTER=none
# Wed, 21 Oct 2026 23:18:42 GMT
VOLUME [/var/lib/registry]
# Wed, 21 Oct 2026 23:18:42 GMT
EXPOSE map[5000/tcp:{}]
# Wed, 21 Oct 2026 23:18:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:18:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:18:42 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d1c2a161c8b7d298355e30f8b910fc428de0788ad0e06a0568f19657ca1fea`  
		Last Modified: Wed, 21 Oct 2026 23:18:49 GMT  
		Size: 246.9 KB (246913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff607904e38cfc3c9fb8479a69476ed8434da69c5b86d9d0285a8a31e64d387`  
		Last Modified: Wed, 21 Oct 2026 23:18:50 GMT  
		Size: 14.7 MB (14703890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb1e6653015ada20e98b4a69c2f6ae86a5df39ce60e065571a24356af7828bb`  
		Last Modified: Wed, 21 Oct 2026 23:18:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953411d61b30f85fcb715fe871849b792274eda43a0591f9a1d4d32e675cc1be`  
		Last Modified: Wed, 21 Oct 2026 23:18:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:d5c12b396cfe8abb50bcd8c4746a1426e2acbccfb7495059bda94d586848a2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 KB (259410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8a415f5b608d3467a025fac2fc234647e4d00c1c5534aa9a4dd88d5656535e`

```dockerfile
```

-	Layers:
	-	`sha256:f19b670b49c3bb4de0d6fc265551607416ab5f8376c9878eaf39b6d7b7fe743c`  
		Last Modified: Wed, 21 Oct 2026 23:18:49 GMT  
		Size: 245.0 KB (244966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca5c35b402835ac9b257d314b5232a184fad7dcc945779015faaa78291e09dd7`  
		Last Modified: Wed, 21 Oct 2026 23:18:49 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; ppc64le

```console
$ docker pull registry@sha256:f9f6b13b0ce31fb0e33d0c62a6a15a4b29e5206296e627e7503486527a70c6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18733217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2482ac505ff8f8e4997533e01c9cb834f45a1bc36ecdbbe456d6c58a21e4082`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 22 Oct 2026 13:35:55 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 22 Oct 2026 13:35:56 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 22 Oct 2026 13:35:56 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 22 Oct 2026 13:35:56 GMT
VOLUME [/var/lib/registry]
# Thu, 22 Oct 2026 13:35:56 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 22 Oct 2026 13:35:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 13:35:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 13:35:56 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4eead14bf3d4f7a66f84c6915e8187ae0f33d9627caa11c61ddbee603edbbd`  
		Last Modified: Thu, 22 Oct 2026 13:36:32 GMT  
		Size: 14.7 MB (14664431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1ac06723d8c9a3850add8f0e4cad8abab07d0574b1ec10f6999435741d821`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b060d6d7d408ff24ed19d4f13f67a45d2367763fec9547b170551a3c0c2362f0`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:fa349ce9009d06d3e30a2ee35d051f899e4e1ceffc7a00c828569ab519d12bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 KB (259314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1c254f59d7f0ce135137811441c88481507074dfb3b8a72c64222a7643e480`

```dockerfile
```

-	Layers:
	-	`sha256:e767b1fffbd364e9e0d559aacb3bab1e6b52eb574c46ae60ecd6f770a23bcc5f`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 244.9 KB (244943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96da156e7dbeffdcd0b0977fcb7dc22a2c71bdb9209974c22e24f51c4dcbe424`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; riscv64

```console
$ docker pull registry@sha256:e4b60384a8bc8ec43aa5ae458c836eca670b21fb3cd40610b2a5d8cb320b518f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19310317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5957412dbe680ece12c2d59fac8632ab23828d4e825d6f58bf65e71a95809d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 26 Oct 2026 13:36:34 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Mon, 26 Oct 2026 13:36:34 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Mon, 26 Oct 2026 13:36:35 GMT
ENV OTEL_TRACES_EXPORTER=none
# Mon, 26 Oct 2026 13:36:35 GMT
VOLUME [/var/lib/registry]
# Mon, 26 Oct 2026 13:36:35 GMT
EXPOSE map[5000/tcp:{}]
# Mon, 26 Oct 2026 13:36:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 13:36:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 13:36:35 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5163a40aefdc4cd0b1b0495b27ea49aee8a180a9a3e3c0f9b6677b1f761f40`  
		Last Modified: Mon, 26 Oct 2026 13:37:57 GMT  
		Size: 15.5 MB (15484178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd78718bee0e8efeca01120f23f810fd68e325b469018bf184d5aed42c257d`  
		Last Modified: Mon, 26 Oct 2026 13:37:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3e5d8fa979277eec8a99983db79080a47611b83d54335bfbac3553ac128968`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:09be0417122c49450fa8ae8d2ea6844124374e3134c0a5ffb2f35c88c36385f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 KB (259310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b002275b88bee31b37000e39a9f810445ea5697369f2f1b1532065845a8dd9`

```dockerfile
```

-	Layers:
	-	`sha256:65ddf3e43f69225ce2f0cb99ab2f309d562896b630c7c8eecc737a9d6787f57c`  
		Last Modified: Mon, 26 Oct 2026 13:37:54 GMT  
		Size: 244.9 KB (244939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9539325cfcaa8d28a30359c3ef82ef327ba8dbeef9ae7f3b33c8d9f2c0c15c6`  
		Last Modified: Mon, 26 Oct 2026 13:37:54 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; s390x

```console
$ docker pull registry@sha256:ba491aa0ef66fc6b3ecb434573330bb8528f6e290c0c5ee6e7a472e7586f2b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19819416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a22407e019a69c5a7216ccd49de1e9542d40364a7210481b0ca75f09084b8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
ENV OTEL_TRACES_EXPORTER=none
# Wed, 21 Oct 2026 23:39:41 GMT
VOLUME [/var/lib/registry]
# Wed, 21 Oct 2026 23:39:41 GMT
EXPOSE map[5000/tcp:{}]
# Wed, 21 Oct 2026 23:39:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:41 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fd7dcca33812625757578d9ab3e79b35fb3979855670b27bdcc3bf11f98ca9`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 245.6 KB (245569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5193df16c922e7ee837097c71cf0f0ce434a7e113dc2d03ebecf8e20e03bc5ad`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 15.9 MB (15853526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6e3cf0f0cb99bbddd25ce2bf18ef6eecf6119d891b3830a9913414f76ea16a`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bd90081001ade3e1f28c08c16f8fccbec485c85193b9e3d513cee8ac0eac41`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:e2a46f4edbf74e8905df354e13434a3bf06c235bd30944d09a9184d189661404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 KB (259997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a4ce67580917b06c213860992645fba55aed417b392da7bef8b53625786ece`

```dockerfile
```

-	Layers:
	-	`sha256:88b78e29d830bf13f6aff180b0a7c5a54d53baabf3013c2550623687c380de44`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 245.7 KB (245673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a36d9971a969cd48e6a779984edba97686352f0ef6086de7008373e524c3e553`  
		Last Modified: Wed, 21 Oct 2026 23:39:53 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json
