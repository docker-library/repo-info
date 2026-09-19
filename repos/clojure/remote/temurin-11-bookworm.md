## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:de387579fd2418d59b938ed615c113921868119f44c8113e333c31fba1b1e3e8
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
$ docker pull clojure@sha256:c99238ee5655aad6060f9668b302dfac10129f5c66fdc996c26029d0439d930e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269429880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8760d7a27419c83e0317c0cb67311ea69a51d45763e428febd3fe3adb19089`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:38:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:38:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:38:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:38:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:38:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:47:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:47:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:47:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252ab7b8435b6276777ad755a60f33e31d7c689c6fe3226176eaed2a31cf9aca`  
		Last Modified: Sat, 19 Sep 2026 07:41:52 GMT  
		Size: 133.1 MB (133090140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d41b0f41eb2cee365f4a86be2d663e9ff17d8b0cef931e84ae0b5d7e1449a1c`  
		Last Modified: Sat, 19 Sep 2026 07:48:39 GMT  
		Size: 84.0 MB (83989789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7951cb0c80ee40359727f716ed3d789b77ed19eb60d54a32e25ee2c01d8129a3`  
		Last Modified: Sat, 19 Sep 2026 07:48:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ecd93bfc485be0212b4563a8e1936352e053a172bec4d562abd368ba364e9bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7939aa0d2e48ce1e926e546951ba4180401a42028d2a95ece3fd747f75a60cac`

```dockerfile
```

-	Layers:
	-	`sha256:db8ae4ff08a83626c9d8d72a6196b0a9e3603da5be0596c0cdbcf161fc150f6e`  
		Last Modified: Sat, 19 Sep 2026 07:48:37 GMT  
		Size: 7.4 MB (7404747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00f9c8703ff12812b1de8b1c7589a912a20c97fd0fde1dec8eea8d6d7be2b089`  
		Last Modified: Sat, 19 Sep 2026 07:48:36 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
