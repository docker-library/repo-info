## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:0c379ae7b5b51a2671f763e28d1163ed6df374f46ef4da964326fe14f5ee179c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7878be8a71ce348045f0dd819fd5c563a4477a690e05c998fd3272c98db985e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290079897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b6a2b5b140266f55d7c235331e07851b19c07bbee508e035d1bdd804c8d430`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:20 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58c10f87a7c3219cf1dae27c2d133c3f4a5d0cbce78f88db41589bb41e5ece0`  
		Last Modified: Tue, 06 Oct 2026 02:14:04 GMT  
		Size: 158.1 MB (158117465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338a4cc294fd7a3595f5cf11bdc4447eb0cdb7e8d1d1c01ab269afa9c729196d`  
		Last Modified: Tue, 06 Oct 2026 02:14:03 GMT  
		Size: 82.6 MB (82568191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7374f727c31bae4479f62942619d2ce7b8f00021d1dadbafb2d7d7064a94b4e5`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4962c11c0005f9f9fb6de87dbfa42401b22f68c40b37b10c51b05c446bef56c1`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5bf85af9294bba33bd827756d8645ddf6c390a1722be9e6c5fb50b18f86bef7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cb9f154ec4f257e3bb4cae0177dd3fc3f623184eebbcad5ba91e880c12a97a`

```dockerfile
```

-	Layers:
	-	`sha256:b56f26058e19b56a7b66cf52acccd5be64da606c7cc76cd56388d3ec47a0dfa3`  
		Last Modified: Tue, 06 Oct 2026 02:14:00 GMT  
		Size: 7.5 MB (7480672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da5197b998860735a12d8e322be8c0619e664926eecd69a96afb1db2c22643d4`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bdc62e0b6a2ccab9a2a8e41804fb7f32d4d43d8e0b00e818c7ce878aea3c73fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288553484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f50935ed5d25c7a2acab8c6a1fc5bbe05d015006a41addd8849b26474d0db7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:01 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd6c964cb829e2da64f6b5f81fe8068835037b015756e49e49a2f8206660c9a`  
		Last Modified: Tue, 06 Oct 2026 02:19:43 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4da52163bbf39452fb108d5669d8e82fee7ccf262e833005f9a6cd1e18ab1a`  
		Last Modified: Tue, 06 Oct 2026 02:19:42 GMT  
		Size: 82.4 MB (82390664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99178268d2e688aa00abb74ca33ce41ff2c4eabec5462e8bdc82750a6f7f0f2`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737354ba8b5fab0f51d28eaf7205558811ec6616e0c266fd38639c3ebf07837c`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7087918262580b32c6d74ebff77f688bc02a2907dee6afe9776469401aad8f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2ee88cf0f3f30fb8e0171b0aaa25da69b10e3ca1fbda260e3e7adeddc91fc7`

```dockerfile
```

-	Layers:
	-	`sha256:e8874467c64b9123d7a41d99548df576126251a1d035282564e9e25aaa1db661`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 7.5 MB (7487065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af2e62c15dca3e1f6f84688286088718d08863e230819c1f0c119413d0c87ee8`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:409008d302ce1c8142ed09a0c4c9893067b7185e56c825248134ec413e39327a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299480146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7522e84a350dcc3c7caea92033a7c524311a4816650d8be30bd6ade2fdae26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:22:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:22:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:22:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:22:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:22:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:31:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:31:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:31:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:31:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:31:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41977f413551ab2fd63060ebb846d5e4f0c049905a55110cfb81f20f82fcef19`  
		Last Modified: Tue, 06 Oct 2026 10:27:15 GMT  
		Size: 158.3 MB (158282644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f72d9eff0ca79e34ac34f48cf8bda9b87e1c0e38aa41ddcf46b9d8213e76bd1`  
		Last Modified: Tue, 06 Oct 2026 10:32:42 GMT  
		Size: 88.0 MB (87989337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98646fcc621ce41d5f706d50847d0ec55d2a7a5ff5d986c32d6b0b06b7e3ef18`  
		Last Modified: Tue, 06 Oct 2026 10:32:39 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda7b2dbf21cc5158fadac200c9d75a809a62f0c5677b2aef3380faa62a2ef1d`  
		Last Modified: Tue, 06 Oct 2026 10:32:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2649608d53d0d1e36b346664c94f92304b3ecafe62144391972ed7a2b0e9572e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e02b5537498f0a1b3bd4bd0c098d167e379bab55ee392e608ba25b2366027d`

```dockerfile
```

-	Layers:
	-	`sha256:4127962fb38c7c6bee6ea4e1bb3010315a2e80f5ee941fc15209154af3f4208e`  
		Last Modified: Tue, 06 Oct 2026 10:32:40 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5872d9671b8b5d9fef29a28497b5f2f2c3b54d7b21f780f27b5a78b4c3f8b0f9`  
		Last Modified: Tue, 06 Oct 2026 10:32:39 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
