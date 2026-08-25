## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:51812e133f1c4c1519ba0f3f1dd3c863de5db2fe731f7229b4a512b0f33f5704
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

### `clojure:temurin-11-trixie-slim` - linux; amd64

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

### `clojure:temurin-11-trixie-slim` - unknown; unknown

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

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:10492e7435d360e8aabe95ea76f03b4fdb0965c721444729af4a9c3ba6be290f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226dc067a5f4e1c70acf8392fedb9dc4ff15b1cf889f7bf1c241fc0b2c1c9e19`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d991838a4f186e7e4efb53dd2e493b641c081aef3a952d09fda6339dc15567`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68d39ab539e0c4201e635257d9fd5de35748525290633883268e20ddf712daa`  
		Last Modified: Tue, 25 Aug 2026 01:32:12 GMT  
		Size: 68.8 MB (68785702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a6b80f5156a2230cbdaf3fe13e7e82bf1ea9138b34a2e299e4e64417a9ce9`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e735013e1e0b3a947dfae524581e7efebf20e21cd2127f6a28ce5970b9c792b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f3d7dad50f6aea051ed778c45990a7b95374811f50070cbda6eb93a78db4306`

```dockerfile
```

-	Layers:
	-	`sha256:433860dbe43f5ad2bc6a0ff2836f7113f9db520a0443a41589cb06b098acdd3c`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 5.3 MB (5283455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f426b0dd1d07bf0b3019b719ba7d6c0fa8aab69f1b70779a2da2c35f4e39448c`  
		Last Modified: Tue, 25 Aug 2026 01:32:09 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:63389aa7f96cdd3af65598e971ee7952f73acb6d3e19f1290bed285e0a545232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241068660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:234a66bd1e6544fd9194e1f4c95b734a2ebbaa795285da97537b80e4b553b9f4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:45:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e60a2623f280e514733a3c6106f0331ee5ae805f8112b7dba1f4d280f5d668b`  
		Last Modified: Fri, 21 Aug 2026 21:46:15 GMT  
		Size: 74.4 MB (74376745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73172a159d4450e0e4b676b9d016a8e1811274da7eace3ba4c679cd9fb7bfda5`  
		Last Modified: Fri, 21 Aug 2026 21:46:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dce41509c2abb47277413b14d7e606f9f7b8b27677efd8feade025b11775c969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87041afc3623b5cbba4bd6729d43643ac3e58880c4923b567ac57715db22612`

```dockerfile
```

-	Layers:
	-	`sha256:9cb90b6f1de925dc989a8f22718b196f8385df0a61857b934d90134e2dc4b5db`  
		Last Modified: Fri, 21 Aug 2026 21:46:13 GMT  
		Size: 5.3 MB (5280634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a22916f0984030474cf30c1919d785154e9ab3dbfc360f12ac30015a2529119`  
		Last Modified: Fri, 21 Aug 2026 21:46:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e28cfd561b641192e98fdc1c9ba25a1e716e8f55b7b790cb15bf06830007f727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226455250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d9f0ea03959671ea11028d548a23e8cfebb8f3ecc5c932f3b4ed677df4f69c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:05:23 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:05:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:05:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:05:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35eb4f87f9990df83a93258c540b607dec1daffc7e592f8ee724ff3bd24949bd`  
		Last Modified: Tue, 25 Aug 2026 02:06:06 GMT  
		Size: 126.6 MB (126641467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208106622fa3d7778999162404f36cddf270b4896915a7466c060cf760982d18`  
		Last Modified: Tue, 25 Aug 2026 02:06:05 GMT  
		Size: 69.9 MB (69945421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa99cf1f203aef6b2253ed3be8b48689a1329e3ed81bc07949bc71d331362637`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f98a7b205e2a2bdf544438fcf29f3bc14ebed4e6c21136e145edf2b00c4b6b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0e4037926a76d143d29599c6255c3063fc271f7622d4b74964271ed0b1b60d`

```dockerfile
```

-	Layers:
	-	`sha256:cfe3f56e65681c1fe4627a33efc81a25c2c9ded0bf7e05ca3ebb40e878ac8c5e`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 5.3 MB (5273004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f58275aba43d13293f0325dab93a7accd1245224b4a19308ac36edc2ef205fa`  
		Last Modified: Tue, 25 Aug 2026 02:06:03 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
