## `clojure:tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:573b51521336ac8579fb0f664e65a2aa99af2ce0f30b50638e95283c8c3bf195
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d5c1e1653ff1fdcc6bfc0cfb9c12e60d45317760a9834648f4aa9bf9cad1de14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219203145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688803aae9f9e1e47b42b0f7fa88cfe19a4155e9ea59bdec2da038a514f2573a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:22:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40826279f119041b88ed75b72f83c79d47cf0fddfefad418dd8c0f8209cc6d0b`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 92.6 MB (92574607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea11e634b0f5fb7962bf742032117e15d2b0835ce14b54dcb0a21ed39343ae5`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 78.1 MB (78130092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891f634e813cd5b99083e6c8d6e66d0dbc3ada16944dda515880cd3bcc0ecc53`  
		Last Modified: Tue, 14 Jul 2026 02:22:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d19c07bee80990b2b12c602081e43048729902cd0d9ae788d3a5c092e1bf7a`  
		Last Modified: Tue, 14 Jul 2026 02:22:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c57e8c1d7802b3c5e620629649f2dcd9cd75e031cc73812082d286984c7cbb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246abfa1b1a328d82abf73209439ce11038acc320f9f2b79fc25187d483b8818`

```dockerfile
```

-	Layers:
	-	`sha256:e7a93643ec77e7eb62922ad028b51d7e9acafaa0e540d4cf96ebceb754331f44`  
		Last Modified: Tue, 14 Jul 2026 02:22:39 GMT  
		Size: 7.3 MB (7345564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de5312dfda825aa64753e2193d5ee5028480fefffef64b10aa5cb3490b67bbf`  
		Last Modified: Tue, 14 Jul 2026 02:22:39 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0046c6db8666af81dfa1dc1d8a94921a2bd3e0b35159ef511d8316c47f3d3f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218048589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9934c31ed33d2a804edd1fb4a5a51fd7dcc79c89d42edfaf0dd57f0a6cedea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:21 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:29:21 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe34f96e3e492cfeece3e9954aa73ccb106f107d63f0210e28adf3ea7387867a`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 91.5 MB (91542252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba8f4f84125e3dc58d25cfc126646ed30a9be7351a1be83041c59b060c664ac`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 78.1 MB (78121608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc0b23e619b8e4a02e327126eabd770477fc05c7220dc08026c335133099186`  
		Last Modified: Tue, 14 Jul 2026 02:29:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8b7541d74e7340f0293f3cda1cc94437671d0f75d1a4597ff871ec71962d8c`  
		Last Modified: Tue, 14 Jul 2026 02:29:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d47f19b06f5c9cc3c074b86d987b4554efc2fb71378e1029933eff59b47d7d71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff0cba80da83160e188cfc9ec537bb45282c4f97290cd68b0dd8232ee316ef2`

```dockerfile
```

-	Layers:
	-	`sha256:2f16c4824baab27e393699b17e66b6849727823e4830ad5b2f3ea788090ec844`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 7.4 MB (7351396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcebf571e3e5789c6a7c229c3cefb6d34b9c914c94d9e1719cc38b5fbb33a375`  
		Last Modified: Tue, 14 Jul 2026 02:29:55 GMT  
		Size: 18.1 KB (18114 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:45a181c51b95c8b05f6371621c7c4a317f97feb90b533b119bfb55af40661373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228216547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093d48d16b4c887d764a52e825ddfa932cc55b7d1f8151a06c0a68a6a42c3ac8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:05:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:05:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:05:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:05:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:05:29 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:46:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:46:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:46:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:46:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:46:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889fed958110992fa1b0a580ae02d4200002887434918b6e0dc3aac5c8700b21`  
		Last Modified: Tue, 14 Jul 2026 08:10:02 GMT  
		Size: 91.9 MB (91914023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780a60fb49e1397f28a5f7d24e4e8947fa739c26116f91296f29a580025c30c5`  
		Last Modified: Tue, 14 Jul 2026 08:47:28 GMT  
		Size: 84.0 MB (83959653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743d02c299fd927e07b0351e33dd8e9934dc26e82f5430f641ff82297be4ee00`  
		Last Modified: Tue, 14 Jul 2026 08:47:25 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74387a031e5307c14d3849500e56bbdf07081da0411edfaf93f8ea83bf119156`  
		Last Modified: Tue, 14 Jul 2026 08:47:25 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:142838dd14df7af9f93c8f9c7ee081ed2610ae4c02afe4b098fb6353b9e0c637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f90ce91641aa74b9259f4452c31900dab4d69c35e5e06ba681cadc3e2104d6c`

```dockerfile
```

-	Layers:
	-	`sha256:8975b264c758bb6be180071d2062502a46a3e6dc86bb74de3612c9b7f2db4090`  
		Last Modified: Tue, 14 Jul 2026 08:47:25 GMT  
		Size: 7.3 MB (7334128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45aca77769f5aca4332bb8920cf0eb09e9610e217cc0fba44c07615614ebb442`  
		Last Modified: Tue, 14 Jul 2026 08:47:25 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:200a12c4b6eed76e857d8029a8dfd3e36def5508e88812381cf65ddf0472fd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212517163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906ea28c222534ea1b75ecf938cabfcbd11e47a1aa63ae59646246a4c368d0df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:34:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:34:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:34:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:34:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:34:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:34:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:34:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:34:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:34:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:34:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d73b0a67834e608ed05655b02da68afeed548308ccdded26bdad9f878b54e3c`  
		Last Modified: Tue, 14 Jul 2026 04:35:13 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9745d51952e53b4cd3a49c0fee531bdfac22635b082686d5943280fb5a42668a`  
		Last Modified: Tue, 14 Jul 2026 04:35:13 GMT  
		Size: 76.9 MB (76938487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306f79f5227b6d76a3ab56d88e26680e3e1778db48ef55fac1da116ba72ea97e`  
		Last Modified: Tue, 14 Jul 2026 04:35:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cb480af83ab310de785b18833b9770eda5d325d2eb1c2ed9122ab8619247eb`  
		Last Modified: Tue, 14 Jul 2026 04:35:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3c9d0a196d11a503b7877df17a846b3a8784c617a8c5ae4c1fa72e191071e45e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7339370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc19820f3d66dd153eb8c43c500799486f9312c0626f649a7efc832e2724c4ce`

```dockerfile
```

-	Layers:
	-	`sha256:87828eb1f959ac1dcdc2f32fddd1fd4e6736e727fee5ab999f968bb2193b42eb`  
		Last Modified: Tue, 14 Jul 2026 04:35:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4465270bb2f1afbffcdafaf969cf4c0b7dfca1a9f8903c80b85d07f91f0c94b6`  
		Last Modified: Tue, 14 Jul 2026 04:35:11 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json
