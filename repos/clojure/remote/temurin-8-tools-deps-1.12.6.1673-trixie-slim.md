## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:079e4d61a7653d1685c24fef3a77a3d7702a4547c9ad622b90fd61f1f4626153
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f40bec342766bee7e99a1ce6aa49fefae886cd708bd7678b04e79bd3c5516c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153986846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bbd4f647d6adbe65b4207ef3d6d7c7dd8369229a84c95542881c70de79a9f3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:12:57 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:13:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:13:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be83ff5faef148190535249b485992f21b3eba8f94fa7af842ca92947487b885`  
		Last Modified: Sat, 19 Sep 2026 01:13:31 GMT  
		Size: 55.2 MB (55164390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a421bab48e320df4991719e01c2a37b7380766819b0b4abbd5807629a9ad74d`  
		Last Modified: Sat, 19 Sep 2026 01:13:31 GMT  
		Size: 69.0 MB (68991394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6f3630f71d04c6f1d6bfd8b909e3e25f43d39aa73d863acbd5cf475c48aa2d`  
		Last Modified: Sat, 19 Sep 2026 01:13:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1052a92364f5ea18cb5af37ab765483d87662ee0fbcdf7bf56c6ba380362fbd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0495f1301312d2adcedacfe391c7a764f895827c2a3a8a41a208e21e443c4d1b`

```dockerfile
```

-	Layers:
	-	`sha256:bf38cb7167d05101071b5372dcb26cffca8331976a942dc06d115f44a7daac45`  
		Last Modified: Sat, 19 Sep 2026 01:13:29 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d00130d2e6728c86e213ac6153070f137e62d67a550f74378436e50d6e5c469a`  
		Last Modified: Sat, 19 Sep 2026 01:13:28 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bcd2a9bafe26f47836f852395a99a1c6ca7426c31b564642bba3ec0d2ab7901c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153261551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1298c3951914aa212c9e924c87ec87ab26302c5c4f3ec33b2275a0016fb33fd`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:20:24 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:20:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:20:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d55cd58698d852c9fa93e6f1dc504c68ac35465976353eb4d21ed2bc05d4c07`  
		Last Modified: Sat, 19 Sep 2026 01:20:59 GMT  
		Size: 54.3 MB (54262766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ec72df124447d4542851cb5ec7d2bb48d4629d883cdd4764f514adba0abc9e`  
		Last Modified: Sat, 19 Sep 2026 01:20:59 GMT  
		Size: 68.8 MB (68808450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f0199bd151d5f9cb8bccdc139c6caf9a45a09feb416f1e50fa7c6bfc5959ee`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:878520dca780357623e4eaada719bb9bedd700084eb67c8cb2e0b9c87dad2a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92ae31551fdf6c3855dfa9bb4623143d7d7a891576869a8531403f7d17e1ebf`

```dockerfile
```

-	Layers:
	-	`sha256:e2596765033e3221b8b3624400563093f72ad7024be81419eba7a24d5ab56383`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f7ef2e4b2c95c6111f6f287c2f27596c18ef873875a19c9cd17b6f540d969b1`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6ef9be3a866e5573fd8303b21c56dbe7c2a5610d841ba138d1ca1eb0161e264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160724610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cccebfd84863f761067e009a701ba12116251753c905ec86ccf49c63622a94`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:38:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:38:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:38:00 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:38:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:38:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:38:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b0a05fa68f72ab703029de3141ab1b3e101a9ff56ca610674cf4de1a5ffef7`  
		Last Modified: Sat, 19 Sep 2026 07:39:36 GMT  
		Size: 52.7 MB (52670664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c4ec32ea54818d2213c7c8428ed582bd8146924c29eb4228c45631b7e22660`  
		Last Modified: Sat, 19 Sep 2026 07:39:36 GMT  
		Size: 74.4 MB (74412065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2b3af47695a3aceebfd706b72f0efc25618a9b305478e6e7ac39f6047a006`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14fb32edfae8795ecab54efdb8425b70484e700085525109f501e6b6cda9770a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e28150ac250edf2ebe6bb919e47a76d6e3f1514d5b5a5e6580cf6c4a8f273aa`

```dockerfile
```

-	Layers:
	-	`sha256:904dcf15c83a627291402d2776d3f898da382ae38e939c34dde35c5ba690b515`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cf7216a4c91514259700e37e458f31b48070a55e172e818e03893657ffb79e`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 14.4 KB (14429 bytes)  
		MIME: application/vnd.in-toto+json
