## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:4953d495c0dce002c51061466b754da31e94e72b865fa99868160f640f51d2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:47c224f82504b9d5f81e3bb431928e2179ad7f8c41ab48576c218684dfe2fe45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266165353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750e460f0d2a4c29c48860cfadc672281151b17d136b1a449d45f439a9986b97`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:07 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08be4b31df80f95eb8a34879778edee5598112bc70239ebb3acf8c94585b6aa`  
		Last Modified: Fri, 21 Aug 2026 19:12:41 GMT  
		Size: 145.9 MB (145861435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b261ca34f916906e99859b3057ac5d81d6343478db7744357957572487ec5d4a`  
		Last Modified: Fri, 21 Aug 2026 19:12:40 GMT  
		Size: 66.5 MB (66526255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b04fa593daf380b910cff2e01aa9981334ab16ed4ba57a2d090dca8c55408ff`  
		Last Modified: Fri, 21 Aug 2026 19:12:38 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1173cf66c625fe9edbb34a0efb8f5af5e0ab3f36e96acc6866855088f2aa7345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a4408774d3858a64c3674df8d7fc408e99fce42fe0cb748dad00cfac41a4f3`

```dockerfile
```

-	Layers:
	-	`sha256:bd71a6be6a9348813e11016f8844d4c7c9fd55e5c67df06b068ac320b5b3715e`  
		Last Modified: Fri, 21 Aug 2026 19:12:38 GMT  
		Size: 7.4 MB (7430166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcfa757c955ad3c237115bbfe659a7dda957de2dbc6aba16a91687b20e9fda7d`  
		Last Modified: Fri, 21 Aug 2026 19:12:38 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4d0a2c639bc37bb4b3dc8807074ef6811e97facc7d3a72a9ab94d7d47ffaada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261518413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7591f470452bff730755a98d8d8c1d9e5afdc50a851251544517ec6733d61f92`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:02:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:02:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:02:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:02:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:02:35 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:02:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:02:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f50e5846e418c5ff9ad9d12e8d4fbe2da782c01d370872968b29d16dbb9b37`  
		Last Modified: Fri, 21 Aug 2026 19:03:14 GMT  
		Size: 142.6 MB (142566564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b7a7766b2ddf0d11b8ec86937bb8b0a176d1181802ab35c372e2b0092078e1`  
		Last Modified: Fri, 21 Aug 2026 19:03:14 GMT  
		Size: 66.7 MB (66690305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf20ec63ea052dd12c77c3e12e42a5a910675b64926bd42fbe4248bcc47050b`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1f90ee9785a39fe3ebfeab4dff6610fb55cd5302b9cb5923ca236017cbfff828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7450364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57db6bcf3745608a31f4562db02cc349b03cea3059ada9ee301b4df4b9677d3f`

```dockerfile
```

-	Layers:
	-	`sha256:5d0bdc4355a7c3b4fb1921348b22338296478ef2275ed8b6d77e15d52b1c83d4`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 7.4 MB (7435883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08065f4e7bb6a096334d0e4c4fce95245001216572bae0c263bc39c743af9807`  
		Last Modified: Fri, 21 Aug 2026 19:03:10 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
