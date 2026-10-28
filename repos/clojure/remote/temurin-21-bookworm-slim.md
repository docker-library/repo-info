## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:e412035074cfebebe388bddc40c0c0c83817bf04a765f9a407491b678d2cbb47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6ccb366d2398919d7f9f96a0f8106ee0342356b877c4f548960ea102ea63422c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252873948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc2f4b32b90fabbf54488a6f90aa68e889e67c61aa0298e49c6c00c7959a235`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:13:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:13:05 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:13:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:13:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b42d96bb2ce41de8c56847242cc774b8acfb00c3c55e4a2c061878fc76ce1b1`  
		Last Modified: Wed, 28 Oct 2026 02:13:41 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4318cd41890721c43ef1f4034d6585803b86d06b6b2103c13b0682077c6df892`  
		Last Modified: Wed, 28 Oct 2026 02:13:39 GMT  
		Size: 66.5 MB (66507997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4c2e9be4d1e9fc7697265af496ebdd865eb1bdbda046fab0a52a6d6c397402`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c59bbedd895f9a8deda4e5e04522b39620fb2292e5dca7cdc9ab76ef287ac27`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b3fddb7a3550bf265daa373122eed4855bbe8051a9842bef7777ae8c53377314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82657c6492008146f185aa0a8a00d6fe3dec62f6bd8e9bffbb19b9cb2630a631`

```dockerfile
```

-	Layers:
	-	`sha256:f37f171be8f6931543a6eb41f5e6f4531067376f7e6c5ad1f06d535b951621f0`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 5.1 MB (5119893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe15eb3136eca385e4a3922c3fbc7c3f50a712d5d05b44e3efa2e4a94d75c3d`  
		Last Modified: Wed, 28 Oct 2026 02:13:36 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d832942a20e156024a8ffa3c944fc4d504bf1cb058c0b2e2f601bfae8b838cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251040583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89aa32696e6dfea5c51fc49a6b379c9dfab1e32f88b42b559034f66f8312f1e1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:20:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:37 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87461c37319b401cf0b7df9b9ac2bea181498c72ffb9eb2632adf073ed39782e`  
		Last Modified: Wed, 28 Oct 2026 02:21:14 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a919d499be806112aaf5a32cce871bb0ad3fc586a1413aa16fa73e016f1fca8`  
		Last Modified: Wed, 28 Oct 2026 02:21:13 GMT  
		Size: 66.5 MB (66500911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f05d2ea9a9be4795e1bd849d4f3119e578750b07f7e37c04bbefc4724f96ef`  
		Last Modified: Wed, 28 Oct 2026 02:21:10 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0390acee002e5403f74d8c9c42543bed61485e96f73a59a7fd86a4ade0e80c6`  
		Last Modified: Wed, 28 Oct 2026 02:21:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:245f02f81465e9f197b70f288e03277047bbc7888f1737c1659d5f414ec50231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d7850ebbb494639b91cc84d3ec80a83c7cc3d76e2e3df5d3e7c22b25ce3da`

```dockerfile
```

-	Layers:
	-	`sha256:a4d40b765620538bf31e78d30ae1bf059625ed509bdec704e7f45559ccbf3fd7`  
		Last Modified: Wed, 28 Oct 2026 02:21:10 GMT  
		Size: 5.1 MB (5125654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c89237ee68d21e29f1a124713a27b548a6353fcee572a2faa7e7d3463aaa4fb`  
		Last Modified: Wed, 28 Oct 2026 02:21:10 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7a1826db52f3aa821c34312700e817db76469f18a955415f729ff0d4dcd02e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262710276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf6fae8086dc849f0102f3beab415927e1d7c85adc895cac2144be1d5a7cf52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:01:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:01:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:12:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:12:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:12:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:12:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fd9654479c4bb6cdd09df80346641b637a1fb7664815e09e84bb78daf7d5c6`  
		Last Modified: Wed, 28 Oct 2026 10:06:07 GMT  
		Size: 158.3 MB (158282654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835d774e6b0edca44f6880afcf1c9a1f559dc6db808516dc376f2c6870f9ebe2`  
		Last Modified: Wed, 28 Oct 2026 10:13:06 GMT  
		Size: 72.3 MB (72333737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83f59856c4108a261d9f1efe1441beb620a8a098b96308071981ab812c85554`  
		Last Modified: Wed, 28 Oct 2026 10:13:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf198c4ec4c6a3a212eb2dde487d9f5174e65a44b0c931e835ecffa376c6140`  
		Last Modified: Wed, 28 Oct 2026 10:13:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30aecc4652087160b27e92718935726dbbdc4e881a7c9207eab253e17679c293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:959470838e0cedf18e6df9986833b0e0dbd24d3ed126098b89f4ade9f2b20d84`

```dockerfile
```

-	Layers:
	-	`sha256:2ae5635cddfc57f0c10c5d6be79cabcd20eeb21b22907d01373787bd476a0eae`  
		Last Modified: Wed, 28 Oct 2026 10:13:04 GMT  
		Size: 5.1 MB (5125051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f5924537a57358a7ebd07ce4ff51c9f7c754eafe2e180f093cbb307a58951e8`  
		Last Modified: Wed, 28 Oct 2026 10:13:04 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
