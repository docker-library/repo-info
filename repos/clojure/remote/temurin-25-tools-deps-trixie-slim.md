## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:34556f45124d3c9b032ed5d3c994e23dd2dc7db85fd338caba4b600d196fba12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

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

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87255ffc0bf9bc0978719a4f7df918f6d032f9516db3375b86295587bb27a7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199309991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979b23de6700eb33cc60db570f47508a370f0318cd7457bee1c42dbfc339975a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:19:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:19:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:19:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:19:13 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:24:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:25:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:25:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:25:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:25:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21be62dce9b3483233e51608724f74dcae42350bd67904c3212e42323e7cc0c`  
		Last Modified: Sat, 19 Sep 2026 08:23:50 GMT  
		Size: 91.3 MB (91255865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ee3ebba4ca0e5b47ba0c1b554a3015dde506e900cd21a33c7a48a218275e49`  
		Last Modified: Sat, 19 Sep 2026 08:26:13 GMT  
		Size: 74.4 MB (74411851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d511929258b9b94b1947391670ecf6b49e1e99995142032d964c46681e38354`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbdf4bc634e1e208b89bca54c753ba12fa30f2e1405cfce3d12536dd1b595bb`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ecacdc63b5d22355b2be0eaa827c1f638511dc030f625ea156b4fc0f13093a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54495953dd5b34908435cb7310e509db09763c7aaf29cf6eb0020c3469abbc`

```dockerfile
```

-	Layers:
	-	`sha256:15866f4023f39b2e19475372c3088156d0cfb403e54b836d6ae17664e722d005`  
		Last Modified: Sat, 19 Sep 2026 08:26:11 GMT  
		Size: 5.2 MB (5219085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8aec0c08f7f7bdbfd2fca0531439b814438b9e72fba7368584f27794808ce2`  
		Last Modified: Sat, 19 Sep 2026 08:26:10 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
