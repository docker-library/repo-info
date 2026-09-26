## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:726ddb1696b6198f3c922e5d2e877109e3c18f42cd63cc0e46b6a5394e1479d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3c2989488a387accbea0398cad17758b33ab16ca4da9720cc15dd62d52ab9d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253728510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd441bdcb5f292bd646fca364c7c0d5ae24dcb8bb5f78ed72e9dfa97d09dc0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:55:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:55:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:55:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:55:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:55:03 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:02:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:02:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:02:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc74d5f62ccc514731fbedfab4404981161200ba95aaf039d031636ebebc8b6`  
		Last Modified: Sat, 19 Sep 2026 07:59:15 GMT  
		Size: 145.7 MB (145674268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002bb5db0f1c4ea2053e4b02d32863df66dfff69495dda38d2519343434b1c7e`  
		Last Modified: Sat, 19 Sep 2026 08:02:51 GMT  
		Size: 74.4 MB (74411967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1143a5f6f9cce60ecc2b3feaea541e11026cfb7dfb363bd3a05400845e25b1`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57f898dfbd9b5c534e5aa013eafb3993b2528847173ac3ae8d3933eb9973ec9`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7e5022e7189efc8d7282878bdd4d259923ccac596c76557309041c67a36a990f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8a165a551521e805d2ff5f0a5fb885220afa9a1593458f67f741bfc9301a4f`

```dockerfile
```

-	Layers:
	-	`sha256:03f1c77bf45468e1fafa4105f9cdc057132d44e4b2e1327715d44702f25f3f79`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 5.3 MB (5267677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88824975a0eb29e580fb54e120517b06c930463d9c9a0626960becaec1bd7df7`  
		Last Modified: Sat, 19 Sep 2026 08:02:49 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
