## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:026863ac4c13de644816301ad79eb1f6fd8ab0710d84d014a38df0842bdbbb01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:569fa7ec1792046587bd758ac1a2fd878885a14b9146e909b877e161981432f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153922949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08fbbb7f5bc3c84bc88e9e2942398f491723fbdc6aacb987436762136b7c583a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:25:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:25:20 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aef1a44244a9fdea24f4bc9f1fbc300c8234424cc32ff1603e0c639c2c5b030`  
		Last Modified: Tue, 25 Aug 2026 01:25:55 GMT  
		Size: 55.2 MB (55164416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38889c7188c9c9c90936f6c72c9ce9131178a06f01735e8ca450b875e0c56f15`  
		Last Modified: Tue, 25 Aug 2026 01:25:55 GMT  
		Size: 69.0 MB (68965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c909958602ebcb7b5f5ce3a97b1eb4d54010fe8eecd6e20e8c051a6a4ea6e82a`  
		Last Modified: Tue, 25 Aug 2026 01:25:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18ad85e4d21f6c9668882ab76e60f6c230516075d365881cce71fa0c42eb2f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4709ee2269a5200dcfee15f5fd306c4b99e72bb14a10588f2c60bc88e9c1d0a0`

```dockerfile
```

-	Layers:
	-	`sha256:eccf8eed9e5de17d0c9d85f2bd1594530e2f571d06fe17b18650c23bb67dcd89`  
		Last Modified: Tue, 25 Aug 2026 01:25:52 GMT  
		Size: 5.4 MB (5377922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25e183f0307538ab5c5428f276a97d2239443dbb176e6afbfe92797198b025ed`  
		Last Modified: Tue, 25 Aug 2026 01:25:52 GMT  
		Size: 14.4 KB (14379 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:36fd0ca7fa34497fe93bf1547ba50a7a534fb372ee3ee02cc17888ac71ed66f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153192735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3840b3979f32cc186525b8c95535b716217e42554ed0ee3efb0ca0a2bf018ee`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:00:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:00:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832264a1a333dbf19c91a8bc8144613ded2b50eb29242e257bd37034b2b22ea6`  
		Last Modified: Fri, 21 Aug 2026 19:01:17 GMT  
		Size: 54.3 MB (54262741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd6cceda25558a8721e311806959534e2b95dd3ff4b52b2c44db81d66f9e4a2`  
		Last Modified: Fri, 21 Aug 2026 19:01:18 GMT  
		Size: 68.8 MB (68785742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9054926f891af94441887930df81388b483932e22fb0882d82f8cb5e2dc3d1b0`  
		Last Modified: Fri, 21 Aug 2026 19:01:14 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f10cf149ebb57a4f2397192c7d53312c9fd0dec27574b65ccff9abaf4123e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ba9f5570f7bb9d8005a79886dbf0dfb4929c75d8a098859f2d07b292ce723c`

```dockerfile
```

-	Layers:
	-	`sha256:5ee4d713b8c75cefd5327c2a3c7af755cf6739d390541eb35cf8e01368685f44`  
		Last Modified: Fri, 21 Aug 2026 19:01:15 GMT  
		Size: 5.4 MB (5384185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5103103891ff663d09118c5843823063d18a040205d0ee6879b9d4499b8748b`  
		Last Modified: Fri, 21 Aug 2026 19:01:14 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:05f0c4ccddb53508ba154fd99bca126c27c5b16e0e57ff1b22dee185da062d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160649348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8730a4287569df45df5648be08304fe34207e5acd1b4850c2429ab34482af07f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:27:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:27:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:27:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:27:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:27:16 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:28:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:28:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:28:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbde65f231f224f36d3827f2a374ee3aa83efe5ced89acf6859587d21d9e4482`  
		Last Modified: Fri, 21 Aug 2026 21:28:53 GMT  
		Size: 52.7 MB (52670704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9af5edfe93d78a8ac39ea5b5a2292a58354ecd6c7e7d9b2bd3cd3c0e1d6105`  
		Last Modified: Fri, 21 Aug 2026 21:28:54 GMT  
		Size: 74.4 MB (74376657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacf278844c5b9e9446f46ad60b32a368d3e5b92d1c99837d02d8d5233b7cf57`  
		Last Modified: Fri, 21 Aug 2026 21:28:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f81c75741d16680d01692219b1eaaa903c8a21cd8ac7b57ca82cca5ddb32b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18c5cc0946a3b26c78132aa913942515316889da2f72294ac65f6ff174f106f`

```dockerfile
```

-	Layers:
	-	`sha256:e9eb9f5ddb10f3d44756420510fd409ee02cc32851589734054a6be8cfc9e742`  
		Last Modified: Fri, 21 Aug 2026 21:28:51 GMT  
		Size: 5.4 MB (5382690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21305b3341bec4d755928466cdcc928f7e888ab1e0e54ff1dfa42882b2e5c05d`  
		Last Modified: Fri, 21 Aug 2026 21:28:51 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
