## `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim`

```console
$ docker pull clojure@sha256:8ef0f0a87cf84710ee772b1b9f220daf25af70b036e91b69200c593b910b58e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fad399e0d44a9915b896ecc0dc701eb5de80f3e061933b06742c394da5625476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187374490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3d3bcecf4cdb81a35098427c3ec3b12f2753fd63361cf95d006014968b6449`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:12:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:47 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:12:47 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:13:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:13:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabaf9af8d0dba29933893be134625d0c7b61d78bda5cad560f8ba0d2454abed`  
		Last Modified: Tue, 24 Nov 2026 05:13:20 GMT  
		Size: 92.6 MB (92613972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2469cd7a94dad0d5f4a17cd9625800fe62f30db28c0eefa4941a91aaaba9392e`  
		Last Modified: Tue, 24 Nov 2026 05:13:20 GMT  
		Size: 66.5 MB (66511020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b7658fdccd27d3d88f949ac433d86a9185db10287ebd0f77f5fabcd8eff37c`  
		Last Modified: Tue, 24 Nov 2026 05:13:17 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c24d57a17427f45b011692db3a1558c76592aed89cfda46e8a27a35ec26fd5`  
		Last Modified: Tue, 24 Nov 2026 05:13:17 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9fd87aa0e28942c1f99a86fddc7cd83aa389972bc4bdaef2447813507c5cd941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f160448c9d80af290defcdbebfe42568728ed4244a5c2deb1f41108c6e62acc`

```dockerfile
```

-	Layers:
	-	`sha256:d97fea9685286b7f487b378dc7d9fee5393c92bdf99acd399beaf485b86d0acc`  
		Last Modified: Tue, 24 Nov 2026 05:13:17 GMT  
		Size: 5.1 MB (5086207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8b41a4d38750666f548d25af4a8332089bed2b71e6041e25e165cc8ad2e9f88`  
		Last Modified: Tue, 24 Nov 2026 05:13:17 GMT  
		Size: 16.7 KB (16678 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d26ebae87ad396caf698750bbe786eb65917a3cde7cb3173370d17c7a983b10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186196167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a60e8e1ecb375b0553054741c37d3e84fe71e2df99e947a18503cc63d7b6937`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:27 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:18:27 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:18:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:18:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:18:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:18:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df7119eeb934afcf63e25097259380e239f0e0e562c3929143dad75c4d97321`  
		Last Modified: Tue, 24 Nov 2026 05:19:03 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade06af4853479c5677ab2654c0fc9ed6b8c7d0c9aba9af26486d37927873ee`  
		Last Modified: Tue, 24 Nov 2026 05:19:02 GMT  
		Size: 66.5 MB (66496379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109be4c8c11d061ce316aeb6ab638a1768417af7618459255e8f34e2bfab3897`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebb8879387b5b5ae7904f455b5b8c13bb2408efb7dedc13b91ecf4bb87b7a83`  
		Last Modified: Tue, 24 Nov 2026 05:18:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9be52fd38a39b1f098204231ba17ff7eb07a96809c5433448f97b186f611b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c113622a3dc044de0c65b762043088104c09a0ce1c91abaf99c5b988ca7806f`

```dockerfile
```

-	Layers:
	-	`sha256:4701c14daef338c6905d13d7d9da24b918fa7488dec6f0ee12ad160c4b536e9e`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 5.1 MB (5091989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e41bad19bdbd53248b644769d9fb1d176a51b7d6a129ad95226c11c992d50593`  
		Last Modified: Tue, 24 Nov 2026 05:18:59 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:01728db1cec6221538a5964513d4120f63945ae12dff59a122501a271fc7715a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194549294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4eec3fac314ce33f4dd14ce9f4f953c7d281c671c39296791360f79b15c5fac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:57:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:57:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:57:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:57:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:57:21 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:05:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 13:05:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 13:05:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:05:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:05:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984d9cbb2e1d809e642c26a30837c4932c0e2057cf3d170def7eceddec63f45f`  
		Last Modified: Tue, 24 Nov 2026 13:01:59 GMT  
		Size: 90.1 MB (90119634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee097128779d68f4ca8ab81b4963e13c66547da308325ad4d928ffc38825bc`  
		Last Modified: Tue, 24 Nov 2026 13:06:13 GMT  
		Size: 72.3 MB (72334621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e5331932c121dbafae28913b470ebc4907e465704f90ce251de36dd314f4f6`  
		Last Modified: Tue, 24 Nov 2026 13:06:11 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0756e7cfe814973c43773574b55a405e5c51266d5ae5b14d32f187c5702dd2`  
		Last Modified: Tue, 24 Nov 2026 13:06:11 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:197d1dee54dc37cc0b4943340cb4f7eb561a7ea991e22640ca9c4543ce3bd0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09b1893aa9fe9485490ef60a19ca5eac07adabe70bed588bfc4c33af3f38807`

```dockerfile
```

-	Layers:
	-	`sha256:90eaf5f1467f3e22b97b02daeaed0892f925a56e75416fbfc23ea9d91bf65455`  
		Last Modified: Tue, 24 Nov 2026 13:06:11 GMT  
		Size: 5.1 MB (5072828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65ab9d459f391ed3dc9c71e66a2768f9cf8e02e88ea82335fd6d48ec7af233ca`  
		Last Modified: Tue, 24 Nov 2026 13:06:10 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json
