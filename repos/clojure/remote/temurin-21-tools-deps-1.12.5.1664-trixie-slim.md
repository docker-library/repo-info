## `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:746f49a8a55eeb84d48e35ccf03fa04400d50d8f0ddaa7cf8221877e26a0cc8d
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:883e4b54fee055e5d6e502fe54292a3f1e6d8ea970529fc928e3d012d6db5d93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256879214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ad7e106bc78ce5bd39da0a63079a6e806defe2a34c4bf15fa7280c17c2cc9a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:30:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:30:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:30:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca3dd8fd3ef84c82dcc2be853e081c0427a2cb59d8c034b3a9c650372484434`  
		Last Modified: Tue, 25 Aug 2026 01:31:11 GMT  
		Size: 158.1 MB (158120307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d12c8858b2a0ebaccdce094e59ba2c47543f0cd15a4e3a45f85f70e67454e9`  
		Last Modified: Tue, 25 Aug 2026 01:31:10 GMT  
		Size: 69.0 MB (68965210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2aac05312367f67c508cf073efa60586234bcd1d0fb3e85683313ff5ccd965`  
		Last Modified: Tue, 25 Aug 2026 01:31:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700de3cf369607a53b9f02eb62c021e1309fc8ea003586d83cddff7572d43c0b`  
		Last Modified: Tue, 25 Aug 2026 01:31:07 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72b49208b1da0412a5c01d3cebfe14b81a090159082f02fe8425785374613913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89622395a9d0e18cfc4afbec100e7be5d3aeea3266281620a6ec3e94d4058f2`

```dockerfile
```

-	Layers:
	-	`sha256:24b2f2e85c9670974c5ca21b8e56cd4bcdcbac8d0876470d26e2efcebf4d27fd`  
		Last Modified: Tue, 25 Aug 2026 01:31:07 GMT  
		Size: 5.3 MB (5259412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:579893155c9a2b86f1f0c62a1271fb81546eff29a1987a1ae9f2c1c8920238c3`  
		Last Modified: Tue, 25 Aug 2026 01:31:07 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d84177fdc420f97e4c36686154f9bc870da745eeb1db442ff6b5e358d254574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255348342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcab0c8ca64a78077504bcd04c8eacc83e90d775687d840a9b915510fe88fd8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:34:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:34:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:34:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:34:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:34:50 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:35:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:35:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:35:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:35:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:35:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50500f44358c74a0a0f3cde3d48adfd84bf7066d8cea7927df11d7e39ebb659`  
		Last Modified: Tue, 25 Aug 2026 01:35:30 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2451344e8e77f24a311a3643a634f340af3b4b2d7e12695d1c5d1121a864193`  
		Last Modified: Tue, 25 Aug 2026 01:35:28 GMT  
		Size: 68.8 MB (68785796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7463e4924b353ee9ce0ac20b94babbe708952a985519b48e8e471622c18e1f3f`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a52e5be013495941d4c8d2be255bd4934100fa83997b8e6965f55cdf9f6e4c5`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c759e22f6fab87516b47bf1b5c2d1e6ad1f167dce906b42458d346144bcdab8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28c149c6cdf33abc66f685e9e25d48ba4372f4168828c98d7ccc7f2cb4f0ac1`

```dockerfile
```

-	Layers:
	-	`sha256:79f5e82c462ae5bb4531e2da4d28ecfa4aac786f1b44421d4f5f6b510a1c26e3`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 5.3 MB (5265173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc51c57a0f171a483e1fa9b7d321370a777d46267a0c8987d692e55d5250578e`  
		Last Modified: Tue, 25 Aug 2026 01:35:25 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e79cc34b52389402a580baf3ba71d8ffb65f0f5501c1f07387dc26b89fe2e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266253648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeb02f81f9fe02d16550a8976abdf83953d5aeea2ff267829ae4fc95700fe3f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 22:51:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:51:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:51:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:51:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 22:51:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:56:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 22:56:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 22:56:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:56:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:56:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543f8faec154a40b02dc777d587f6ad4f70ee990fb1b9ecb9858f48dec66ca85`  
		Last Modified: Fri, 21 Aug 2026 22:54:44 GMT  
		Size: 158.3 MB (158274931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97256e2b964a8f6ef8a164283194e90a2be0ba026e290430c7f3145af1e3fa7`  
		Last Modified: Fri, 21 Aug 2026 22:57:30 GMT  
		Size: 74.4 MB (74376333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f26a4fea265893befbe3e6891efdfc11227a4a61063e6966b97ec4d533e52a0`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062468f45e54ef23d5e51c280134f1821dad59dfbcdc4cb78b0070441a7347d`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db824c1379f5c88764fc7e7b5aec9da43e33b990b57a42783af14298a5ec7fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4a9c27d963182f25069a8327c0be8437f2e4ea1a36dd4473c929d8afab0bc6`

```dockerfile
```

-	Layers:
	-	`sha256:922b18ce38958754b49b98e800098c909d48511b5ef395b80419ea24869e89e1`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 5.3 MB (5263585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:092ea662e4b12769a6b2cdd383e767d4f4fc6e0ec687c9c72c6399cc815de8a2`  
		Last Modified: Fri, 21 Aug 2026 22:57:28 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:a8e2979e0db5b0aa4aac2279541ca109723dd13af787c01dc065ca27b07641fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247161917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1eaa228a8ffcfdd144c3404b06509e380c0c308284538142d080863eefde35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:08:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:08:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:08:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:08:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:08:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:08:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:08:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc0352e38fdfd4a6ce2ff46afc8f1a6cd088606d22404d518b52590eaba2f66`  
		Last Modified: Tue, 25 Aug 2026 02:09:16 GMT  
		Size: 147.3 MB (147347791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac043a327c4a24fce725ed685b63d485fa7df05dfa2aef6d9a47d60fc30e8708`  
		Last Modified: Tue, 25 Aug 2026 02:09:15 GMT  
		Size: 69.9 MB (69945363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e45a4b9dd34e50896383850e686752ec56a06036eca71902e3dcf43224f97e7`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27228e245d3f8be8ef0152293f0eb741de372a378d906d8a84e4d6f32ea56992`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:905803789f10abff5e451f6e134a5ff4af1d597c3005fd82a0c4ad58476a9628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220936f5979c6d7390dc8ce34b90cbcfbeb3f028501e400198e4ba9af36220a0`

```dockerfile
```

-	Layers:
	-	`sha256:ceaac002738213437ae6b3793b7e066655e7e7e8b1106037d55d415561a1503c`  
		Last Modified: Tue, 25 Aug 2026 02:09:13 GMT  
		Size: 5.3 MB (5255336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eafe2b9ac8846a2b74f3282f99300354ed4691f7f8277dd8131485ffc289313`  
		Last Modified: Tue, 25 Aug 2026 02:09:12 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json
