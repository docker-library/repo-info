## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:e8ec0ffe39a969ee788052743e3e46c223c0dd5ac23f8811759765bbde9f5393
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:88b7fdec06c6d6522f0b62e7c1e79b180f3a07de625e845304b61db5fe9566d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226527172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b905d73847a4a47590cd6d0ebac71fc88789c451d0a3a07ee8a60f7b5d6ca3c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:32 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9549dfb4185e024b453f3a6579dc3fd2fc1a7029ca31d6a9d438ad7a323d4a17`  
		Last Modified: Wed, 21 Oct 2026 01:22:15 GMT  
		Size: 94.6 MB (94563514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ae54d227cc8722145113f6beec09cd279ad8736b9ad53f24f6ba3dcc364e27`  
		Last Modified: Wed, 21 Oct 2026 01:22:15 GMT  
		Size: 82.6 MB (82568995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e515a05c9d4f6e4425141c7f467cf77a062fc8eb52130dd42f5980221a9207`  
		Last Modified: Wed, 21 Oct 2026 01:22:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fc11cc74fa61a689508a5d1360f946f2316b550d7dd3a169364744b17bcb4f`  
		Last Modified: Wed, 21 Oct 2026 01:22:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc28ba76f6ed824c35ae1e97d99b2ccd66cc38c351050037071f78c8bfa1c8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de71d972e7cd86922a4a8a8c50229452330df171068e62e216d855712ef9f9c`

```dockerfile
```

-	Layers:
	-	`sha256:e187150c8238a90c6d299ca6b5d20d5090f3ae19a821f3ce65515114b683b872`  
		Last Modified: Wed, 21 Oct 2026 01:22:11 GMT  
		Size: 7.4 MB (7442436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3bb8026538b264c50180ef2ab14cbf13d62e142a812edbda39ef722bcd74b7`  
		Last Modified: Wed, 21 Oct 2026 01:22:11 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:92d8d0cb841e0ee3285f94ed7840796479ecdb79a7b9a8a283ef0a4cc00af9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225699677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7558a26b3a739ce0d5b91bc9cf1917299cc90630dc75bedf62f74b10f56fb0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:27:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:27:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:28:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:28:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ffab0a83319ecac7658d9ef75f32ed315dd3078e4819ef0129aa94a4322833`  
		Last Modified: Wed, 21 Oct 2026 01:28:34 GMT  
		Size: 93.5 MB (93543600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28464b9fc8a93c7d93ac80dc14a300eea194e0e51554f8154c3fec4b9a734c88`  
		Last Modified: Wed, 21 Oct 2026 01:28:34 GMT  
		Size: 82.4 MB (82393431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb74301a92877306a33d22bb058c1f0305f164855ff4b45afdc1d3d620dc25b`  
		Last Modified: Wed, 21 Oct 2026 01:28:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53554f094f6ee95b5033184b87af818793e123f6d3cc0d4535a11a8c2b1e135`  
		Last Modified: Wed, 21 Oct 2026 01:28:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:89aad1016f085c7a3dd72e31eca0ff2d7e503de73f18a5e3349fef4caf78440a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31a1d9dafd5f06054e41fd388a713b4fa2f1327d27f21c6aae8ed3d793db6fa`

```dockerfile
```

-	Layers:
	-	`sha256:efcde3f1a291c5d19392485fdb592dc386414071f445454e6f26f71d3b251584`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 7.4 MB (7448826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416f1b71250c876a65e06ef1e28410ec24bb12792a230d05fa9d74ba53b2a6e0`  
		Last Modified: Wed, 21 Oct 2026 01:28:30 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0007435856c1e5d090cde63108a52978bababb517ffff7f5e7c86ff6205a3ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234554906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85597a6ff09bd8eeff92bbbb92587006e0b2606413d54ea268a390588d931ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:42:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:42:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:42:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:42:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:42:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:51:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:51:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:51:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04696de545b2dc53298ae28aff2219699a6ef178c15f62b07a2f03692dc7bc1b`  
		Last Modified: Sat, 17 Oct 2026 06:46:49 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123b8d05984913b6975870027fa43051ab5651b6fa7eb54272b46974366597d6`  
		Last Modified: Sat, 17 Oct 2026 06:52:14 GMT  
		Size: 88.0 MB (87995882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823608c8e48a8e9b0723f3421685d2288dda74b0993be4a50ea07bf3b6a863d8`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584e6ae4209996813ce4a326878622467e97b7b82f56af42c5aedd69baa35e86`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a6d4f2a4f2ce2c568bebbaf2362de36636d6ae4659521d41d2415b40b2b97828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f628247e717bb956f3f52bff7a8b1523048a99e5e12f4c66e6d9565c208b8dc`

```dockerfile
```

-	Layers:
	-	`sha256:8dcb5ac8ca2a919ddd5067d81ac0e210cba048ce80bc8fd860c450eb0988af9f`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 7.4 MB (7432068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67099b049973fd052e160a7f17720882694807d7152a3e01dbc9a6cea3765ddf`  
		Last Modified: Sat, 17 Oct 2026 06:52:12 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
