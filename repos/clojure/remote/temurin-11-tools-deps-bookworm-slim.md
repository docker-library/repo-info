## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:5487dbf529db751e61a628eddfdc6213c22b68ec6d0bffa8e3f84cf240af4118
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
$ docker pull clojure@sha256:f6cf68fc0a2a2f642db6c1af8f618dee1dd1b3ce7503f2bdffe5dd57b918de25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240679733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0446c95952f4c68161a8593def8481ec9cbd7ec0caafdd841f5902a2b74cd285`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:46:27 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:46:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:46:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:46:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975a14cd62517c6e2a981623ea25944786a8446186598cdfd89225d94df81d1b`  
		Last Modified: Thu, 12 Nov 2026 00:47:02 GMT  
		Size: 145.9 MB (145923121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4941a601ce6126b2ab023a1b63001353d4f751c51e6fcfe12a1b92f0d706ad`  
		Last Modified: Thu, 12 Nov 2026 00:47:01 GMT  
		Size: 66.5 MB (66507985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82295fc9b0f32fa87cecacd8d33bd8b602eaea4b6d07433dbbcd8fc4d234660`  
		Last Modified: Thu, 12 Nov 2026 00:46:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:957292249a88eed3dc96e8787c981fd63c48482e75c888a48fb50c0daffa0c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbdf86ff7691917d6e071546188549baff51615235e71a55a276e4c8f858d5ce`

```dockerfile
```

-	Layers:
	-	`sha256:43ca823be45bf205aba7de5a8503c9cb7d163a6b38b509a55f5c5eff9b706171`  
		Last Modified: Thu, 12 Nov 2026 00:46:58 GMT  
		Size: 5.1 MB (5137623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b9613c4d4bcacdda165f0efbcff97b9f79de7959a0c2c4f0cb39cb6531cb928`  
		Last Modified: Thu, 12 Nov 2026 00:46:58 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:609ef42b02cf9227dad495eb3007514845290803d1e823944add8d11391c8586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237266598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7baa9869fe756cf207aa6e6cc0d5cde5ba4232f6870eca734ee622818ebfa09`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:01:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:01:46 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:02:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:02:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2837a2a527efe05e43b68a6432db962b26326bac264d543e6d98e6852fef030d`  
		Last Modified: Thu, 12 Nov 2026 01:02:24 GMT  
		Size: 142.6 MB (142621057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a65ea03085382d70359096e49da4f0d7843d064c62788478b39c825fdda06e2`  
		Last Modified: Thu, 12 Nov 2026 01:02:22 GMT  
		Size: 66.5 MB (66500536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5057bd44c8fa862e528b18bf55050e99d17ac4a2778e92baf8fe595c227abf8`  
		Last Modified: Thu, 12 Nov 2026 01:02:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8543eea49714a0c2094f14255ba3b448b4544e7270f4eeae9c33bb54a91ae8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d081f3f5ce6bc63c2600518be39c7370ba3e7880473bb6add7ca02ecda59ee`

```dockerfile
```

-	Layers:
	-	`sha256:ae4f17020f4df8b8ead2f5d8e48f0aa5eb153bb58988dc47bb01f81cfcd2001e`  
		Last Modified: Thu, 12 Nov 2026 01:02:19 GMT  
		Size: 5.1 MB (5144002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f079711a093d784b47540881a0e9909b847ad485125d3c824e548f4e0b9b05e3`  
		Last Modified: Thu, 12 Nov 2026 01:02:18 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:16ebb729414f612067998fe67160751d1e05b0481c09202e17c8e38d195cdb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236700156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b63b10d1976d9f5c0b8f103efeec75c295afba404c88248b86ff2928421746`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 07:40:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:40:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:40:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:40:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 07:40:06 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 07:56:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 07:56:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 07:56:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c8c7fb9813c64d9c15cc6bc75d98b58adde090ec7edfef1f3a9512b5314e60`  
		Last Modified: Thu, 12 Nov 2026 07:45:16 GMT  
		Size: 132.3 MB (132272172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea07da003d5c424e1768627e132c2f650c7f0df2702fcf082fbc7a8fc83b7c69`  
		Last Modified: Thu, 12 Nov 2026 07:57:41 GMT  
		Size: 72.3 MB (72333778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f155f64384ca1feb8ec4bd9ae401788f4641d4d4b3b87184c5a26f703c73875`  
		Last Modified: Thu, 12 Nov 2026 07:57:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:059433717842062887191f8e1d139f0a25daf4606b27648b2bff9f72744ba4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5155389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d8a93cd0a09d23ffe3a73eb42eb2d025715e817529f1c118f6cdfb41e042e5`

```dockerfile
```

-	Layers:
	-	`sha256:95241c3a39aed11db3c4bc8160ca938369739bc60de7de95965ee9f16e955881`  
		Last Modified: Thu, 12 Nov 2026 07:57:39 GMT  
		Size: 5.1 MB (5140920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d5222b73b935cbebbf7d3d317976d80139900271557b767ffc1068608de85bb`  
		Last Modified: Thu, 12 Nov 2026 07:57:38 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
