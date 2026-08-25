## `clojure:temurin-8-bullseye-slim`

```console
$ docker pull clojure@sha256:8a6ae569ecc416a058dea4bae80da43b6733af1d48ba1ad6968f105b39b3a9b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ca8c6e49c4d7a08f84712320cf00d316e66a8c99985be49fdb76d8540eaf5de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141539500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca564b6952754bc1cb275c91198364fbf7a1b4f623e8e74324294535ad4fcbc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:57 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:24:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a47e194f1c6b721e3d55c01e5e78121faae817dc47e19e632e4df540f94ee91`  
		Last Modified: Tue, 25 Aug 2026 01:25:25 GMT  
		Size: 55.2 MB (55164404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6de3c97cf93660c25d0ce68b051901859e1ee8cc9e6b6019021b136cac08b0`  
		Last Modified: Tue, 25 Aug 2026 01:25:25 GMT  
		Size: 56.1 MB (56114725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5b530b8d93f1aabc0df3bfaa602f51e2c1871eb1ed8db7f1832c13ff3cc621`  
		Last Modified: Tue, 25 Aug 2026 01:25:22 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e5e05c8de7ac4acefb2e428de483a7c204498da3fe6ecc56ace84e5fa4deef6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d6df01e79f1693ebcb36183f4be9fb6512b9d49684a564ce8b6a4428773174`

```dockerfile
```

-	Layers:
	-	`sha256:31a003fef2ccd07107ac9353c2622465fba7081de9c6a6982cba30c055c9814f`  
		Last Modified: Tue, 25 Aug 2026 01:25:23 GMT  
		Size: 5.4 MB (5443412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ebf12bbe5a16f5b5403031d7e0c4fecbad6303cc7de80a76eadeeffa7e70614`  
		Last Modified: Tue, 25 Aug 2026 01:25:22 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d746dd3880dbbbb67fbcf28ae9f1c3a594f3b7f6614a367a447d9ad103f16031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139293739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea1b61ab133aadf03216249ce52717399ae17ac36024ae505daf0ff98b025bf`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9f125e36d705b15766a4469f0f64813d718f07d1e2ce673dfdb4a0bbc442b`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2347559af5b927219c117a8c6c1bee3d0867dd286d0419746c598895593c44`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 56.3 MB (56281319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38646fb9135232fbb01e396359ab9d3f329d2c6ab9ca5e612a87a444dd99dbac`  
		Last Modified: Tue, 25 Aug 2026 01:29:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:720d78c0edc43c1d72120f1278be88441a35e1e067adbeecbe85fef9812ee16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04c33e63875ff8dffd074db543744f9d1853918b7b4e3838e9b3f4f27ffdb4f`

```dockerfile
```

-	Layers:
	-	`sha256:41f33cb3dd08f2de50e5649b1dec9744e547d185c256edb13672abedfc82e239`  
		Last Modified: Tue, 25 Aug 2026 01:29:31 GMT  
		Size: 5.4 MB (5449844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368174078b41950ef99b06d8e50acffde4b2d682fbde61b93721d21c2e742c4c`  
		Last Modified: Tue, 25 Aug 2026 01:29:30 GMT  
		Size: 14.5 KB (14519 bytes)  
		MIME: application/vnd.in-toto+json
