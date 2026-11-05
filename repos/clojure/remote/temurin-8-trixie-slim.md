## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:aa46023c16f5c548438a1bd6c8a6eae8343e3b4eaff2ff8676a9c4bcbba53b86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:81f1a3a86b57637d47a03c333d8a5cc74172f70f19087dcd4c369f15f4df10ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154038397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf917c2792ff15e872d2655d62ec4e4080fba1be699b5b9234a4afb2db7506e8`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:06:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:06:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:06:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:06:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:06:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:07:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:07:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:07:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af51c14bc62344dca8411156644d2dae4d0fe5ddaeb1e8611061ef363a094cf`  
		Last Modified: Thu, 05 Nov 2026 08:07:21 GMT  
		Size: 55.2 MB (55192248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2914d1d9b59068830759eeb18a6e6c91d2a7bbc74d7d2710b7f47adc43721bde`  
		Last Modified: Thu, 05 Nov 2026 08:07:22 GMT  
		Size: 69.0 MB (68989371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435afa1181eeb5e44d6f5614ed329576324e5b0b7b77b2178689eceec43357ab`  
		Last Modified: Thu, 05 Nov 2026 08:07:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6aef28cf0d627fa51fc39d68fd46b9656c8eed7f359db6d4ab7f49064f354da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd925e4b712ea553a72e1adcbab77773f5c7992e68fb730da549ee0acf02fb2`

```dockerfile
```

-	Layers:
	-	`sha256:d931016b7d09a7bdac103c0c9e106e7b7dfad3c1643b579c534314347e109abf`  
		Last Modified: Thu, 05 Nov 2026 08:07:19 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bef9f440fd204eaf5781a852fcae4c0bc53b3732bbbd0e66cc4259bcecc8b7a`  
		Last Modified: Thu, 05 Nov 2026 08:07:19 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:714ad9010535ca6b2393c4f2a377fba5ea41e88d696ca06d00494ee72cb6b655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153274008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3cb7faabd185054baa890e2741c5926471845a88d8c4f2dcc441ae095fc581`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:15:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:15:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:15:46 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:16:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:16:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:16:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edc55224307af68f1f1c5fa6c592bbea39cd8b3d322b1dd8415166dabec1147`  
		Last Modified: Thu, 05 Nov 2026 08:16:22 GMT  
		Size: 54.3 MB (54254291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84e06ed7190860a4225ca2353092271fa8c93b93f0780f346ba6031b52da212`  
		Last Modified: Thu, 05 Nov 2026 08:16:22 GMT  
		Size: 68.8 MB (68805034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ca817acc3aa8cfe6f9e8010677abdf1a1e62cfabc9386c44247e06808d4eb7`  
		Last Modified: Thu, 05 Nov 2026 08:16:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1718b7257a569d10b6ab6a9c982d42cf1b6d5a848d03a0be212cbb6733f27e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc78573ed9d31aeb5b5ced4f25a639aee14339513f058fbacb1090e6f0a6c447`

```dockerfile
```

-	Layers:
	-	`sha256:2638e2f35e1dd19a30f26200a8075c627fd929a1013a4fe9121cfa430e2d2c86`  
		Last Modified: Thu, 05 Nov 2026 08:16:20 GMT  
		Size: 5.4 MB (5388880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:587c24ebf8dd390fd0e7968513924fe92f2c6811991c3ddb8abc9606a50e4943`  
		Last Modified: Thu, 05 Nov 2026 08:16:19 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:72ace5768345e949c931bb901c18aafddc8b086445ac5974dd41c614b9a7860d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160752603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80b45c84babcdb2aba44bd889d72701da6aebae7faaba93fdc4ab7a450a1541`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:32:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:32:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:32:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:32:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:32:47 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:34:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:34:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:34:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f730b252d5aae89a2715f2539cad7463d605d7c3ac9f326cfaa3b460bc0be20`  
		Last Modified: Wed, 28 Oct 2026 09:35:15 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b7e41bbb09df251d685113ca1cef1f267e31bfede296254c4240057a9eb2f5`  
		Last Modified: Wed, 28 Oct 2026 09:35:15 GMT  
		Size: 74.4 MB (74418577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1212bc99449e3e16220c4b542d2d4b8d9029350bf2ca264e942bd533ad8b3a60`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:68cb6545fb044b277bfd75afa7edb847d156755764941c21284090523d550e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2dcefb60e12cf5e88a88280057f2b078879d9a1e1c0d8da0bb337a47b636b7`

```dockerfile
```

-	Layers:
	-	`sha256:d3d965a754cb289ae5b8a8ce9b9b087490e5d5b1f05dd17751c927ee35348b7e`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73d9305abb3118bd8456b949b8490ba14a84f83f89bb16fee2ea3997746eb83`  
		Last Modified: Wed, 28 Oct 2026 09:35:12 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
