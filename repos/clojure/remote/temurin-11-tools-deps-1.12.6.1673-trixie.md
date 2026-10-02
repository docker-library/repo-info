## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:1a4be8490389184e077ead13db9fcc3090b1534d86433e2b91b63b89fedd448a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2464264a16fa1bca781dd0be8af0bf30fd029b2612f78575aaee1463a1c52254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280797414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4fa9f55b3823391c84a9190b239bb135c30e4d6dace8caae335b5565e02596b`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:44:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:59 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c744c0e6d4f813b1f95dcdeccc2111291e2ac9355b5dbd717e82de38b544b34`  
		Last Modified: Fri, 02 Oct 2026 02:45:40 GMT  
		Size: 145.9 MB (145864193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78921ee5a2a56174565c2309c13618aad4fc0d761eb9a20144cef631f0185136`  
		Last Modified: Fri, 02 Oct 2026 02:45:39 GMT  
		Size: 85.6 MB (85552878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24dee205fbce4d134ba66c57c40eae004f13008a164520886273374cceb3667`  
		Last Modified: Fri, 02 Oct 2026 02:45:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4348b725319b922c7dd9277b978f9ea2c8aa9d14428dc77c74aa03cae6232db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef831bac48f27d7916d9a83848f5cc43aec9d9f61728d6d77ab290b3cd6413ec`

```dockerfile
```

-	Layers:
	-	`sha256:b518e4bc3f4d6512f87365e4fd0bea308b1d8c5cfb7770daddf7049b18b88ba7`  
		Last Modified: Fri, 02 Oct 2026 02:45:36 GMT  
		Size: 7.5 MB (7498336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8041b0f7f86d970db8aa274af7d5c3a48d76472f333e7da495c1e75d09bce68`  
		Last Modified: Fri, 02 Oct 2026 02:45:35 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2a1bf69ff5c1937d30ca615246554864c42b5eb129f890560d0de59ad57b1fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278060231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c11bdbf19ff73f1044b528afed5869b688353daf8ac0e1b6dc366bf450def0f`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:24 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b0598dd622f995ca61e55a4621d7a6e90ef1e57ebbbb78b45cd24cec89721`  
		Last Modified: Fri, 02 Oct 2026 02:45:06 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a4c7a781b1f215221ae7b9ec0d34d8234b5f692439a7624f449fad6c73e74b`  
		Last Modified: Fri, 02 Oct 2026 02:45:05 GMT  
		Size: 85.7 MB (85734224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafbd3d62a95920207ce4eacb0a2a347e503ff1e7c8662f30a2d6134d86da0b6`  
		Last Modified: Fri, 02 Oct 2026 02:45:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:18281c74970ea8f5eb1b122ee94230c53d3983aab9662ef2557cbddd0ad2fba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f774c947b4dc17c0bfe4050671e09341b952dfd0c6b2a2f83307198e347bb08`

```dockerfile
```

-	Layers:
	-	`sha256:34c2e758ce68577012ddddb9e45ea341671d37473ed2d55240b189d61e052ecc`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 7.5 MB (7505347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cc097ce6270c576a2f7a176307018225824b92445a875919fb246e66fd3dfff`  
		Last Modified: Fri, 02 Oct 2026 02:45:02 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:be997bd3bcbeed661a0e806d10b48e4600aa3a27069f36f03da671ea0d28a5c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277507371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7393c52f82f9b36f1e5de41852d890d0bc18036e93e1ea41da3c932451f5847e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 07:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:46:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:46:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:46:02 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:55:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:55:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:55:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56e9f3bbf0dc455cf49682b7c5301d36d3867551d020a4d6eb1b8a9b61154b3`  
		Last Modified: Fri, 02 Oct 2026 07:50:42 GMT  
		Size: 133.1 MB (133094687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5242ac431a59cae2367d82bcbe3519cfce6976e50183f4352a7c67a8c88f8b`  
		Last Modified: Fri, 02 Oct 2026 07:56:18 GMT  
		Size: 91.2 MB (91216964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d58c9495ab008e6ca04d60b279be2d37499e13a0383f90556208b67989bf12`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6a4c7945b34c9d2d8a777d87cbc6767b7337e4ec3e4e5bc99dffe666a87d532c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3912a4681e361122fa2758190d7d14527685c4ef36484360cdabbcc0ccd9a00c`

```dockerfile
```

-	Layers:
	-	`sha256:5c8df4244af9cd80fb4204425e9177654f251ce293c0ca17b8c9dc1009633f2a`  
		Last Modified: Fri, 02 Oct 2026 07:56:16 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972d3e9bedaaaec49a854b97e512eefcea141b60605f4d8eb59a1ed1e12eb7e8`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json
