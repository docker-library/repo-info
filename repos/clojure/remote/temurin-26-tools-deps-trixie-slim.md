## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:4fa2d83d14ff578c162df94fb8f6a42ba050c119cd4154721ced13ad6ddccda0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7118c82710370b39955ec114b9d7a197a4f43d1b8057d1a86800a0b95229fcc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193386771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc72f45fd757f258137818af31f1d22ce31176083db61536a43e33ef90d4b543`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:26 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ea3857049bdb7dbf206cdd7f36b07862db282959d55aab7b21687c41b8106a`  
		Last Modified: Sat, 19 Sep 2026 01:19:01 GMT  
		Size: 94.6 MB (94563699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f1f14d38241be0c408d7d14861995c761498302eb8a42bc3454c9798f963f8`  
		Last Modified: Sat, 19 Sep 2026 01:19:00 GMT  
		Size: 69.0 MB (68991614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b5ec0ce7f7b9ce132214128083ff06c24031d3c791c6b9ee1ce4a805eac3a9`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9b2423e45efb7a8943a56ecc2985d415859318fe97d6230fce00a93ad13e04`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee60b4cb514f269500873109323fabd66ba0cac969851383431718a60eeb282f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e44f01611974941aaf827c0e975a49635d462048336b2d689f635e7decdebf`

```dockerfile
```

-	Layers:
	-	`sha256:42cb9f0dea69073e996a38798f4a36453e906d1ea9479997e0baebb511578ec5`  
		Last Modified: Sat, 19 Sep 2026 01:18:58 GMT  
		Size: 5.2 MB (5228201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e46e6620329114ebb5084da304d171b95c6767f70a22121248ccc9361f1e1ac6`  
		Last Modified: Sat, 19 Sep 2026 01:18:57 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:af8d6ef816d10d4d415910da08f1c40ecba8dbbabe42b989b7c0bf3e36f0f050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192540982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b915ce8ce4de0bf681da40049178527e02b9c54d6c8e94f5675833110f35bf1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:26:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:26:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:26:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:26:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:26:00 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:26:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:26:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:26:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a39891e59a62b61b51e3e8707b8fa5bc3653b2664d6031b6d7c4d9961ad85e0`  
		Last Modified: Sat, 19 Sep 2026 01:26:39 GMT  
		Size: 93.5 MB (93541571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a32ba182691b7338da074afdc59d8b439a409f6c39fb730b1a4d6e84eba5955`  
		Last Modified: Sat, 19 Sep 2026 01:26:39 GMT  
		Size: 68.8 MB (68808680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f865a2f213a30e935f10981eb8b1c0342dac6e7a25f43158958b2e9e2777efc`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6b392a0aa77def61940b5754671452f518e024c20cced72896687d49ff4574`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2926727ee23763bf1be57cfcfe2c81045a15d0f8aa80d06eec4feec8a9e378a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f056adb7893b4e02d8231e080dcb7fdfaecc343533813948f62ebd01219772cc`

```dockerfile
```

-	Layers:
	-	`sha256:d92af8fc54dba856fd0ff933888bae8d467512fedf3e178313d6a9740696e142`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 5.2 MB (5233959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2e89f480ff2b1ad6cd7d5c3e28a535323a096e860f35cb43e25202982af9ca`  
		Last Modified: Sat, 19 Sep 2026 01:26:36 GMT  
		Size: 16.1 KB (16075 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

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
