## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:341bb3cec0f67b0d456134b5b8fa32693fba9e51428b72544b46b6af78f89462
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:660a27250ae3d2b7f7dca8e03d98be10bdf0b839c06ab85cc82a481c2a02bcfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244710393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1178079bb08089873a1315ba66e1e5c11fb4d80fbf3734e55ae5746447870b`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:02 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00aa3d9db955b6e2ccac23d8076dff22cd0821c219bb259b9b3cc07ad3d50eb`  
		Last Modified: Thu, 05 Nov 2026 08:08:38 GMT  
		Size: 145.9 MB (145864300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbecdca092b0e6fca999e29d5e50f464d19173ec2ad6271515e886369014d1f1`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 69.0 MB (68989315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7ce6a305f73456205cd973604252d4ae280f68fabe905f919699ded04466ce`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:27450e5e9ad218b6e25079726f43264962306e4afcf2d2a8d8157834da781b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b7baa8b9f404d8b525b70985220a0f3c66f69ba6c2fa169934101c9ff365d6`

```dockerfile
```

-	Layers:
	-	`sha256:4285e8bc4e2438267519c89d9b2c38ab6d38c7d924d82f1a854b5a36700885c6`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 5.3 MB (5281581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fcc0bcfaf7d4fbdc0c1026d020770da0ec158c814c9ffe212f18f99868024a0`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d48818bc4b6e60db320a5fab2e3de3dcc726395ca02fb9119f6001364e241e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241596376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc9e91b5c131d3fb2e042579282a8003a975a2cebf5b3a16d8b1f2ceaed63a7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd5f3d1083eb49c0d3167643f407d2d7fea555810194ecdcc0bc2acfc4cde56`  
		Last Modified: Thu, 05 Nov 2026 08:17:25 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0178cc50f8b1b542dd45f57e0d8eb31a4b67e46f81f5fafa394fffe665b040f`  
		Last Modified: Thu, 05 Nov 2026 08:17:24 GMT  
		Size: 68.8 MB (68805097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37d7b3a417c074aae383a76d34016f7f12513192f00b31cb627f06d6cf01798`  
		Last Modified: Thu, 05 Nov 2026 08:17:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f56c223d1713b7cc8ca09180e0703713dadf68debac01d7bf005405a9a8df6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3a22e94f6f2ecf1706c1b4b9bb04af698f0645eb35a6e4842fe1b3fec5532d`

```dockerfile
```

-	Layers:
	-	`sha256:7015b4a2b2ea6948cba7a0dae83aa06ed32a9a98828ac560bea44d9f30c0a6bc`  
		Last Modified: Thu, 05 Nov 2026 08:17:21 GMT  
		Size: 5.3 MB (5287960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2127a2d268c5071ecb30482266263f8fc231e9a2f225b2b1d516d62895cb83a2`  
		Last Modified: Thu, 05 Nov 2026 08:17:20 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e406f954caad503ed9079c6cbbe5622b96c7b27d4f9ff712c39aab755494469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241180426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616a4b5d234e09e5872bf0f6a7b2a279c59be571cd9530ca1a9ba2495b80dfaf`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:39:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:39:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:39:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:39:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:39:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:47:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:47:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:47:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcf9ac01fa8e4c1a4ebb0c0baa3a0f4e3c176e65f797c4a36a15c0a238a8f39`  
		Last Modified: Wed, 28 Oct 2026 09:44:41 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba62ee69d29a306ddda4d4172ec3d3a7a91886544b296dc4732dc4f9f8af3d6`  
		Last Modified: Wed, 28 Oct 2026 09:48:09 GMT  
		Size: 74.4 MB (74418493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf21723f6c7267fd17291fbfb7365e8f0ab5a126c2dd57cebf3e5e6193125e5`  
		Last Modified: Wed, 28 Oct 2026 09:48:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a336d19dae2aa8b246e3fb417979bc27cb24f2912d0dcb9c9a162c19583d8e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5299782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5d1668b888d92fa75896995bc4909b68a13a7e6cdbad5e70fc4dd84fc9967`

```dockerfile
```

-	Layers:
	-	`sha256:e83a4a41559381ab294f88119779bc0dd02581c2f9a627b73f99479a40c6bef0`  
		Last Modified: Wed, 28 Oct 2026 09:48:07 GMT  
		Size: 5.3 MB (5285337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28e9f8e27193f4f020ff3e039a07b1a27adc57b7c9ca6adf90eba6ffc7f911ee`  
		Last Modified: Wed, 28 Oct 2026 09:48:07 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
