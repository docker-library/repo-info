## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:a19939a7eaf8b2e9111ddced0bce9e0401c2fd412b926741dec8ad1a8801ff8e
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

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1076b6a853b163771b6dcbd1d674c314b6b4451201597a08af99d75029b37015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224413299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83db24d75e43a4de7b273e642f523ef729e8e321de456109d6e3980d1508b4ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:55:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:32 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db13b8f28d8e0cca6d792751ef5aed9b4d97c5479c57f4007ec43b4b90f048`  
		Last Modified: Thu, 02 Jul 2026 05:58:21 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9939ef435b6f1f574be6cc9ac226fbde95cd94bfc585cf3a0d702cc0e470410e`  
		Last Modified: Thu, 02 Jul 2026 05:58:21 GMT  
		Size: 82.5 MB (82520437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc3e6b67647d235b8fa2cca4ab492d1f13c30bf310d42dc4c41991562911100`  
		Last Modified: Thu, 02 Jul 2026 05:56:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87739eadecd822b7267da3d11b3b9b43140a754c3bca51d2a152f883181535d5`  
		Last Modified: Thu, 02 Jul 2026 05:56:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:70aaaedeabb6a86dc83b32d1ca09dd4e0a154909d7a5ae7242973673ec217434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a358e4f7344914c369c581103326490ade363e9e6ff6538071529b1759f56cd`

```dockerfile
```

-	Layers:
	-	`sha256:204b80c890cfa0345f832d8bc835541ecefc5f18f682810f7f79858cdde8460e`  
		Last Modified: Thu, 02 Jul 2026 05:58:02 GMT  
		Size: 7.4 MB (7436869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9963ece5e55ef575215177a8c99c82b2a33c2b094804f63b62d46a37c971305f`  
		Last Modified: Thu, 02 Jul 2026 05:56:31 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4ac913ba72a73c20eba763c6e01343f3312234720144ceadcb1c187eeca6b59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223560389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb7f128e69686eb868c7398aeac3e27f6e0eab40a23d09452d98acd6b1180df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:56:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:56:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:56:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6deabee155ee88d1653ff44ad3c73191f42d015f4abece6a6ab5a9fe24017a69`  
		Last Modified: Thu, 02 Jul 2026 05:56:52 GMT  
		Size: 91.5 MB (91542237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfbf937b3fdb944403f68eb7b131dc974d28f99d62a2e6dcc7231e30fc0ccdd`  
		Last Modified: Thu, 02 Jul 2026 05:56:52 GMT  
		Size: 82.3 MB (82338714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4dcdcd2df0497215623d23481d88bae3c1ddbdf853e8c771372a4f2726d2322`  
		Last Modified: Thu, 02 Jul 2026 05:56:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0af78877fbc979fd83081fd5504bac59004f5a46de639f179b7e13e6f915326`  
		Last Modified: Thu, 02 Jul 2026 05:56:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:45d9c1f120eee9b23804a5b38fb679844439b31e0f4fe604ecb87f07b2a7a105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be25258affe0edf9f60382ce8d46915fd8092df4922af20d3fc7b4889ef89aa`

```dockerfile
```

-	Layers:
	-	`sha256:96510b8422a1075c30e1dd2aa97707a3b49c0e904fff13a48c210ff32cfa74b7`  
		Last Modified: Thu, 02 Jul 2026 05:56:48 GMT  
		Size: 7.4 MB (7443283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a285874c53f4fef7122c7b3b86ccd1f1001829685a3bf5d6ccd632a818df874`  
		Last Modified: Thu, 02 Jul 2026 05:56:48 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f2d7db91e5c07b9e783b1aa529213614592b1f5e2b06025697f02502ba5d7b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232991563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd793a66223f2de9d2e891574156a44b6b9684348d084e5bc6226a1dce67fb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:37:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:37:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:37:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:37:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:37:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:44:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:44:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:44:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:44:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:44:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73c0fa4c2193363c9985c22b8523d5932c6de0c0c40270ca09e8f646c77277b`  
		Last Modified: Thu, 02 Jul 2026 07:41:44 GMT  
		Size: 91.9 MB (91914005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8741d45174570aa7b096ed3f505b93016ba0bb6f4ab03cfc46f6c16d3e5e07a`  
		Last Modified: Thu, 02 Jul 2026 07:44:43 GMT  
		Size: 87.9 MB (87938444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1023c00b7dce5584f9b051456ac16c072d87c83006483401222d3c18025956`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69521872ab35ff70f74c49c0afb2124087cbf5dc3abca9099cd65fcabff8f297`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e50535ada062c492a13aadb849a7d0949d4c3a56cead9d0273e3dcc35f605dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6e76dfdfccd73e7a2b20556b371fdb3f819016267ffe6471ae4b07c4db298a`

```dockerfile
```

-	Layers:
	-	`sha256:345e17aacc295aa2fa02f5a31b9e7fb1eac883dfbad03e61f2f42dffb4908de5`  
		Last Modified: Thu, 02 Jul 2026 07:44:41 GMT  
		Size: 7.4 MB (7424614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a0213b504d9cb160dca954c40c2516546054e2a45adb9d33ffbdefe3ce9cfc8`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7f6dba3337435243ed4871326412347b682b80b07476d52cd5c999d19d7cce70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221310381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8262fc81ead3479952519d269ae616efec7cf8fb6d9edb188b5dfc4a46114f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:58:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:58:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:58:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:58:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:58:43 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0737327cdf92776fdec5cd90a80c250174c104e6f220934b6923e3357a2a6951`  
		Last Modified: Thu, 02 Jul 2026 05:59:28 GMT  
		Size: 88.4 MB (88420382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff498c50f5d9ccfdb2e969c4faf936ffe8d0f472cd9fc0978bd516b95a5243a9`  
		Last Modified: Thu, 02 Jul 2026 05:59:28 GMT  
		Size: 83.5 MB (83502897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2399f8a7c3ee2ca843d18754468d97a2092b35581cac221247e78d83e535e32`  
		Last Modified: Thu, 02 Jul 2026 05:59:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6aa93be1069d0b4375e537f8dc31ec35e68e8651b4db394b113805ac4f33d9f`  
		Last Modified: Thu, 02 Jul 2026 05:59:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7e101fdc72ba0330c8980d16cf0e947221809772e2f37d2d028a1a96422081e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9296919e47b825ff8f2b1dbb2483bbd5ff1ea107f7700ee21f1e3e0da36ed5`

```dockerfile
```

-	Layers:
	-	`sha256:21458c81ee574a214777ad0d6657ef10bf30d5b89dc4a4b8d4beca918d9045cb`  
		Last Modified: Thu, 02 Jul 2026 05:59:25 GMT  
		Size: 7.4 MB (7417353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6522f554a63ee3d41fb12931dbda23e064a12d87cf9dc6684f01fe8f6231c053`  
		Last Modified: Thu, 02 Jul 2026 05:59:25 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
