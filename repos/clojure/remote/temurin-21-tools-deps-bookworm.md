## `clojure:temurin-21-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:520224f37d7de1cb480837c0644714df8295dbae763538dc47714ede97b5f0e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:62f0a739996f69dbcb7db800de57d21ee01ac76e807754b456dd44d5967510f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284810250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73396879e4b5d295cfb1f51d7c8e5c0fee2d46a0092822b141413d8aefc4fc8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:00 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55059223b008e82d9262d99422e2931df1ffb6ed78e58aaaa5da1c0a76dff444`  
		Last Modified: Tue, 04 Aug 2026 02:52:40 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c631347dc1dfe5f674eb689e67f1a86b4c3d08fcbcbceaa5af08984e18b0203a`  
		Last Modified: Tue, 04 Aug 2026 02:52:39 GMT  
		Size: 78.1 MB (78144839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80035277beb19ae9c46e83ec5d90539c8330b8e2b734741f988e87aac3e7af41`  
		Last Modified: Tue, 04 Aug 2026 02:52:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d021054b6f7fa87c40a0fbbf5517ec151747570157f5fb30ac08e6a625f14f`  
		Last Modified: Tue, 04 Aug 2026 02:52:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e4467684632fd7a71fe184ace2002486f885d00e07588a6e51464f914942a54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbad5c79ab8366a3d68b83f4bcd86d19fe18a5cd642e9463e4bdadf40fc26e8`

```dockerfile
```

-	Layers:
	-	`sha256:a41e6e0bedcd2fbc6ca33cb78a93a1222423e39e972734b9fbf7dfc429f17134`  
		Last Modified: Tue, 04 Aug 2026 02:52:36 GMT  
		Size: 7.4 MB (7378706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1264fe0a117b4ad66cebcdd9aec591f49f4ca9a81c4d60f37951bce76454e9cf`  
		Last Modified: Tue, 04 Aug 2026 02:52:35 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cda406a750f3f4d8700c0865138e8ae3e5714a3db6e3096c0ec9c02e6595c67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282975288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcacebd8aed92916e23e9c7de8c8e6e2bb9d49b4f98e254ddc0a37290d626555`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da729a0d9b7a31d39964faaaf46830afda3aba894755b650466ef2e0ce99ab`  
		Last Modified: Tue, 04 Aug 2026 02:53:11 GMT  
		Size: 156.5 MB (156461285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e3f901d7bd8e5697e911a30dcce414bcf9077d8b72b09ed030f00a5666a83e`  
		Last Modified: Tue, 04 Aug 2026 02:53:09 GMT  
		Size: 78.1 MB (78129270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e23c03e2570aa4e2a651a25729f78258c48774c187164f8109e980cd3d83d34`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c90a767c3a1e1ad7054fff2447a5f595754b823fb56ea09c8046bab2e6fed20`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:df0316e34f6057ce81379939e97f8dd2bf7013ae14cf07da515963328293d5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a899388ae5782c5cf809befa2ec8312649808e63d3dce90541884db401553e1`

```dockerfile
```

-	Layers:
	-	`sha256:1b9328ffb2d2cdbc63cfb239716145f3a6414dbf1918aebd0da82cd1433d92f4`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 7.4 MB (7384493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7831d03f50491b10c2d2d6f1bad9b2a2099b5fcf8852af4150ae03d910a2a486`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ae8f072f24dac515051070f8b6106ae151105ae4189c4ce3471d85d0cf1456d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294659661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e6040472fc0bc7cae304d3886c1e55582fa4145169746ac951c4f74b0bddc0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:07 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b727e2a5b229d907a08b32277beae55778f2a6ff868bb5df198e48de10ddfd9`  
		Last Modified: Wed, 29 Jul 2026 18:07:32 GMT  
		Size: 158.3 MB (158343201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1d40a1e9e36156aff5a3931af2e4daa3a57f49023b4e7362dbf6b03129550`  
		Last Modified: Wed, 29 Jul 2026 18:07:31 GMT  
		Size: 84.0 MB (83973585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b300dcd7a5c011a6b9dc4f8fe87e9c7707a741d4f6de334f6e38b4f2f9cc8f4`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f9b69661504057de186d22515f4a145e2f1ac112340111e003ce488b372d3a`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e19e4955731dcde0afee783c94568cba2c5a2e02ea0ba618596e2ec414e200d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea788e6df9abf3ec7d491f2f6b0f4fa96f933054b4aa0368048de64a2acab95`

```dockerfile
```

-	Layers:
	-	`sha256:4f5482ad24bce76f74d3189f5255fadb18481bcb6c55adeee941d1a0d9cc7178`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 7.4 MB (7383934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c807289a869ac853a9b5a14983b16c0512963c2c0452a468bc120dfb7da49540`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:eaf8cd300afa9722ec8c089aff9fd3dc6313a7222c78ee0995484ea578f64b81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271482823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abc8a5dec8dca7507daac796fdf3d2b98e15730e66e34662382bf173a2b79f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:59:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:59:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:59:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:59:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:59:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6653bbf3d722cd1a5fdd1f3b2adace166c0fdcbf4ac21164354f40c1d533ca8`  
		Last Modified: Tue, 04 Aug 2026 03:00:12 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819b30553957d892f192a993971d5ff7a8724bd6d1df561b84d4d7b09436e599`  
		Last Modified: Tue, 04 Aug 2026 03:00:11 GMT  
		Size: 76.9 MB (76936141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988279db3429747ad139e59575fcafcd1227f6c1949e1320eade1ccfd6caec87`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a30479c2266a53cb27254d284a348210f74bd6e0744259721361509088386`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fef9981179baa7be0108d5fb724c903afc6b5d85bb4a0401dd28ef751fe68126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb612f93027b12bc78ebcbe42ce2d024db7398d860552717e4f0de6391849c0`

```dockerfile
```

-	Layers:
	-	`sha256:607d77ab40133902ad6abd3206f064535e8ab0b70a349bdf1641462d8b1417ed`  
		Last Modified: Tue, 04 Aug 2026 03:00:09 GMT  
		Size: 7.4 MB (7370025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ef75f269f6ca392107fe485241009c4c1eb7cd862adada83a8d1a7392d4e76f`  
		Last Modified: Tue, 04 Aug 2026 03:00:09 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json
