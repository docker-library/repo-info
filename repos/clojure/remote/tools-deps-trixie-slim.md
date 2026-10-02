## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:c36d56a5ae0bfda66847f3d0a0641f7b79ce2b90c9b745009a9a0bb57fafe384
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
$ docker pull clojure@sha256:a643abb7d9e6b1a1beca72259400f38e39c4e4b8584548540469c3e393ee140a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194406456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9501427af25078b576ee118c20725d20c3c8233e5f8df42ae3dac59ac15d6299`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:49:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:49:05 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:49:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:49:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0931f31cfe740055d31e8f3f6360eea238a8607e9cc14eaa3b0ee31d0b579f00`  
		Last Modified: Fri, 02 Oct 2026 02:49:44 GMT  
		Size: 92.6 MB (92618005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03c0bc82eeecb382f9de005df77ea1279803eeb1380b0761f54fdfe51bf21d3`  
		Last Modified: Fri, 02 Oct 2026 02:49:43 GMT  
		Size: 72.0 MB (71956990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff349dd592e26c62bf9e0b13ed01c00428abf0ad72c9bb05effb9d0b119ae2a`  
		Last Modified: Fri, 02 Oct 2026 02:49:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dae62ed9bcc09e5697656d54200ce94e9f3657cdeb3a0c5c24f66c967eeb05d`  
		Last Modified: Fri, 02 Oct 2026 02:49:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2eb1d1a3b721c0cd5ade643f8cdb5f0a35d349f613444f2cde000f6a9c50d218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9526d082b0d537e95e4c23fae1245ebe1e4749c1714e26e67bbb9f785c59e7fe`

```dockerfile
```

-	Layers:
	-	`sha256:df1d0946f55b2b58382f0e5f28640ce168cd7c5e32786c711b71c56ca1460dee`  
		Last Modified: Fri, 02 Oct 2026 02:49:41 GMT  
		Size: 5.2 MB (5231398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d1fcf4b99fbfea3d32f05a506ae2daa582f256b78a3be0eedcf1895e41e069`  
		Last Modified: Fri, 02 Oct 2026 02:49:40 GMT  
		Size: 16.6 KB (16645 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8f0c4e3eb4cdbab69c0de6542af5efb4f11c3cd2ef644457823a53430f2a5025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193857942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a3defe8a9053703b833dbe40592f1dfb8cfc2052e410d9dfba9b8f460456bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:52 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:49:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:49:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec9c48fdca77f3fc2ca70fb7c07487c9af8f17c0d7612f66d4a22237970ea56`  
		Last Modified: Fri, 02 Oct 2026 02:49:33 GMT  
		Size: 91.5 MB (91528873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12636efa0a10a6f58edff6d3a5675ea34067b982864a6587848a640b78861ed7`  
		Last Modified: Fri, 02 Oct 2026 02:49:33 GMT  
		Size: 72.1 MB (72138335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad59827a4257cf57ea65baa0a76b7bda64dacc9ce1566767d93f59fefb2bcf3`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5649aa69a1ca8d54121a5f34079983f0375847472899abbadc9c7749a8d0f6`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:92fdff5da4357d4f80e106a80d35250d56959ebfe400990caf9ce5f8abd84768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa54d43d3d3e194c57eed093013c331dea3601414c25e58c963533bac2532a9`

```dockerfile
```

-	Layers:
	-	`sha256:9ab94d98cabfd1fd43dc37ecfa58e1521acef82f4443e5ea013aa2df71efa60d`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 5.2 MB (5237180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32f6db4131ccde0ea0e7bf182b0ca8084dc712209493c534cc0d021193da3685`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d9055928b7c9f73be0fd95200a0c3d40b35b40ce2cb6c05b6cabeeb4b7781d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199310044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54c94f9330df0d7fa7d38dba930abb68909d060ab8e33fc5848aa5e0c8fb5c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:28:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:28:25 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:38:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:38:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a163626061f9d090892b27101085fc696e2d8227d87d635c9ee060ad079e5ae8`  
		Last Modified: Sat, 26 Sep 2026 05:31:33 GMT  
		Size: 91.3 MB (91256230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77c4599919aa6751c96b7d813d59305f33d298370cf021af983c58bc7c17e0`  
		Last Modified: Sat, 26 Sep 2026 05:38:48 GMT  
		Size: 74.4 MB (74411539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80b0bbc6b7d0d5d2c804b6cb461319e58e0ea12b142a28046bf8909e1c81c86`  
		Last Modified: Sat, 26 Sep 2026 05:38:46 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a771a61928aa39e3fc465b449398c1f4e44049efcee2156e33075f7937a049`  
		Last Modified: Sat, 26 Sep 2026 05:38:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee0357625d4456721de4a0a5a977f9019f64bf27fd4cc7fe53fbd3ca8623de80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a87e27e7a9cc7c836e2e07b1a2bb52b557c695438572fa404827922f2f8476b`

```dockerfile
```

-	Layers:
	-	`sha256:c57e0515118ba24730c23dc786bd5dbfca1bed97d6c9395ef015f95fa9657495`  
		Last Modified: Fri, 02 Oct 2026 08:29:07 GMT  
		Size: 5.2 MB (5219093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c21e80246645339db5175ebd374d99d57d87f32e61e7f0a044dd3f57eba1befc`  
		Last Modified: Fri, 02 Oct 2026 08:29:07 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
