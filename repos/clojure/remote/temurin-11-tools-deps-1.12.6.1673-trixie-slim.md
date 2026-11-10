## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:23074dc46f9d5fa946a334702e0073a02ddfa8bad3ba8c531d6f7b492e83daf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8ac9b42c00fed788fee4fe2f33107a6bf367469180f8c5b030adb692c2383da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244767918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fa5de295e395544f0e9d2ec2d2be5e734559d3fb3f82372d09f435f7bdb988`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:37:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:37:19 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:37:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:37:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:37:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7a30bad674ad0dd3f9e2be365f37fb3c18a707c9234a797e078d16fd953ba7`  
		Last Modified: Tue, 10 Nov 2026 00:37:57 GMT  
		Size: 145.9 MB (145921726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401119cd66014e6fe212bb241b45d51e4382cb891da3fe801395e5160713ec61`  
		Last Modified: Tue, 10 Nov 2026 00:37:56 GMT  
		Size: 69.0 MB (68989413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d91d6580af486c183fbfeaa2a5acacd2eee880b5584b01c4d5718d5ccbfed8`  
		Last Modified: Tue, 10 Nov 2026 00:37:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0091c5b7b223a67698bda0c0959060e0680c756556c8ef082bb05734a54c5ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e93aee789ee0145328c56cdb3c95dad3db55eda3911493cd755cda84fb608e8`

```dockerfile
```

-	Layers:
	-	`sha256:13beac5199003baf524ff86048ab3140a629fce4c8172c0ceb880c4c94160134`  
		Last Modified: Tue, 10 Nov 2026 00:37:53 GMT  
		Size: 5.3 MB (5281575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad75ac93fde4b41cb444abfee720bc863472760b9ab77c9938c88ead988489ba`  
		Last Modified: Tue, 10 Nov 2026 00:37:52 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:745b42a69498ca122723596cce1c5478fb436b079a688d66b46a933f802ee47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241640886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a849961c1fddd620fc1788818f4cd6d15aadb9991c96aa2a1e16637a03cd0d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:36:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:36:31 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:36:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:36:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e65759fa0305bf7898b15cf784cbfe99c0f92ae77ee0eb58716d715d08984cc`  
		Last Modified: Tue, 10 Nov 2026 00:37:11 GMT  
		Size: 142.6 MB (142620967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82129ea3f8987ecbe1fd2ed665441ed31ae1b9c0f4cb63873e82b3d8f6fb9b5c`  
		Last Modified: Tue, 10 Nov 2026 00:37:10 GMT  
		Size: 68.8 MB (68805234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf20033b6caa0c1cbb67aead38e151afd44cdda5b987180dadf9d84a351ca9`  
		Last Modified: Tue, 10 Nov 2026 00:37:06 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2026d81bf874da9a4fa50bc610609366c65acb5dd8de4dd22c1ab03ab5059294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab8ad7fabb3d44201577417a3ee08e342900249aeab63f61ff9d005fbdabd1a`

```dockerfile
```

-	Layers:
	-	`sha256:0bf6be26f52598ecf3a4042333e4a2a1983e356fd02f0c181b2458c0c3254cee`  
		Last Modified: Tue, 10 Nov 2026 00:37:07 GMT  
		Size: 5.3 MB (5287954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65cde50e0b8610bcce441b302778a00130a8bfd85a3d54d968fefefc7f1d4748`  
		Last Modified: Tue, 10 Nov 2026 00:37:06 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e68404d9a701f973fb6c5e4d6f7bdcaefc920642a1d5dcc95670dd5175500e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240358950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25b8d92958e4fb7998c3a1047e7eed115214570894170039aba2a04791bc49f`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:12:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:12:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:25:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:25:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:25:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5879de0790458ab88dda2f95824e4df7ec91828c96c5629829900a960eb1d953`  
		Last Modified: Tue, 10 Nov 2026 02:19:14 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b45908a97fa0f890950c872646a6e4bd7b271a8cc110f3dfa3de282d9e0963`  
		Last Modified: Tue, 10 Nov 2026 02:25:49 GMT  
		Size: 74.4 MB (74418455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a14df9af04beffb81227946147f287c52d13fbe8fc1125b415b9a6bf68921ab`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a1026eb18e54ea82dea1ba02c10e60c112492def9224d31475f538572779b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62f8489f590dbb628fd45e44ae2213f99f9d9133bb2b1ddcfa11666a357dc32`

```dockerfile
```

-	Layers:
	-	`sha256:2958462e866d854c7bffe254daf1d24e70de982d26d735497fa7f1e5e38e87a7`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 5.3 MB (5284085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b074b13fab0a84e6aeefbd456229aa159cc2b862e3304d04c859f3b6f5b255a`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
