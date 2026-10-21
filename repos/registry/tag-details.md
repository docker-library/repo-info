<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:3`](#registry3)
-	[`registry:3.1`](#registry31)
-	[`registry:3.1.2`](#registry312)
-	[`registry:latest`](#registrylatest)

## `registry:3`

```console
$ docker pull registry@sha256:b3419cf99f8ec65bbda73e8a950fd26861012689beaf7b6577ee938995aa7d3f
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

### `registry:3` - linux; amd64

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

### `registry:3` - unknown; unknown

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

### `registry:3` - linux; arm variant v6

```console
$ docker pull registry@sha256:22d5c5046ffcf88093e47b746f64506976beb8faa888c32b5adbee1efb4f16b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19091243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2a853c2175098a42c45d3bf709bcf01833a055d0cf71b2ec1d8f8e1f854a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:41 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:41 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:41 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a528e693d0e91e48138a539664ef94192456e167fb1536bb498cd066f51c4636`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6ca39c05f99a9199948d8f141c12df967ab85ac7c9482ce0a7a32ab4d3b14`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 15.3 MB (15287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45edf101587af1c923d87623dc7ffb993b2be6d7acd984a8eb4912fe73a8135f`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:138d8508820ec240db2c1ef8ed41421d11ec841144f93dc0d88131f2d7febdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579cabe8c9ccc65149f9a24d1f4fef1862b31c533ab82aee321cbf1f8086ed1b`

```dockerfile
```

-	Layers:
	-	`sha256:c57c7018cb78cf009883738f2b9dadfdb67e2388a736b3d4ae32fa527d3f758e`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 14.2 KB (14202 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; arm variant v7

```console
$ docker pull registry@sha256:a8a59990b118b7192853a6efc519c9731df3527f96917cfe1fef900a77f6f8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18790094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2df59f1c8dac5dae31abb8257c5e805eebf10148e0d7c473cb18129b7213cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:04 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:04 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:04 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17df143516b0e15caaf1925016469d1a18b89eb5c2483bc50ad0125db4a7ed1`  
		Last Modified: Thu, 24 Sep 2026 18:01:12 GMT  
		Size: 247.5 KB (247543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27629d5d58a2711e98c041df4a49d1fdb299b1646a13ce039aced91758fd36b2`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 15.3 MB (15276741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b299dc8b66fb6a9a3379d7b587039b8caa81ef4af22ae0264442bda7021b20`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84da0b5a2653711ecf38812d236b03630672e2b53421085b67fec44d9db58db4`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:0f0fe5ad239615c6b76b66a67e8a9180c43002726091ae3ea9cbdd13e515cf55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d1ac1d66c2384356e4c848821ef1220df69788eaca39858cd675ad879c893c`

```dockerfile
```

-	Layers:
	-	`sha256:08167b3740b17d596ba3536f31b0543b1574dc0b06f55f530632b99815dfde89`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 246.9 KB (246883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90dfca6d3cf7afe87ee2ba23e9c59ca99aa131c6f26ac609f856546174407fd`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:3ffcae348822784850e836f23449ff1d0503933524cef57ddcbdbd263eca0c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e07250a39e0baa925c04150f5da69da814fe9ba486caddedf63d164ba21c4e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:02:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:02:28 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:02:28 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:02:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:02:28 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a05d89f4bcc1a0c6e61a1eb5914fa11630418ffe13688b873e5f8f836f6c5`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 249.8 KB (249813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338590ab4760f6aa71480bbf9fe6ebf175f342d10b80970ccec7b3a3459901db`  
		Last Modified: Thu, 24 Sep 2026 18:02:36 GMT  
		Size: 14.7 MB (14703886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1738ec942b04397fd2b669b66e1f506cbe695e546afafd787578a0a08bc7708`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed65fc2d44363aa309c9d5c592989ff0233f351fb3dd53a97c94f7f775dd4641`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:ce65bdecdb9430a96b612e2722999e4f03e976aaeffbabd5b1d4421c6cf356b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8459974d7a875546e5a09dc2f17636aa7ca094cc69c64361cfceb45f6fe63`

```dockerfile
```

-	Layers:
	-	`sha256:84e38685bc056bd984846d3a0326f13411e4a5feccd43d6513830ed71aaa6c0e`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 246.9 KB (246903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e9d2910a157e27c3530e91016b3b2dd0943f0b5d9d9ed7f57a2c65d438598b`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; ppc64le

```console
$ docker pull registry@sha256:d7bb67533105a65184dabf0ae9240e3cb2901504c7d3cb6061583e2723e11d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18732804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2773baf7e1cc15d4efef81fdb6c65d17c2f08a6fe76518a05f22ce75f06134a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:35 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:35 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:35 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa1b29ab10b6ff505b55204c6a87a5679127af64a18ee438bce2a62c5728e54`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.7 MB (14664441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248a3ea6d17e382437079ff42ce06e928346558d4591afbbede7c1d8c1ebc604`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:21896fe882044f6a2b603cde709affb463858b072044dd8ff3d01fea2a1e5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109529ae4d85cf4b115530ab4d7e18b66847a5260609f335a1fbb5da15ab68b`

```dockerfile
```

-	Layers:
	-	`sha256:c0185dd97c8507ce53bee61e8cc98a3401658ff402a097ad0ce72552e9ccaf50`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 246.9 KB (246880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949326e9579f66a59ef7342bfd30f54e2a48b7ea37dd3bddbd65835e4298b4e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; riscv64

```console
$ docker pull registry@sha256:1cdc6dc6cbaf77d125cd97f5e32e3a0d0e373f813a48590ce7b8aad3a38b79e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19308114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587f2c193b7063a92b35d6a208bcd640cfec46ffcfda1efd6647ddc13e960fbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 29 Sep 2026 00:05:27 GMT
VOLUME [/var/lib/registry]
# Tue, 29 Sep 2026 00:05:27 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 29 Sep 2026 00:05:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Sep 2026 00:05:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1988f60eb4f58b8d830fb50d5e837041305685cd31e272ee1e7a7167dad658`  
		Last Modified: Tue, 29 Sep 2026 00:06:37 GMT  
		Size: 15.5 MB (15484182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345c2d466877bf8ff9da29153298f33d92bf8ec8747fd75f8895b9470f5586b`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a367f1d68502784b0df20bedfa7641888055007e4a2d484b52238bbfd24baa`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:f834eb6e855a34ed16814feb36d6331ff8fbe29e90090a3faa02947cd6547845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 KB (261247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973a22f119de94e81f841dda2911845e0b872eff06b62f9bad5fa5b26e1b73a`

```dockerfile
```

-	Layers:
	-	`sha256:0f4d917cf5cd88ec3399cd7e2869f601e0e5e618a17347fd83728dc1fe766ee1`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 246.9 KB (246876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6b0bb536d84c081ce6bbd209631159bef73da4a0cb9441c21fc74c5182c6602`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3` - linux; s390x

```console
$ docker pull registry@sha256:2e75ce47c66e162b45a2311bc441bbe1d9823c17d89e9ad4d096927bc8affdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19818031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b93758659d70ecb0a1ab0874b649cc53f9df14564df1b4f04b0d5bc2159fd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:42 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:42 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:42 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e130df01e7e7fca11e74b9b72b4034c156dc113ce74208b5b8a0ca6fc1ed06`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 15.9 MB (15853514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12084a3704f72e529305a99f2168bdb51ec49cdbf7d543799c26d0cc6472843f`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfd152c61b6768855d4661f1fabb49e18ae8cd74ab9f04a913048392381fce2`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3` - unknown; unknown

```console
$ docker pull registry@sha256:1676d8741b6cbfb5ffc89ab075900713a5450a0826aab53bf4634e28cdeb786e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 KB (261934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27ba8e79c1d730dd914afdfdd34338ba7fc7464fc9b337baf7494a7f62b38a4`

```dockerfile
```

-	Layers:
	-	`sha256:29419e1c446b43964b16bbdcaad7c78e04be74c6fd90c15f24ba4fdf4b1a9df0`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 247.6 KB (247610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c9dd6027ccef2bdda1817d55d0a1e387f11fafb916a568fa1a6af0f1a13819`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1`

```console
$ docker pull registry@sha256:b3419cf99f8ec65bbda73e8a950fd26861012689beaf7b6577ee938995aa7d3f
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

### `registry:3.1` - linux; amd64

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

### `registry:3.1` - unknown; unknown

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

### `registry:3.1` - linux; arm variant v6

```console
$ docker pull registry@sha256:22d5c5046ffcf88093e47b746f64506976beb8faa888c32b5adbee1efb4f16b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19091243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2a853c2175098a42c45d3bf709bcf01833a055d0cf71b2ec1d8f8e1f854a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:41 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:41 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:41 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a528e693d0e91e48138a539664ef94192456e167fb1536bb498cd066f51c4636`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6ca39c05f99a9199948d8f141c12df967ab85ac7c9482ce0a7a32ab4d3b14`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 15.3 MB (15287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45edf101587af1c923d87623dc7ffb993b2be6d7acd984a8eb4912fe73a8135f`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:138d8508820ec240db2c1ef8ed41421d11ec841144f93dc0d88131f2d7febdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579cabe8c9ccc65149f9a24d1f4fef1862b31c533ab82aee321cbf1f8086ed1b`

```dockerfile
```

-	Layers:
	-	`sha256:c57c7018cb78cf009883738f2b9dadfdb67e2388a736b3d4ae32fa527d3f758e`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 14.2 KB (14202 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; arm variant v7

```console
$ docker pull registry@sha256:a8a59990b118b7192853a6efc519c9731df3527f96917cfe1fef900a77f6f8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18790094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2df59f1c8dac5dae31abb8257c5e805eebf10148e0d7c473cb18129b7213cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:04 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:04 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:04 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17df143516b0e15caaf1925016469d1a18b89eb5c2483bc50ad0125db4a7ed1`  
		Last Modified: Thu, 24 Sep 2026 18:01:12 GMT  
		Size: 247.5 KB (247543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27629d5d58a2711e98c041df4a49d1fdb299b1646a13ce039aced91758fd36b2`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 15.3 MB (15276741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b299dc8b66fb6a9a3379d7b587039b8caa81ef4af22ae0264442bda7021b20`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84da0b5a2653711ecf38812d236b03630672e2b53421085b67fec44d9db58db4`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:0f0fe5ad239615c6b76b66a67e8a9180c43002726091ae3ea9cbdd13e515cf55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d1ac1d66c2384356e4c848821ef1220df69788eaca39858cd675ad879c893c`

```dockerfile
```

-	Layers:
	-	`sha256:08167b3740b17d596ba3536f31b0543b1574dc0b06f55f530632b99815dfde89`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 246.9 KB (246883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90dfca6d3cf7afe87ee2ba23e9c59ca99aa131c6f26ac609f856546174407fd`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:3ffcae348822784850e836f23449ff1d0503933524cef57ddcbdbd263eca0c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e07250a39e0baa925c04150f5da69da814fe9ba486caddedf63d164ba21c4e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:02:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:02:28 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:02:28 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:02:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:02:28 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a05d89f4bcc1a0c6e61a1eb5914fa11630418ffe13688b873e5f8f836f6c5`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 249.8 KB (249813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338590ab4760f6aa71480bbf9fe6ebf175f342d10b80970ccec7b3a3459901db`  
		Last Modified: Thu, 24 Sep 2026 18:02:36 GMT  
		Size: 14.7 MB (14703886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1738ec942b04397fd2b669b66e1f506cbe695e546afafd787578a0a08bc7708`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed65fc2d44363aa309c9d5c592989ff0233f351fb3dd53a97c94f7f775dd4641`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:ce65bdecdb9430a96b612e2722999e4f03e976aaeffbabd5b1d4421c6cf356b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8459974d7a875546e5a09dc2f17636aa7ca094cc69c64361cfceb45f6fe63`

```dockerfile
```

-	Layers:
	-	`sha256:84e38685bc056bd984846d3a0326f13411e4a5feccd43d6513830ed71aaa6c0e`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 246.9 KB (246903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e9d2910a157e27c3530e91016b3b2dd0943f0b5d9d9ed7f57a2c65d438598b`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; ppc64le

```console
$ docker pull registry@sha256:d7bb67533105a65184dabf0ae9240e3cb2901504c7d3cb6061583e2723e11d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18732804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2773baf7e1cc15d4efef81fdb6c65d17c2f08a6fe76518a05f22ce75f06134a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:35 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:35 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:35 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa1b29ab10b6ff505b55204c6a87a5679127af64a18ee438bce2a62c5728e54`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.7 MB (14664441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248a3ea6d17e382437079ff42ce06e928346558d4591afbbede7c1d8c1ebc604`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:21896fe882044f6a2b603cde709affb463858b072044dd8ff3d01fea2a1e5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109529ae4d85cf4b115530ab4d7e18b66847a5260609f335a1fbb5da15ab68b`

```dockerfile
```

-	Layers:
	-	`sha256:c0185dd97c8507ce53bee61e8cc98a3401658ff402a097ad0ce72552e9ccaf50`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 246.9 KB (246880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949326e9579f66a59ef7342bfd30f54e2a48b7ea37dd3bddbd65835e4298b4e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; riscv64

```console
$ docker pull registry@sha256:1cdc6dc6cbaf77d125cd97f5e32e3a0d0e373f813a48590ce7b8aad3a38b79e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19308114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587f2c193b7063a92b35d6a208bcd640cfec46ffcfda1efd6647ddc13e960fbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 29 Sep 2026 00:05:27 GMT
VOLUME [/var/lib/registry]
# Tue, 29 Sep 2026 00:05:27 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 29 Sep 2026 00:05:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Sep 2026 00:05:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1988f60eb4f58b8d830fb50d5e837041305685cd31e272ee1e7a7167dad658`  
		Last Modified: Tue, 29 Sep 2026 00:06:37 GMT  
		Size: 15.5 MB (15484182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345c2d466877bf8ff9da29153298f33d92bf8ec8747fd75f8895b9470f5586b`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a367f1d68502784b0df20bedfa7641888055007e4a2d484b52238bbfd24baa`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:f834eb6e855a34ed16814feb36d6331ff8fbe29e90090a3faa02947cd6547845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 KB (261247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973a22f119de94e81f841dda2911845e0b872eff06b62f9bad5fa5b26e1b73a`

```dockerfile
```

-	Layers:
	-	`sha256:0f4d917cf5cd88ec3399cd7e2869f601e0e5e618a17347fd83728dc1fe766ee1`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 246.9 KB (246876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6b0bb536d84c081ce6bbd209631159bef73da4a0cb9441c21fc74c5182c6602`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1` - linux; s390x

```console
$ docker pull registry@sha256:2e75ce47c66e162b45a2311bc441bbe1d9823c17d89e9ad4d096927bc8affdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19818031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b93758659d70ecb0a1ab0874b649cc53f9df14564df1b4f04b0d5bc2159fd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:42 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:42 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:42 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e130df01e7e7fca11e74b9b72b4034c156dc113ce74208b5b8a0ca6fc1ed06`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 15.9 MB (15853514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12084a3704f72e529305a99f2168bdb51ec49cdbf7d543799c26d0cc6472843f`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfd152c61b6768855d4661f1fabb49e18ae8cd74ab9f04a913048392381fce2`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1` - unknown; unknown

```console
$ docker pull registry@sha256:1676d8741b6cbfb5ffc89ab075900713a5450a0826aab53bf4634e28cdeb786e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 KB (261934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27ba8e79c1d730dd914afdfdd34338ba7fc7464fc9b337baf7494a7f62b38a4`

```dockerfile
```

-	Layers:
	-	`sha256:29419e1c446b43964b16bbdcaad7c78e04be74c6fd90c15f24ba4fdf4b1a9df0`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 247.6 KB (247610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c9dd6027ccef2bdda1817d55d0a1e387f11fafb916a568fa1a6af0f1a13819`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:3.1.2`

```console
$ docker pull registry@sha256:b3419cf99f8ec65bbda73e8a950fd26861012689beaf7b6577ee938995aa7d3f
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

### `registry:3.1.2` - linux; amd64

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

### `registry:3.1.2` - unknown; unknown

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

### `registry:3.1.2` - linux; arm variant v6

```console
$ docker pull registry@sha256:22d5c5046ffcf88093e47b746f64506976beb8faa888c32b5adbee1efb4f16b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19091243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2a853c2175098a42c45d3bf709bcf01833a055d0cf71b2ec1d8f8e1f854a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:41 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:41 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:41 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a528e693d0e91e48138a539664ef94192456e167fb1536bb498cd066f51c4636`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6ca39c05f99a9199948d8f141c12df967ab85ac7c9482ce0a7a32ab4d3b14`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 15.3 MB (15287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45edf101587af1c923d87623dc7ffb993b2be6d7acd984a8eb4912fe73a8135f`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:138d8508820ec240db2c1ef8ed41421d11ec841144f93dc0d88131f2d7febdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579cabe8c9ccc65149f9a24d1f4fef1862b31c533ab82aee321cbf1f8086ed1b`

```dockerfile
```

-	Layers:
	-	`sha256:c57c7018cb78cf009883738f2b9dadfdb67e2388a736b3d4ae32fa527d3f758e`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 14.2 KB (14202 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.2` - linux; arm variant v7

```console
$ docker pull registry@sha256:a8a59990b118b7192853a6efc519c9731df3527f96917cfe1fef900a77f6f8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18790094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2df59f1c8dac5dae31abb8257c5e805eebf10148e0d7c473cb18129b7213cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:04 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:04 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:04 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17df143516b0e15caaf1925016469d1a18b89eb5c2483bc50ad0125db4a7ed1`  
		Last Modified: Thu, 24 Sep 2026 18:01:12 GMT  
		Size: 247.5 KB (247543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27629d5d58a2711e98c041df4a49d1fdb299b1646a13ce039aced91758fd36b2`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 15.3 MB (15276741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b299dc8b66fb6a9a3379d7b587039b8caa81ef4af22ae0264442bda7021b20`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84da0b5a2653711ecf38812d236b03630672e2b53421085b67fec44d9db58db4`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:0f0fe5ad239615c6b76b66a67e8a9180c43002726091ae3ea9cbdd13e515cf55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d1ac1d66c2384356e4c848821ef1220df69788eaca39858cd675ad879c893c`

```dockerfile
```

-	Layers:
	-	`sha256:08167b3740b17d596ba3536f31b0543b1574dc0b06f55f530632b99815dfde89`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 246.9 KB (246883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90dfca6d3cf7afe87ee2ba23e9c59ca99aa131c6f26ac609f856546174407fd`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.2` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:3ffcae348822784850e836f23449ff1d0503933524cef57ddcbdbd263eca0c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e07250a39e0baa925c04150f5da69da814fe9ba486caddedf63d164ba21c4e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:02:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:02:28 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:02:28 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:02:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:02:28 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a05d89f4bcc1a0c6e61a1eb5914fa11630418ffe13688b873e5f8f836f6c5`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 249.8 KB (249813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338590ab4760f6aa71480bbf9fe6ebf175f342d10b80970ccec7b3a3459901db`  
		Last Modified: Thu, 24 Sep 2026 18:02:36 GMT  
		Size: 14.7 MB (14703886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1738ec942b04397fd2b669b66e1f506cbe695e546afafd787578a0a08bc7708`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed65fc2d44363aa309c9d5c592989ff0233f351fb3dd53a97c94f7f775dd4641`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:ce65bdecdb9430a96b612e2722999e4f03e976aaeffbabd5b1d4421c6cf356b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8459974d7a875546e5a09dc2f17636aa7ca094cc69c64361cfceb45f6fe63`

```dockerfile
```

-	Layers:
	-	`sha256:84e38685bc056bd984846d3a0326f13411e4a5feccd43d6513830ed71aaa6c0e`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 246.9 KB (246903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e9d2910a157e27c3530e91016b3b2dd0943f0b5d9d9ed7f57a2c65d438598b`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.2` - linux; ppc64le

```console
$ docker pull registry@sha256:d7bb67533105a65184dabf0ae9240e3cb2901504c7d3cb6061583e2723e11d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18732804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2773baf7e1cc15d4efef81fdb6c65d17c2f08a6fe76518a05f22ce75f06134a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:35 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:35 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:35 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa1b29ab10b6ff505b55204c6a87a5679127af64a18ee438bce2a62c5728e54`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.7 MB (14664441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248a3ea6d17e382437079ff42ce06e928346558d4591afbbede7c1d8c1ebc604`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:21896fe882044f6a2b603cde709affb463858b072044dd8ff3d01fea2a1e5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109529ae4d85cf4b115530ab4d7e18b66847a5260609f335a1fbb5da15ab68b`

```dockerfile
```

-	Layers:
	-	`sha256:c0185dd97c8507ce53bee61e8cc98a3401658ff402a097ad0ce72552e9ccaf50`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 246.9 KB (246880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949326e9579f66a59ef7342bfd30f54e2a48b7ea37dd3bddbd65835e4298b4e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.2` - linux; riscv64

```console
$ docker pull registry@sha256:1cdc6dc6cbaf77d125cd97f5e32e3a0d0e373f813a48590ce7b8aad3a38b79e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19308114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587f2c193b7063a92b35d6a208bcd640cfec46ffcfda1efd6647ddc13e960fbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 29 Sep 2026 00:05:27 GMT
VOLUME [/var/lib/registry]
# Tue, 29 Sep 2026 00:05:27 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 29 Sep 2026 00:05:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Sep 2026 00:05:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1988f60eb4f58b8d830fb50d5e837041305685cd31e272ee1e7a7167dad658`  
		Last Modified: Tue, 29 Sep 2026 00:06:37 GMT  
		Size: 15.5 MB (15484182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345c2d466877bf8ff9da29153298f33d92bf8ec8747fd75f8895b9470f5586b`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a367f1d68502784b0df20bedfa7641888055007e4a2d484b52238bbfd24baa`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:f834eb6e855a34ed16814feb36d6331ff8fbe29e90090a3faa02947cd6547845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 KB (261247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973a22f119de94e81f841dda2911845e0b872eff06b62f9bad5fa5b26e1b73a`

```dockerfile
```

-	Layers:
	-	`sha256:0f4d917cf5cd88ec3399cd7e2869f601e0e5e618a17347fd83728dc1fe766ee1`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 246.9 KB (246876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6b0bb536d84c081ce6bbd209631159bef73da4a0cb9441c21fc74c5182c6602`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:3.1.2` - linux; s390x

```console
$ docker pull registry@sha256:2e75ce47c66e162b45a2311bc441bbe1d9823c17d89e9ad4d096927bc8affdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19818031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b93758659d70ecb0a1ab0874b649cc53f9df14564df1b4f04b0d5bc2159fd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:42 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:42 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:42 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e130df01e7e7fca11e74b9b72b4034c156dc113ce74208b5b8a0ca6fc1ed06`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 15.9 MB (15853514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12084a3704f72e529305a99f2168bdb51ec49cdbf7d543799c26d0cc6472843f`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfd152c61b6768855d4661f1fabb49e18ae8cd74ab9f04a913048392381fce2`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:3.1.2` - unknown; unknown

```console
$ docker pull registry@sha256:1676d8741b6cbfb5ffc89ab075900713a5450a0826aab53bf4634e28cdeb786e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 KB (261934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27ba8e79c1d730dd914afdfdd34338ba7fc7464fc9b337baf7494a7f62b38a4`

```dockerfile
```

-	Layers:
	-	`sha256:29419e1c446b43964b16bbdcaad7c78e04be74c6fd90c15f24ba4fdf4b1a9df0`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 247.6 KB (247610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c9dd6027ccef2bdda1817d55d0a1e387f11fafb916a568fa1a6af0f1a13819`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

## `registry:latest`

```console
$ docker pull registry@sha256:b3419cf99f8ec65bbda73e8a950fd26861012689beaf7b6577ee938995aa7d3f
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
$ docker pull registry@sha256:22d5c5046ffcf88093e47b746f64506976beb8faa888c32b5adbee1efb4f16b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19091243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2a853c2175098a42c45d3bf709bcf01833a055d0cf71b2ec1d8f8e1f854a33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:41 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:41 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:41 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a528e693d0e91e48138a539664ef94192456e167fb1536bb498cd066f51c4636`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6ca39c05f99a9199948d8f141c12df967ab85ac7c9482ce0a7a32ab4d3b14`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 15.3 MB (15287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45edf101587af1c923d87623dc7ffb993b2be6d7acd984a8eb4912fe73a8135f`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:138d8508820ec240db2c1ef8ed41421d11ec841144f93dc0d88131f2d7febdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579cabe8c9ccc65149f9a24d1f4fef1862b31c533ab82aee321cbf1f8086ed1b`

```dockerfile
```

-	Layers:
	-	`sha256:c57c7018cb78cf009883738f2b9dadfdb67e2388a736b3d4ae32fa527d3f758e`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 14.2 KB (14202 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm variant v7

```console
$ docker pull registry@sha256:a8a59990b118b7192853a6efc519c9731df3527f96917cfe1fef900a77f6f8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18790094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2df59f1c8dac5dae31abb8257c5e805eebf10148e0d7c473cb18129b7213cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:01:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:04 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:04 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:04 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17df143516b0e15caaf1925016469d1a18b89eb5c2483bc50ad0125db4a7ed1`  
		Last Modified: Thu, 24 Sep 2026 18:01:12 GMT  
		Size: 247.5 KB (247543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27629d5d58a2711e98c041df4a49d1fdb299b1646a13ce039aced91758fd36b2`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 15.3 MB (15276741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b299dc8b66fb6a9a3379d7b587039b8caa81ef4af22ae0264442bda7021b20`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84da0b5a2653711ecf38812d236b03630672e2b53421085b67fec44d9db58db4`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:0f0fe5ad239615c6b76b66a67e8a9180c43002726091ae3ea9cbdd13e515cf55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d1ac1d66c2384356e4c848821ef1220df69788eaca39858cd675ad879c893c`

```dockerfile
```

-	Layers:
	-	`sha256:08167b3740b17d596ba3536f31b0543b1574dc0b06f55f530632b99815dfde89`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 246.9 KB (246883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90dfca6d3cf7afe87ee2ba23e9c59ca99aa131c6f26ac609f856546174407fd`  
		Last Modified: Thu, 24 Sep 2026 18:01:13 GMT  
		Size: 14.4 KB (14418 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:3ffcae348822784850e836f23449ff1d0503933524cef57ddcbdbd263eca0c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e07250a39e0baa925c04150f5da69da814fe9ba486caddedf63d164ba21c4e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 18:02:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:02:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:02:28 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:02:28 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:02:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:02:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:02:28 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a05d89f4bcc1a0c6e61a1eb5914fa11630418ffe13688b873e5f8f836f6c5`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 249.8 KB (249813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338590ab4760f6aa71480bbf9fe6ebf175f342d10b80970ccec7b3a3459901db`  
		Last Modified: Thu, 24 Sep 2026 18:02:36 GMT  
		Size: 14.7 MB (14703886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1738ec942b04397fd2b669b66e1f506cbe695e546afafd787578a0a08bc7708`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed65fc2d44363aa309c9d5c592989ff0233f351fb3dd53a97c94f7f775dd4641`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:ce65bdecdb9430a96b612e2722999e4f03e976aaeffbabd5b1d4421c6cf356b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8459974d7a875546e5a09dc2f17636aa7ca094cc69c64361cfceb45f6fe63`

```dockerfile
```

-	Layers:
	-	`sha256:84e38685bc056bd984846d3a0326f13411e4a5feccd43d6513830ed71aaa6c0e`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 246.9 KB (246903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e9d2910a157e27c3530e91016b3b2dd0943f0b5d9d9ed7f57a2c65d438598b`  
		Last Modified: Thu, 24 Sep 2026 18:02:35 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; ppc64le

```console
$ docker pull registry@sha256:d7bb67533105a65184dabf0ae9240e3cb2901504c7d3cb6061583e2723e11d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18732804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2773baf7e1cc15d4efef81fdb6c65d17c2f08a6fe76518a05f22ce75f06134a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:34 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:35 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:35 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:35 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa1b29ab10b6ff505b55204c6a87a5679127af64a18ee438bce2a62c5728e54`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.7 MB (14664441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248a3ea6d17e382437079ff42ce06e928346558d4591afbbede7c1d8c1ebc604`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e2b207600bdb5c767f70b78afd96a12b6ee6c48c5f3b6082817dd35c09e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:21896fe882044f6a2b603cde709affb463858b072044dd8ff3d01fea2a1e5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 KB (261251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109529ae4d85cf4b115530ab4d7e18b66847a5260609f335a1fbb5da15ab68b`

```dockerfile
```

-	Layers:
	-	`sha256:c0185dd97c8507ce53bee61e8cc98a3401658ff402a097ad0ce72552e9ccaf50`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 246.9 KB (246880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949326e9579f66a59ef7342bfd30f54e2a48b7ea37dd3bddbd65835e4298b4e1`  
		Last Modified: Thu, 24 Sep 2026 18:01:52 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; riscv64

```console
$ docker pull registry@sha256:1cdc6dc6cbaf77d125cd97f5e32e3a0d0e373f813a48590ce7b8aad3a38b79e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19308114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587f2c193b7063a92b35d6a208bcd640cfec46ffcfda1efd6647ddc13e960fbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENV OTEL_TRACES_EXPORTER=none
# Tue, 29 Sep 2026 00:05:27 GMT
VOLUME [/var/lib/registry]
# Tue, 29 Sep 2026 00:05:27 GMT
EXPOSE map[5000/tcp:{}]
# Tue, 29 Sep 2026 00:05:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:05:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Sep 2026 00:05:27 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1988f60eb4f58b8d830fb50d5e837041305685cd31e272ee1e7a7167dad658`  
		Last Modified: Tue, 29 Sep 2026 00:06:37 GMT  
		Size: 15.5 MB (15484182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345c2d466877bf8ff9da29153298f33d92bf8ec8747fd75f8895b9470f5586b`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a367f1d68502784b0df20bedfa7641888055007e4a2d484b52238bbfd24baa`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:f834eb6e855a34ed16814feb36d6331ff8fbe29e90090a3faa02947cd6547845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 KB (261247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973a22f119de94e81f841dda2911845e0b872eff06b62f9bad5fa5b26e1b73a`

```dockerfile
```

-	Layers:
	-	`sha256:0f4d917cf5cd88ec3399cd7e2869f601e0e5e618a17347fd83728dc1fe766ee1`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 246.9 KB (246876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6b0bb536d84c081ce6bbd209631159bef73da4a0cb9441c21fc74c5182c6602`  
		Last Modified: Tue, 29 Sep 2026 00:06:35 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json

### `registry:latest` - linux; s390x

```console
$ docker pull registry@sha256:2e75ce47c66e162b45a2311bc441bbe1d9823c17d89e9ad4d096927bc8affdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19818031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b93758659d70ecb0a1ab0874b649cc53f9df14564df1b4f04b0d5bc2159fd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/distribution\/config.yml"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
RUN set -eux; 	version='3.1.2'; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  arch='amd64';   sha256='40df2224d410f72ae425c3371873b078bbdbda3b8b612be9571f0e6751f3acc8' ;; 		aarch64) arch='arm64';   sha256='09d26f88d2c0f161bd1b8bfc6c123571cc3d291dcca8af5477b3cacc4ec95e73' ;; 		armhf)   arch='armv6';   sha256='4a2e24eb4862e89efa7fc37a2ee2428d07783b70f7a810b1c51495c97c338b4c' ;; 		armv7)   arch='armv7';   sha256='5227ce1aae578c9df6b6e736d44d6b5bcb244d942bdaf0c8bdfe800c08a0067d' ;; 		ppc64le) arch='ppc64le'; sha256='3bee3e9fac37fb182a56f1dba0fc9fa059e598b1ec31049a69c48ed610ff14ca' ;; 		s390x)   arch='s390x';   sha256='907d384ac0b181a84f61aacfc32ed26f6af0e9a7d7877a708a29945f959c81de' ;; 		riscv64) arch='riscv64'; sha256='9bd0f9e3e29ac2429a59729adb866faa0137fca1194a7e0c5eb409dea567cca7' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget -O registry.tar.gz "https://github.com/distribution/distribution/releases/download/v${version}/registry_${version}_linux_${arch}.tar.gz"; 	echo "$sha256 *registry.tar.gz" | sha256sum -c -; 	tar --extract --verbose --file registry.tar.gz --directory /bin/ registry; 	rm registry.tar.gz; 	registry --version # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
COPY ./config-example.yml /etc/distribution/config.yml # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENV OTEL_TRACES_EXPORTER=none
# Thu, 24 Sep 2026 18:01:42 GMT
VOLUME [/var/lib/registry]
# Thu, 24 Sep 2026 18:01:42 GMT
EXPOSE map[5000/tcp:{}]
# Thu, 24 Sep 2026 18:01:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 24 Sep 2026 18:01:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 18:01:42 GMT
CMD ["/etc/distribution/config.yml"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e130df01e7e7fca11e74b9b72b4034c156dc113ce74208b5b8a0ca6fc1ed06`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 15.9 MB (15853514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12084a3704f72e529305a99f2168bdb51ec49cdbf7d543799c26d0cc6472843f`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfd152c61b6768855d4661f1fabb49e18ae8cd74ab9f04a913048392381fce2`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `registry:latest` - unknown; unknown

```console
$ docker pull registry@sha256:1676d8741b6cbfb5ffc89ab075900713a5450a0826aab53bf4634e28cdeb786e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 KB (261934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27ba8e79c1d730dd914afdfdd34338ba7fc7464fc9b337baf7494a7f62b38a4`

```dockerfile
```

-	Layers:
	-	`sha256:29419e1c446b43964b16bbdcaad7c78e04be74c6fd90c15f24ba4fdf4b1a9df0`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 247.6 KB (247610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c9dd6027ccef2bdda1817d55d0a1e387f11fafb916a568fa1a6af0f1a13819`  
		Last Modified: Thu, 24 Sep 2026 18:01:54 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json
