## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:e52d9dcdd00faab644b4bd865f94f5372baec535ae325768328540ba256f1568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b8b16a59500bb16a14011f422b685c0f64d58f5879bb384bfb60a92a695e48ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189482435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e369565a5a4ec57ff41324bafe796d2aa307dad14f6e58d974e6d51e8509eab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:04:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:09 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521a4ff239ddf7e07f776d13e8303b6331905db7cfafb20a3fd69b789001e18f`  
		Last Modified: Fri, 04 Sep 2026 00:04:46 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cc3ae3aca30f2a3df118f981b16d927029997c50ede7d1d4de45a9c42d1664`  
		Last Modified: Fri, 04 Sep 2026 00:04:45 GMT  
		Size: 66.7 MB (66684986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab6f3b99242fffa9653687b537293399e7f1966a13e68057b2a6a03cca1c69d`  
		Last Modified: Fri, 04 Sep 2026 00:04:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505db4ade21a134b6144e6a4ba9ae95c1e5e62906e2da9b5b336892db95e64b0`  
		Last Modified: Fri, 04 Sep 2026 00:04:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:96485c31d061d000fdd211fe4bb068f4788d44b0c7d9d4d4c1b86663c338edaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be30a3ee948acbc0225a85758405b463e5867b7b933f0bd94160edcabb6c763`

```dockerfile
```

-	Layers:
	-	`sha256:56e28fdcd10b7d54581475e9113015047653e0fc8be4437eacad90e1ea5deeae`  
		Last Modified: Fri, 04 Sep 2026 00:04:42 GMT  
		Size: 5.1 MB (5084131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f033e018c019b7fe4f6e73e3812126b3c1cccdb6c0de28503530813d3cce46e`  
		Last Modified: Fri, 04 Sep 2026 00:04:42 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c9d119fade69a0883a01ba2af5ae3c03b872b09730e67ff431801e5424dcf386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188343835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a08891ece404dd4e1c4ae09aead3e1d250287a351fdaedb96368818bab3dd47`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:40 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297ccff69c2b377cb96177f83a050c5e19095ca164a799a3c125e4cd9cd3b09f`  
		Last Modified: Fri, 04 Sep 2026 00:09:15 GMT  
		Size: 93.5 MB (93541534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096fe83ab63441431675f466ba177e73e20f981117bba75cdb19ffcaaea3e771`  
		Last Modified: Fri, 04 Sep 2026 00:09:15 GMT  
		Size: 66.7 MB (66683971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183a84744105a9945d672040fed0df34b5e4f1b91b5efeb78c83ccc5b1d7fe30`  
		Last Modified: Fri, 04 Sep 2026 00:09:12 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bdc00500b8c6df27a70f2e82a1932771c324fb0e97b1c3e14113c8f0cef370c`  
		Last Modified: Fri, 04 Sep 2026 00:09:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a1ca68b878a81ed59436b2edb650489c0cf501bbfaf1edd859639402d6cbf7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5105990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcd367b4bb451806da502a437729c47bac2a54a83959220d61f1b806c40896e`

```dockerfile
```

-	Layers:
	-	`sha256:e9b40c8cc32b2481399d22eddb77fe8cde32bffe2d44f5627351dfb746aaefbc`  
		Last Modified: Fri, 04 Sep 2026 00:09:13 GMT  
		Size: 5.1 MB (5089889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48e9ecf53624b233f94a85d5abaa1334bdebd2f4b653aedb5cd48e1abc53ff64`  
		Last Modified: Fri, 04 Sep 2026 00:09:12 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3a1684f7526e4a4ea8110021d12bab148c4043817e1ae30f6db7563ec694141a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197927278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6d2bae0c12746e02962893663216deabdd948d7380c7ffe65b327e6ca384a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:32:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:32:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:32:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:32:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:33:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca4b2377bd7f858a9eaa6c9fb71c0fc3007246e96523f3f7abc3de415ac8e4`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bc2f688e94a8ba60d62c4e6293c681d40291da723b7c5b6b3c5ada0d4c51e2`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 72.5 MB (72498949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf8205c8ba1a63d7e998482fbf5d7c159ef86993dc8a41cf529bcf8967c905`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843c341ee67e761468388d0dd82ce78ffdca7cec6792546ee8fd59b9abc9fbde`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:05b665abc4ac199e7fc9b32a671cc0c6e8c661a52221a831ada5b405598df8ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193ead9eab8d8451553e0dd36808af887b54fe2b34ef9a2f88cf1f48a0e9710`

```dockerfile
```

-	Layers:
	-	`sha256:cc8fc7b58df0f06c4db81e9ba99663c225fd3ca93c6ab9306f4fd5722fde3234`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 5.1 MB (5073225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e246ee1fa1cda284769a0b83fe2d9801c870a9fa8f957fd798c7d9a08a4b9026`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
