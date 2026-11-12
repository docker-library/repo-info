## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:fac916190e70db0eda63c259ff523b438f3fa399b402bd11fbff70224dfde91e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:30953e7e2e419b6ebb1f4491ace2040136d82c492816de460d8a512aa3b3e500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149964531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b7881fed94cf4e36532420f9e34999ab2f84e62547760628035917d513dca7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:45:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:45:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:45:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:45:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:45:25 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:45:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:45:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:45:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db0c6aafd14b14a155c2a3fe741bdcd2c01d501372efb19ce52247838f29629`  
		Last Modified: Thu, 12 Nov 2026 00:45:57 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cea071a165fa57c26662bf4b9627115d2d15261ef54427ef22f242023c62142`  
		Last Modified: Thu, 12 Nov 2026 00:45:58 GMT  
		Size: 66.5 MB (66508000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4373c01455e0ab02cde3e60d0a62744e9b03fd0593d93949733acf68e9ff8`  
		Last Modified: Thu, 12 Nov 2026 00:45:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d46d333bcafd56e77075d0539a26050a2b07df02b9c437def69c0b718ca8f05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cc3a31586ccf9bcf0bfe25fef7b4688f4c39846aa1810633d940936d548a5b`

```dockerfile
```

-	Layers:
	-	`sha256:e0df3c5d04af63d36fc2c6751bf1aff858775cd7b10c01301ca1553f19c0930f`  
		Last Modified: Thu, 12 Nov 2026 00:45:55 GMT  
		Size: 5.2 MB (5238467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0df39d205661a3d5067205c1723614233d302d9eb88152aa191082815fdd2cff`  
		Last Modified: Thu, 12 Nov 2026 00:45:55 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:86f27d17788da25ebf622c58fb2c6f8946702ac4183a0b5ed5098f4da07bb4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148915679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5a97a76116dc11c07c3e976def9ac55d11f6186ae06853c209ab1456bdb67c`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:00:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:00:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:00:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:00:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:00:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:00:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:00:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:00:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:480dc19a31049886c02272ba19b303217cf59d73e3d7a08edfa55d6e3240588f`  
		Last Modified: Thu, 12 Nov 2026 01:01:02 GMT  
		Size: 54.3 MB (54270346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ba97c3527f04805950bc7e503f5cf5a401e63b5e5c33fc5844b56edaa6816e`  
		Last Modified: Thu, 12 Nov 2026 01:01:03 GMT  
		Size: 66.5 MB (66500329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e86cb1baa1e0141def418a30c8f17ba9c01dcea99b806dbbd556aefa5f5f30`  
		Last Modified: Thu, 12 Nov 2026 01:01:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d8bd98e30b29570a826ad0c5fa2b7bfe36da44cb7141f1f7482d9761eff2a104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a0f43583b751809c686f257a521593ead12520b98b710fa30aa1e1fe0f49d31`

```dockerfile
```

-	Layers:
	-	`sha256:e3dff53079f7d6d772aaf862e07f2f0c280455165aae906766c9a36c0238de14`  
		Last Modified: Thu, 12 Nov 2026 01:01:00 GMT  
		Size: 5.2 MB (5244928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af2856f1d45c7f0b85b717eb710fd813fea977089923ebe89f1d9b30fa0563c`  
		Last Modified: Thu, 12 Nov 2026 01:00:59 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f94da62819c291703a0da45388b60498ee402583fb8089acc15cd58ff90fa4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157117231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ebee97138e3a828c6bfbf45aeb6d672910c207858d5e8567237d1aa023a3d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:11:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:11:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:11:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:11:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:11:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a209ffa50a25fcb47e851538b91037f7af1d05cb89e6ad23aa249e44a560ab`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 52.7 MB (52689135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773b07e8f30535c49b4fc323144033148398400646b9989f17d8e9af702b7ce2`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 72.3 MB (72333890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1dcb583277ee206e58e4e267a0788e138770960f86caceba113a9e6a5b166`  
		Last Modified: Tue, 10 Nov 2026 00:12:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:538fbeec4975ddf88d9da36659210581f24db3e997412d6e78a497d896eea687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ee0ac73a7c6b76786be3d0e45342d805b8fbedf35e0c79c82eaafd1a3d9376`

```dockerfile
```

-	Layers:
	-	`sha256:e2f820f1c3a28dd534fec078678cca4f30a91d947ff1bdfed617539d7d01d3f4`  
		Last Modified: Thu, 12 Nov 2026 07:36:31 GMT  
		Size: 5.2 MB (5244220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b00a62940dbe4841686e2df604a82c752c7fd3f79dc8e397d82d1e2239ad1afc`  
		Last Modified: Thu, 12 Nov 2026 07:36:31 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
