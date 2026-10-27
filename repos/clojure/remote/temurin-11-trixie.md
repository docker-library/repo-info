## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:27b693338acd405313c6edb658dae365c9fd5a97d0b7d4da229488e6ff84c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0c9be9707b367daa7b44ef8bbd90aa04d500b01cb154b9797aca1bbc2f9c39d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277828071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74615cee5b9e2cfa4b3b35a657005d49f07505c7272785653ccfd157605a2ff`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:47:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:47:35 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0b272898afcac4a00d16fe48b617d978b5d4884ea911c826d71658b57d57ca`  
		Last Modified: Tue, 27 Oct 2026 00:48:15 GMT  
		Size: 145.9 MB (145864282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e1d5b6b4f36ea317bf55b6822935d5031cb6b7d5d27f3509b3e7c892ee0d8a`  
		Last Modified: Tue, 27 Oct 2026 00:48:13 GMT  
		Size: 82.6 MB (82569520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affb3d7ec30613c9e4ef7d44c278d22e7404211b55cafb61489e29f732238833`  
		Last Modified: Tue, 27 Oct 2026 00:48:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b8483713bb19ff8f68d9ab48c6fb1ddd9ca7c3caf2b23c8094096c8edd73375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78937268ad9887b1993bc727e07aae7a24778cbfcc1f47be2d11e26e9408852`

```dockerfile
```

-	Layers:
	-	`sha256:e38e94f66e5fa489bb9cda363f0b21b0a092f9b11bf807e315b43d885ce07181`  
		Last Modified: Tue, 27 Oct 2026 00:48:11 GMT  
		Size: 7.5 MB (7496283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e451becb11d6ec4d3568c584a7401f28c857539cd44213ccf311acac0e2dd6a`  
		Last Modified: Tue, 27 Oct 2026 00:48:10 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4f461c81b772a439bd9d53cc4c6ff64514ab4f4e9bce7557adcadcd5f98934ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274731352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0f0d5d1b548da374f16473f5cf95d944ad2504a401697fc2ffee7f4ce11f41`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:47:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:47:40 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef0ee228c86f2a3182b70ceae89ca1098d4cd8a6683ad781895e8c770854357`  
		Last Modified: Tue, 27 Oct 2026 00:48:23 GMT  
		Size: 142.6 MB (142576534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd158530db5f575b0056c3c61b6578877876116d95a2338e16d5b8c29c945b5`  
		Last Modified: Tue, 27 Oct 2026 00:48:22 GMT  
		Size: 82.4 MB (82392570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ce2691f0142ddd20566f9864167fcfcac0175a437192cadf1ec87bc356326d`  
		Last Modified: Tue, 27 Oct 2026 00:48:19 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3058c0e2f5d15cdcb9964d90d7c5594146514bb056325b9cd34a592ff17321b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0058108ad547aa59576fc9a8f345aa6a8d9cabc689ff614f4d3448709318eeb`

```dockerfile
```

-	Layers:
	-	`sha256:eb11cab5dad8498325e3a75eee1a55c6dde53db2a920c2c4fb506ee5566289fa`  
		Last Modified: Tue, 27 Oct 2026 00:48:19 GMT  
		Size: 7.5 MB (7503294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ab3845b2d31369fe8f1d32adefc12e9f1311cb7a581de9434fc89e6ec2c040`  
		Last Modified: Tue, 27 Oct 2026 00:48:19 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:51c18bd52b200ec608af5f8909216261afee55d7becbd2fdb4a8b0f4f37921ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274300635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aae0f0fe66357389c83c217ec36daca051117ad746b344536b3b123e71dd80`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:04:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:14:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:14:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:14:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e719a9b13e22af550ed1bcbab91175a6536b0f3f75f314426d583498c1f259bc`  
		Last Modified: Wed, 21 Oct 2026 10:15:40 GMT  
		Size: 88.0 MB (87997278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01715379ede23abdbd125d0aac02e396283dd402d6d5a74bd7023009495aee8`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fae614c4630fc77c66ad3055da2009781914ec6886f14fb08cc0338625aab937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c909b27ee660ede1e3de712441f87661a04ca494a005dd0d0a49bd1f3aaf49d6`

```dockerfile
```

-	Layers:
	-	`sha256:47e15809c8b2d4b7c5548bf4fc9c0326eb91d630c2004817713c1c7c8eab70b4`  
		Last Modified: Wed, 21 Oct 2026 10:15:38 GMT  
		Size: 7.5 MB (7500863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ec8a04022372e2b3ba4a693d03fa827329b735773276d733a86aada92f355c5`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json
