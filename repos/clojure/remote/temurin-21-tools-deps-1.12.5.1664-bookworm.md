## `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:04f6bbd62fc7a107293c259ee5f92842c68342abab2cb3d00316ebc4c20c27e3
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9d227d3bc6f0e84ec87ef48cfac6dc900ce037dc2764c26ad6862f9cdb0194ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284782034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e23b3b5a7b27ad961d34922688bef1d92bb4122bd4eff7bb74376ca0030037`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:18:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:18:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:18:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:18:24 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:18:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:18:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3acf9d5d3279a19259026b88163433cd45a4517aeb99cadfc1f75b82bb68740`  
		Last Modified: Fri, 21 Aug 2026 19:19:06 GMT  
		Size: 158.1 MB (158120290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabcb48adf7367613aac1b5895f323c347b40586972d80c2c1462344505abbf2`  
		Last Modified: Fri, 21 Aug 2026 19:19:04 GMT  
		Size: 78.2 MB (78163614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c74216c6e981c6cce456c347793f35a4a7fbf2b104239a1eaab6c90cb26eab9`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ce9c86b73d4d4eb81ca3fab0ee9d3e38e35790dd587885c3e21a9b3f1dad0f`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:564257b8b0512f1f349f7aa9f80d7b5a64e7c61cc615536457f8c0f9210b5970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4234070eaef923c7511a8369fa731bd15ef048edcdd0033c70c1b24c7dd2a9c5`

```dockerfile
```

-	Layers:
	-	`sha256:eb4e2991e1c1b33a717ae71d7129b2795aa470fbe668429a6d76d758333bc05d`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 7.4 MB (7383907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f6a56abd2f2ef7635b8fdf57956a0ee54a7e9d91085e2cc7ef22c919c2fcef`  
		Last Modified: Fri, 21 Aug 2026 19:19:01 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:59703a88710ea30740ab4ebb5ba241fe6a574c8a3ab482302981bd10546507fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282932609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0b769b3fc23b659b1f9d9dec6267d0a21ae82e6727b1771a40095b2116a2aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:06:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:06:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:06:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:06:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:06:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:06:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:06:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0f17f609b3d2677a822ad72e21ec3cf358143410e953abb9bd0d046ef4fdee`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 156.4 MB (156401935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d25e55c3cc887ca98125adbe25e59d86a7e1f455ea93877b64e558bad5c549`  
		Last Modified: Fri, 21 Aug 2026 19:07:03 GMT  
		Size: 78.1 MB (78146253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a8b8120086503a9d00487dc64174410c21325102637888d286d7a7ae62af6c`  
		Last Modified: Fri, 21 Aug 2026 19:07:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60013b9cd27351a4d8cd213766ca67eed0273ef02df1fc85a60f8e185b41a06e`  
		Last Modified: Fri, 21 Aug 2026 19:07:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7524a9d4681cb8c9f80648b0fe6fdcdeef0b3ae3cb17f0f2f98da3792d7969c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7406452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4600b21dcab784d92ae071ede098f46a93d39cdd6ce7006a23fbd771aa27b0`

```dockerfile
```

-	Layers:
	-	`sha256:ad24eebed86ef6f74ee3e968e9daf4a0b015da776f72d631551b2117b4c311c6`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 7.4 MB (7389694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5ed0c39dfd0071602b10fff2f64ee14cbb0da2a7525bade9641897fb377d833`  
		Last Modified: Fri, 21 Aug 2026 19:07:00 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:64a69f3ab603ebec96f5f5974d3a4d9c3e3a0e67ca5ea725a698a3435ac3e420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294664127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca75f4becb02388a171374da9965774d5250ee6f60c41ac7595efa5f8abb928c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:17:12 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:25:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:25:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:25:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:25:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:25:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0c7008fc73cda87986c45f144a1687dcded88fbaa0b8786b7366fcf3e8ce03`  
		Last Modified: Thu, 20 Aug 2026 01:20:34 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5298448cfc36cc2aa816bad26f75a354e448f820b75aaf0b0fd5d9ff038dd62`  
		Last Modified: Thu, 20 Aug 2026 01:26:27 GMT  
		Size: 84.0 MB (83978334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b24d7dfbf3a92a07ead42216a1e8f1cc8ebdbd8ed1b2f09b2cb626e6e075c`  
		Last Modified: Thu, 20 Aug 2026 01:26:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103e06a89a054b8dcd1723b5794ea27519d89e2d16fd384b3518971a53891f1`  
		Last Modified: Thu, 20 Aug 2026 01:26:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bafc857a8656db80beb3ad2cfc9a083317f2f8829a23c28d5a9bfb83d9eb8383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28077dfe96d9d01b45bd0f6eb6852cceecb8ecdd966441d6d2b83ed951495571`

```dockerfile
```

-	Layers:
	-	`sha256:cfa80954a1efd7b064f5a50b50327ef0fd11a49930b0c13ad8e3bb2e9c297c68`  
		Last Modified: Thu, 20 Aug 2026 01:26:25 GMT  
		Size: 7.4 MB (7389137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:058f99bf2ac2f30741e26a13946c3ca5ba0ebadae47b56c981eede55d2b6c43d`  
		Last Modified: Thu, 20 Aug 2026 01:26:24 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - linux; s390x

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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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
