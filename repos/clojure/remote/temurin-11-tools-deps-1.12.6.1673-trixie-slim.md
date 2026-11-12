## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:73a5d6cd9e5d958f32b186b480087fa4b914919107253482d337a3b2a1ab2447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ad66bc33792781c1776f50507272121ebe6e5d3d96cbf7fb3ef01dc2280e8051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244769311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cdd4108f341b1e2586b3ffad04369be98f9366a23f92860869bcca64e084c3`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:47:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:47:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:47:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:47:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:47:25 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:47:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:47:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb87f0ee4dbfa3df255d2f85a519e51e727715e6f5241e85f2433a0382535e84`  
		Last Modified: Thu, 12 Nov 2026 00:48:05 GMT  
		Size: 145.9 MB (145923152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1019bc1c093e02c75d75cb9ce2d4fb28c0f83459910e97eb93bfc770d0cc9edc`  
		Last Modified: Thu, 12 Nov 2026 00:48:03 GMT  
		Size: 69.0 MB (68989381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190eac62410d3a03c46aad1cbb9cd266b4c7de281714b257ff4b185a2429e685`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3703e91e1c6c2d6a46d1c2ed2b02fa2f4ba6df6ce9b77c6081279e5ac4affd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f596bfe5faddfcc58be29a87c81c5526aee2578db042aa9db14b56f0b08ebfca`

```dockerfile
```

-	Layers:
	-	`sha256:3ce5d2c6e15dd326f2536d5f92ab63ec4d19ddb147fc04de0fc349d9c602fba0`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 5.3 MB (5281575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1748c79f5fe9ef01d330e127dbc18edd8d08ce9021a26a82f2ca790473d5b449`  
		Last Modified: Thu, 12 Nov 2026 00:48:00 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6874a59dde399da6ae6f61cbc7f47999a06255a6a551ba118fae1e7b09f6622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241640763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75aacffad648090a1a396f1629edbfff84a2814f7201366b0ff56f7d0c5ded8a`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:40:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:02:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:02:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:02:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d38e0b59e1c1f80d3fe3f9398e27fc6e07cb5645edf66517266c9c570edbc1e`  
		Last Modified: Thu, 12 Nov 2026 00:41:26 GMT  
		Size: 142.6 MB (142621048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffe952969962a412dcb2331bd3ba7a2808478d4a42744ff3fd16f11dd27464b`  
		Last Modified: Thu, 12 Nov 2026 01:03:03 GMT  
		Size: 68.8 MB (68805035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dbb9cbbbf33efba0cd15188926b11324485368eb7f744d756ae1783874c52ae`  
		Last Modified: Thu, 12 Nov 2026 01:03:01 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ae50b0ec1aa3a0687a6ab113480785d2659d2cac7dce99969a4cda37171c91ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bce1a2271a10747d153b23b9863795b2e9a7aa481798d7f244a160cd1110eff`

```dockerfile
```

-	Layers:
	-	`sha256:1ff61367e51129cf66b43e45963526bf22ba08770ac393fabd6181c59725e188`  
		Last Modified: Thu, 12 Nov 2026 01:03:01 GMT  
		Size: 5.3 MB (5287954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b9bab68ff5bb5619ac716d303d04f250cefe3f75f8a876d3418bbdf899a4ec4`  
		Last Modified: Thu, 12 Nov 2026 01:03:01 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e68404d9a701f973fb6c5e4d6f7bdcaefc920642a1d5dcc95670dd5175500e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240358950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25b8d92958e4fb7998c3a1047e7eed115214570894170039aba2a04791bc49f`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:12:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:12:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:25:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:25:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:25:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5879de0790458ab88dda2f95824e4df7ec91828c96c5629829900a960eb1d953`  
		Last Modified: Tue, 10 Nov 2026 02:19:14 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b45908a97fa0f890950c872646a6e4bd7b271a8cc110f3dfa3de282d9e0963`  
		Last Modified: Tue, 10 Nov 2026 02:25:49 GMT  
		Size: 74.4 MB (74418455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a14df9af04beffb81227946147f287c52d13fbe8fc1125b415b9a6bf68921ab`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a1026eb18e54ea82dea1ba02c10e60c112492def9224d31475f538572779b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62f8489f590dbb628fd45e44ae2213f99f9d9133bb2b1ddcfa11666a357dc32`

```dockerfile
```

-	Layers:
	-	`sha256:2958462e866d854c7bffe254daf1d24e70de982d26d735497fa7f1e5e38e87a7`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 5.3 MB (5284085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b074b13fab0a84e6aeefbd456229aa159cc2b862e3304d04c859f3b6f5b255a`  
		Last Modified: Tue, 10 Nov 2026 02:25:47 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
