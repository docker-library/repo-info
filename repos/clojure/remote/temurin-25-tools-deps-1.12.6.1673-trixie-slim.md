## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:0b74d63fcd7cd41b90f7c52025ca129f8a78d71b0606ada68ac2dabaa9a0ef81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0ffcb8ce8ef499c0bbdbb2ecf4848f7aa661cb9e7c7c39cf0bb26aacccdff623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191445965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d3d910df6e6500656e39fe336dc4fb0a9b60e13eec8acf852f1e8803b0d4cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:42:50 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:43:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:43:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3b6e40353ad5473b47f9a6b544853f14eafc4f5356ef48758acffe58dd8f8`  
		Last Modified: Tue, 10 Nov 2026 00:43:29 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001edd1b14eb6b3ca2f780a56f32817e9b1d17225aade4f0ca1b3ee622ae288d`  
		Last Modified: Tue, 10 Nov 2026 00:43:28 GMT  
		Size: 69.0 MB (68989423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a60f9ac539528ce39ec86006278ef5a3cb759ca392ea810afb637ed81d4fa1`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4c9434a1571eda3e79a98a7b4ff3ccf9e5551c88b65eb627773365ef6ec5e4`  
		Last Modified: Tue, 10 Nov 2026 00:43:26 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff3f646c8f44312b2ecc04b323d9d04d5b18fbfaacd9de5132f9e4c1869af663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10471d286fd03f9bb8dba84dc6ac6aecec2a00ec33d791e1e8a94a93a8e1166`

```dockerfile
```

-	Layers:
	-	`sha256:ce3f1ce852e02c3d943c0046c27d19224a65be28a05342972f6af1c9ab34bc95`  
		Last Modified: Tue, 10 Nov 2026 00:43:26 GMT  
		Size: 5.2 MB (5230141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc31d166f7aba9d817cf2bc2c9d927e8a9d89a3e56512a760398b1f14f79f89c`  
		Last Modified: Tue, 10 Nov 2026 00:43:25 GMT  
		Size: 16.6 KB (16646 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:82ae34ccd0dd4e95d54d3c224c148d458e00834d393161034f6dddd4d8751ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190546293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b900e6eaca1ffdb95464e796b7608a196d83229b48e8baaa62872e12b2ee1b0f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:42:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:42:17 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c107425ac8e07a039455c47012146b73517b733c898ddeedd62f16c02d2fae`  
		Last Modified: Tue, 10 Nov 2026 00:42:56 GMT  
		Size: 91.5 MB (91525604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c8e18b0edbbf639d4f301e9d509c109d5a45fa56534c982ee0eeb82f3e4ef7`  
		Last Modified: Tue, 10 Nov 2026 00:42:56 GMT  
		Size: 68.8 MB (68805105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598bda5379d26e94b094c9f47033bb32e2cf7a1e122a26a2df3e6cc8f16043e5`  
		Last Modified: Tue, 10 Nov 2026 00:42:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26509d1c814b6f1b8478903c9511b11da42984d79dde92b5b655961001e1d0f`  
		Last Modified: Tue, 10 Nov 2026 00:42:53 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a83a318d1751e519dee91e2904a3bba770cb81c62867964bfa6bf81dbc8973ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029724ac1c15b62161b225dfe067b6a02ff03f9d5e3e102c2c2506b0f6f7992`

```dockerfile
```

-	Layers:
	-	`sha256:0f6e3a07de4d5e10214893e28cfedb03c756df2a3975eb4ad633a6df9b3f53a9`  
		Last Modified: Tue, 10 Nov 2026 00:42:53 GMT  
		Size: 5.2 MB (5235923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762cd78c89c97b43c27370401dfee5342e01825be2112ace9a136965691caafa`  
		Last Modified: Tue, 10 Nov 2026 00:42:53 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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
