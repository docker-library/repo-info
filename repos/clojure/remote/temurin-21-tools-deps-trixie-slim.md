## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:26b748535754aa298c549ab6777d6446414cbbfd8e8ece461ee38b90de41c585
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b32914020c0847ff3388d9bf2049de9aa79d38df3c8b9af032947bda34c84e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256940511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6e13f8931c260ce647c4d4bf84e23a564578a338017cd7d5aa5cf58ec291b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:01 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:16 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec09a2166476d98c0f0b39c36b85469fc34f0502a6e1ddc329ee677b2098f55f`  
		Last Modified: Fri, 25 Sep 2026 23:24:37 GMT  
		Size: 158.1 MB (158117462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faab71b79b214b6eb6445a7bf9b67d2a4bd282af184542d15aba9bfe86f37063`  
		Last Modified: Fri, 25 Sep 2026 23:24:36 GMT  
		Size: 69.0 MB (68991593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa5d47011d83cf285df1092b962cf6692d6b7899dc8294426852864c3fb4062`  
		Last Modified: Fri, 25 Sep 2026 23:24:33 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9156bc4e7886a21bebd84558e64c132bb11b7b21d03b75515f04cd425d72df7d`  
		Last Modified: Fri, 25 Sep 2026 23:24:33 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e59568b92ca8081caba1a997417dbb609d5bf4a329fe922040d6afb257a00f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3930ce85875763e0532bd496a0822268b3e04adec0976f8cafaeeb6220ab7ed0`

```dockerfile
```

-	Layers:
	-	`sha256:9c9ddf9f59b3f0d45a2cc506aa12e9bda87ec593ef74e00edfe05fe3c2952ca7`  
		Last Modified: Fri, 25 Sep 2026 23:24:33 GMT  
		Size: 5.3 MB (5265166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c13536c019c9f6b3eede1ac77410f9d30b8f333d639aeb1503efffdfa3bf88`  
		Last Modified: Fri, 25 Sep 2026 23:24:33 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2cfa661accd15c0a7258e068050d4dd3d6ed0f620fbd255f838edbbff1729d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255399871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5ba2115549fe76613b758c5f407d49a3974c028e17ba0d7001b851cdae9c5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:21:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:21:49 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:22:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8151a5b9469eb9f0ea5b58078ffd0e6c52daf8b54e3024a1f409f7b44e3f01d`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 156.4 MB (156400634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729b0e8b1c585599b9002327c90d4ccfa7d6030cc52b1e05fa54ee88c81340dc`  
		Last Modified: Fri, 25 Sep 2026 23:22:30 GMT  
		Size: 68.8 MB (68808505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023684e080de3bef0a3fb9c894a462532c3b22d354b02f9d1838785dad678113`  
		Last Modified: Fri, 25 Sep 2026 23:22:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4732bc0fa6ccee7a504036d30f7fb61efbc0d06446ae0cc7619be14e632b2325`  
		Last Modified: Fri, 25 Sep 2026 23:22:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8becdc040dede566db679ce02b8ef27380eac20fc922ac61ad39c5acc468be4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71c69b34c5c78f75a8e18766ff1ff3b66110c4b8469c523fb01acedb9b5a311`

```dockerfile
```

-	Layers:
	-	`sha256:b90c761748f5ec2a14afef9088fd8536f803f0febbd06227aa8908d80f8cc40c`  
		Last Modified: Fri, 25 Sep 2026 23:22:28 GMT  
		Size: 5.3 MB (5270927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acb65bdec020b2e0cc92da5c1d62ac862faa3ca6a2f8ec3c8d7ad27d26e3925c`  
		Last Modified: Fri, 25 Sep 2026 23:22:28 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cc0f2004425cab443755c2dac130e3b06ae620b40ece014ef6dbb997878080a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266329118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993c74bb02fd44763da8ef5945803c069b6193a6ae03fc7489bd6c73e1db9324`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:06:56 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:14:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:14:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979281c49b96086103e149ea859999065d7d8e56da642cb7c95c5f3a0934de46`  
		Last Modified: Sat, 19 Sep 2026 08:11:28 GMT  
		Size: 158.3 MB (158274938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ba1bf7e80bb9b315080738b989abd3a0eb38c3879cde4397ac6ccef43a13f4`  
		Last Modified: Sat, 19 Sep 2026 08:14:57 GMT  
		Size: 74.4 MB (74411907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e504c75f6795d8c06d9377268a37a45f6ec02ed01c15fd53bf3e9774b9e0ff0`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023b93ff08e060518a7e6092601cdc74852a63db9bb93508a144e6ec93c549d4`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8eb008dea12a5301c83aa6440f39d6b62f9c980d41b54bd977590700149555d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533ecce960348e5998fb207ba5ff042fc8017cf5b0f4dc1950a51ebe44a79879`

```dockerfile
```

-	Layers:
	-	`sha256:d39ab0e19fb5be22f2dfeb8ac20d785b50e07e1b3f26c96302b9d856875b136b`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 5.3 MB (5269529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764bfdc4264d2c45f3ca28bd2aa4a7d26a29e522f0878e2fc24de32f2d9b8930`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
