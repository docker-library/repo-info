## `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:8345c6b40bad11c8b52540cd6f0a0aaf6194c13948484bd7bdc71fe3b87e28e3
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

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:248abe456da0ecaacc97a379eebf9364dbfc7bfcade59c111e1e277783139c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240787882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabf98caa6e7ddee8fd87b430c0b28b2851046f27653e0a49d3a1c16609f8656`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:32:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:04 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0300cb61c328be1c74cc9ebb66489fcb79e6d154769b4c206890c6d07347330e`  
		Last Modified: Thu, 16 Jul 2026 01:32:40 GMT  
		Size: 145.9 MB (145906317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e05711f750f3e794fdab41d51daa62c30a30d7b4ea5fb32df806ffdcab56cf`  
		Last Modified: Thu, 16 Jul 2026 01:32:39 GMT  
		Size: 66.6 MB (66647881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34655b7c6b9699e42755b6fb924b102ef6ad78197c4bf2f1f8deef982b8b3ef0`  
		Last Modified: Thu, 16 Jul 2026 01:32:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2933a3b3ae936696c24ab911c89c70945a2f2d8c00733608a4ad150fb0d8baa`  
		Last Modified: Thu, 16 Jul 2026 01:32:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc41b82e32793a44b6d4e15178db186efbcb677c58e5f4d1d1d8fd8697bbefbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5130025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e100d26c2c13fddf44feb4a275f200ff1454c74fddec8b61fd5584850ada9038`

```dockerfile
```

-	Layers:
	-	`sha256:32e8c6bc998b96e7e05525af530dd7a43f41ce5263aa03c7bdd957549e540457`  
		Last Modified: Thu, 16 Jul 2026 01:32:36 GMT  
		Size: 5.1 MB (5114035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20bdaeb0633505b188ee658aba2abfeaf01a7bd5eb0782c202727faa3fbf3c76`  
		Last Modified: Thu, 16 Jul 2026 01:32:36 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a61f97fe1f1a1277dc6e5c6327798181c4a3dd4274b20a0489731b20e8edfd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239481025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeab3a43cab2c8c761c909580263d80b31c46bafd9270df17baad29f295c047`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:26:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:26:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:26:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:26:20 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:26:20 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:26:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:26:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:26:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:26:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:26:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97698d74eb495471ff7b0766ed0e87f71cf5f52056c9186b1635f11add203a6c`  
		Last Modified: Thu, 16 Jul 2026 01:26:57 GMT  
		Size: 144.7 MB (144724316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a5d8ae7bf182b01f62a49c8b64bf4faeeec507c3af82795cfd422acd5998ee`  
		Last Modified: Thu, 16 Jul 2026 01:26:56 GMT  
		Size: 66.6 MB (66638413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bec02523d140488981bd3d988ed3ec601a756057ebd86cd0dad855598989ae`  
		Last Modified: Thu, 16 Jul 2026 01:26:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa1a9431bd5e2aed1c02375fb6f2256fb681f7529740f909187a8c8c0edd6bf`  
		Last Modified: Thu, 16 Jul 2026 01:26:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0f861533737b6a3efaf048d4fcde3d4d89b36b16888ea4ae0f579c2c4bda5d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aec5f0883337e37096ca9bc00e9b373505a9f3f99c97e020454812fa462fe3a`

```dockerfile
```

-	Layers:
	-	`sha256:04ab290e4616aa9f76010fcc0c24576a4ddb8b320f5a6790ccce5b3c720931d7`  
		Last Modified: Thu, 16 Jul 2026 01:26:54 GMT  
		Size: 5.1 MB (5119796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa21e0d19a8e4dc44a234c6bcc374420a14a03b3e778d8b39f7636c8926555b7`  
		Last Modified: Thu, 16 Jul 2026 01:26:53 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:edef1cd53b0d6a445734668e9dec5d4b589726dd5e8e5098e5f99fbd93331e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250321169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d1a127e573c1fd60171fb062213f6921e4da6d4e47b61502386fd424a0d18c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:22:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:22:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:22:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:22:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:28:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:28:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:28:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:28:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:28:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd48f7dfd677759be9a5c18449734e76b926233ded81fcf79f5e94df62f9e8`  
		Last Modified: Tue, 14 Jul 2026 08:25:39 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52912d03d03c3568a096a15a1c5b8abda8e662ed63a8c4db1623b1c09c124345`  
		Last Modified: Tue, 14 Jul 2026 08:29:01 GMT  
		Size: 72.5 MB (72477529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a29812354c4058f7d5add7455544fe98140729114f2a431586ad20c606b714`  
		Last Modified: Tue, 14 Jul 2026 08:28:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa07b304458964d88f906fd52aa3f42a4d6ab4c6f51ff5761c54603950e6841`  
		Last Modified: Tue, 14 Jul 2026 08:28:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98efdd3aa521f26a4ed1786fd76f59fa5c72d129c7c83c2626d499f2c000333d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95fc13028a0871f5f85ddd57f3ba7053854dfd62fa22a68b080ca4d99b26235`

```dockerfile
```

-	Layers:
	-	`sha256:4e8dd90441619f117304d8ba793e414c3cdf39e51770bce2b246eb8022585e60`  
		Last Modified: Tue, 14 Jul 2026 08:28:59 GMT  
		Size: 5.1 MB (5119193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a9cc75f28185442d0b9ccac3d846be88a6aecaa40d7b45410bbef32cbb9774`  
		Last Modified: Tue, 14 Jul 2026 08:28:58 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1f639ebb46ecccbdef1d01a835343ddca3fbfe2f6e1c85b6cc776e2d825a0911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228249074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd41723509e3b681c1bb8a5ef50733e8e86939079d6b1322ca8369c613622d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:48:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:48:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:48:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:48:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:48:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:48:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:48:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:48:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:48:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:48:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e14ecf1f3afe06893737b4c1972dd8c44f944b84ba998bebc02153d783a96f0`  
		Last Modified: Thu, 16 Jul 2026 01:49:23 GMT  
		Size: 135.9 MB (135910475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b87410682272f41c7075e42fc0d38721b5dd94dc55add17adcc450510bd6d45`  
		Last Modified: Thu, 16 Jul 2026 01:49:21 GMT  
		Size: 65.4 MB (65449289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b9a739ecbbe8b1ee3ac82d1e16e484f58c68571204e8b82ced8810d4dcc87c`  
		Last Modified: Thu, 16 Jul 2026 01:49:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4165dbe7b21fb9248f66e3d8631f82854f50a44f09b91f3791abfe0e65c4a086`  
		Last Modified: Thu, 16 Jul 2026 01:49:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a5bd1896f0ecb8ddecf7d870d6c39c9fdfdd05c9092e3caf36ad51c85c889ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090d3875b02c13d17bb5506f04d510d1e1bcce32f0392583c90c94d263f1c13a`

```dockerfile
```

-	Layers:
	-	`sha256:b1a3e0daa9c7fd790f2535bf8d241031ec5cea9e0dfaf73cd5217a87bc931a7b`  
		Last Modified: Thu, 16 Jul 2026 01:49:20 GMT  
		Size: 5.1 MB (5105356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9d44048b0cbdf1c9b5ecfb03e24692994dc328fe2d3d30bb6887fcea06a99ba`  
		Last Modified: Thu, 16 Jul 2026 01:49:19 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
