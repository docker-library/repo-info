## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:1e7beb143d8f043e479a09c5561f9730c1027062d972fe4af5b6a7bde92660b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

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

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:760be06d22e4082fc9aefef73bfe55776433204894a0a1cfb1cd7655a755c2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236700460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158b73cdc4659a61b8ce4574028c7ed0a17c25e2d017146e45b8d485dc60f8ec`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 01:51:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:20:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:20:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:20:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e463f85c5f5db24b66213ceaeae3e3fa43c0e1f38399977d284d6130037f5d`  
		Last Modified: Tue, 10 Nov 2026 02:20:58 GMT  
		Size: 72.3 MB (72334052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeecf822263ae7f969ff0f367192c0630de67d7084735b4b58d05af0d282e4e1`  
		Last Modified: Tue, 10 Nov 2026 02:20:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2901e99d7a9484e64f56549a356fd846b2dcd085bf556a213331f0d3077acbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5155389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd24e36ce5097ecb82090f7b2732935dabc76441e9e68ade75714d93a0bc6ef5`

```dockerfile
```

-	Layers:
	-	`sha256:e4d3fbff7d7db7a1d38cf6728f94c6e3f3ae0e93a26f8b6ae2689c55050f9d42`  
		Last Modified: Tue, 10 Nov 2026 02:20:56 GMT  
		Size: 5.1 MB (5140920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afa4a497deda6b419b65a011722a6d9115e9fb265c36acc7110944e182bab630`  
		Last Modified: Tue, 10 Nov 2026 02:20:55 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
