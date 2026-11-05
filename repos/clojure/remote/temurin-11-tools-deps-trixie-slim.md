## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:e3204669645dd65b57edec62cedbb4698ddb49458afc34f12a7cf226e7a2bacd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:660a27250ae3d2b7f7dca8e03d98be10bdf0b839c06ab85cc82a481c2a02bcfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244710393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1178079bb08089873a1315ba66e1e5c11fb4d80fbf3734e55ae5746447870b`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:02 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00aa3d9db955b6e2ccac23d8076dff22cd0821c219bb259b9b3cc07ad3d50eb`  
		Last Modified: Thu, 05 Nov 2026 08:08:38 GMT  
		Size: 145.9 MB (145864300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbecdca092b0e6fca999e29d5e50f464d19173ec2ad6271515e886369014d1f1`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 69.0 MB (68989315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7ce6a305f73456205cd973604252d4ae280f68fabe905f919699ded04466ce`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:27450e5e9ad218b6e25079726f43264962306e4afcf2d2a8d8157834da781b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b7baa8b9f404d8b525b70985220a0f3c66f69ba6c2fa169934101c9ff365d6`

```dockerfile
```

-	Layers:
	-	`sha256:4285e8bc4e2438267519c89d9b2c38ab6d38c7d924d82f1a854b5a36700885c6`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 5.3 MB (5281581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fcc0bcfaf7d4fbdc0c1026d020770da0ec158c814c9ffe212f18f99868024a0`  
		Last Modified: Thu, 05 Nov 2026 08:08:34 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d48818bc4b6e60db320a5fab2e3de3dcc726395ca02fb9119f6001364e241e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241596376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc9e91b5c131d3fb2e042579282a8003a975a2cebf5b3a16d8b1f2ceaed63a7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd5f3d1083eb49c0d3167643f407d2d7fea555810194ecdcc0bc2acfc4cde56`  
		Last Modified: Thu, 05 Nov 2026 08:17:25 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0178cc50f8b1b542dd45f57e0d8eb31a4b67e46f81f5fafa394fffe665b040f`  
		Last Modified: Thu, 05 Nov 2026 08:17:24 GMT  
		Size: 68.8 MB (68805097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37d7b3a417c074aae383a76d34016f7f12513192f00b31cb627f06d6cf01798`  
		Last Modified: Thu, 05 Nov 2026 08:17:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f56c223d1713b7cc8ca09180e0703713dadf68debac01d7bf005405a9a8df6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3a22e94f6f2ecf1706c1b4b9bb04af698f0645eb35a6e4842fe1b3fec5532d`

```dockerfile
```

-	Layers:
	-	`sha256:7015b4a2b2ea6948cba7a0dae83aa06ed32a9a98828ac560bea44d9f30c0a6bc`  
		Last Modified: Thu, 05 Nov 2026 08:17:21 GMT  
		Size: 5.3 MB (5287960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2127a2d268c5071ecb30482266263f8fc231e9a2f225b2b1d516d62895cb83a2`  
		Last Modified: Thu, 05 Nov 2026 08:17:20 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:53bfdaf89b38c99581f7bfb07426c4a33e9a5b0849888cb495b4b56eec3a32cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241181910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c1f6d39e991f0d3d6f0558adc64ce447a5f3021f1ead0f36c46a18937c50cf`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:29:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:29:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:29:27 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:35:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:35:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:35:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeeccf415a210a0138d1856bcd2cbe0e989266852665346438a3c5f805656dfc`  
		Last Modified: Thu, 05 Nov 2026 15:33:16 GMT  
		Size: 133.1 MB (133095020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c70885daa8cda1d0f13f8d43992a572464a387ff55399e17e79c01b4378eaf`  
		Last Modified: Thu, 05 Nov 2026 15:36:12 GMT  
		Size: 74.4 MB (74418596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df79fe91c6fbaa4cfc5f042cf39e2d983cc83d1fa1ae3ad1ab1a4d174a7265`  
		Last Modified: Thu, 05 Nov 2026 15:36:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94b158785132f33720243b0388af4af4067a778970cad827d4f04c44d72164ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5299782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dd10bf3a942e839fe518a0dbdaa9c58e8f91ca3c588387cc372812c82fe76d`

```dockerfile
```

-	Layers:
	-	`sha256:c9b3fc27efeae8b5de69749259b25e377766c9fd599cf14ce10100a490032bae`  
		Last Modified: Thu, 05 Nov 2026 15:36:10 GMT  
		Size: 5.3 MB (5285337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72490a7935f83e471981b61846c35e30202443dd1be015370c6cb3cf6d559f79`  
		Last Modified: Thu, 05 Nov 2026 15:36:10 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
