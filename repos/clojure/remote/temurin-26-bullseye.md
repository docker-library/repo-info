## `clojure:temurin-26-bullseye`

```console
$ docker pull clojure@sha256:2ad9784b7bf740ccfdd5877cd12a982f5ec4458324620019ce5915eab525bb38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:318a9c7dc714858ac611381674d852b1db05b733721709d45bf38ec74bc0bb23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214867853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd9e084a2a2abd15b1b352fec1b55245e86db76fd98ad19dbe5557f40dd32a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:59 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c937a9b3b9f4db947d44f34f6136c6b9006593a374d69efcaa3ec87cc32f1c`  
		Last Modified: Tue, 25 Aug 2026 01:33:33 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a8f5e864d6a2e695102f87489ec52f14c7ccee958024e0a463192dea8a7896`  
		Last Modified: Tue, 25 Aug 2026 01:33:33 GMT  
		Size: 66.5 MB (66525677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23cf52c0106ec4933d6dbf6f94b617ed2d05a510eee86788a145a8aa0d87e3f`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de1b9b31868ab90a4e14e41d313b787595b464821a1b87a9ae2132d756a811a`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ea495e45618927cba0da49231a7f459fe42b0b05e9833813bab93a3701409a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4da15917f3b8d0154c947523facc001ebf5df3b1371180282d70f5989d0761a`

```dockerfile
```

-	Layers:
	-	`sha256:30d8e578b5c6c0a6a5bcf2efd2b23bb764a13e201f2ee012698575c5784dc1b1`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 7.4 MB (7375545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2f76987f2a4bc70ed34f083d02c7e17ab2a30635de8e390adf6209ed312a199`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fd2ba2a3560fd7df8982ea48ff8a25ee8dcd201d8d0caa24e433572e0ee07561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212494434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc6a8a6e5d229d73154004cdf2b77abd87700aec507e73efc088d1fe282a31e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:37:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:37:35 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:37:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:37:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:37:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:37:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:37:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adc0e741444d58399d46316aa960df806012296c5a9ebc2208f8218d1e51aa1`  
		Last Modified: Tue, 25 Aug 2026 01:38:17 GMT  
		Size: 93.5 MB (93541550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e806994e6b2130901a3b06ca8864756b87f10356dd915379685b9b53a60ede42`  
		Last Modified: Tue, 25 Aug 2026 01:38:16 GMT  
		Size: 66.7 MB (66690504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5caec0b9b29395a5407adecb9e196fbfdd42ae91976ea716aa09d4921dff20a`  
		Last Modified: Tue, 25 Aug 2026 01:38:13 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ef8581334b60e12fd1e3eb9037523d00fbd09af8eb9cd3b6d6391b20cf82ee`  
		Last Modified: Tue, 25 Aug 2026 01:38:13 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7b9409da328a52791d123ca736a558125f0e14361cb6e0cd8df82296b8b24124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6590117e0d29271b7ef8f1f28af3a0297a66b1f20bb0f2c91eb428edafbb4a1`

```dockerfile
```

-	Layers:
	-	`sha256:7a466fe6a99373e8c3d58bd892589d012b0ebca77c57d368c8a3e3890e1321b1`  
		Last Modified: Tue, 25 Aug 2026 01:38:13 GMT  
		Size: 7.4 MB (7380641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e16192ef65b3f5fbf23ef9f75db1f0201955ecf172a4da88711e04251449f8b`  
		Last Modified: Tue, 25 Aug 2026 01:38:12 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
