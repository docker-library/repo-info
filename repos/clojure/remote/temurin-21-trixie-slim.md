## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:5378198424423e3d4264cd30b99e0cc6089a6d01bb92e6a565a48ea5f2e51519
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

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d9f47f18e3ba2ff776c250e3ac09e6c7c69f2cddde23045bbe9bc358cd20a4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256904646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7225013d0d8a3c21fabdfbe7d74d64d186e9d69be1bb0e931a0bc1d94bccd7c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:53:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:52 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d2c427d49bb240467f23fd162c415c5038d11e0911573b02062991bf8a5a8`  
		Last Modified: Thu, 02 Jul 2026 05:54:32 GMT  
		Size: 158.2 MB (158166950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f1b021bc451090a37f7f978d0986023dc6a9c3e174fc5f8b1b5c4afccbaeeb`  
		Last Modified: Thu, 02 Jul 2026 05:54:31 GMT  
		Size: 69.0 MB (68951236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19e2dccd0af09c625338702538258a84b36c4bfe24b49645dda4323634dccb0`  
		Last Modified: Thu, 02 Jul 2026 05:54:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae76d6a4d6deee26cc22b0e28d42ddcf31c112457505d0873808fe7884f026f`  
		Last Modified: Thu, 02 Jul 2026 05:54:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1275375cc6a45a81e151b592278387a8c433095c6cf19168fc0cc0eebee59f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b924127ba12266807f80350ca13f79150f944f5aa618251498e3d2e19672ef`

```dockerfile
```

-	Layers:
	-	`sha256:0a64b5d0aee31de118a0457286901a452e9f51913dbfd9ff48d9ec498d6b7f36`  
		Last Modified: Thu, 02 Jul 2026 05:54:28 GMT  
		Size: 5.3 MB (5259130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:839abe6f9545fb9699ba6118d8a33e12a7e996397ab5df82477f050d527acb55`  
		Last Modified: Thu, 02 Jul 2026 05:54:27 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9f0f5b02280a7fbd2c781d784c09a636d979eaa6cf4e185832ac2fccbaa41856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255388624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6626b14fb364b04bb9ecd1c356529c6bae96094beec09c23994a611eebccafc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:12 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:12 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2be4f681e1d0e3fdce7e0855923f7cb5b006abd933a49be15be6e62b9dc6aa7`  
		Last Modified: Thu, 02 Jul 2026 05:54:56 GMT  
		Size: 156.5 MB (156461308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7edac1459d28fe1051f97224b75d7984f26f6a7e32dd2a12fec700d0b143b5`  
		Last Modified: Thu, 02 Jul 2026 05:54:55 GMT  
		Size: 68.8 MB (68777721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97872dcc7e9fe3cb0db6a6ea7ac3287668cb6fc1d4086951b621bad2bab52994`  
		Last Modified: Thu, 02 Jul 2026 05:54:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deaba854b9fef2d673fa2d224f02b90efc366d0df243fff5213042fa7f290239`  
		Last Modified: Thu, 02 Jul 2026 05:54:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1b20add018893f3b8ea105d05110adbf7d2b8bc082315bb0a70d5ff0c9ea6a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5280975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6b46b23dd548fb12afcea8f2f0bfb40f713a7712b4e54b18f9ef3c028e960c`

```dockerfile
```

-	Layers:
	-	`sha256:a37ccc14029a1da31bb29054ea1a39cc6da765dd053a1062ecc044860c4bbd0f`  
		Last Modified: Thu, 02 Jul 2026 05:54:51 GMT  
		Size: 5.3 MB (5264891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30949f091ad8de1ca1d48f0d679fd1ad9e9f11fd294dfa238186240ce8569ae7`  
		Last Modified: Thu, 02 Jul 2026 05:54:51 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a52e0727cb4903a87830e73a0e552fc12129a47a935f45c7fcfc85fd5eb9ec0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266321333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2251b3486fe9a5d1c743d524200fe03cf1498d44671387c36e9e1369834f13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:26:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:26:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:26:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:26:51 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:26:51 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:33:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:33:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:33:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:33:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:33:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39aeca2848781f46b3a0a018658f1a0cce201bd3ca36f6edfed66092cf88c481`  
		Last Modified: Thu, 02 Jul 2026 07:30:06 GMT  
		Size: 158.3 MB (158343255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2883dd06a83bdae6dee2948ea55c6bc04153e36592dca90c99d4013726cc66f5`  
		Last Modified: Thu, 02 Jul 2026 07:34:17 GMT  
		Size: 74.4 MB (74370648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a407674d96ef45e027ec68f64455bc7c2be1e06cbb5e569634cbe936b63ae1`  
		Last Modified: Thu, 02 Jul 2026 07:34:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dde91e6a3ad39096d5ff6edf0776a8a5214a8d6d2230d6a774149a29adf5ec`  
		Last Modified: Thu, 02 Jul 2026 07:34:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6bda0ac1f1d0336cee84a6ed6fd02e9fbb7b81291e9c4c829007964b8180b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc5251e81a82111f4a02dc1cb76327f29d152b98ee5f9fae213bf000a3bc97a`

```dockerfile
```

-	Layers:
	-	`sha256:08af1f53cceb558bf35d3c4664fef5fb169dfb4abba01f7d7cde261ebce7119e`  
		Last Modified: Thu, 02 Jul 2026 07:34:15 GMT  
		Size: 5.3 MB (5263501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492fecdc9e3d2e54376b301b0ce1d13465b463515393a914b67af94589e6a94`  
		Last Modified: Thu, 02 Jul 2026 07:34:15 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:abaa7710f74c61dc0791816d0ce287527a24ac032fbcba5b3b3d3831b2c4cb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247173594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7e289cdcac96565c86029baeb4a856fb8facf5eeeb2765b39c15b038371adf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:04 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:56:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:56:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379993b8d831bf6e8d551a4166b64d4b23c835a33e7faa82cee1d571405cd45e`  
		Last Modified: Thu, 02 Jul 2026 05:55:42 GMT  
		Size: 147.4 MB (147388376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18530aeba3612a4ed88847eb686f429963c2ce4fd86fd25920c3b7ec5ab78ecd`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 69.9 MB (69932793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3798e3f6d95b9564a2d0d2b9f8b0f1afbc4affde8f596c73d318866d216c3748`  
		Last Modified: Thu, 02 Jul 2026 05:56:28 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d3f5b82427cda0583b7d8aeacc4a04e025c796140df0eaea25aa5b41f1169a`  
		Last Modified: Thu, 02 Jul 2026 05:56:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e77ac64800366422b34179f9b836bc9a563a831f004a957b0f46c2849b1f1e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f5eef234b2007962533b3cdf05863f005c4902a1a5ad1b0d1edd6cbfc2f084`

```dockerfile
```

-	Layers:
	-	`sha256:e50bdfd31d05f57befa934a0869afa31194dfb777d8b0f54a70feab94269e473`  
		Last Modified: Thu, 02 Jul 2026 05:56:28 GMT  
		Size: 5.3 MB (5255054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:448bd73a05cc18642284e137fc29c32c3694dc7f29bab4d32a4ce800967f92ff`  
		Last Modified: Thu, 02 Jul 2026 05:56:28 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
