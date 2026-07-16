## `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:cb04e46b0f143e7af0a220d61d086bfb058778d4635c3cd2ecb6a34945ab0ce2
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

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:538a16bf8eaa4b9a2fa588c972235e4c72e17f6986a63ecd5d096408cd896557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219203151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a40e599c96fbbff692907aa96231f34df5e35317f7e23fc900bebc2a168746`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:35:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:15 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e9331d583661f285d6d60d5a942a343a65c96b2ffd1c3a9fc69c31b0a745f`  
		Last Modified: Thu, 16 Jul 2026 01:35:50 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb67978718d24427576472b306eaec43c8c5036da311881facc826816f0ba418`  
		Last Modified: Thu, 16 Jul 2026 01:35:52 GMT  
		Size: 78.1 MB (78130137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b28b69f9c8550f926fef2f4670c5f27f1951291bcbbf397601844858596f`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d410c7cddfbd98b87e09be15be12a07f4a2f049faaf05b35952d60027ffffb2`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d43455c9dc47f0259603632eba74a6701bf7323385a0fe271f91d1da6ca86a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a726351ca50dba7f1125c312f01211935cbd59cd6f435ee4b1aa7e7d56ce7c`

```dockerfile
```

-	Layers:
	-	`sha256:54a268fb1a75ad762ba18b281aef4771b1ca1609ede162e9138805fc4086fd7e`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 7.3 MB (7345564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055cf464c4f3ed29e5896a9e9e5cb9199dfc85aef33353c4732ca7696f42b069`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4e638f80613bd2127782982e1f8070632631cec2310b31c5b89517e4a5cf67d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218048607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361dcff2be7b81a651f6158d2f08e6d30fa8bedce5d06b8cc85fb17a4065e650`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:18:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:18:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:18:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:18:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:18:36 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd7a88a096b8e51e5e3e28417ccb2f3cf999c0113b0f553e5367a3b92d91d02`  
		Last Modified: Thu, 16 Jul 2026 01:20:23 GMT  
		Size: 91.5 MB (91542206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad62c8dfe038b6f6a95e04c6f5d374798e2c1a2913e408495be41b8c7fa498c`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 78.1 MB (78121671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e26aa08497a7dd11907842562b07ae6aab3b98cb8904785deb1e60193d387`  
		Last Modified: Thu, 16 Jul 2026 01:31:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b093741c37772d183ad67f8d713d1fc0db2c05f41d39a6acca2c2cdafb301827`  
		Last Modified: Thu, 16 Jul 2026 01:31:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8795aad08e2d42726c7717fef985f6a05e3d38e8d6affce80c9a39f0ddd80e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7c9bb2daa34528c9fc2cf9ec880253146ec87ed96c46c8330c4787469ed293`

```dockerfile
```

-	Layers:
	-	`sha256:21d5a044e8e64248d24faac7eaf15737e5346374d4308bd4c47a85ec033cc665`  
		Last Modified: Thu, 16 Jul 2026 01:31:25 GMT  
		Size: 7.4 MB (7351396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41f6337eac3191c23af28f9905b1cf1779300d66b5a0e3b646fba3ffbbd985e6`  
		Last Modified: Thu, 16 Jul 2026 01:31:25 GMT  
		Size: 17.2 KB (17161 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

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

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:67c5dc4cbd59524cc3c49caf0348d03975b78d3144c1beb50c08fff24bdc0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212516855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb2385e8ac4121d8215b9ec158f2692d1517a2f9a98d621712750a0a9773204`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:41:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:41:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:41:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:41:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:41:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:53:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:54:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:54:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:54:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:54:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ea98e0931c23ec30a174ba433d8e0900a725b70228c99499d15c7b14448b17`  
		Last Modified: Thu, 16 Jul 2026 01:43:14 GMT  
		Size: 88.4 MB (88420318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3957591e679f9d205b389fc78e864d8ece3b86d60a50a6c3e5adbadb620e81`  
		Last Modified: Thu, 16 Jul 2026 01:54:28 GMT  
		Size: 76.9 MB (76938219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf7cc1503e7e2079b8412789af9149c9eaa4b52fa75c6b827ae97c02f7358b9`  
		Last Modified: Thu, 16 Jul 2026 01:54:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c47bb92fd57728daf718176f7732930a57bf32de84a2b6cff14905596efc2`  
		Last Modified: Thu, 16 Jul 2026 01:54:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8f48acfc4b7e9fb0fd7c78301fbad774e9f28965dd309c7e4356c3d55dbb2c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7339370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e32c42f28eeb6d446bde81d212acc01293a03271a0940a925fff570b3bbb47`

```dockerfile
```

-	Layers:
	-	`sha256:8df894b1eaf0845ec94c2ea3bd4891d2aad413e69ee895b354242d2ced82a049`  
		Last Modified: Thu, 16 Jul 2026 01:54:26 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c219942fd1c1d6926d73bf0238dee79c43485297f1f692ec67622750bfa9e854`  
		Last Modified: Thu, 16 Jul 2026 01:54:26 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json
