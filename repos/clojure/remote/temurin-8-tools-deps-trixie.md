## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:62e9032eda194fddb44c85e7bbd976d0d59b2ad9c0367c37a7469ff5837679a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e21cbc750d04fe42bf3800a6e11a5e7270fa72793b47775a385dbe3bca1db2dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187016268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33ae838d0e7f897fb6941ab18396dde65531cee00a43e0da04ea108f91a27a2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:09:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a438808fa8cd8dd5433acfc13f3da2bcf3860554cde73341b1c2808807674216`  
		Last Modified: Fri, 21 Aug 2026 19:10:04 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6791964905693d61d55fbd9a1060c61cab0b20aa144a7811500168c7405542c`  
		Last Modified: Fri, 21 Aug 2026 19:10:04 GMT  
		Size: 82.5 MB (82538907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63fb41c599383f139e7800712441fd40b4b010143da73c79c702d6e9ec4bb32`  
		Last Modified: Fri, 21 Aug 2026 19:10:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:17aa7559289b61cc36fdcc70053e8a4249935444e50c690e96ad5600c24e3561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a901855096fabfaf04fb0aa0913b240cf4fe27ade3602b925e6fef107a1b4d`

```dockerfile
```

-	Layers:
	-	`sha256:dccfb07b31de2ace2b012f878a1f28f2bc9a5d722a7a89d34b8074237ba2ecce`  
		Last Modified: Fri, 21 Aug 2026 19:10:02 GMT  
		Size: 7.6 MB (7589253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aa8663f3d65afb99fc1e504f0cdccae88e39657b732512ee051e6a49fc2a3f3`  
		Last Modified: Fri, 21 Aug 2026 19:10:01 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0a0c9de7fcd6a88fea86966483c3c82eb55d57712686c1434a1cd535d6c6cf58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186296559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ab8f572937fb61c22fff2debd05be4c17afa9bcfa060093c6dc3952e71dd7c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:00:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:00:29 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a508a346212b60c74a235760a22276dbb2b93e3d686c24c7000887e66e46ae`  
		Last Modified: Fri, 21 Aug 2026 19:01:12 GMT  
		Size: 54.3 MB (54262767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c99363351f7f9a8c3d759bac14dd525d69c4f8f9f5ec42f69a3cb7775d6894`  
		Last Modified: Fri, 21 Aug 2026 19:01:13 GMT  
		Size: 82.4 MB (82359301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03b133321063a53f328717c21a7cdc008f6980225599dcc3a47f5c144f03e7e`  
		Last Modified: Fri, 21 Aug 2026 19:01:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b73df692662ef66c48181ccc9c5c4a1eeeebde3dd9811a4dd195ca387e158847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e586091e0a710729a7eee9bd64fbd254eda6695cfea42dbd0292672835361062`

```dockerfile
```

-	Layers:
	-	`sha256:d06517b0e34ba586a8446893893fb51c73b7233c6a32083e4f6c43791d2e21c8`  
		Last Modified: Fri, 21 Aug 2026 19:01:09 GMT  
		Size: 7.6 MB (7596346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a2b752721ad2df13a78347e26424b601efe1a966d3ee5c825da4e281bcf281a`  
		Last Modified: Fri, 21 Aug 2026 19:01:09 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:10af3928496a02e52e7ab5b3fe9c55db179ff3dc4f7c58b95cdd67f54cd66baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193753983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b7ba6a28b4136b0c4cae612a06258cfb141102bb752ac118d40e95735b53db`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:50:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:50:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:50:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:50:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:51:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:51:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:51:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29d76e00840a9666ea9153a85885909b8c336dd8c1935f760839aa963d29b10`  
		Last Modified: Thu, 20 Aug 2026 00:52:15 GMT  
		Size: 52.7 MB (52669122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c38ed231265953771ab0ca4362ac236eb98836cd2c5ee20e2d8a3bb9f1578e8`  
		Last Modified: Thu, 20 Aug 2026 00:52:15 GMT  
		Size: 88.0 MB (87950610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53838f0036284296897bb6d8620974b3c557402a2d47f488cf7daff3c33a90e`  
		Last Modified: Thu, 20 Aug 2026 00:52:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dca9cb8c988fe0c31391970306972c85aa93a037c7182ff8c4437cff00606ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b8dd4a0d1a269867a012ef660da3e3044c0d72e8998d3709aa36eebd890527`

```dockerfile
```

-	Layers:
	-	`sha256:b96bad587305397fdefd8a3a68ef139b109c7dc06a533f0a8940f51b136aac02`  
		Last Modified: Thu, 20 Aug 2026 00:52:13 GMT  
		Size: 7.6 MB (7594269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d4ed6628470c73b7e2a7c096b50d3b28ecb23043bccc2215c7a5d360a80fef`  
		Last Modified: Thu, 20 Aug 2026 00:52:12 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
