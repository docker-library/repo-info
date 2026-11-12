## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:1e60f0035a05878c9a61cff1a21594c7678aa64ee323d6f34265b73c17f461fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5e923abf4441e07251dda7000d647ac88ddddff6ad0c3593e6c2bc0be17ea3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191446089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad1d9e1ed7f3a4192db95c0f657eb7a4ba347631cbcc7f9b93eb8cfaf38c41e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:51:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:51:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:51:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:51:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:51:45 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:52:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:52:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a852742e5a35b59a03fb7cd032285f4b7de00fcff7a02ad5d2bdc37d14e8a1`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 92.6 MB (92598898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba6a23132942f2043c4d8122ccfe8ddb9ec6a978df7815af3a2ed29b795c2d3`  
		Last Modified: Thu, 12 Nov 2026 00:52:22 GMT  
		Size: 69.0 MB (68989512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bdccf84c8f5625dcfc82a02c4c62b8bccd4990249c3ac28697744795e5182a`  
		Last Modified: Thu, 12 Nov 2026 00:52:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271d66d2659e9cb4eb1e75c68505c3155e0693181dc527eda695a2eff923ad8d`  
		Last Modified: Thu, 12 Nov 2026 00:52:19 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:59280eb69c090f499d83a3d3c7f5f1f740fff15da653b63fe689b004743dd8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bf9bf668fd3e3de6623e4dac5a200eae53e4b64dcee6b810fd3ac251c72669`

```dockerfile
```

-	Layers:
	-	`sha256:674c5eb54d08ee416d13e20f3597d2b586d27745652b143352ca44a88bf8ad1e`  
		Last Modified: Thu, 12 Nov 2026 00:52:19 GMT  
		Size: 5.2 MB (5230141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf2a25c0c51327d842006acb3283f7c95fc8ac2b3b1dec270c0912591744e123`  
		Last Modified: Thu, 12 Nov 2026 00:52:19 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:726cfd318d38606caac804daaf9c0093e880be3a089fdabebd14330013d59331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190546478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35799b5ab99f1353dfb15be34b398d60c83e010ba8a66c8ea23cf4ab3662561`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:40:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:07:03 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:07:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:07:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:07:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ebbb31ec9873eaf7152bb630958c6dca7e25febd4d22c1e9cf9cd892689a1`  
		Last Modified: Thu, 12 Nov 2026 00:41:39 GMT  
		Size: 91.5 MB (91525610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7c505ff453ba9658ab918e60fa42f01ba0aee1ba2859d44a27c20497ed17e8`  
		Last Modified: Thu, 12 Nov 2026 01:07:37 GMT  
		Size: 68.8 MB (68805284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d2d5beaed195e5559489ce3e2defe223405221e267d8e5c340d16b461d0bd5`  
		Last Modified: Thu, 12 Nov 2026 01:07:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365bd8de510d25ee364f1aa1386aecd6ece62eb952b2ef26ffeacf62c30cd2a1`  
		Last Modified: Thu, 12 Nov 2026 01:07:35 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:336dd20b6c8cd8bdf84545ff5c7c3e62a02ddc895e99ccfcda2827120d879d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465bdd0e751419409b06ac745bf6330a3036f736c17393f3a0738d5a1cc54035`

```dockerfile
```

-	Layers:
	-	`sha256:87bd6436478c847bb875ce603e06de13a43a7616c3c537c1bd11d8182e92d564`  
		Last Modified: Thu, 12 Nov 2026 01:07:35 GMT  
		Size: 5.2 MB (5235923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c8c3ec02c8cc2ffd4527ee87a75f991647f4319ee6e7591d782cfd1421e0f3e`  
		Last Modified: Thu, 12 Nov 2026 01:07:35 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f7e09b619dde52130cb79fff005c70d43d8c94929f8ffc18ee451346328de04d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198199449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de392251277c060048f674469f8d1257213e6e1c58e0413891e3a44d4b5438d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:07:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:07:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:07:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:07:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:52:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:52:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:52:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb107ad4aab0d839191f5d20438fae2bc20bed304c2176a95bc563270b24d6`  
		Last Modified: Thu, 05 Nov 2026 16:11:42 GMT  
		Size: 90.1 MB (90111671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb158acc1e208c0f0786d0979896b56cecc32bfd8b82a94956738516ab2ef66`  
		Last Modified: Thu, 05 Nov 2026 16:13:28 GMT  
		Size: 74.4 MB (74418589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7bf72c0c8da33ccca2ddfac99640aa14ce7147db9a3abbcd1dbc0fb0ad78b7`  
		Last Modified: Thu, 05 Nov 2026 16:13:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b678ac28ee18f3d011727c95d0574e76d31945d3ec584cdc4233f53f7cbd3266`  
		Last Modified: Tue, 10 Nov 2026 02:52:29 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:670b205146dc14c45f78daa8f72abf90c545779c423f8c10e836495e2d2642f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a7d03c9889e239cb5fd157a34c01f6918b30d77a9f36cf20018a66ced04150`

```dockerfile
```

-	Layers:
	-	`sha256:e402b00ec8447bb38e55b55d2a28de02425adef6c698d0a8024d992c403e22d9`  
		Last Modified: Tue, 10 Nov 2026 02:52:29 GMT  
		Size: 5.2 MB (5215975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2810ed99fcab9e37013d4109d0cda88db21d9a4908484ef50f62494c5a807ea2`  
		Last Modified: Tue, 10 Nov 2026 02:52:29 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
