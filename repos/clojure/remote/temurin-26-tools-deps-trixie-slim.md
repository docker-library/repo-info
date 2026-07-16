## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:a28117f22c3874af387db321ab751074c00004420d89256725752770d6b44d21
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

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:48d9c75e5142ff9354ef6e08ae0f2238992a4b01dca2412d6d0a6688e40c71ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193278239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b383dab7838445d9052e27c03bfb094faf557a08439b2f7ba0d43e9e336a91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:37:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:37:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:37:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:37:13 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:37:13 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:37:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:37:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a295baa90a124acfc04a2937645a4cf8f68b631a4d11de4503b9b0bd3af7d562`  
		Last Modified: Thu, 16 Jul 2026 01:37:47 GMT  
		Size: 94.5 MB (94524333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4f95bc6e35ebcf144439ee19513d3f36aa1efc37a47dfe1795865b31286bed`  
		Last Modified: Thu, 16 Jul 2026 01:37:47 GMT  
		Size: 69.0 MB (68971962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4993f38c1c206fe5df149b2e703a1ebbabf031c6c4e8422324cc424c1af193aa`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264569a3e95b543dd6ab113e7ac19c6aac29814cdaaa4fa950d5af80b2ccf572`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6b36f73ce53e193055bbde9971a8a7f8ecb0779293eb2b9c4069011614ef4195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbb119a4d67e6f503d6460094d51ad00e392b11d3aae221b401a70f0cd24828`

```dockerfile
```

-	Layers:
	-	`sha256:6df2e74a1247f3463c5dd45ed392cb18ad1e4651ff567c47b2b262c2336d3a85`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 5.2 MB (5222223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9481c7ab75b2d76b55a23ec573c8af363d59b93ef5d2450d8ff12c268832cec9`  
		Last Modified: Thu, 16 Jul 2026 01:37:44 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dbcfe4ab1b20845b9a52acec4b28194990956b538e8fd60752256fa2f83d5db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192426878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d820ca81302fbbf72a370f23247e2b8ee701f09a38b1fedc88b4330eb5e1d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:33:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:16 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:33:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:33:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4550b942b44da8901519d7a72c088508638be7061812c4d44d4f711cbfbbb52`  
		Last Modified: Thu, 16 Jul 2026 01:34:17 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016d47a207091efc0c63aa5cdb604871f8b163c2eef6f4777b96d1e3267ace10`  
		Last Modified: Thu, 16 Jul 2026 01:34:06 GMT  
		Size: 68.8 MB (68777793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83631d2b3daf1657554164266b109a85a824c8f34210f1407a64739910a4ca7`  
		Last Modified: Thu, 16 Jul 2026 01:33:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8bf07e4ff871f059ef5b14a86d6fc5d5b68474b0334f0c68cf608012c55c2`  
		Last Modified: Thu, 16 Jul 2026 01:33:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:afe71b28e0695d50cad2b8dd037f0048cb831f0980dbc21799e16351dcecf998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77a5f66c4e78f1a0276f2b1e978f5baa9a2ac7f33dd8a78bb1ad353c98961f3`

```dockerfile
```

-	Layers:
	-	`sha256:bf355878d9ef7035809c07f144d8c35f5a9345c37fd7112699f0c245f2b2b821`  
		Last Modified: Thu, 16 Jul 2026 01:33:52 GMT  
		Size: 5.2 MB (5227981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0588d4bfcdbffe477723ed6558ab305b6697a8200f823e4464730356eff82d7`  
		Last Modified: Thu, 16 Jul 2026 01:33:51 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:34c603638afc5c6425686e89010dfd24b68e20d50e212ae0c6d4a07e31cd5bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201877572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b0556f997b964bed741052664c280c628eddf8567176015db4f200f4002b98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:01:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 09:01:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 09:01:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 09:01:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 09:01:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:09:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:09:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8980bca7ba9ac6bb4ad45365069910379b0e7d1266fcffe9e82862dedb1ece02`  
		Last Modified: Tue, 14 Jul 2026 09:04:43 GMT  
		Size: 93.9 MB (93902045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c58c6f957e0d28a429f35dbdc9182139cc735127e693a3fb28ea5d06296e7e4`  
		Last Modified: Tue, 14 Jul 2026 09:10:19 GMT  
		Size: 74.4 MB (74373008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f231c9d2aedc73f8e16d67cba8d51ba67ae5adb3c4cd8e0b1cd60ed00af21e7`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4802eb439faf5f000c036c0c87920873d5597be6ec25318a6a5a453af8746f`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:493b53c4adae363cef91b10b16534fbe2f703ec26c9d7c8a271d27559d33be40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bd07c752ec8f0fc4d1e3444ef6d4cf0594b94728af8f267f10302868831b9d`

```dockerfile
```

-	Layers:
	-	`sha256:9309db51c4ef11c60d4790ef99d31c59d209dd96a76e9ff0b5ba1b0206fb7212`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 5.2 MB (5210530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1d830c3ed1e6af420a3da842ca681b6f050c4875fe34771c28b9ab437f6`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:adae597e3b4d01d1817705ebea510ad60fe413f25d0ff153f67739da08d70bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190327567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba425f9598ad08aab731c63c7e50306c8c2dffdfdfa35b2051e6c0f8fd07da3c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:56:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:56:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:56:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:56:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:56:43 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:58:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:58:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:58:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:58:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:58:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7f8f7f880abf8e3ac4abf924ec7459f010f7c34f9f8c116e3b4d55ef0b2be`  
		Last Modified: Thu, 16 Jul 2026 01:58:25 GMT  
		Size: 90.5 MB (90536933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7069de8cf767037793b5e60f0d16cfd3c0627e685f6ce4241e5c18b0f158a6`  
		Last Modified: Thu, 16 Jul 2026 01:59:21 GMT  
		Size: 69.9 MB (69942961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9d1ecd46195fce09734ea327dc934a531469dc5b0daeabd88a5b1373667789`  
		Last Modified: Thu, 16 Jul 2026 01:59:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde1175bbcba8e6e7fb37ae5263df15a2fb2a1b56035c58169dd5e6fddbc9c10`  
		Last Modified: Thu, 16 Jul 2026 01:59:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:84515d583c42a24b16618eef7b345247dfdfb0b2f1b59399bf873294c4d0c610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4b0175114727894dd812d1d899c04fd75b374acf64290c02861a8aa02f8491`

```dockerfile
```

-	Layers:
	-	`sha256:4df7c49d42c8ee731d287d8081e892b36fd18b73961891cf23aa7c5b3c8c47d9`  
		Last Modified: Thu, 16 Jul 2026 01:59:20 GMT  
		Size: 5.2 MB (5203333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74e5887945d761c7a0ae0f0ba9c010cc419e291226446d08362cc94dedb436a6`  
		Last Modified: Thu, 16 Jul 2026 01:59:20 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
