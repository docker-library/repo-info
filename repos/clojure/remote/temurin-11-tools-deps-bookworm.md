## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:d6720c0406f96f3cc963f25fbe76b38b003b6b123fbd5fcc49c5f9825cd9fa7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:71251bafc109eba349dc0e15294b483ee3067780cf79439abcc01b899a887e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272446820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228419802d312a209e9a3acbef075876c88fd888ae2bbf3bfff635b4e907d480`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:36:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:36:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:36:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:36:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:36:32 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:36:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:36:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397290b77a2aba04cebbcdf4639f87c91f3d1945af53c36358281449f4931f96`  
		Last Modified: Tue, 10 Nov 2026 00:37:09 GMT  
		Size: 145.9 MB (145921630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d106c77fe256c1893057c51a4aa1e0285eed9adad1be7687ff85d8e0d8de554`  
		Last Modified: Tue, 10 Nov 2026 00:37:07 GMT  
		Size: 78.0 MB (77998061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec46b99302c0d73bfbd3a3a493578d935f332c2ab1f0e143ca7fd41d59a63d6`  
		Last Modified: Tue, 10 Nov 2026 00:37:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:57dd05c524fad2734d6825e00c17eacc2ca6bf3310d4d31e079a442a952d381f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445003e3fd584913ee292250d840fa79689974428e072031d02520cc5a6dcd1b`

```dockerfile
```

-	Layers:
	-	`sha256:77e89ba43ad02bebd0e4510ecf52c23c331fb62b55bad92e73bfe1d844df58ca`  
		Last Modified: Tue, 10 Nov 2026 00:37:04 GMT  
		Size: 7.4 MB (7398151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4036339929b4d213af2b4a8df762d8d8c447d6b5ed2dc937ede72af1e3fb7eff`  
		Last Modified: Tue, 10 Nov 2026 00:37:04 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c331991f3f7378adb015ec88fb13cd54e7aa0bf203603426081a0a763129a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269032856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed09cf39a4dd12d6a847afb21611caa29d55bb43aa8a7b6bc0fab9b3fb370cc`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:35:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:35:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:35:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:35:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:35:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:35:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a10d63bad89bf66fd2ef11a8a04230f3ceecb79c92503b00315430217c1d0a`  
		Last Modified: Tue, 10 Nov 2026 00:36:07 GMT  
		Size: 142.6 MB (142620967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc78bd8554a6f88e95f9c3d78ef96feeaedbf78734781e0027b49c05499ac59`  
		Last Modified: Tue, 10 Nov 2026 00:36:05 GMT  
		Size: 78.0 MB (77998787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2835baac671a2eeb6c8a0d6d1877ea8fc4fcd53fdac9d114202a2e4fb67773`  
		Last Modified: Tue, 10 Nov 2026 00:36:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:eeed40fc9c22db1bf22f3bd3ff6b032b56593c83ddea3ba002e91ea18fc0a338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba62ee6d61fa0f9cbc062c87f87ca1cef558fbc665d4e7686f85246b655f8778`

```dockerfile
```

-	Layers:
	-	`sha256:dda197fdd9ac29b1f57cd4022621d87a442b124a2e94462403ee6b58ebc6442d`  
		Last Modified: Tue, 10 Nov 2026 00:36:02 GMT  
		Size: 7.4 MB (7404532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea244bc449fae1440a2d37bc4c6e8cbbcd2d456d8b80a9cb90791001db4ba94d`  
		Last Modified: Tue, 10 Nov 2026 00:36:02 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ddfea6ac15ec528e0456378dd3e84a8f20a2f9365e2444ef4147c15fa3142d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268465774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c1e124a2bf828fd2f6d7720f3ac8481bd22ca2ba46e40070b570c8cb6fac46`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 01:51:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:18:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:18:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:18:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2c85ea7cf52c9f67807e615122aa43cd80415d5625afa9ae6bff7c28c8f49d`  
		Last Modified: Tue, 10 Nov 2026 02:19:38 GMT  
		Size: 83.8 MB (83824307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91507b484dedc7cabfba9c1cbe1da7ad3f7b62ddf740cb05a455fd0c315d009b`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:00848079a2f34dc92e7437e4c6493a5c74f7b0235864b95adef1117caf1bd7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94df6c617deb24c566342a627ac491c7756942f54eecc1a6329b32b8dd0fdb5b`

```dockerfile
```

-	Layers:
	-	`sha256:549f9594fb2a797c5491660d4b8b245ebc83a93c4b663849ee7d24ce735b50ad`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 7.4 MB (7401502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81092e8eb37683cbe39e07f44c4ee1587bc481925276ce74b4cb0c8957f589d`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
