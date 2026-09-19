## `clojure:temurin-21-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:97b62eb676dfb0f7275ae8cf3feb248d98f2624719d64ab0da8a7729625fc418
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:a25a59f0e96243b5502e3d5609162f09a7abfdf74eea9bbf66e3a63e7869d7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284799045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f76f9b18f0a3b4e127b681eee77b34f4c22244633f1070a8379fe4c9bab8cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:16:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:16:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:16:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:24 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93166c5b0a3aead5790ea8c2fbbd8f4e1718050d05c2953e5c60d191731ae39f`  
		Last Modified: Sat, 19 Sep 2026 01:16:49 GMT  
		Size: 158.1 MB (158120310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71f3379940b3cdf6c280a95124f4fc422d524505d13888de4cfa84057ee5fc5`  
		Last Modified: Sat, 19 Sep 2026 01:16:48 GMT  
		Size: 78.2 MB (78174256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b82ff4317c61141c1adc2e364d04ba078e114497d66bf696ef9304d9272d92`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a5a10d64d2b244b9692a9af9c4870a13e6edea401a94b6323ade47a050ade1`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:a2fffbee0ac9a4910a78ef9f1e30395c98312dcc8cebd6f0bfda7a5499c4386c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270a6764c0238f4d5620025a7909005b1855f99b67f358aa8e12686b9ddc63bb`

```dockerfile
```

-	Layers:
	-	`sha256:6014b08d87d48e8e63bd9dee19d7cf617a9c8e44694d0d1827f94667e6fe0190`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 7.4 MB (7383168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7a3216ad785c983b2ca0a737d3392b71c7936d6e4a57e25ea8a6c7d4d027d9f`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3886c2f8c5fa84eb9d7bf5075e397bf6e9ae6d3ded4a79ff9a991a05dae22ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282967358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2925d7b4a8271c1feba96acd2aa94bc309d48a394c24daf8981e6c105d981ed1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:23:16 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:23:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:23:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:31 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd7e107bc7e806adcca195e3ba89ac05b10677cfe6453bf23f1aa41f1570a0c`  
		Last Modified: Sat, 19 Sep 2026 01:23:56 GMT  
		Size: 156.4 MB (156401959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b91585aae4a2ce3f5bc0ff2e7be8942aa386336739a9f4d11cd8f09b40d377`  
		Last Modified: Sat, 19 Sep 2026 01:23:54 GMT  
		Size: 78.2 MB (78174445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88893a1643ac88f2a83b7edf938a7ea33e0f2559b0ce5ae7581afe6bcb833290`  
		Last Modified: Sat, 19 Sep 2026 01:23:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393f61cbb932c8b891cbc2927969ff38fe42d5c65c125f7e3d7cc6bdd83393e5`  
		Last Modified: Sat, 19 Sep 2026 01:23:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:ac40a8bdc1104840f3b15d89b8afc4c8e2389cd35f9b4334b99cd1539cab3d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c79999f86c379c9c65c8d1e7c541590faedd94d3e80f6a428fcfbec11c8ee9`

```dockerfile
```

-	Layers:
	-	`sha256:ce79976f2e1ad20f65a476158f10a4e669723d39c3c2617f33dfb1329d9e1c2d`  
		Last Modified: Sat, 19 Sep 2026 01:23:51 GMT  
		Size: 7.4 MB (7388955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:127789d134340f9cac957befd4157ff992f52991df89724c7e6a008c2a50f965`  
		Last Modified: Sat, 19 Sep 2026 01:23:50 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:25b7e615eef5349e55b7523a3578c4e21f811bc31aad31815331885566d329ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294602172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ac865ba6c906d1f2cda740e6d121cf1d525cb0c41e119692e228ccd6921560`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358d5f980f82ae9f282fe63b05e44bb3911ae80de7068776c4adc41a44c8cd8e`  
		Last Modified: Fri, 04 Sep 2026 00:22:06 GMT  
		Size: 84.0 MB (83984475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff6153082618afc42c30a107406185736f2a7ca0f190ff95bb3541f5c5767c`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e550ff7b88b0a585ca5d1b86d9b5cf7cecb422228e583e700c06e292dbfd91e`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:50b337ad07cecd0c80338021c218ba299918cd551b290a7332365df3525d206e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8699e4a28b5fd1e09de3773f050e45a64035d1bee17714abc83adbb91d70fdae`

```dockerfile
```

-	Layers:
	-	`sha256:20ab1a18ca1396edbed1be16f2048d6d6ea98dbe569d1cacf8d54c10adbbbc5f`  
		Last Modified: Wed, 16 Sep 2026 10:53:04 GMT  
		Size: 7.4 MB (7389135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:976b54d340b465337e512dd753c252fbe6966d87e9e473c712f614f38c7a28b6`  
		Last Modified: Wed, 16 Sep 2026 10:53:04 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json
