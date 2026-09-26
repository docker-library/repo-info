## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:16e2b9cd5ff2c3f13e5a3672366c97f76eaa93a82a7aea697e60b7046368783c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e5c74c99a4aaef54533c27dece0ce3b62c361c293a2364ad01870f908abbc91c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244647680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1af175a83b9d156b69bdca3ba5c01b581e287d5865aea727410fb21cbebc353`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:19 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:22:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01626d8b132491ce1e4248698b0808410a763b0604c709a847a7ee6bedeabeea`  
		Last Modified: Fri, 25 Sep 2026 23:22:55 GMT  
		Size: 145.8 MB (145824875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5f3b52148abebd98f85e4310a15d1e534a9b37e454cfc07e809eec4f053f50`  
		Last Modified: Fri, 25 Sep 2026 23:22:54 GMT  
		Size: 69.0 MB (68991347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720db91f5eda1f613e2a46060b64e64cc46310eda77cd15ef465f6ffe916d6a1`  
		Last Modified: Fri, 25 Sep 2026 23:22:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbabdfa474f14d604f50891f79e765baf0dc5f58852be070a48fb4256e56e736`  
		Last Modified: Fri, 25 Sep 2026 23:22:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2210d37704c9af6d5319175e70bbb234a1213974804e098406f7dd8dabeccdbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893370200d72dcc13fbaaec449c441d2ddc135618f0befaad3d0371c3a4d1cd4`

```dockerfile
```

-	Layers:
	-	`sha256:0ffe72de3c092c251535424b4492d9a452acf962dc9e56c76ffb885f949f224f`  
		Last Modified: Fri, 25 Sep 2026 23:22:51 GMT  
		Size: 5.3 MB (5263314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:139e5783dc89be0591b5a0dfc480465f57f8bf835338056b06dd6d60ddde0031`  
		Last Modified: Fri, 25 Sep 2026 23:22:51 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5a00c9fb0fc87af7d15b8c0017b850291e7e024d71c38acfeafb94ddf95df587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243647316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b235b23bd96e78742ca91f59cac970bba4730d9c7b9eff86e6abaccbba11522`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:53 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:20:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:20:11 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:20:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9a580e5b2fbff5d9df46f9c0a6deffd59877bdda229cef3894b85bd8ce23ef`  
		Last Modified: Fri, 25 Sep 2026 23:20:36 GMT  
		Size: 144.6 MB (144648252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea1e043855a50fab75a557465c1e703fc9ad2bc4237c87ee0c22ca820ae1aa`  
		Last Modified: Fri, 25 Sep 2026 23:20:35 GMT  
		Size: 68.8 MB (68808332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444c2034b83dfc92240d41944d9024ce00813158c4082491963801ea3b9d6931`  
		Last Modified: Fri, 25 Sep 2026 23:20:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b1614cd89e0bfbb9b3dfbf735c08797cc2932c36974aa961f0a01ee5c437c5`  
		Last Modified: Fri, 25 Sep 2026 23:20:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:167e148469377018b59d70b2bba92c57dc8a9d492fddbb2f1f8d3421c1fe24b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8960440046153b878608c70c76e9a3f4c86bd40416668f46211335a0431870`

```dockerfile
```

-	Layers:
	-	`sha256:6abb08826dcce652b9c0a5df187538567a9fcb8abda44a36ba009b08d5079f2a`  
		Last Modified: Fri, 25 Sep 2026 23:20:32 GMT  
		Size: 5.3 MB (5269075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25db4164a933f6efc0ad9d352d4716810adfa941cf123e8ff697306fb4c23d3f`  
		Last Modified: Fri, 25 Sep 2026 23:20:32 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7821bd954808cfb82aa9b452484994e745213f210862bdbd0125fafdab549b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253724577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb7c999bd1883d1ccffdf1c9ad41f11535f2e9b6207883dff11040b4bb53f27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:39:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:39:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:39:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:39:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:39:12 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:50:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:50:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:50:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7c7925796eb84dde8ba10ca1831ea4d072c2ec80278754639f2790ede8d83e`  
		Last Modified: Sat, 26 Sep 2026 04:42:18 GMT  
		Size: 145.7 MB (145670563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4697c968c3d14b5068aa6035e38a06fc7c3e2375ab8f324573d46e0e839cb403`  
		Last Modified: Sat, 26 Sep 2026 04:50:41 GMT  
		Size: 74.4 MB (74411738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d4246b0fd7db24115eea58c94e5f071d8b8a4f5d37383ad4450793b1656477`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa82698e74934bbb4df1e90dae19472b7e22091a2cb354d56a9490e4ab31b18`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4ffa3937269f5040492af21ba0bf4a31d4693c390c8e56b89eea93f7d9c30bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065ea32959289e264a678246f601d1e76707c9a23921513bdb877ee18af5dca7`

```dockerfile
```

-	Layers:
	-	`sha256:472ff6e0bd458174f00ea6bcdb103ef79d3ed6c19de659d07cb5812b0b10b2ff`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4698ce924a8d6c0137035193c9a012092972fcf187705bf250cf0742312f6c89`  
		Last Modified: Sat, 26 Sep 2026 04:50:39 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
