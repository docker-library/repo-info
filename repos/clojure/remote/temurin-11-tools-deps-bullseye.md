## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:8f2e37c8a94e3ed30b95e754a4d2279f8df58897127668d1632bed3f0007d0d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:671a6f2f3678030ef750d3e2690860bd10b61d6b140157c26e86d87a066911f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266175918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcff361b690e839d5cdd3c4d30de597cf70924a66d8df094c263dd444db43e0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44a1d9fe0985457c719ea52f0e536b68d22d0eb9b1970946016486539a16647`  
		Last Modified: Thu, 16 Jul 2026 01:31:42 GMT  
		Size: 145.9 MB (145886199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265e679b92f06dd152c114f5d2ff37d7b90bb02d59d1eaacb706c0762a683a31`  
		Last Modified: Thu, 16 Jul 2026 01:31:40 GMT  
		Size: 66.5 MB (66512497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3a1fb9a78517e4298962d2d39abe6d64b0f68f15be189c63eb84b736e4bae6`  
		Last Modified: Thu, 16 Jul 2026 01:31:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:12863936fb347b6a9f2523e98dd1550b5256e7fd9e2dca500b2d1710b7ee61f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d76abf4899a8b1c49f80b77fecdc8494ffcd77de1cd734935d161b7a0a5cf0`

```dockerfile
```

-	Layers:
	-	`sha256:ffb1aad7bfbb1c78ff77c144a4945c6dd50b7c84cd802e3311c1054ee6c9345c`  
		Last Modified: Thu, 16 Jul 2026 01:31:37 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3da1aa720422023564273fc8e1fc2d40ecf67b783c104ad9ce94e77111617223`  
		Last Modified: Thu, 16 Jul 2026 01:31:36 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:209b053b8ad9fc68926c5b401185ed4f0c9a6319c79fe334449f4a3aea43cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261521743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5bb5df2032e009f6f8d1505e2b2704958d1ea3d50cc9c79a3ff88dfe5ebe56b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:20:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:20:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:23:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:23:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:23:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d32c2636c121634a646908fb56d739eb7a17dc25143c5de47ed356c71b91741`  
		Last Modified: Thu, 16 Jul 2026 01:22:10 GMT  
		Size: 142.6 MB (142582149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462190635de7716a8d359ba2c764500ad585f90c094072a0aef3213bf49fdfea`  
		Last Modified: Thu, 16 Jul 2026 01:23:31 GMT  
		Size: 66.7 MB (66678059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e153bb81365b9f3a939d77bb0bd6085a257f2e3d9cd1196f6369d419720bb5`  
		Last Modified: Thu, 16 Jul 2026 01:23:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5eaf94dd8958cc4e8f94e0101134b755758b12412028427938b98ee7c6e6f5ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13243c44eb5fb74a6bdaf0740a3d80835dbda1aff5e80f6bd9c9c97f1663a11`

```dockerfile
```

-	Layers:
	-	`sha256:2ce149960be51b5900d0d32cfde331a426db580885dd3ccaa706fa8c5b7e1e5f`  
		Last Modified: Thu, 16 Jul 2026 01:23:29 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aae2da146e846d920df7324ef66420a0bb11c5f9cc79fadc689eb2f2baaae4d`  
		Last Modified: Thu, 16 Jul 2026 01:23:29 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
