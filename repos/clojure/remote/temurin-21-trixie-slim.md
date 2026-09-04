## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:593420d15ec44b3a6a0d16a7a19fdae39a4f40ee012047eb4ab6eb0465b71a53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:da50eeec372ef4ca1ab49f542719f8d970970941971d443af4864445ddd29ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259841966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40204a588a3d18366fd4e036f04bb4f0a64ff0054bb49b26b59da237ac4cea83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:03:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2842698897d52a5c472dc2a898c81fb40cd2b81fb514845495d85bcbcec2a9`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 158.1 MB (158120303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d959ec3532cbbf7ad28999b11555e62dfb515c6d140623110b4fa6b74bde51`  
		Last Modified: Fri, 04 Sep 2026 00:03:55 GMT  
		Size: 71.9 MB (71927960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c222c96ba2c36b1f5966c7710f933c1460f1f82346fb012d80aba64ce4e48338`  
		Last Modified: Fri, 04 Sep 2026 00:03:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a39934ff0b39ff80a82383a30b2e7eb20f5af01656d53820b057fc605dcac7`  
		Last Modified: Fri, 04 Sep 2026 00:03:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9470466dcc88ca7be6ec9ca4a7680b7e0e9e6e4fab9693316b8f74b33a78123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b555f4b65f347fd94ed6b44215b1647121da29ec2794143404f6871d529a6a`

```dockerfile
```

-	Layers:
	-	`sha256:bcfda6c1b507d90cc30dee68e5900b9cae29ab39a119e8a15508220dbc9652ad`  
		Last Modified: Fri, 04 Sep 2026 00:03:52 GMT  
		Size: 5.3 MB (5259412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:606ab8909927b77ec1076b6ea924fc6333162ff82ac9714255cc191312502d93`  
		Last Modified: Fri, 04 Sep 2026 00:03:52 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f31dd91b5ec5e3d87c9e7195183304b4e34cb5d7e0a943e8d6f86d7a91ee15b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258692574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72fad9177590bd6afe7345daa05561facff8aebc41bbe975e30f830f9ab34d5d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:49 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523404dbc2ba305c3ea3780d70f7ef9d2e002066ab3c8c4410e133be0df7aaff`  
		Last Modified: Fri, 04 Sep 2026 00:08:32 GMT  
		Size: 156.4 MB (156401958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecf1d1755c4d89a1e67c381d23934e60f867a6e39a06f3d4feca34b32985463`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 72.1 MB (72129995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefe3e7be41609851adab21856c45e269c772ae77caf8cf661a583a94a3f8e8d`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5051578a526aaf235a65490bab5f9a85bcf4b44297896e40b799d489596754d2`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e64744697c47953766e41ec055ff13ace4acfc303be8606d14ec48b96e6cab71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429b4f98a1e3234ffa94a748d3131581558571e00af82d9aaae3386c6c345664`

```dockerfile
```

-	Layers:
	-	`sha256:05905ab889ccc9e28abd1526cbcf002b932ad296ca422946aa530a59d3d643ba`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 5.3 MB (5265173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9514bd6da9d008c7015780fd0784528836a17fb5c21973b3b44b3dff8da99342`  
		Last Modified: Fri, 04 Sep 2026 00:08:27 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a2d2a497b80db9f14b83f43263c313877aeee4a87091d27d0ad97155e0c2e5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269466892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc06e55a4baf70cd775cb3afe891998a56ca98c5109fde89e79cb660bc0bbb88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e00a40e150b754085b447c73428d6b28deadec22215738965200b831c00e02`  
		Last Modified: Fri, 04 Sep 2026 00:26:20 GMT  
		Size: 77.6 MB (77575500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34909199bbf26a1217157fccc8df1debe5c5c72b20eece928d1ae04d99223e84`  
		Last Modified: Fri, 04 Sep 2026 00:26:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f972c76f25410738ac3c2365e26ee64750b8047d96acfd2fb366be1d39aa62f`  
		Last Modified: Fri, 04 Sep 2026 00:26:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d3434b98d39ea4ffb3852b16cd408099dda1e7f7ca6995c100b080f1bcf1395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9732b1dc1472fd4c1364160d16a1423188af691330618a639dc33da82c54788c`

```dockerfile
```

-	Layers:
	-	`sha256:eda687b8edfad2799f925a758f0f9ef37d9800cac0039432fae75f717b968076`  
		Last Modified: Fri, 04 Sep 2026 00:26:17 GMT  
		Size: 5.3 MB (5263783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d491a5764a28a472048b112e4b29830b8f9f5df6097c29b8055bd05abd519d`  
		Last Modified: Fri, 04 Sep 2026 00:26:16 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
