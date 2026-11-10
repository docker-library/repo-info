## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:9b163e21605df12c9209584174025320a627f67a650c7aea9bcec983da6900da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5e9302b6aca49868fb5cae420bd80d406388990853ec669c41ebf99567052181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257256310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85b70ec6767969cf9da791f69202d86efce10a4e58d37e69fbf3a28396271e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:41:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:42 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d708e7936ce6d4f27c59c3d7ea9e8982d38777a3636ed87b551cb079dfae8e`  
		Last Modified: Tue, 10 Nov 2026 00:42:23 GMT  
		Size: 158.4 MB (158409409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f65273f4c895de380730cc520860fa8840c5c25e0a5b9f346073afdc14848c`  
		Last Modified: Tue, 10 Nov 2026 00:42:21 GMT  
		Size: 69.0 MB (68989223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b8c2f2f6497e85fef27d4604db6db5c5d9ebebd7a633232cf9611702242a9c`  
		Last Modified: Tue, 10 Nov 2026 00:42:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638f8722a33f2d11c5371d57a1f21430d7c6f17bad2af82d3462b2e7e3d8e32f`  
		Last Modified: Tue, 10 Nov 2026 00:42:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97244fbb69c8cd92e49023f4fc86c5b3018020ea90f0c3c38c59e980f3d3e841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84272e171fcd3e63f42bcd400cfe3871028f413a6574a196c74a18ec09a2f77`

```dockerfile
```

-	Layers:
	-	`sha256:9902426079cbf219352bfb1a78f6ef4be4fd12b84130b8ea3ef41655d501c5bc`  
		Last Modified: Tue, 10 Nov 2026 00:42:19 GMT  
		Size: 5.3 MB (5263909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5693923cc562e5f6ec70a165c891e80a1923e393dea6ea592d6e90a7f9452ba`  
		Last Modified: Tue, 10 Nov 2026 00:42:18 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:93e0490bb7d587a6f74c2a10abe8fc09ba5e0cd2adc8aedb3c44e8e881ddd11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255712268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf865a411db9844e508e22d1b546d1d5e6d0192cea620790d6f30e64fd3f9df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:40:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:40:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b8d7fdf94c889a62c8e249eff9016adab178efc0582e170d0075824d4e7bfc`  
		Last Modified: Tue, 10 Nov 2026 00:41:41 GMT  
		Size: 156.7 MB (156691635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33421fbc307527e575fe3261fb21caa48f0c69c8b1e8d366761fc6346d2f684b`  
		Last Modified: Tue, 10 Nov 2026 00:41:39 GMT  
		Size: 68.8 MB (68805048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc90901e10bccaa691ae2eb77b5db8b51aeed4b14a3b3e35ef7e1b5e0831a4`  
		Last Modified: Tue, 10 Nov 2026 00:41:36 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295c032a014176ce9e700b6565bb8a76d15b3b3c0ad08bfc5ab57405326417ae`  
		Last Modified: Tue, 10 Nov 2026 00:41:36 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ed653b600b1419589866f9a2d1559bed367c7a85d0617863f9ef60cbf806ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60210a4397f6f5bb5851220790a90d2cab007e793606eb8fec1864478cb9d85`

```dockerfile
```

-	Layers:
	-	`sha256:993f744b2f4dbf4d0942b049b6812e1885b2d5a53a822fc78f7baf3afdcece68`  
		Last Modified: Tue, 10 Nov 2026 00:41:36 GMT  
		Size: 5.3 MB (5269670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92859331eac5581dd848e7976b3244a019f1d60b6dc1618e167d644627bb3ac1`  
		Last Modified: Tue, 10 Nov 2026 00:41:36 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6cd45589f9be0c050aad9a7e4a91047cc89a49d1bfc4617d77531fa948b1f8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265660941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a5679a337af211d4ea304a0670109e656500ec464d3040758ae42811e884ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:53:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:53:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:01:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:01:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:43:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:43:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e4dfd74fce827efd180ea39399ead65ff78ebe435d963c4044d95e7490255`  
		Last Modified: Thu, 05 Nov 2026 15:57:42 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011c02fe0f6ff8f054cb8f2d38ec823fa3612e4225b6f1f74957468fa2fa7168`  
		Last Modified: Thu, 05 Nov 2026 16:02:03 GMT  
		Size: 74.4 MB (74418508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ced8e94616b989283e38899972eddea85fedff50283337a730064abe441a398`  
		Last Modified: Thu, 05 Nov 2026 16:02:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6345a05d70317c1bb5e45731bc3dc82ad4677299d9452ec7ce329cbbbe075f84`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:563fc33e5bf001fffc877a843e06c25e3a6d65334404795ac795397d2f5017fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957fd177ca802912a7afedec7c33023d6c1d0622eda4b72d9cd011c6b1d9a21d`

```dockerfile
```

-	Layers:
	-	`sha256:232fe5960ced28940bcc50162587962281dffe606c060feba27c44da8ef06be7`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 5.3 MB (5267034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba87ec977464e27dc6e3ab49dc251ed86ecfc1d0606157ea92a2fdbf9a00aa48`  
		Last Modified: Tue, 10 Nov 2026 02:44:08 GMT  
		Size: 15.1 KB (15059 bytes)  
		MIME: application/vnd.in-toto+json
