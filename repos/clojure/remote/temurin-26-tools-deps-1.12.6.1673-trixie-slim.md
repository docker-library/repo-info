## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:3eadbc993c6cd23d2502c9e1551939cb04bbb80826df10aa2896f3a54999eeb4
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
$ docker pull clojure@sha256:0a3c756dfc23fff1c6e2c1758b0370596530d600dc7cc57a8b0a7cd0be06e1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195832220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da4296ce58963659d25683ead0b5d9197a68979b6fd2df85804cc9ebc36e6bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:04:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:04:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:04:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:04:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:04:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:04:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:04:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:04:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:04:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:04:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b6ba5cb52aa4d89c0164c44f2c68b8a8d5322dc5c24589cd01bf211a40d6b7`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 93.5 MB (93541594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc3a1b74377b58b067d581498e5b4c3e87b3d3f4aef489b14da887530ced823`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 72.1 MB (72130005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093a25761593e70257a52c583a98cae2f84415c51a6c8f2cfaaa27e60581bc24`  
		Last Modified: Wed, 09 Sep 2026 04:05:08 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f69eb734b307dfc2fb1286a01a38b6b3aa49cb6b33b644313d4ecb90fa7ae1`  
		Last Modified: Wed, 09 Sep 2026 04:05:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8164007b70defa1334353b3e2160098a7e902e9cd474ef8ce8406252ebe8e485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a8ed0c3cf3605d9714e679dadf738f9790519ce930f7a694bacc8633416ac8`

```dockerfile
```

-	Layers:
	-	`sha256:6e27927ad4c97431719bed8c1f7f7b52dd0ea596fd7272a89bd384c7d2d67b0a`  
		Last Modified: Wed, 09 Sep 2026 04:05:08 GMT  
		Size: 5.2 MB (5228213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52822bca3e4bb679d61da68ff8f34dc6603125f51cf874f9d10d233d17582a8`  
		Last Modified: Wed, 09 Sep 2026 04:05:07 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4e8e210e38defb8c6756dae722f0157399efbd898ba5144329a74bd8da9b90bc
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
$ docker pull clojure@sha256:5d6cf8a9164e0426315ac76443bd2c8e6570b8ed6236eed9a12c572eef2f094b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9827674e42bd9d1e4b8b8471fd49edabb4be0533f9bc646b265535712149a2e4`

```dockerfile
```

-	Layers:
	-	`sha256:4e0d44b168f7eb644f5bb928ebba58f294dfd88fb75292ca0f55611b03806f41`  
		Last Modified: Wed, 09 Sep 2026 11:28:17 GMT  
		Size: 5.2 MB (5210762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd747edcfb4655db93b1767ff4386d183770c87f18eaca0113e3ce95cad71c1c`  
		Last Modified: Wed, 09 Sep 2026 11:28:16 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
