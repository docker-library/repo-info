## `clojure:temurin-26-trixie-slim`

```console
$ docker pull clojure@sha256:a296003a11d68ad684f10cc77b427c22d81832fda14f8183ef4a42ab4a173c5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:86b22b24878256ec9c023da9fc77a28ea577d437baeec5add3004549ea0ae33f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193386461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d21670d3a9311cf4c4d3851651672f0127de9c55c99bb940d633332a7343ff6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:26:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:26:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:26:17 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:26:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:26:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabf285fbb115d96594879a2f64fb6a52cae694ef905523d4c4d9f9712226b8a`  
		Last Modified: Fri, 25 Sep 2026 23:26:52 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e61f358a8dfe200517efd2e7972be6487f58032c2cb1c66f61bbcbcfc156ec`  
		Last Modified: Fri, 25 Sep 2026 23:26:54 GMT  
		Size: 69.0 MB (68991522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1916aecf93d1d784c3131389127532e71256d28a6a4bb1f075a390424b759f`  
		Last Modified: Fri, 25 Sep 2026 23:26:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5afb14e982b358249905a374c33ca9a549a7491239dded1a056ef23f39d841d`  
		Last Modified: Fri, 25 Sep 2026 23:26:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88f35ef2270d0999d69dae269d7e37007df864821b5161b5c26a0ff920955e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d6f8bcb4a2a635253207d2e64b3ab7ee366e6cd155c78dde9da7f9941bffed`

```dockerfile
```

-	Layers:
	-	`sha256:fdb2e06f4a8a78a2dcdb9c03ac542e81c40366a8c34a89f0dfbafe9e834b192a`  
		Last Modified: Fri, 25 Sep 2026 23:26:51 GMT  
		Size: 5.2 MB (5228207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d990e645e8619ddb75efa1a65dfde392800e05af24b00ebd30f95d18e4bc83f9`  
		Last Modified: Fri, 25 Sep 2026 23:26:51 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fd9c608ee42d15df8aa3b2d4faa3c042ae99159280fc7cf095b914a1d7f52449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192542911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1734d0489d8d26a61afd61caa269167f286af4543f2dad5138c974568e4229`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:23 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b9977b6f2f9d98939f7e74cb0ea1aeb7b6f03138c74fa7e4e0b82dac400f51`  
		Last Modified: Fri, 25 Sep 2026 23:25:01 GMT  
		Size: 93.5 MB (93543606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd7806fd6c68254fb2afa6893f84f61dac9527011e4bfb0eced5fe464e73fd6`  
		Last Modified: Fri, 25 Sep 2026 23:25:01 GMT  
		Size: 68.8 MB (68808576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c31a47726afc2890ed55c8a4e974678ee43b9ead04f24ca97838e1e56588749`  
		Last Modified: Fri, 25 Sep 2026 23:24:58 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d49e88a25c3a4f67edfedb345d8af33cf4fb88b44d8944ba55cb81453c5a580`  
		Last Modified: Fri, 25 Sep 2026 23:24:58 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fac2076427d57e2764bce64395a4c4beac0dab04c19ffc4495146954e6055655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9768ea2d84c2380c95fb80e9de9286cb853c942ef70f1baad2b5a22d8c3a35cb`

```dockerfile
```

-	Layers:
	-	`sha256:0abef6376894ecf5dca68a7e386fce31bdc63752ad9d0ba91c005e6b86a525a4`  
		Last Modified: Fri, 25 Sep 2026 23:24:58 GMT  
		Size: 5.2 MB (5233965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bb20fe421171bacde527ee195f988d988edd909758ce747fa66f4936c9a1d5a`  
		Last Modified: Fri, 25 Sep 2026 23:24:58 GMT  
		Size: 16.1 KB (16076 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dc2826770ec37e9e87c72301affdc8357b001474ede94c56b40044f6f8f291d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201405247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1d95a3168ff3cf44edd22b8b766cb3244d66c92be547eb05e367928aa04a0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:52:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:52:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:52:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:52:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:52:22 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:58:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:58:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:58:35 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:58:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c1d58e1ed8af222eb3223e09529d71227dfb66080508a281b43b31b69ab946`  
		Last Modified: Sat, 26 Sep 2026 05:55:53 GMT  
		Size: 93.4 MB (93350841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593f201c75981e9d9b53986735421bfd486501e270a6e82ade015d97ce4b8011`  
		Last Modified: Sat, 26 Sep 2026 05:59:15 GMT  
		Size: 74.4 MB (74412128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e466b65761d713d63e25a032c2abc07b7c7574c221c9374cc1b914d2923f532`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912edf1c72229afc89eda59ac4f8c03a98513ced26722257a8b355dc2e1cb9c4`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3c50b138c86eabe369f3d30a815eef5e2f5212b22cfc1c5279d38ae86d01ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954c919432da3defeb1c0a4b8d3df99ed266e2fef44950e7c86667b29a1a6778`

```dockerfile
```

-	Layers:
	-	`sha256:41934662293b7c0254034c4489bedf6b20c53a547db6281c6888e1ad111b0e60`  
		Last Modified: Sat, 26 Sep 2026 05:59:13 GMT  
		Size: 5.2 MB (5216514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c82d729583128c921644617eae67ff3da9b325e68c6d6767fd2e6d5e64d7e36`  
		Last Modified: Sat, 26 Sep 2026 05:59:12 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
