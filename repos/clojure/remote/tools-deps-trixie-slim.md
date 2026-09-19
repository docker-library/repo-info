## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:159abadb3911debb3aa0ba2534f0c65e6931a1105890bbf5a741643757f0ffad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:36006d26710c86f7ff527b981e75a8be323d94bcc7a8335d5c2bac137b65b834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191437941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6d678aba62e587baa988064cfea69de5cc2085289b28babe8180f9fdae14e6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:17:25 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:17:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:17:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6eeae23c8ca305820eb0120bbd0a8c0426ba86f73d662269aadf8728deb636`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 92.6 MB (92615084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67306e375c75c4cb5b99b78b9ee409bfbe3faa81f82290b695be5d17cf021cc7`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 69.0 MB (68991399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3773410fa67fef7fe4e31c3129b1535a5b89dba9d0e510910d3c2db5dc0c52dc`  
		Last Modified: Sat, 19 Sep 2026 01:17:59 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0f4b9a7b1f4fa2a67977490bb8e2c0dba828357b75afbb0e42722700b3d06c`  
		Last Modified: Sat, 19 Sep 2026 01:17:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:297eac526cdc0ed992bc5662b5a50938679b08ce3a7ac4c794f44b804234e717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2481db6094f0ec1bd66b52df488388e5abe34829a957b551ea76d33708b8f9ba`

```dockerfile
```

-	Layers:
	-	`sha256:2a6ed7bfb7df6d5ff6fde5bd2b8807cc78dd0805a6d133fcb597ee3f288127d4`  
		Last Modified: Sat, 19 Sep 2026 01:17:59 GMT  
		Size: 5.2 MB (5231390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49a42dc2a2546f5589f0c053287623b535b79670dd595ce84531111867f34f30`  
		Last Modified: Sat, 19 Sep 2026 01:17:59 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7d290babd8a45e5ce7a827401ec9eedbbfd32f00c85241a258d67a92d2561c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190531511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6009612ac3a95073a07b3e36d908abf0aa20be46278e732072041a6bb7e53d51`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:24:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:24:59 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:25:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:25:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd03c7db171d5d8288f81c135fc0de09ae0638287baa37e29bb800f0020c9881`  
		Last Modified: Sat, 19 Sep 2026 01:25:39 GMT  
		Size: 91.5 MB (91532218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c09e872784285cd0f1a05773bb34ce24cc08a27455007529b123c453aa103`  
		Last Modified: Sat, 19 Sep 2026 01:25:39 GMT  
		Size: 68.8 MB (68808561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4ab7828d3e6ba41bc5365f3b1eec4e28115f947ad4c8cc66dfec9e3bd4714d`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d395fd5bb05e76928e91fd95696f9edaa3faf3f47003caf905ceed69c991009d`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a60904cf2c6a25173118d6a7e7f883e883c2282a0cd08c45ad8377df96b8baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9c60e72ce556346ce3cf83907b81a972169a23cb1e1660ec16889377698f60`

```dockerfile
```

-	Layers:
	-	`sha256:676c3c6c987d4a9220aad04622eae050ce07cc018829039ed7902f6efd083304`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 5.2 MB (5237172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f82a8107a3cde4ed6449095a9e227d6452e0fdc1838e39a5e6280da21538e18`  
		Last Modified: Sat, 19 Sep 2026 01:25:35 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:af73fa4ffe5296127deee6d6052180bc940c8d5c108668f2b02fb1faf9f39cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202447952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576acf1e7c3a31e4cc25c17a5ebf3e68a353723865b3691851919105b25b1338`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084f28e02f46493ed99594a968a5e403aed0d99dd596c6994e2e5a127d449cb`  
		Last Modified: Fri, 04 Sep 2026 00:32:39 GMT  
		Size: 91.3 MB (91255818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415951b2fe17e08d183e3c0f3de1b6ebf6c5c127666f9ea90b17b3d985945584`  
		Last Modified: Fri, 04 Sep 2026 00:32:37 GMT  
		Size: 77.6 MB (77575630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03334e80eacd235ccb795c09aa39e62a1d9ac2f8597242f91b2ef4df3e48e13`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18ddc509d1aafa1664c0241b14448d67030e49da4ca20ede821a98b7513c9a0`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f32ccb7e1e56076afb37636c264ddd3b6998a390e69e074e6d80a549e4e01a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad0312d104a88feb803d0bf0850423e17ea18bee749f9d8b091f0d18ca533ab`

```dockerfile
```

-	Layers:
	-	`sha256:d5b14b1d9326359be37c1848e83e157c0bf2cc2ce692cbcd150230dd64164b99`  
		Last Modified: Wed, 16 Sep 2026 10:59:57 GMT  
		Size: 5.2 MB (5213339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e60f89922da5bf76b90653538d5871689ca5ae1908136d244fa039b3dd3beca7`  
		Last Modified: Wed, 16 Sep 2026 10:59:57 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
