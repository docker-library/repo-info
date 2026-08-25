## `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:bd645ff8780a7d87e392662e56a29eb1d9127415851b747e21faa3dac09272ba
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f3fa4adb81073dfeeea4e85c6b876b00f9bd674c3febb32d94f16d79e6f428f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244620230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba25d7903adc36e0b0807fb7ccc3aa4aa5bf2c55e83da657866e5bbffc66605e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:27:24 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:27:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:27:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:27:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb936aa70cd934cf13937baff92bd369027a32fa4e20bcf9df863502560ee9f`  
		Last Modified: Tue, 25 Aug 2026 01:28:02 GMT  
		Size: 145.9 MB (145861368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434afd0a07e959cd755e77e4077b002df3c5f074104154d72e3dd548f46205ac`  
		Last Modified: Tue, 25 Aug 2026 01:28:01 GMT  
		Size: 69.0 MB (68965559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb88f0b2ae830893d4b9ea9b020859ed50c34d8314e98cd4caf6b504c106ed0f`  
		Last Modified: Tue, 25 Aug 2026 01:27:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e7312624a63dbfab2a4d3f1a91df5f0e590c294be3b6575b73f52a9487b4e8de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca93e67e11550845acbb6942591541922b1c5b74caf9e6effabb807bdcd4581`

```dockerfile
```

-	Layers:
	-	`sha256:b821c37eaa0189a353e786376f59af29d561e4574007442e74664ab17925c32e`  
		Last Modified: Tue, 25 Aug 2026 01:27:58 GMT  
		Size: 5.3 MB (5277076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18cd4e169a93915c4d62f80c3cec2b2d698ff71eded610ca7d04a6fbf0edb90c`  
		Last Modified: Tue, 25 Aug 2026 01:27:57 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:10492e7435d360e8aabe95ea76f03b4fdb0965c721444729af4a9c3ba6be290f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226dc067a5f4e1c70acf8392fedb9dc4ff15b1cf889f7bf1c241fc0b2c1c9e19`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d991838a4f186e7e4efb53dd2e493b641c081aef3a952d09fda6339dc15567`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68d39ab539e0c4201e635257d9fd5de35748525290633883268e20ddf712daa`  
		Last Modified: Tue, 25 Aug 2026 01:32:12 GMT  
		Size: 68.8 MB (68785702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a6b80f5156a2230cbdaf3fe13e7e82bf1ea9138b34a2e299e4e64417a9ce9`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e735013e1e0b3a947dfae524581e7efebf20e21cd2127f6a28ce5970b9c792b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3d7dad50f6aea051ed778c45990a7b95374811f50070cbda6eb93a78db4306`

```dockerfile
```

-	Layers:
	-	`sha256:433860dbe43f5ad2bc6a0ff2836f7113f9db520a0443a41589cb06b098acdd3c`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 5.3 MB (5283455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f426b0dd1d07bf0b3019b719ba7d6c0fa8aab69f1b70779a2da2c35f4e39448c`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:322b88f96910268f9085a3c2cd5b63f5dfb1229978b62f254a69198ee5f31ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241082911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adefc9a29c7ecc278f21af98bddff596f89c54bd6a53f3d8ed9cefc6adf76139`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:09:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:09:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:09:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:09:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:09:41 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:17:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:17:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:17:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f995fb72be630a3021c5468839763a04160db7ee670486dc9db63541ec4dcf8`  
		Last Modified: Tue, 25 Aug 2026 08:13:48 GMT  
		Size: 133.1 MB (133089930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced24efbdd3807993c693b56f11ac951ce5e9145eaa8b7f0deb42a9f8c76fea7`  
		Last Modified: Tue, 25 Aug 2026 08:17:35 GMT  
		Size: 74.4 MB (74376872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d085aece78931f5ad5e30ff1fed7836f82a76cf2a339c6ccd0219eb61b70f5be`  
		Last Modified: Tue, 25 Aug 2026 08:17:33 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:28c7a70d460840487a24b8285d708f8c400260603596727e70758df844ea50b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c76e9b0364662de107a075860fa0b23158fc730273cf6729e3d8b61db8da4b71`

```dockerfile
```

-	Layers:
	-	`sha256:426fad539911bdd2e9ca021dc0bba216be998138a16c717bb73d00829094296d`  
		Last Modified: Tue, 25 Aug 2026 08:17:34 GMT  
		Size: 5.3 MB (5280832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20dcd82be3c575c2e37069eabb2a40fd8ba9d93b97cebc09a5ed9e9805e6dd71`  
		Last Modified: Tue, 25 Aug 2026 08:17:33 GMT  
		Size: 14.4 KB (14444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e28cfd561b641192e98fdc1c9ba25a1e716e8f55b7b790cb15bf06830007f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226455250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d9f0ea03959671ea11028d548a23e8cfebb8f3ecc5c932f3b4ed677df4f69c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:05:23 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:05:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:05:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:05:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35eb4f87f9990df83a93258c540b607dec1daffc7e592f8ee724ff3bd24949bd`  
		Last Modified: Tue, 25 Aug 2026 02:06:06 GMT  
		Size: 126.6 MB (126641467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208106622fa3d7778999162404f36cddf270b4896915a7466c060cf760982d18`  
		Last Modified: Tue, 25 Aug 2026 02:06:05 GMT  
		Size: 69.9 MB (69945421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa99cf1f203aef6b2253ed3be8b48689a1329e3ed81bc07949bc71d331362637`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f98a7b205e2a2bdf544438fcf29f3bc14ebed4e6c21136e145edf2b00c4b6b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0e4037926a76d143d29599c6255c3063fc271f7622d4b74964271ed0b1b60d`

```dockerfile
```

-	Layers:
	-	`sha256:cfe3f56e65681c1fe4627a33efc81a25c2c9ded0bf7e05ca3ebb40e878ac8c5e`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 5.3 MB (5273004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f58275aba43d13293f0325dab93a7accd1245224b4a19308ac36edc2ef205fa`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
