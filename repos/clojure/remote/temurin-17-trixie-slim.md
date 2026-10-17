## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:0806173f36a58ed18d237be89cd9e8aaa1463a73273a20a57f797f398112d3b2
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
$ docker pull clojure@sha256:6285893755b38afe1356b2bafce51e641d6ee5494156fa03b167c1a7107627fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253741032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3975f965500ab9bbfa175d677e1266b474774b5c144645728a86f12bab1c665`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:43:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:43:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:43:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:43:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:43:10 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:53:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:53:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:53:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:53:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:53:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5b0d186657e5e293ef4d6a17bafaefc54965716a9183d1c5c66909d4b4cc8e`  
		Last Modified: Sat, 17 Oct 2026 05:47:35 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e62e67223ce4a30077eebb930b9befbc0e367833681eb3091c49087b55241fd`  
		Last Modified: Sat, 17 Oct 2026 05:54:11 GMT  
		Size: 74.4 MB (74416855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad80c98714cdc660e6e9a28552eaa77dd8fc38187c7ec5209ae85959065054a`  
		Last Modified: Sat, 17 Oct 2026 05:54:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05f3836a1d6382d19b551817aad0aae4e572d888482eac0e2c2c47fec507717`  
		Last Modified: Sat, 17 Oct 2026 05:54:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dda527a0493a0087d8dae196bfd26ad9db678427dd6f6a8b41ed97e210093c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c8c0a3139dea655ea6d0cc91ecff4078b2c08f6e91192ded4b6082c8f433f5`

```dockerfile
```

-	Layers:
	-	`sha256:3380a6000765b0c96880a3b2002db3a74a139cc2c6a5cfcaa5c43342d5708139`  
		Last Modified: Sat, 17 Oct 2026 05:54:09 GMT  
		Size: 5.3 MB (5267685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d21d61ec84da98d74fafc5d3464c97af3e660db0fe45b0d96d09df9623d418c`  
		Last Modified: Sat, 17 Oct 2026 05:54:08 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
