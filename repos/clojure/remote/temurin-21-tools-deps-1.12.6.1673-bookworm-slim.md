## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:d31b255be8c3fb5f53599bcd06c7c8dd21134aa42d283e3f7532c262f1b8cea0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:574fd64ec1a228f7537666e23311e77d883b7b47dbf9ea0f6e1da4c407205911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262709798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a539cd26aeebb4be91f1259cf62faf1cd93c91eed4dbcf940f7d7ea12263ec7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91aed6cef4eebc95339065473aefdcbcdb5cef532003ecb766e501514a8aa4`  
		Last Modified: Wed, 21 Oct 2026 10:47:06 GMT  
		Size: 72.3 MB (72332890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ac3bace6b5b62ec3ab9741f5436e2575ff541621a00f2f8f9978918f6f93a4`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0b1e34faf0864e65f50cc19a9997eff94d95166ba995fe225d7a5f44bf73da`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99a3b6abe1be10986e73ca03029fe27a1516e9cd79dfb3b156170ae532f80f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e5959fcffd47414560b2bd3fc8066f40709f38cbc43ce2ff8c5f386217a569`

```dockerfile
```

-	Layers:
	-	`sha256:931648ebe6314a5df53ff202088acb9b17b15962ac4decc8c9d82d6676a49723`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 5.1 MB (5125023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1ff9493b3ab43431530fa2a3bedfec5f19697f6e7cbb4de696affbe9dd081e6`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
