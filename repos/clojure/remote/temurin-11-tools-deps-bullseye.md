## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:27dad941a4ab05fb145a192b96e59c1c1a1099e7b83b5aeb5c90a935df02bcdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:608dafce19580059094a605dfaadb367e8b67df8feaf5535f54296f6a79c1904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266176214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b1753f667307159c491874014d8bdf72d0c99ec40b73f31887bd4f3950ca05`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:17:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:17:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:17:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:17:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:17:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936fcec28e2af0fafff13a5306600f1399691ac8beea18384347005ad8740723`  
		Last Modified: Tue, 14 Jul 2026 02:18:27 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a5114b15eb96463aeb51d163f4050f3818fed2fb370dcbe947b2870d30d22d`  
		Last Modified: Tue, 14 Jul 2026 02:18:24 GMT  
		Size: 66.5 MB (66512811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d105485fba74cc21e88b9c8d05cac58b25d3aa3605d82409e2658316ab5209e`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:23df609cf065a2131f9a4fa02b125a51fcf6b4807a183c81742ce651edcf9a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40920999042b79e549f2f00b61dd29a42a8571727a4ff7c35534156b0192112d`

```dockerfile
```

-	Layers:
	-	`sha256:bc53ff7f6aa35c1ecbdd59809389dd8a21236b9942fdc1d1b2f63804e815cbe0`  
		Last Modified: Tue, 14 Jul 2026 02:18:22 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24bb873a8c35a8aadd005d4dc7541acd41aefd6cb081b4d086d863f5e13e1302`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:53d5d2cd12190202bb9dc540c713076e350e206ff9a2c1f59b813a2401f24a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261521139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb233ece7be94213d94b831cc85c3a3314b5f949c4021f8379e55610c8c6d3a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:24:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:42 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9fad46b0fd84dae802f5dbafc962fc53e8b413f61d95005cd29bed1d0772e0`  
		Last Modified: Tue, 14 Jul 2026 02:25:19 GMT  
		Size: 142.6 MB (142582194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ff82ced0035f0815567bc5fc9622461f675387bca7afd7d36ad481f4d794df`  
		Last Modified: Tue, 14 Jul 2026 02:25:17 GMT  
		Size: 66.7 MB (66677411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca492e1a0c0fba156d07d1fbcc139d4a7c89bf898b3404dccc4b80ee1661e15`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:4805e9d22479e5f389cea3f03868aa9ed2ae8369f27de86441135451ecc4edd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a902598fb03dc6954f46f6a8a77c1a3b775a0669b016980459cf403a169a29`

```dockerfile
```

-	Layers:
	-	`sha256:864c2575a98aae106e1c082810bd08df38dce88ab601b0e8dba9453b6432ac69`  
		Last Modified: Tue, 14 Jul 2026 02:25:15 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3370e1d23d86c81cd74feab8a0bf580433945219793c68e16d29a30a3b4b6f99`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
