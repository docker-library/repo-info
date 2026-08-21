## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:7323ce62f39f471d2a60e003d3cdcc2f08df43f93a077e6e1afd22281fa13b11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d7a0c122eb30ecaf4d679bc27342087b82e16d46fd98179d5f0ed6c7f356660c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181825650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4582e22e407a2860c944f2dfb59028f2bd77ee845af0f12f57eb5ccdc9dcad`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:31 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bd947c2025d62bfaeb3d89e82ad4e4bae5a4c7d51937c47a569ca4eed957b6`  
		Last Modified: Fri, 21 Aug 2026 19:09:06 GMT  
		Size: 55.2 MB (55164399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6df7c028da9973f6b724a777a656b97490453653e027f2b2d57e8dc6605c9ec`  
		Last Modified: Fri, 21 Aug 2026 19:09:07 GMT  
		Size: 78.2 MB (78163518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af1899fbc98cabdd2804ab9d36c8b35141baf00ef078474da75bcaf7c15e05e`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3ae3509f4990bb3a89d9ee7aaa2f6dede3e89a0a33b1ac7a131ee026e2cb3773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7467f610f30080ef91fd3189c6a22e06f16810a56e45f38c133d97222f15ca`

```dockerfile
```

-	Layers:
	-	`sha256:31c9556af0fe02ca7eaa0cb7e8cf80eb932253dbb1ec31559c4b22a1fad9504e`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 7.5 MB (7501733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:173cf1704cb65b58439fb46b4496dfe6f6b0f203ef41dceeee0fccd9deb469bb`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:71dffb7abf74ffd7f58c495ac3c60ce2e9bb842561c0578e20b13d5720e3b61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180792030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26588d0d6599051c4c06159184c25fd1f1fdf478b9f9b63200ab944b0a5aeee`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 18:59:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:59:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a8af743f986786077017706fc8e28d1f3c4e3acd3af92753655727eeab6542`  
		Last Modified: Fri, 21 Aug 2026 19:00:26 GMT  
		Size: 54.3 MB (54262742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1333a26e6b47a6d08c63555ac57f87c6367b829ae50c0a4a7a4b09e08db0cb41`  
		Last Modified: Fri, 21 Aug 2026 19:00:26 GMT  
		Size: 78.1 MB (78145263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e809607ce3bb1acc643ca04fe332db21acfcefe4a793dcb42889abacf1b6e8`  
		Last Modified: Fri, 21 Aug 2026 19:00:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a27189299789cf1aace1914f343ebee80c35d75ade2811451a20428bdc61bcab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7522662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bcda23f229b346bd57a984e5316c807df4e2e5e236850834da2201957760db`

```dockerfile
```

-	Layers:
	-	`sha256:0e58c3e4f6e1ef53b84abbefa5078ec05f44b10db56c6b85389db32e636a6a76`  
		Last Modified: Fri, 21 Aug 2026 19:00:24 GMT  
		Size: 7.5 MB (7508196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:344cd91356e911b6eb1eb5bf55f7ac3377d05b229c1b4712c573a5ffa9b84fe9`  
		Last Modified: Fri, 21 Aug 2026 19:00:23 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:866a787bdff8291b87d1514bf2fa75d8c337729321603a12ca7537ef1c96a014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188991040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82788abdf80aeb9e47b6bc1ecdeecb2a97ef2d1bece8693648940402150b5d26`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:47:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:47:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:47:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efed027194eea968631929a28563edc168ea8329a45d41df9bfa41f8f323009`  
		Last Modified: Thu, 20 Aug 2026 00:48:11 GMT  
		Size: 52.7 MB (52669121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b1faca4438b0fa22e6cec68e01d09a4df0a23ad2cbcc2b5813b435984b195`  
		Last Modified: Thu, 20 Aug 2026 00:48:11 GMT  
		Size: 84.0 MB (83979799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26dc32925e75c3a6183bc883ac6a1bc32375e7e1d16bd2c0da2a16ef04b339b5`  
		Last Modified: Thu, 20 Aug 2026 00:48:08 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f4b49b168be28e63c1a50ee6fe7ee3356d07b1ca0f793ad8732e54600eee3af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d1aa7bddd893ecdb8941f73ad4936d5802502aa7277ef2a346f05cdea1ca0c`

```dockerfile
```

-	Layers:
	-	`sha256:703c787e1c967c157e8e3d74065b106538168d45f38a2eaf76090e50106e6fe6`  
		Last Modified: Thu, 20 Aug 2026 00:48:09 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f19656adf5d9fbdd947aedd5be971917a4f65d0bd8e14bc0c35548270a75f6b`  
		Last Modified: Thu, 20 Aug 2026 00:48:08 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
