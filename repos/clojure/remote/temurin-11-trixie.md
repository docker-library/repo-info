## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:b6edb8628737b0ca51f0639659975f8f8cc778a72162548a874fe7aa6f6ac95f
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

### `clojure:temurin-11-trixie` - unknown; unknown

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

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-11-trixie` - unknown; unknown

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

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9b1b96205c8be701de05862a947c218bec3f72b050561c0aaff2922a83476687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274280960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6025c0edf1c7c8617d8e9b005f40af3b1c3d2896d4aef9f77b89646f3eb692`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:07:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:07:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:07:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:07:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:07:21 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:21:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:21:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:21:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e7bdb001f2692102de3bf07b1d0bfd3f3f2dc0d2d1f77f247c12fec14e307f`  
		Last Modified: Sat, 26 Sep 2026 04:10:33 GMT  
		Size: 133.1 MB (133094700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f9c41b72715deac0703a2a4f0533241293848e52b379c5712fe0e9b78cb08d`  
		Last Modified: Sat, 26 Sep 2026 04:22:12 GMT  
		Size: 88.0 MB (87990541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c28d5019a4083ac8fa6cdd511add3443db32a954935ad7abfe7f72cc53a8036`  
		Last Modified: Sat, 26 Sep 2026 04:22:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:237d7e830a6706f808d5692be09e3ea64be8fad659c5db272cdf1cf7d2aefb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbd3a6f650cd7daafbc47a155d45de3d3102e73b3f9052d258416340ce837cd`

```dockerfile
```

-	Layers:
	-	`sha256:a9b98c85856ae1c908f1797d417cc599b31f9b2993138f44273a9f04a268aade`  
		Last Modified: Sat, 26 Sep 2026 04:22:10 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:180a80114f1945e14483603cbd6a3fec8503f78b4cdbc2026bdbf49af13df7a3`  
		Last Modified: Sat, 26 Sep 2026 04:22:10 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
