## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:e16bc9dc933480939539dbb66b5e3beb1de180c165c62e0c01d11c546592ca43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:89aba4dfbeb98b6b70288956e47eb0fe1a540c81ebeb0ac892ca3c194da454e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175468473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3120c23c84f81f0de4a7310360cd2a9168a74e115a27577a56204e2aea5c44e4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:09:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:13 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc26b0a41fb5bd7f226eaee135b77cb8ebfcdd557f2b29d2612a58f82576143`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ef1051aaceeb88fac0e7da8076d14eb098fbd0814bd215aa7ec4e9ae10abbb`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 66.5 MB (66526408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bf91fb4e8847e31ac2a5f082fb2221b134924cf1b9c606efea3c57b7b8ad1d`  
		Last Modified: Fri, 21 Aug 2026 19:09:40 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bad5ea14dd83e9f75cd759fa95e0eb1c752e2a3db91cc6915713f3f292767284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16efbd7448d72474e48497c617a353c1fe82d72d78cdadb6b32c742c05ea664`

```dockerfile
```

-	Layers:
	-	`sha256:4cab84aeb87dff4b62f956cc5d908e179ebab4cabb562595ceecef17ad9ea365`  
		Last Modified: Fri, 21 Aug 2026 19:09:41 GMT  
		Size: 7.5 MB (7531012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f42b135b06c85d8590f3b08f4beb6aba5eb89902e0565b4f9b9aad15db384f7`  
		Last Modified: Fri, 21 Aug 2026 19:09:40 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4d1ca795a4adc6f82589b3d99f3fe07ba87b4bb3b0e232342035223ca7b94f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173214629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ce321cfe06a7a051afa0a7cc63fc3839808e43ab77ecdc5b60545f5d180de9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:59:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:59:48 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935b6cc69d7f79c327fbfbeb3169cc2a603a6f7ee8b1c5ff1e6542ce31d5024a`  
		Last Modified: Fri, 21 Aug 2026 19:00:24 GMT  
		Size: 54.3 MB (54262764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3788e23dc0d5628bd2d6517c498b5ae03e18b2b529b79b0e2c36d3305290c14b`  
		Last Modified: Fri, 21 Aug 2026 19:00:31 GMT  
		Size: 66.7 MB (66690318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c141c6b23c280480bf9b8a3b9a95c07027555bc1350b3c81110d195298efa6a`  
		Last Modified: Fri, 21 Aug 2026 19:00:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:55ea73a9c2a4a5956061a8fef3afd1744b6b932dd6fdd8cddf22cb41189c06ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7551277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c300e4545eb044b43b1194a5a2bc5c5da6d4529b6da5ecdd88c2ff5ccaad77e`

```dockerfile
```

-	Layers:
	-	`sha256:243b88a59293a3884f7f34342ff407a9243731dbc42255dae7955c5c88d77441`  
		Last Modified: Fri, 21 Aug 2026 19:00:23 GMT  
		Size: 7.5 MB (7536811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dac85f8435d7af186d4affcf4006da9a6d57aa9e90d38f4b793d420b20a346d`  
		Last Modified: Fri, 21 Aug 2026 19:00:22 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
