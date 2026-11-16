## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:c0593b31612980b83ab0e28b7171aa43e63aa2782fbd506ed472caff902243df
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
$ docker pull clojure@sha256:f8f801ccd69dcdf0cbc9512637c284cffe264dd6694fbda0265c18b2a1385959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148915398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834f19080e6d65b0fbdc1f3f4c4dc01b62742deb8dc727171bffa85a2358c4b7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Mon, 16 Nov 2026 19:58:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:58:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 19:58:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:58:34 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:58:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 19:58:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:58:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc06748c3e8feebdd0c41973b0a4e415d5dd305aba8d4287ca1811bd87259abf`  
		Last Modified: Mon, 16 Nov 2026 19:59:05 GMT  
		Size: 54.3 MB (54270362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82576e5850759ccd36ce7540cddcc5e62139eb2cab85a31af53447387b11d166`  
		Last Modified: Mon, 16 Nov 2026 19:59:06 GMT  
		Size: 66.5 MB (66500031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a43aa65490eb8881106a57a084d0f82ebdc68313099dae20a335bccdbbd5`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f95a2197fc234e803da916118448cc8b0cfab3a6846c5ccc78e9f1971f05f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50488117ef772981101cdea52af2e3e9dfd0ffa6b4ba7a81ca93f7568bf71a55`

```dockerfile
```

-	Layers:
	-	`sha256:c324d8029575ec156ec5c0031feafa479a1c079795a4b96757db2110490f8dd8`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 5.2 MB (5244928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42896b9d6b8b3f5540f1e372277d642ba559fd4f538fc18b43ae205beb350f12`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 14.5 KB (14519 bytes)  
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
