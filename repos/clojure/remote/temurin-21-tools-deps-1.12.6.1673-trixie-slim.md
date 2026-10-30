## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:46a6325db658150fb2601756cfca7489fb35ae0292d38d65dc76a781a678f782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4b20f99fcb8feb091a158e96a8d905845efed769ba7f8b7fd0480eb79657d2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257255159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef25613405385a4fbcb59df805d00dcb74d20a75c1a086c0cd5bc51adcd1c47c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:13 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d59bda143751b307519262b50c8ef93bb8732449976e9ffa87201b3010811d`  
		Last Modified: Thu, 29 Oct 2026 20:05:53 GMT  
		Size: 158.4 MB (158409442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3181b1cad915485826962b7c189e1e21449a750bfb101bdb098d7108eb7099b`  
		Last Modified: Thu, 29 Oct 2026 20:05:51 GMT  
		Size: 69.0 MB (68989437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e90b6bcf6a9889e0290c5855998daa41b7304a6305af4e2fe75e0198750752`  
		Last Modified: Thu, 29 Oct 2026 20:05:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19ecc4f249ebdd6badc65ea17b04d296536695bf94a4440ad39d5aaeb14ec94`  
		Last Modified: Thu, 29 Oct 2026 20:05:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:df9b244a00a13e6e9d4d78d8a9cc8de50c8c72c70ebfe28a0474606999ce7d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ae875f67c9fef10119d26ea1a8b672326efbe236c62d6c360d568fbbadf4a4`

```dockerfile
```

-	Layers:
	-	`sha256:958db89280fc0ed7bfec4af7e12e83d3cd4b295b985ddca133498abb8ac16a4a`  
		Last Modified: Thu, 29 Oct 2026 20:05:49 GMT  
		Size: 5.3 MB (5263909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bfc346934a4e729d67fe0e4f5e57a2929a1654b7d381421119801b971f84480`  
		Last Modified: Thu, 29 Oct 2026 20:05:48 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c8fb1696f9da07f062331a1614ea0d2f0783e66cc31fc7069bf03029b7e497b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255711214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8229473440d43a7b6e02c8c0dc1ae57cd92b523c43260ab1f3f827e9aa29386`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:57 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607b67af8f2d6d516cb2b6ef71c7ace0131f739db940130842a366676a594987`  
		Last Modified: Thu, 29 Oct 2026 20:06:38 GMT  
		Size: 156.7 MB (156691644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db51ed1a0a97df2af8badfc77294af0e4da69637766bbeffaf8951e3127d0e59`  
		Last Modified: Thu, 29 Oct 2026 20:06:36 GMT  
		Size: 68.8 MB (68805029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e108ef9ed8168805215d4a44f3ab87463c7e08eeb884c8286a113d45eb17499`  
		Last Modified: Thu, 29 Oct 2026 20:06:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5c082c7232673aae95e9503359088814b52bb97f505fa02bf872ec6c8445e7`  
		Last Modified: Thu, 29 Oct 2026 20:06:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:feb9c56840ebfa08efea58a7ff48817d80700ee82f9a9df7b4ad0feaed979272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf116e31cdccabf6fc52133b2ff81a4f1a64c3ac92310b0a5b503f3b51214c4`

```dockerfile
```

-	Layers:
	-	`sha256:230a88e812724e41a1f24777c91d639917d450a07014b40be6c5e57cdf80c3d4`  
		Last Modified: Thu, 29 Oct 2026 20:06:34 GMT  
		Size: 5.3 MB (5269670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05098d5ac6543e339946e05df19c2b3a3d1aa52490708fab7a4f73c78612725`  
		Last Modified: Thu, 29 Oct 2026 20:06:33 GMT  
		Size: 16.1 KB (16082 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:455227fdc7a9afd2f504cd6e84799e0ab030c913e2f6365af71539a7d6bd41f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265659132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f99b7d8d5e06d6aba0e3740c50f42d55379abdcb8fa450619519af916dd073b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:41:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:41:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:41:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:41:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:41:58 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:48:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:48:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:48:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a38139e42efad6f8d2be360542bdf458c3ae7eb7262d4c847e458af9ff5696`  
		Last Modified: Thu, 29 Oct 2026 19:45:59 GMT  
		Size: 157.6 MB (157573285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c902ac5d8c79464b0585575155eb3e1928da8342a1aea816fff67d0332c6b6`  
		Last Modified: Thu, 29 Oct 2026 19:49:02 GMT  
		Size: 74.4 MB (74418543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656383e3bb22562ec41b8d57f2da913b63975cab289863b5ca5fd1c06a4acf3b`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e70d4caa7fcf1bdd007dd3c1448447ac2b0297b1cddbdd9b1f16364ce69ae7`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3025b7026f81094d8a1b4dca5571cbd095e25f4bd674f67fc67f4e8c55daf5f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab81c38ab667599cd9505e7658bbaed45b16989843bce24f2f3b664940c87db`

```dockerfile
```

-	Layers:
	-	`sha256:03d0277026109f35a0d3c7dfc9ec5d435b8501577edea4fe28e7dda82b91127e`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 5.3 MB (5267034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e5f48f6471bb2b8bfe848d44266b59b8045207c269ba13d5150e73db552d9f1`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
