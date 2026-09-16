## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:bff694e3c314c21aaae3e8bf341eea7d7b4a9f4e1166e8ed8f6b5b52c9305c31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9da7a42af8a97f7cafc12d9d0eab6fad6128447dd51aa789e8269c0b606fa1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198688088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5589e5cde738a02c843c483f458044a581db14be240aabe52ffd378f3da219a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:52 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:39:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:39:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58516bdb87c51023e052cecd0a96f66876494b616cc457202cc056b015b27a4d`  
		Last Modified: Wed, 16 Sep 2026 04:39:31 GMT  
		Size: 94.6 MB (94563716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da208346b77bd492dca2896821983b989803e0419914b2a8434f5852a0bc95d`  
		Last Modified: Wed, 16 Sep 2026 04:39:30 GMT  
		Size: 74.3 MB (74330671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5611d00068d2ad75249a1a1cd1b08747672b1b6c579d0bec499996ae0502bef4`  
		Last Modified: Wed, 16 Sep 2026 04:39:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5a58a9e071fce5d94c48ff0bb1c5ccc41125584a8ea073d0153b849aa6e8e2`  
		Last Modified: Wed, 16 Sep 2026 04:39:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:24d968e6487fc294f65265ed9bfe496d80524e454c74bed4da9488f4bdd3c4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3984ecbab042209007188d40b8b225a8d440a2a062384a694ea5291335f3cd9f`

```dockerfile
```

-	Layers:
	-	`sha256:7ff82afb6359cc4b1715f9adeefecfe74309ead60a1990ae723565c79330e12a`  
		Last Modified: Wed, 16 Sep 2026 04:39:27 GMT  
		Size: 5.2 MB (5222527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:508ff19085c11fb9e37158a983189b296238a33f06381ac5ecd25978f49aca76`  
		Last Modified: Wed, 16 Sep 2026 04:39:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:20f364c9d195a6e5daa8289ea26200f6d6d01c2bd05902929308d6146cb03388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198177234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6fc33c36ea11dd2d87dc8e41c9443b8a13bd505598803bf4ab72f4901fea64f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:39:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:39:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:39:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:39:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:39:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:39:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:39:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24a1b6a02480aaacf31b322356cffc1189e59aca2e98207195595785795b26a`  
		Last Modified: Wed, 16 Sep 2026 04:40:12 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dc15b0bf57239e869144ce961b8f334192f41eb894fa5a272aec6673f2be6e`  
		Last Modified: Wed, 16 Sep 2026 04:40:11 GMT  
		Size: 74.5 MB (74475008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b992447003b07c511212a2d1e71c771d4c86103b5bec14fc6ed05eb889afca15`  
		Last Modified: Wed, 16 Sep 2026 04:40:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8233d3c60f08846781f951dc206bbf1caeb2cd831cbe64201918bc6d6259b1f9`  
		Last Modified: Wed, 16 Sep 2026 04:40:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0421ec70212a125bbef6a9ba32c331f27e108d0175a23747234d626b9ff38868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae6237339ee24d352024b3703740684ce85b23a72e572b7f0f90097792a7d9e`

```dockerfile
```

-	Layers:
	-	`sha256:8ce63bb792048e0c515bc6d8d02d169e0e25e4454505b48625ed95a2d25990c4`  
		Last Modified: Wed, 16 Sep 2026 04:40:08 GMT  
		Size: 5.2 MB (5228285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e5f6f113293f74309427a134fc0e18acb41963a6316e8d4cf96f4f0d993b720`  
		Last Modified: Wed, 16 Sep 2026 04:40:08 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dc0b167ac4ad4e83635d47ef8ca132bd985796ec718a992f8c5d65d05093a4fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 MB (204542632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ae8a10ef7a36639262d33a7f7748b7bfa0dcb599312610e832ad7f2b16d8cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:35:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5812ca3f57fd2218ddf1b16960402beebd940ca6986d788f47a02fe0f8688e4e`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 77.6 MB (77575345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9f3ff133d005e036971d710648468dc1e29c8470a2041cd56e9d9a0f86bb08`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afc7bb0c4f9c0698d847bfc0a0be702eea975c575ce2209f93329c9a764d9a1`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bee95a3b0369281598360cbe0185e721e8ac741a43fe4fedb6ee5ba7ca607df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4adf34416b5cd867900a14be6d6692b229c5704473d1c2058e50c1be1a704b3`

```dockerfile
```

-	Layers:
	-	`sha256:291fb4a06b8a2dae476be08cc676f60cb1cfe6c71b4a8b37834d5586dcf933cd`  
		Last Modified: Wed, 16 Sep 2026 11:04:08 GMT  
		Size: 5.2 MB (5210762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d689d448b6ad160afde98b3207ebf22692b1869b53fe7041b1d62307185ea10`  
		Last Modified: Wed, 16 Sep 2026 11:04:08 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
