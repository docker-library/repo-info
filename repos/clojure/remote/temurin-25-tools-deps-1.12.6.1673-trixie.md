## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:63bbc16356fd47d4bf58936f2e4f0b0ca39020203a1a1da56a41eec26392b53e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c170d02071f0606fa8c82c684878902084a5058419ddc63707bddaacbf6cf840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224582662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d86493d68d3912326e58d8a4ba990ef630e36129747f5722636d93b760797c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:20:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:20:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:20:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:20:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:38 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ce4579b5750209044a90da591bf332fc3031efd7204f697221bb48b57a1f70`  
		Last Modified: Wed, 21 Oct 2026 01:21:00 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f84808ada94b5c144675021d2d66314f3b22a7f39a393147c137dc4154f88d`  
		Last Modified: Wed, 21 Oct 2026 01:21:00 GMT  
		Size: 82.6 MB (82569966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b445fd14ae9a34fde6a736a3ab5bee3ee8ab75a98739c26926340ba11a72da`  
		Last Modified: Wed, 21 Oct 2026 01:20:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acb9a25c321be2310acdc1763fd38d7802ba09ffe5af57c719347b3934d7029`  
		Last Modified: Wed, 21 Oct 2026 01:20:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c064d84c5b072bcc18b197a73dac2abed5dc6d8cbd880374b04865e67b8a243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d3ab301457670ea8b7aa774a63f95ec645cb171da845f3cf7c723dc034b50`

```dockerfile
```

-	Layers:
	-	`sha256:19d03c1b2b2e3d8e9c7359e58b48f1ff1768c81fe89a6e701f2c6f3d1a5c0ecf`  
		Last Modified: Wed, 21 Oct 2026 01:20:56 GMT  
		Size: 7.4 MB (7445607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bee9d6b72694f5de4b2f6679f34a91f5b22c0222f518536b718490c76c1a75f4`  
		Last Modified: Wed, 21 Oct 2026 01:20:56 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cab465d99736e3d45c50b6a5742ce37b0abffe10926a69f5cd10414e7afc8bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223684596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57820665675693204747bf313eed375963b84766c718da17900f7049331432db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:26:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:26:28 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:26:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:26:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87dab161ca452f06144df154cf47d44f8dc2068edb791a7e0136fcf2abbe90f`  
		Last Modified: Wed, 21 Oct 2026 01:27:09 GMT  
		Size: 91.5 MB (91528874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddcf28bc197ea3a03a472af6f808cc86ee9fdeccf53cae360c76d4288de4e4a`  
		Last Modified: Wed, 21 Oct 2026 01:27:08 GMT  
		Size: 82.4 MB (82393076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c067cb2b93dcba085d5073e5ea1a72c627f6213a74962445a903146ed487a1`  
		Last Modified: Wed, 21 Oct 2026 01:27:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b28b8f5d62e688a97aef03605b51b1733ce2f5a6d6d30516c2812ef0d6d3992`  
		Last Modified: Wed, 21 Oct 2026 01:27:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24d3e74687edca1cb7c7ecffebb34d4795031da20cfcfeacc024f00dd2ec7bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7468732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffcc2bb05fe11d794f79f667b74e2c015a5cdbf9bdaf72ffa7f74e51d9ad9ba`

```dockerfile
```

-	Layers:
	-	`sha256:cde71e0db1a69170255e4a18719f8af0a76b388b23911fa007cd92222cbe8e95`  
		Last Modified: Wed, 21 Oct 2026 01:27:05 GMT  
		Size: 7.5 MB (7452021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b224cb4106cd0f704f983ff5d5754e9bc0138e49ea34391b597f91be59d45b1e`  
		Last Modified: Wed, 21 Oct 2026 01:27:05 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:931da6d40b7d0e4be94e2e2e6c3776cfaf1ae418fee3d6b6cf0be1a83aba4e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232462174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aa9262eebc3dee4f19aa9d3c5e15b4a26c9f81878429b3c7cb0edb070bdf6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:50:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:50:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:50:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:50:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:00:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048e1f0e41557690eae11af5f83bc54103283e7cb6f701fe4a358768b52b4bda`  
		Last Modified: Wed, 21 Oct 2026 10:54:40 GMT  
		Size: 91.3 MB (91256233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81acf38de524823f4f1a2e811aa33f40879a0e9fbfd927cefe22896ca83418dc`  
		Last Modified: Wed, 21 Oct 2026 11:01:00 GMT  
		Size: 88.0 MB (87997319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb854ee15f7f20c2a01c3aa03e93626a8066092c16281c9ee58131d293edc0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697ba6dd5aa59afe6defb4461b01fb74bba1ede457a08bc1dd0ea1a0bb12f5c0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ebfb1086a011cbe5799161c637c232126b097cdd9296113cae9b510d4418b322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba721f9824d9c8e21b1e755690c3cefb883727682da79424bf61d83ef71981ec`

```dockerfile
```

-	Layers:
	-	`sha256:f785e704dec3013763677a00579b948d20f97b3504da217114d452dfce93a950`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 7.4 MB (7433350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79030b9efd73f35b1c8d1fd6b23ca0cefc733b5eab82261306e8f2ffd849ba9a`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
