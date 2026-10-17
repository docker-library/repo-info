## `clojure:tools-deps-trixie`

```console
$ docker pull clojure@sha256:540c1bfa52fb3651e081ff28fa608872a7209d3bc8ad0d025d9a06c35cb3d5a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0e09a0ebb22164033ac219b9e69b3caa68873f60070a4174a042cf4649a258e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224588439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08cdea2a67768f51d79ac7f961f6a9d7b535677e84845af42d341b0e958ded4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:31 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:48 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa247af233a8fffc35ff11e5bef34e7d458f6bca3eabd3bf71146af9e0edd6f9`  
		Last Modified: Sat, 17 Oct 2026 01:53:10 GMT  
		Size: 92.6 MB (92618012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aaeabb06b2bb91fa3154f548261f875a6e7b28319891220d15d29cfa21d8f74`  
		Last Modified: Sat, 17 Oct 2026 01:53:09 GMT  
		Size: 82.6 MB (82576187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9e30e9ed157ca5ce2c42d9a878947ce9c36b2df78b9246c34d2d21687667b2`  
		Last Modified: Sat, 17 Oct 2026 01:53:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ddea5eda1a633a89b80a0c417edfbac89cf25c4487a9b028b65421d7adfe97`  
		Last Modified: Sat, 17 Oct 2026 01:53:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0027bc1bc1d6f2810d92b34520c218e43dc377bfff1a5637c062c5d701fdf8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbb72fdb598dfa233bc774d3eaf648744ce1e7339cb8d4ad36f9ab705f485ea`

```dockerfile
```

-	Layers:
	-	`sha256:5acae6c6357c298a752f2bb67db0eb6eb316e3eefad906adf877bd56826d1442`  
		Last Modified: Sat, 17 Oct 2026 01:53:06 GMT  
		Size: 7.4 MB (7446884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fe2ba0b23c9e4ab3a7614c8ac34a6b7c49da180da3ae7c04a29982a02f83f90`  
		Last Modified: Sat, 17 Oct 2026 01:53:06 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3181834ff6f78f1201f89e0ca563d4b7f520860eac5ceab8958506e784515b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223687040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9a11831804b945c5651fa84e6fc066cb9ffd59356d0a82f7d310bfc503a41b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:59 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d2562ad6fcba60aeeb4e16d16659596b42aaf0535eff48eae4581437d36260`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 91.5 MB (91528874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e51e2149777fb2b13117edc5899e946ac6b3345b53e8d49bf9d81403d0c7e02`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 82.4 MB (82396022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8588e0e905f3c6ba52efe2d661fc2f8909850d86d5bb67274bef0fe9096b5908`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1fda02b8e4792804c55f6688ba3149af3f3285ab99c9667450a6383481130c7`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e1ade177d1fe994cfbf797dc2bcfaffe0be858b2befc83c92372664579402e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b926e98df11287024e86326046998b2542970eb8fb0e40463cf66d0d563b3461`

```dockerfile
```

-	Layers:
	-	`sha256:abd5cb7853a0a62c2c043e9b0b587b26a8b21a1a2b498986bb4bc59b81eb5653`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 7.5 MB (7453298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c28f313316eb0bc03150a0ef77c9e514abd5969c79a03ba6f9c025c11338cae`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7a1b835f44d055fca37fce9cd9cf680c91b9d164ba17b351261edea3cc7c35f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232460047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9d3edb7433bd07173529db82fbfebc76880efb285d7dcfeb0347fa6c7bfa36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:22:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:22:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:22:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:22:37 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:32:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:32:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:32:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:32:15 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:32:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a7876182a56aa1df7a942e2cec45f4fefad3d7b4736ec0750c8390de086b8e`  
		Last Modified: Sat, 17 Oct 2026 06:28:01 GMT  
		Size: 91.3 MB (91256231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79760f94ee015aac56e6eb6d385e336b9b924831f87e155d140b104f38c2de1`  
		Last Modified: Sat, 17 Oct 2026 06:32:58 GMT  
		Size: 88.0 MB (87995651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e60c9d4fa588a27b1d8724a3173adf17f71a2d1a837d2984d3366a70fe0f00`  
		Last Modified: Sat, 17 Oct 2026 06:32:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ef4676c33af01ba628915ae14023357b0272ff90c41d57535f76806772a6ad`  
		Last Modified: Sat, 17 Oct 2026 06:32:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:33bc2536c8814df18b1f7bf0dfb39adaf69e234dafc88d2d052807634f725563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23de725703bdbf7a86db73598a5b474c0bf7f32a37635cd58fcbbd35ced5df53`

```dockerfile
```

-	Layers:
	-	`sha256:a49da2f86a75ee00cf245c9b6e1e2b3340076e8f02496252bf0d9c190ac6672c`  
		Last Modified: Sat, 17 Oct 2026 06:32:56 GMT  
		Size: 7.4 MB (7434627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694045a5fdfc1f7fc14412fe8c9c31d75332532905575dba93c7269465b2d397`  
		Last Modified: Sat, 17 Oct 2026 06:32:55 GMT  
		Size: 16.6 KB (16628 bytes)  
		MIME: application/vnd.in-toto+json
