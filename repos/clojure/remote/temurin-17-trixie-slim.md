## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:fc3f420a64f834c8a5dc62629d3b7a9b986b919f805adefbd64b7e8bc55542c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b4069c0e09dd974ffd68b46db5337cd0bac09d0c522903afa7919bfa7be81376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244659721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bf7c5edf7a51ce7780a311a2659cc09c6e33bf2fb6845695f2038540155572`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:39 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9378e425cf3c9015dcf75df83f696ab1ab5250314e6369ea90a64334c8888810`  
		Last Modified: Sat, 17 Oct 2026 01:50:17 GMT  
		Size: 145.8 MB (145825481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c19bdc7b42462b31e0aef7847d1ea3bff1aa70ea413236fb72e05b6c4439d79`  
		Last Modified: Sat, 17 Oct 2026 01:50:16 GMT  
		Size: 69.0 MB (68989845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f122a733ff019dd9fead9e6aa9758f0e7e5868415411ca6b8a92627300134f3`  
		Last Modified: Sat, 17 Oct 2026 01:50:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8a9b9756e7498c0bf237f980364be5eb7937cc3517ab75f4a8e12c9e75a21`  
		Last Modified: Sat, 17 Oct 2026 01:50:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36fa5fd33f7ce449460f50d89eab593ff81baf55f24837be0c3a328840f93810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e63964d2f26776cd3419b04332dbf8ed391e7316da699e961c76080bb3559f3`

```dockerfile
```

-	Layers:
	-	`sha256:ef0d4d8f0d94b2d1d1a601336ac1929964a5f3f429764b8e35d5ce69526ac8eb`  
		Last Modified: Sat, 17 Oct 2026 01:50:13 GMT  
		Size: 5.3 MB (5263314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:034ae30b6be452547096eb4bf17e990d9173e91560f2b2103929ffdab64d7efe`  
		Last Modified: Sat, 17 Oct 2026 01:50:13 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0a88ca426454751451ffb83579b488504d113210e4d270b4b1491af35baabaf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243659943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e14553973b9066f00eead6901082ca607b64f71104ca4b1e7dbc75f162c913`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:59 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:50:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:50:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0785d8d168f3511a4e0a8b3cb8dcc8fb010a7ee70440da4aeef5ea2f13e1700e`  
		Last Modified: Sat, 17 Oct 2026 01:50:41 GMT  
		Size: 144.6 MB (144648263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f330ec3a65077a0fbd96aa9fe4e97a81b686ec14fafc73944e988815c52bc5`  
		Last Modified: Sat, 17 Oct 2026 01:50:40 GMT  
		Size: 68.8 MB (68810358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f697f7ec21156d48cb037a149371ee32ff75a37a5eafcd6829b85555be4429ef`  
		Last Modified: Sat, 17 Oct 2026 01:50:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1681fd9c46fc2ab221db67aa7dcb7a84e0d085db50cdd5fbe852ca51dfa906`  
		Last Modified: Sat, 17 Oct 2026 01:50:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9fa16e6313004eb180c400eeaa5cafbe1d49f0c63e4efbd2d8ca3c88238a356a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271e7d56dc73ccb33f078660931d2fb8496ea6b8b99a281d3ba70992275d68b5`

```dockerfile
```

-	Layers:
	-	`sha256:1dd7c95afd835ecd853c66ac8500efd0d6e222f98020f30d910bdacddefd82f8`  
		Last Modified: Sat, 17 Oct 2026 01:50:37 GMT  
		Size: 5.3 MB (5269075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f194302671c2a4df39011f70284cfad1a04e99322d60b69ad95f6291cac626d9`  
		Last Modified: Sat, 17 Oct 2026 01:50:36 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e0960ef074cbe991fd34be1763b6815721edfcb7e9f3d910a73912b34518a0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253736019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec175a0d85fa81dd32f63036547bcab1d2cdc716168c932262dfa4bc07194fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:06:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:06:35 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:16:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20d3a530543616739863ab002993c8390b6080b2300d6388c6232bfa2803db7`  
		Last Modified: Tue, 06 Oct 2026 10:12:01 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd142edf4d35c1e503c83d4d337ea473a9ed99375f97c5e9c1c07ade2bb3fe65`  
		Last Modified: Tue, 06 Oct 2026 10:17:11 GMT  
		Size: 74.4 MB (74411813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c64281a1663ab6aae19aafb518761f11a513b48757a7165ddc02777ac34099`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5eeb8ef1282b471c92cfbe1ea5de79fc75a5773a4c62fc2d0e0f51b0cccfad`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a7eb753cc4924cde6016c1073905d59282de20d0014765aa4c480236c40bf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297e6a8a5380f26d23ebfb156721b34dec1f65e7493b5527ef30d7083dd4dfb5`

```dockerfile
```

-	Layers:
	-	`sha256:d3a5ee9db38acb529c74c7f14319b1700e28e2187032e5e17a223d102aa54997`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ed77ca407829390e6cc2067da59d25f07cafa182ddfff04814cd451fbc93e7`  
		Last Modified: Tue, 06 Oct 2026 10:17:09 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
