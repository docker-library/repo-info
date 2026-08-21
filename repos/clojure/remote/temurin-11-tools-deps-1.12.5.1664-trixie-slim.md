## `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:6f2866c90e32017f0469a376db3e044a6ebdb5195a49c3f384199a90997d1e8c
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:61e2af79f0ffe1b15f51284e63943d86c7a27558f8cd8d20cdde78814a2cb9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244608057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c48b50ecf45c1da26e6f91a3a8b767234d58affd3e3be1f60c57c884733c7b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:12:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:54 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689a7311062ec8978f8b86d1f703654e06fd82ea9cc7f6bbf9c75943cdea08da`  
		Last Modified: Fri, 21 Aug 2026 19:13:36 GMT  
		Size: 145.9 MB (145861396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e95dab7b524881817bc9f87eb48cbc511af36894a353bb01e384647fc6df02`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 69.0 MB (68965250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5ffffc9df6563b660aa66d83f8b86e628660a1a18fb216d7005b270306aed2`  
		Last Modified: Fri, 21 Aug 2026 19:13:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb17219ec1b7bd3adb1750ac7680d638b8ace54d803a831d40761ccf7a9abe0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a003c9e537f7b929dd958b7cdc562857271771b1b5451dab080c694f795a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:454eb81977dd91eb19cf7e203500c822b11c4c748319687226e4a8a5c6f542c3`  
		Last Modified: Fri, 21 Aug 2026 19:13:32 GMT  
		Size: 5.3 MB (5276878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ca9bb654250472d4d589af3306948abb54f4df94f54b1b33c7463656d739589`  
		Last Modified: Fri, 21 Aug 2026 19:13:32 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:25ddc51ac9f3c52ef127d64d06e4ce52bb6fb286bb38739f45349c419f27b776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241496500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020b2f5cb313508077bb66fb0c72b3084f92656f76ae0eae0ac5887cd943a358`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:03:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:03:01 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:03:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:03:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:03:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3f787af03cd72d26fd9d1370e172d1443c70cc28f4efe024f98f056697e0b6`  
		Last Modified: Fri, 21 Aug 2026 19:03:44 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9696f36d6f2cd8a65462d567d1ec944bed73d06ebc8e320ea40e6d683f507fa4`  
		Last Modified: Fri, 21 Aug 2026 19:03:42 GMT  
		Size: 68.8 MB (68785632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d95f13440dfa27c2a04479cdbb143a5a9fcbf62645bebe65df5d21027e126b`  
		Last Modified: Fri, 21 Aug 2026 19:03:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aa4dcd74c176e1d7c88144254fe311e6db1e289eef4a05791b32113a3cba89de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b992eec2305087cf10972532884d2d36ccfc96c07fdc24a935cf9080765976e2`

```dockerfile
```

-	Layers:
	-	`sha256:5f2f4e07b344bdca0d3f652389afff5dd3992958a1d14039917cd602779f5aa6`  
		Last Modified: Fri, 21 Aug 2026 19:03:39 GMT  
		Size: 5.3 MB (5283257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54b10b18245b5670fcc0e0cbea8a6327463ce54aca3e073bb494914560b78b1b`  
		Last Modified: Fri, 21 Aug 2026 19:03:39 GMT  
		Size: 14.5 KB (14513 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:109c3d6cfed1095a77040af7058489edabdae9d121a752564cb421c476d441a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241088246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece44d2bf206dfbc2858ee0c7979b04a74c5b925d28b7e59527f468e5c4bab4f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:59:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:59:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:59:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:59:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:59:15 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:04:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:04:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:04:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb22f8cd11012128aeae41b646e618ac6e218432028e6138ccabbabaef027ac0`  
		Last Modified: Thu, 20 Aug 2026 01:02:33 GMT  
		Size: 133.1 MB (133110171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e75065d1e44a8f7dbd57399501311e5a3d1910ba749529e3dd9a0b943bbf58`  
		Last Modified: Thu, 20 Aug 2026 01:05:15 GMT  
		Size: 74.4 MB (74376086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e304cb80ebdda9fd1c452852a3d0c1bb9b39a26939779f22e21df711a9454f1`  
		Last Modified: Thu, 20 Aug 2026 01:05:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95581f7018a4c128862e8c06470a43925ddea910cf4bc4b030e050c6cc7ac49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2862add7bb33f519fd79b1caa9f8656663c7d7e9316733b789c9198f38dc723`

```dockerfile
```

-	Layers:
	-	`sha256:0421b5f2071a2090ce615f571912bd43c5c7b1d2fac2d746fe5d61b07b2ac6a5`  
		Last Modified: Thu, 20 Aug 2026 01:05:12 GMT  
		Size: 5.3 MB (5280636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f0c8d15bb94c4fb58e1d0f3c354db88fe2e0828059ee444b194c1bcd93fb6a`  
		Last Modified: Thu, 20 Aug 2026 01:05:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ef31491aceee6b299a3b6a8a10d5143d4a51890aa05371e4367d022ea7ed3d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226433985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c97b5190e05b218b2016c7fa71a2f83fa72e1e676b499400f6d06ccc0cbe4cb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:53:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:53:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:53:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:53:57 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:53:57 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:54:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 18:54:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 18:54:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca24a537e1c61734e6554ae1e0b9d78150412da7ee43d4d4507a1506da8b5f5`  
		Last Modified: Fri, 21 Aug 2026 18:54:39 GMT  
		Size: 126.6 MB (126641477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9134294c4b11f2bac81aa517f927484f24c63288be446101e125085533fb5bd`  
		Last Modified: Fri, 21 Aug 2026 18:54:38 GMT  
		Size: 69.9 MB (69945292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48722e3c804653d26b4d1236746025d8858120a4e086feef215087068c0e86a`  
		Last Modified: Fri, 21 Aug 2026 18:54:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ac48ffafa5ae8dccee4da132a4ddb1ef0b2028a98813817221b0e9fec8fa3519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02f54304d2985821c3b6bf3ade7dcbe669d8aa3d0a4805408f17a07e3c97cad`

```dockerfile
```

-	Layers:
	-	`sha256:95a296afec9f8a749baed5f102026d71ef4cb18e913daa378243df035a138930`  
		Last Modified: Fri, 21 Aug 2026 18:54:36 GMT  
		Size: 5.3 MB (5272806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6ec1cb15790f1b489633c0b33b0c205afc627c04e5b5129d7f4bd7d7ecc3947`  
		Last Modified: Fri, 21 Aug 2026 18:54:36 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
