## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:26846aeb46fc1b4a13497776f86f7bed2e1a0c2b1f3066143cc2103073d4cb02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9c10972d1346905d47d4f29c165fe5edb774d69757f32ef6213089d9d5f08e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240606768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f13156e08e55fc3c5395c01557e13abd4e1768eb38621780130ab7bf916f815`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:17:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:17:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:17:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:17:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e42a0e85fcd590c5e5ba522e86d6ef01aa8ef22c6a10ba8ebe51160a80423c`  
		Last Modified: Wed, 21 Oct 2026 01:17:43 GMT  
		Size: 145.9 MB (145864491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b92e4bf40c6f795b70492347ebb3e8307bf8bba8fe104328b19062fa588c59d`  
		Last Modified: Wed, 21 Oct 2026 01:17:40 GMT  
		Size: 66.5 MB (66493698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b3832a153defc8c84bb226e5996eb01fa4773026dadcb4a9b0fe47d20b99e8`  
		Last Modified: Wed, 21 Oct 2026 01:17:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:acbda4aca68bee8798a533f3d783df51b749c4388c9dbcb76c2fbcbdba43f22a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5151950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c73c48db888437a629cdef7d28e52c5e19f177fc3697b30ca0989f92fd3315`

```dockerfile
```

-	Layers:
	-	`sha256:7290761165a77510c82c291cccadf80315461e71d33dc1c4f5c8683318645428`  
		Last Modified: Wed, 21 Oct 2026 01:17:36 GMT  
		Size: 5.1 MB (5137529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ffd6881a5c9a7097f4aaaafd14dc7ac0abf32772bb5c8c7e5e8914fe00ba533`  
		Last Modified: Wed, 21 Oct 2026 01:17:35 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ea515d85ff03fea53e8fd3f77a7fcc18ef4f55f2cb5510b05b2193561d1f28d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237209913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853e63e3d4ca343e4acbbe79ce5e0d89bf90d3da7a19e5dd8270d53bf22695ba`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:23:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:23:13 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2744cf8ec9d4098fa5b4329c3d2118243d1cab1c3bfc05cb22303a28d800fa4`  
		Last Modified: Wed, 21 Oct 2026 01:23:55 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c2d57a9523533a7349df430ecda2db878b17c4b0481631c5e0b0366290e68`  
		Last Modified: Wed, 21 Oct 2026 01:23:53 GMT  
		Size: 66.5 MB (66494266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcae98c27f2f90c82a64e612c94f783f82c66083cf5b3fca53d048ddd7fd101`  
		Last Modified: Wed, 21 Oct 2026 01:23:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef2f763a18f5ba7c85f7a4b98d71feee9f260036ff108ad84b585bc306b4e072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfb3f47e0eb65bba256c7e43b81cb3ce2ad249b94475dfaf8974b0503d32a00`

```dockerfile
```

-	Layers:
	-	`sha256:f49897d50c36f92566910582263025a09da634eb87075e0f9264f2d0123bcbdf`  
		Last Modified: Wed, 21 Oct 2026 01:23:51 GMT  
		Size: 5.1 MB (5143908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:200c126a0d8ed1831328a4c47c6cbe6fb470558138b4c02e85ffb51058d486cf`  
		Last Modified: Wed, 21 Oct 2026 01:23:50 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e450c5d6f5464c12173c819cec6e45693d5c412457303de2c762dbce37e9e5af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239974682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af51595508dc9926bc51812eeb8a9ae39ee3e4c4dc138121a411da69383413bc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:16:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:16:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:16:11 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:30:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:30:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:30:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329da0ef69129f64c03ae01ac2ae5748d4ce0322cb53247d53562bbb3c604a53`  
		Last Modified: Sat, 17 Oct 2026 05:20:37 GMT  
		Size: 133.1 MB (133095136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4217d1ba01df179bf8b8f5a719d4fffa40d6c9a697a0f8f004fcf159d79e1817`  
		Last Modified: Sat, 17 Oct 2026 05:31:23 GMT  
		Size: 74.8 MB (74786464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d688cfb4a53aa76101d636d65793b06aa1562b3466a076bec27b99d7d1686`  
		Last Modified: Sat, 17 Oct 2026 05:31:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b3dc9b6e028413a79f1e093731d066bf3e8de7d62ace6ee238862e329da1462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c987d941784428c1c30c2cbfb0b612a1388c16eccd6326f10fb6b4f185a19c0e`

```dockerfile
```

-	Layers:
	-	`sha256:5f59691475b4682529e025c669dc755792cceb6dfe3fc80bcf28238c31efec27`  
		Last Modified: Sat, 17 Oct 2026 05:31:21 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:923d99d06df0e9985b86f53da46e505392a5ee9e76b6f232e54b07d05bb16592`  
		Last Modified: Sat, 17 Oct 2026 05:31:20 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
