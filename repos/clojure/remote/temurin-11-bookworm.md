## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:061f90664fb835e0b59c0f8032bd9906952d37b99bd4e6b6cc7bcf6e4c3bc1b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d59745a567744939271821c13a2ccfcb792bf43a9ab32c64823dba71fe3c1232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272539083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb66594b60b7e66428692b0073c7339d8b0fd07463c07e1e26fa94378f28537`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:14:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:14:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:14:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9abbf4caa075466b008e721b4249be153f57992fa669a960bee24cdcd4d704`  
		Last Modified: Sat, 19 Sep 2026 01:14:36 GMT  
		Size: 145.9 MB (145861347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e649c9f19e865f5c8af28675942e7a1c174447a6944de952d351c7c2539f9791`  
		Last Modified: Sat, 19 Sep 2026 01:14:35 GMT  
		Size: 78.2 MB (78173652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67ebc931b4e90087ef58f3a874d1aea41b8006289225ab86fedd32a73efb7f6`  
		Last Modified: Sat, 19 Sep 2026 01:14:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8de9e1cf3ff8b426edf6ae27e362b1677f85c4bf94d73af9cc3469dce461249e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fac99b1b0fa70a0c9fa2d0523d4099940a78d14b707dbaf7f0397753077f241`

```dockerfile
```

-	Layers:
	-	`sha256:99d89ebfb74ba16b798e6f52e92362087ef15f709ed43ba743fe9d92aa879313`  
		Last Modified: Sat, 19 Sep 2026 01:14:32 GMT  
		Size: 7.4 MB (7400148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ac6387339f25a16145015b9628dc58030f8654721f7068bc5bbe98b57fcc6e`  
		Last Modified: Sat, 19 Sep 2026 01:14:31 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:95d51948794e6bfed73df958ccb9dc6c6e55522a6a690aa0766d32125ddd7366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269131563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5a956a42d070a3fa0012b69d09d40432ce7fd2eb0d814a5d9d78b676e67e53`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:21:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:21:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622eb1042423eb53270b7c8472b79740be19f5b73b83dbfa2cb5ef0b725b6401`  
		Last Modified: Sat, 19 Sep 2026 01:21:48 GMT  
		Size: 142.6 MB (142566277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30bcb4c32ec8cdb2d22a6dfbd12c423e8a87202e1240adcfacb1f41e12c4f004`  
		Last Modified: Sat, 19 Sep 2026 01:21:47 GMT  
		Size: 78.2 MB (78174731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18fa4cbed01c4b7a73f0e5edb23aa57b9b238fa07fd7a50c86022143abf276a`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a6fc8817e57a068e2617ac9d2c3cac909296c427424a943f76f058a1c4cf9e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10a9b26c2d3239c2d81d701b5272908be05a7d4e3ab4bfb0cf825a3f8ff98f2`

```dockerfile
```

-	Layers:
	-	`sha256:daab667f7265f99a81704e0a0d2a3e321082f65420a82809544dbcca1223f8cb`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 7.4 MB (7406529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75699a50d990ed8893adb3024616a0fa1e601c4a7fd0980cd059718705f2377b`  
		Last Modified: Sat, 19 Sep 2026 01:21:44 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0dbfd9c4a68dc155cf348ed2b4b5eb7b1c560ebed3e6aa4145c8efa2c6b7fb6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269423027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f5c762280e8afa99c9b4c91769aed479587d897a90411320481304f7efd844`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:19:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:19:57 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:31:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:31:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:31:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759fd36f9626e3552cad0f4f99207c8255f1a00ad7e8023566b6aeba0f4285e6`  
		Last Modified: Wed, 16 Sep 2026 10:25:02 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6282388ab1bf2002ee81f78801d67d8a61d01170071bd26b28beb65c31f6df55`  
		Last Modified: Wed, 16 Sep 2026 10:31:56 GMT  
		Size: 84.0 MB (83990470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e481d8f3d297a98b23f6d6d0a1294a5921d4c35eae87186374644a436dafd473`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c3a81a152983fadeea96fe8d70eb5436b08bef4d66910f3c4b07959d808ca43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052212e0de69d3f86e29dc321d83dad8b4c489fd352a5798d508064390293f63`

```dockerfile
```

-	Layers:
	-	`sha256:782c1e4f285046e9b6b63ee145ef216a1224c67eb1c8090198e7feca1d636704`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 7.4 MB (7404711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460441adb14be048b310738280e1bba1928153fad2772865d6c734500f642a33`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
