## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:f6f193bb352091975aae80d36512fb39998f3948fedf2d5d4c1d76a7c2d974d9
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

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9f4a5de6781ad7d0cb7e9ecc1a2272ec331f26717c755d8d7655a82782ff6e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226375771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33fc69661fc79383fad44087142cbf3c723eec87ee4ab1ecb98aa94a9e201e6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:56:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e9ab391fd8d9d9b96a5959ceb5eb8e5b128f4eb1a42cd1737e59e0582269cf`  
		Last Modified: Tue, 04 Aug 2026 02:57:29 GMT  
		Size: 94.5 MB (94524379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e0a287d78311362608e3cc09fd7e5736583e9f182bafa98c6f6aaf847ded9d`  
		Last Modified: Tue, 04 Aug 2026 02:57:29 GMT  
		Size: 82.5 MB (82537778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0ab04a7a19a937e99ac985173e5ee54193523bfdddc12dedd4a07ad0501485`  
		Last Modified: Tue, 04 Aug 2026 02:57:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f84265d9d0bf01cbeeccc28136d7b3ae7fa580419850405c43a06be8458a4ff`  
		Last Modified: Tue, 04 Aug 2026 02:57:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:edf8c8140b5378943ba876e3000b9cc9e3e629e736be22e96c2f279b8f436d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004ebb012cd25b42592d75150f500a8e91694afb09f560502e39e0bf6ef60e7f`

```dockerfile
```

-	Layers:
	-	`sha256:32464b9506262e530046f68dcaf085624fa704f5c3cb325924c6bdf137b7243d`  
		Last Modified: Tue, 04 Aug 2026 02:57:26 GMT  
		Size: 7.4 MB (7433784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da1be606dd164aa5dfa48a7f08370d8cf06f0ec4541dfe4f67b6c810af570c1`  
		Last Modified: Tue, 04 Aug 2026 02:57:25 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b43b78f1fe7f14483c465182f9285e9f5de9a8ca64cae56bd3210b56afb92631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225538771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6abb93c365bc508f27373f16a295eb1c2d623ccbccb885b6ece01205c45b94c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:57:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:57:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61505469408657d1b86ba5703eaba64619157bc260d9740e9a8494fa06b03c0b`  
		Last Modified: Tue, 04 Aug 2026 02:57:55 GMT  
		Size: 93.5 MB (93504363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bb1775133c593cadeda17a3161b7d0bb63081c2d3bfd4093b3cacf5e9c0d39`  
		Last Modified: Tue, 04 Aug 2026 02:57:54 GMT  
		Size: 82.4 MB (82359183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007c6ea7de325b13994d678c8ab4d601a666d577c62205021f7ae12b5f701b52`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dcc4ea37537db849aec69ad7515173c57a377b5b10e8445d90112fd19f4605`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:929b07530570c804af8c65adb45c08ad19fbd8d5553e2916176728d1a530d7c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc89b078a83c4790e43668bb3e7a10b66a4613411f7cba1848707761901dbe9`

```dockerfile
```

-	Layers:
	-	`sha256:98d06dc2df9146d115b969433520fec60222b4e247947c075cf4d189e86a0d98`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 7.4 MB (7440174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83d5a9d932e94430ef585cf1bd7e775106452ceb3ca9ddaee163e58221a2b1c9`  
		Last Modified: Tue, 04 Aug 2026 02:57:51 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c05097075ddf65c473bc3ae2d2ed2b1abbc5d6889aedb80a4990722badf1119c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234983265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d41afe19002c1b16e066dcdecf071a1e050b1f74f5c5b075f11866eefc8f7d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:19:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:19:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:19:30 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:20:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:20:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc9c6bcaa1a78ddac0e660501283e53e0c5705588367702a32e1602bb80f863`  
		Last Modified: Wed, 29 Jul 2026 18:20:54 GMT  
		Size: 93.9 MB (93902028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7586d70a9ceef790724d57a03b3d220a270023a31013a2483fdb30e9ec0f88`  
		Last Modified: Wed, 29 Jul 2026 18:20:55 GMT  
		Size: 87.9 MB (87946181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118d5f014bf557ff6f9ad6b1708d8aff835b48244dab55f9e3e4ed985836cec`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd7832c50aff7ac4f7335f6a473a81f47c34d1848e39d0270c9b214a9f3cce3`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e67f526533cee93af2c9394faa3d1d99d12c6bef185aa942ea7d612cd13a65aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc793ba201e35cd409403f1cb42242b57c35b25aee5024951821df2e526ff4a`

```dockerfile
```

-	Layers:
	-	`sha256:3c959aeaec4c985e324ec016cd12bb77eb0df91718dd293d88a0d8185e55d806`  
		Last Modified: Wed, 29 Jul 2026 18:20:52 GMT  
		Size: 7.4 MB (7422109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e761f844ead149ea2a1468d7493bd20c9b71e24e871e8aa7f0ca5fe2bda73c80`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:8c8cb631145218d3a2d6e2fba9982ae9687805ae813e56d1adde027ca09e5c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223438441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27512c09db8809cc92e9c1eea5b693cf26469826f9fc360a2b690156f30d7894`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:07:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:07:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:07:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:07:55 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:08:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:08:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:08:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:08:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:08:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8f73606487901f1f4c38fa33fac72cd3e45df4ae6f9c0cbc753a87e756b15b`  
		Last Modified: Tue, 04 Aug 2026 03:08:40 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0612536de48c88dc13c53ce183e013be076bfc5adc26cd82f4a0a4b8e2cdf80`  
		Last Modified: Tue, 04 Aug 2026 03:08:40 GMT  
		Size: 83.5 MB (83518700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d42a44bf62f084f2fb938807f12a1897473e90026f4df7eb6e11494703c6f2`  
		Last Modified: Tue, 04 Aug 2026 03:08:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2cc011c186fd7a9c5ede0ef1811d46f9719d6d565ba5b9c8fe8a16d0079423`  
		Last Modified: Tue, 04 Aug 2026 03:08:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:246a67d08f63499617fe311c9c536afbcf24e63c65d720b6ba0e05ffefd5d09d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9339655b02bb990147ddc244fe87208172151bd07f663ffed2ce8c878c713f3b`

```dockerfile
```

-	Layers:
	-	`sha256:52b8a9e92a96cb3da8c2e66fab9fd9a5bf5677cacb781e3ceaaf4bec2870819a`  
		Last Modified: Tue, 04 Aug 2026 03:08:38 GMT  
		Size: 7.4 MB (7414892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8f369b06b10c9fae72641ec877e3b2f90663f9d2a682b0c6cd40f8bd6d924f4`  
		Last Modified: Tue, 04 Aug 2026 03:08:38 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
