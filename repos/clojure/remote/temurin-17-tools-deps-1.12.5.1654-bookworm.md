## `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:7b224aeff39486e64d206028ac95a14c3a2e71c02e6bbac15a08bbac2c1c7849
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

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:824e720bec7a990e47b60c42c39b44527f05a0d78d4af000c10747321295c5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272534910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44824689b7aee761c3472c24528706d7e4fc1647e97fad947aec0ea75036140`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:41 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:18:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:18:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:18:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f5474c74175f29b94b75a9327b11a60ac4462eedbc250daae2de77562de050`  
		Last Modified: Tue, 14 Jul 2026 02:19:17 GMT  
		Size: 145.9 MB (145906310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44578dccb920f117983eea5a91cc8e9eb8c836a2d561879ee9770ca0c7243c8f`  
		Last Modified: Tue, 14 Jul 2026 02:19:15 GMT  
		Size: 78.1 MB (78130157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c990ab9dfae99dcf852a4f6eed7d67c08a8e0b3830b40881ba13d9ed21aa84`  
		Last Modified: Tue, 14 Jul 2026 02:19:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda96e064e52013492544b6173c3d8103870f06c9a6782f3758454c09f2d203`  
		Last Modified: Tue, 14 Jul 2026 02:19:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c16acab8194156eafb3c6c0805117c3605571d43c13fff54dedd507b6967869d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8905d03dd9b79ceac04981a74fff1746c5f026f54889651bab3b06172b6367b7`

```dockerfile
```

-	Layers:
	-	`sha256:57791fc7db070b7fb0352d5f8dca151b8fc2d75ab197c5f175bd94c0797f1c7a`  
		Last Modified: Tue, 14 Jul 2026 02:19:12 GMT  
		Size: 7.4 MB (7376170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4095abdf1214d0bf7104bb61c66e3c6db85c420c5e4c12dd22b153b537527f0`  
		Last Modified: Tue, 14 Jul 2026 02:19:11 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fa2bbd3f060c51a2d02a075664e5c0a5eae8bba943c4fe9fa0b2be6bcfe6b490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271230669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ffbb60d5b25918e5a1e56a2238470315d210e9922e5f5a3a5694e80a7c0fcb5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:25:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09ec18ad503625a59289e11f26cd13b9f993e3d00c8359133c008f157f1875`  
		Last Modified: Tue, 14 Jul 2026 02:26:30 GMT  
		Size: 144.7 MB (144724320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b27f2e170fa52db751e3fac2c37513edccf827bccb868101fb47821e6256d5d`  
		Last Modified: Tue, 14 Jul 2026 02:26:28 GMT  
		Size: 78.1 MB (78121622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38463696dc8775b6ab7692819dcdad143396ee71cd2aa25edd353848b6298d98`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2106aaa9b5176f5ee9be9e206ee40f136e1df9282b2b871736f8f489617842a1`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ae94484b3617c46e312e55a2ffe2117ffa2317221b62f0f17228cb2cac2bb13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51a48da62f04973006806baba507063f70d3eb733ed984d1e4f2dd9c75463e9`

```dockerfile
```

-	Layers:
	-	`sha256:65df3a0a7265cd6e3bf00893e9e861e0522077dc8943fb665f1d50d49e45d2c0`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 7.4 MB (7381933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8740681eec1f29dcd21ff0650a89e79715ca201bac0dd13c53b3d57b1c710a9`  
		Last Modified: Tue, 14 Jul 2026 02:26:25 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b09e9c212daea364bdd626adb45ae3b672a63001570975091f3e5eb29a886a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282072807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5769342c35d380642850f853eb83373cc14d18e020bbf8f80094f0cddd05b3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:05:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:05:31 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:15:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:15:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:15:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:15:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:15:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23318d964605b71f28c3da76366427e3b1abc150181347f2428bac212637d453`  
		Last Modified: Thu, 02 Jul 2026 07:08:38 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb13d5f406d39f6c3ae96824e932b80b0c648ae600338196dcd9dcdd1d88c98`  
		Last Modified: Thu, 02 Jul 2026 07:16:07 GMT  
		Size: 84.0 MB (83958732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28143fde384dc69ce4bc8981a11544ece5ca26afd079c4e206a55ecbe827842c`  
		Last Modified: Thu, 02 Jul 2026 07:16:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b88d7f4ada74d4830017995d0ea74b911a2c3b7aaedfc3b3e24d0b98724163`  
		Last Modified: Thu, 02 Jul 2026 07:16:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8c065c419700a10264e7d00453512c0490ca75e7955aa22db45a70ca3b07d48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8914bd2591cf9408a40cf5b7e1c2f85a5983a609b1f039042839a242e1614b6`

```dockerfile
```

-	Layers:
	-	`sha256:1e7dcf787d77a4fa9bdae0d585e40693d3a89c9218216964fb78597e382b6962`  
		Last Modified: Thu, 02 Jul 2026 07:16:05 GMT  
		Size: 7.4 MB (7381350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5f64286c22a524ae9fd29bc2d5dd8d884609468471ecec776b39dccaac5f92e`  
		Last Modified: Thu, 02 Jul 2026 07:16:04 GMT  
		Size: 16.0 KB (15979 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:f68d8ac733b7e9f5f0fd29d2e1bd4d777e442b3d5536eda3c0081f84a84241ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260007614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94dbd93511eff352d57ea6cfbe1ead08ec9c7012aed9891efc07aab2c0d5947`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:27:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:27:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:27:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:27:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:27:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:29:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:29:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:29:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:29:53 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:29:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89f4c3517bae7a83d6736bfcea8ad580214d6be0e6bbee8191980dcb73dbb73`  
		Last Modified: Tue, 14 Jul 2026 04:29:24 GMT  
		Size: 135.9 MB (135910433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4be8d31553065f3248582dc7913defa82f0a3008f406512a236e2ed422476a`  
		Last Modified: Tue, 14 Jul 2026 04:30:17 GMT  
		Size: 76.9 MB (76938862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb75302a77dd336e324b89fa84077a3e11e036fc19060724797aaa933342e267`  
		Last Modified: Tue, 14 Jul 2026 04:30:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d852d57ba20ff311b45b4156892a304436c299bd6d6dec9b37405bafd9905bc5`  
		Last Modified: Tue, 14 Jul 2026 04:30:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:35cfea59e03e2100b664b1329eda411174daca1e55b15a57c714a8d49d204f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e24fce328b805c36495f37d7a3c42f01ae8ae3776436637596bb6b9efa6cee6`

```dockerfile
```

-	Layers:
	-	`sha256:be723bd0a12ca808a7e25b96575cb9ff598e44769e2253c218bc9d2a3f84bd5d`  
		Last Modified: Tue, 14 Jul 2026 04:30:16 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fcf0331d30496cb5e2ee412c09819f15ee19b51534a7667f677ea62413ece11`  
		Last Modified: Tue, 14 Jul 2026 04:30:16 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json
