## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:9dc787699faf8100853e024413009daccd6e7f319e628aa50fee6b3d76c09251
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
$ docker pull clojure@sha256:f8a5561ab1c23f4329123eaf339b2d23fc4ab4d90d16d837a66b78313d897c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160753603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab39f1114aaeb07f96858549e2cf85bf09594a04bae9aadba62a07f9b51e7b7b`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:23:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:23:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:23:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:23:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:23:57 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:24:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:24:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:24:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc00cc3c9e89c4b1b654d408689916686398a09c083c7ce2362260b3c1a6044`  
		Last Modified: Thu, 05 Nov 2026 15:25:36 GMT  
		Size: 52.7 MB (52667126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8db1cc422001a00a08843598ca54aba3ad7879d17dc2c36f14b9e1f0346ea8e`  
		Last Modified: Thu, 05 Nov 2026 15:25:37 GMT  
		Size: 74.4 MB (74418183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe003bd79a76f01a509136da937df975c4c7d35d34f6ec2f1da1878e290b0d1b`  
		Last Modified: Thu, 05 Nov 2026 15:25:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fe1d5fb992034e080748f0eaecf097e476d0696280d400b6e33357f81e8d571c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53a4c666e54437087a70c7305b7640b3e187ffe366b11e941f11ea40e2e7508`

```dockerfile
```

-	Layers:
	-	`sha256:9a1cb2c17197aeaa8c30c0c429ff56bf73a4b7a9494cde45ccfc52b4aafbe022`  
		Last Modified: Thu, 05 Nov 2026 15:25:34 GMT  
		Size: 5.4 MB (5387385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:844808598bc1bad20257c8680384b280af258437d91a8bd502a0e19d37c524f0`  
		Last Modified: Thu, 05 Nov 2026 15:25:34 GMT  
		Size: 14.4 KB (14428 bytes)  
		MIME: application/vnd.in-toto+json
