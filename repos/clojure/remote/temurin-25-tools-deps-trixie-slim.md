## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:2b8791016a827551912c6e3e0d27453c7e2dab18f97c555c094d9dccdf18bddf
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

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:18a7aefbefd0be49d2859b2870d281c69c3dfbae92e423c9f8d0fc0c5b129f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191328055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de62b990ad1519b32390bd40a3f97f90bec9695a528446e8587e8953ac097107`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:35:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:54 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:54 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:36:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:36:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b95c5499d178648e93b4ea699706e91a82f2ae5c2db13fc67fc5f948378cf60`  
		Last Modified: Thu, 16 Jul 2026 01:36:30 GMT  
		Size: 92.6 MB (92574583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46dae0fe8bc01f1fcae0855482aa59de4481869930b7adf543a3e8e49b1fb48`  
		Last Modified: Thu, 16 Jul 2026 01:36:30 GMT  
		Size: 69.0 MB (68971524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a91fbc056dce3904e9301be743d3b43cb25ab66ddfdb50e500da9774c7f8796`  
		Last Modified: Thu, 16 Jul 2026 01:36:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b123762df18fe0ed3d7f68770b6a5c3d35b98c926bbf2ceaac497a29d8541316`  
		Last Modified: Thu, 16 Jul 2026 01:36:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a39ca12e5e72c43e6efd22a284db0cd1486746e481bf76023f2b2e80e9035d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8411e160a37f49658cf958b623fb9b87b81f6693681495970522556c4b3c35b`

```dockerfile
```

-	Layers:
	-	`sha256:7efd0d5757adda2f89ab5bf0fffb4f49fe7e27727ead998fead57b7e2c1ecd3f`  
		Last Modified: Thu, 16 Jul 2026 01:36:27 GMT  
		Size: 5.2 MB (5225414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8609e514d2bffd90ad6e57cc32b4163bbc6a65c5f49a2d7a0319853b5cdf7912`  
		Last Modified: Thu, 16 Jul 2026 01:36:27 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9b9911781b96b05f490b3387a8aa66711fb6982ef1c642024afb4a07314711c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190464753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c78ce1dfba192fa693d9d3b134792974d345e8924b5367e9cf6b13f853db5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:40 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762b0f7198cac9c2013937d2e7c321a9e9333b63cd8f0e9753f0c5dae27b882b`  
		Last Modified: Thu, 16 Jul 2026 01:32:17 GMT  
		Size: 91.5 MB (91542226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45fcfdf8a47b0713bbd30533347d063c6a262cbeccb0e11b2d5c27ada00eb4`  
		Last Modified: Thu, 16 Jul 2026 01:32:17 GMT  
		Size: 68.8 MB (68777781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc3cebb123c6a5acb4f51cf9f2fec4c4a1652c9ab5725257efbafe5ebe0d528`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd8d360f92123a1aba9e178b764e74d7dcec70341d53fe7d8c815dbeda009d8`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ba784f035993a53f93d9b1edcdc4421226bbb2b267ee958746d4eb93ee09f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e04d19dcd65d4af6462d1613b3ad9ad37db155b6486ee0a4f0105386d53e1`

```dockerfile
```

-	Layers:
	-	`sha256:ad0292a9296604dba8827350d3c0f7915c35f85bb5ff5d1281cb1071fba0cd2f`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 5.2 MB (5231196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42a88860e746e25a020cbe621ed31a5e59160f7a5039d90dfdbadd57331bb762`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:65e948a76260525c408f6bc2ee64674369b6973e65fefe8d1cb8e2f1a659c9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199889190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f9b15de40a3527ac76c2cdb391fa199ec7ae2e72bb7500eb2e7e7879b8a2c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:45:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:45:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:45:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:45:22 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:45:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:51:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:51:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:51:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:51:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:51:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77b3f73dd586a77fe622998776c21587e9d1df8ad8c351ffb7e12f383d6dd3`  
		Last Modified: Tue, 14 Jul 2026 08:49:01 GMT  
		Size: 91.9 MB (91914023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b8945e2c93fb1732bad3ce16c7cf1485b2b32886d87a7aed90a85e7ae50486`  
		Last Modified: Tue, 14 Jul 2026 08:51:45 GMT  
		Size: 74.4 MB (74372649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47869981607e62cc002dd6b7e2f372b8863b6fbf4893bb2e07a59cc525fb2815`  
		Last Modified: Tue, 14 Jul 2026 08:51:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ebffbf8fecb52bc302036a25fd184a7c9b699534fad79230a95b26c38f1d7d`  
		Last Modified: Tue, 14 Jul 2026 08:51:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c5c16b597793e81efa8cfc9bdee786c50335a5d0df30a2a97183522d4f75001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f4146df902fd94d2f951620347d92c736bc9cfa3de5156a394083c2b4a5bb9`

```dockerfile
```

-	Layers:
	-	`sha256:c91707b1c4d70e3ddbbbfe998af246db3b90146b7782ea6d69a7aaa2f0cf846d`  
		Last Modified: Tue, 14 Jul 2026 08:51:43 GMT  
		Size: 5.2 MB (5213109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:381f177d8cb0013aa527f70ff2bf83b1936c722256352ece8f5f917fdad7241f`  
		Last Modified: Tue, 14 Jul 2026 08:51:43 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:3eebbd7c8d2cb7639a4d460d166d7bcd55fc704d2ceebb4cbfd846d2921cd5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188210539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cfde787fc7bcff044a4fe9756f8c73554f34662e8d53719bcb22a3fefb5a2dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:55:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:55:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:55:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:55:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:55:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:55:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:55:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:55:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:55:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:55:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096b2994cef96f7a39d78ea2e10af190791ec5521b60c42dd869e50311f34939`  
		Last Modified: Thu, 16 Jul 2026 01:56:22 GMT  
		Size: 88.4 MB (88420316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953eca7f32f21c407006bec514e56b1431ec45cb63d4163ede871d295fd27a7c`  
		Last Modified: Thu, 16 Jul 2026 01:56:22 GMT  
		Size: 69.9 MB (69942552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c9bd554793a7a8f9ef82c43dfdf0aae20d3180faef0de3ea41e4836b958bc1`  
		Last Modified: Thu, 16 Jul 2026 01:56:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b4760985c755d602f067fd6f0edf725021039720b20c703ed698d8e5b22c80`  
		Last Modified: Thu, 16 Jul 2026 01:56:20 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14c0e0fb19054b74f0cacdc07fe6a9dc92b548f606fd2e7e68b5a3b00343000c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04565234a28de6c9cb0c2bdde66be470970cc5d00f0e17372ab347e6a6417967`

```dockerfile
```

-	Layers:
	-	`sha256:ede3575c900dbad609c10265350ea1ac3f07af80a8e4262b44833f5a5503d827`  
		Last Modified: Thu, 16 Jul 2026 01:56:20 GMT  
		Size: 5.2 MB (5205900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d5a903e0986d7e0d4ce0d80696b363c9032e3cf496c9630138f160058052233`  
		Last Modified: Thu, 16 Jul 2026 01:56:20 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
