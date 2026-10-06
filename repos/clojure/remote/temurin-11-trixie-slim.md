## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:1bc9cbc8dc0c322b2cc1adb071a3eac1cbad5039bc04ddda86c4f2b67b6b7dd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3af8e2d97a2ac8d127c2498d8e67209e7ec90a1af7a6740614698c0f8ad45c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244699717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa9f106fe24f423d9f6b14c456708abf0df24e632ae8088a455c2969237c3c5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:11:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb249c4823f68e675035141740e3039a424c9ee66a1643becc26fd8f6d47a89d`  
		Last Modified: Tue, 06 Oct 2026 02:12:22 GMT  
		Size: 145.9 MB (145864176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5e9a353b1319aeb710b4ea614f79992e8819140adad0d371f4d83b99825308`  
		Last Modified: Tue, 06 Oct 2026 02:12:20 GMT  
		Size: 69.0 MB (68991546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d134e2fce1f6a137b96b2e402a2ff5ff379218287ac60132a0003287aef18b`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e15527a5ecdf17e645676d03151b29f1ef2c449a6bef64fff990159067f5610f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e2e6a7f86d66568564c80deac508617ea0b2041cdf276f940aa24c4369d50e`

```dockerfile
```

-	Layers:
	-	`sha256:fbe1fbaf460342571f67b02b18004544b0fa9f64dc1bc613d191a13118251b2f`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 5.3 MB (5282830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204c28eaf97d865328eb0ea17cda781fb6d5e9fa9ddbb9891549fd7a146783f1`  
		Last Modified: Tue, 06 Oct 2026 02:12:17 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:33ab5e5b25dd6c1ac94a7bd5fad6542190c7bc7687d3aa4f4983521ea6e674bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241585986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6363442ec56d1c3b2b61ac0c8e8f93915da32f2ca1c4e4bcc4329cb726c6b4f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:17:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250a71d2f35207dfa933ab95ce4225bdabbbd5065fa3fdcc334524a25f8a98ac`  
		Last Modified: Tue, 06 Oct 2026 02:18:31 GMT  
		Size: 142.6 MB (142576530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3aa16553923bad4d93cfe37d0268464ffce39457dc1fa515f941f7591df295`  
		Last Modified: Tue, 06 Oct 2026 02:18:30 GMT  
		Size: 68.8 MB (68808533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba56586704fccd6495e6f585450b9f5d39399e0f29d59ca1af63ee1d06884f2`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f0e9152a7422abc795fe3251e4659d366a6b01dd70aa86cf4d71e68c9e8df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcf64aa8828838694e2a561e18c6635d2623e1c0802b99d3e8f600838c7339c`

```dockerfile
```

-	Layers:
	-	`sha256:928af25348377935a7369f89ab15517f5a28d97d7d35a4fe4add324acd0fd92e`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 5.3 MB (5289209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c4706bb7b981bc3dc81d1e9fabede25b9a9adb08ad06e190eb5ab5d5739728`  
		Last Modified: Tue, 06 Oct 2026 02:18:27 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a922f21206ed8316322315f1a0414f2e6be81dc1ffb317c033ac135e6bf0172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244359225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8f9202b5f40453c908a0b0b256fc3623f0007e4202528444efb5d5b29981bd`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 07:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:46:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:46:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:46:02 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:55:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:55:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:55:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56e9f3bbf0dc455cf49682b7c5301d36d3867551d020a4d6eb1b8a9b61154b3`  
		Last Modified: Fri, 02 Oct 2026 07:50:42 GMT  
		Size: 133.1 MB (133094687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103ad82f79db549b8b360abc24706ca6affb5d21dfa567ba87df38739d67f98b`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 77.6 MB (77622659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551374491d2fd194452f56a507c4753786cf963b052f79fb20acf16890370af2`  
		Last Modified: Fri, 02 Oct 2026 07:56:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3f9d655eed33f1c8c47ae94cfb5db7723680f48b9ecc3bd956469c9bdbe6f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6f8b152f8f734de6f174951e02c5ee8ac1b13c95a2269942f7c95303eebada`

```dockerfile
```

-	Layers:
	-	`sha256:383f4f9682d050eeea05e5a4c25b4c2e4748fea8da42a91e17f2a3eb4da19df8`  
		Last Modified: Fri, 02 Oct 2026 07:56:13 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:246f97eafff7e1cf5366b7f3591f92c4c7a6bdd554792e1f3f7dc7a2f056019c`  
		Last Modified: Fri, 02 Oct 2026 07:56:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
