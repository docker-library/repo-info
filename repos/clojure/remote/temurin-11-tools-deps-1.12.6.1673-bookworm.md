## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:0f62d26e43479c64fbbaec8b8a0cb966bc7f2ae9a0f6aeebbf7cab1c00b9da8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c09115fb6f7d2372b1d40b53c84017db494734f1aefa22c91c546b420bc3ccd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274670998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edfc4540661dc04f3074eafcea9d12c15ab0cbc0e609a211ee91e275a769d3d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:47:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eea429b1cdc7e0779ed92c72f25059b2a00eab25abcb70f83e9dfaf6da88ac2`  
		Last Modified: Sat, 17 Oct 2026 01:47:42 GMT  
		Size: 145.9 MB (145864521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ddfda3d186ef0f8bd6bc353fe63b039a76177ca31557e32883d7dfa35e96c2`  
		Last Modified: Sat, 17 Oct 2026 01:47:41 GMT  
		Size: 80.3 MB (80287809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25833c1457b5e8d397dfb050c48f8e04783b70196a297c3d7613b1993fd4f6d`  
		Last Modified: Sat, 17 Oct 2026 01:47:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4359a2005d344c39ea7b8a7f516aae0bd44f3703df51597386fb5f7ec7917202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdce43f82cddd0c5004c114320e4bb8c4e35cfa442f9eae66788896a57df5eb`

```dockerfile
```

-	Layers:
	-	`sha256:510712798c7418e4597ac18cf0c15aaae3cd0463c43b6aef8a207a09ba023815`  
		Last Modified: Sat, 17 Oct 2026 01:47:38 GMT  
		Size: 7.4 MB (7400156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d4858503bcbacc9fe71c59c3ae90b4f13d0cfa3b8850f46648ba2581fde4b79`  
		Last Modified: Sat, 17 Oct 2026 01:47:38 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:570269d60e876ba39525c3500701ecc7f4a2af6fb6f611230733003b3b582ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271221523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12657bb1c5dda46b22afaf8ee5b32a4bff87e2b5a93e1f426723977dd9067bcb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:47:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:18 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5856ef8c2c1081614e6c4c24e2a5e3753e9ea7de78fb493a3d38700ae0965f5`  
		Last Modified: Sat, 17 Oct 2026 01:47:59 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f8924f6711f6b8d2af18906397955f5b655a21d24255aebc58b64dcf5de994`  
		Last Modified: Sat, 17 Oct 2026 01:47:58 GMT  
		Size: 80.2 MB (80242747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7231db8ca776fcda88d19b55e78b1f12f6a5cadd5e13e5876bd6db6bfd4c6019`  
		Last Modified: Sat, 17 Oct 2026 01:47:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:749f1c2f450a99abd3cb6033868636213bf9ea894e12286d9d2bc313c1a34fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347d4c4077fc156c6945330e20ad438ed93b76000181e2476dc0d763a4428e0`

```dockerfile
```

-	Layers:
	-	`sha256:14150906a1dd56522b6465822cf3f9b6604c117d8f23ca0a8786a9de11415922`  
		Last Modified: Sat, 17 Oct 2026 01:47:55 GMT  
		Size: 7.4 MB (7406537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:608cbfba808a25101db4ada316d37702eecf2648bb545fcb575781f9684215f4`  
		Last Modified: Sat, 17 Oct 2026 01:47:55 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:78bea6c6025c07a817bdca4a4675da8b3dc4b5199179b39dbe05f3eae0180385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271719675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f128ab2e5bd03c98210948ef8bad6c939436171e05beda5a132a89ac2f618`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:45:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:45:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:45:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:45:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:45:16 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:56:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:56:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:56:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35adba34ddb621d647b1817760b55d8e71fb4bd4d48d9e56973c7a0bdf3f1df`  
		Last Modified: Tue, 06 Oct 2026 09:49:39 GMT  
		Size: 133.1 MB (133094722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ae3f01024148e0db8b5983f154d86e332525104e856d973b1617e0fac9bb40`  
		Last Modified: Tue, 06 Oct 2026 09:57:29 GMT  
		Size: 86.3 MB (86261571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72a3d8c1ee70be62c3edc879c9017273b6ace2c7157f29d61d4f62b36689f21`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a6290e142757e8742d298f63b09a316c26a2019656b003831a647628c59f0976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7896d8fa5920d2d53d5aa31e78411d98b009a59447ea318865f1719ad3e936`

```dockerfile
```

-	Layers:
	-	`sha256:ec01ddb31bb0970239e40a7ea473a68eba91f5b04f2914f80cfc3ab145a49817`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c7f9863326fe662325fb2faff07027d27be02844e2a609cd81ba09b88d5aa31`  
		Last Modified: Tue, 06 Oct 2026 09:57:27 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
