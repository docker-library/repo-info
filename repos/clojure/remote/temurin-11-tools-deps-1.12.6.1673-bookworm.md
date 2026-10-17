## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:5977641853387e498918f4c1556668defe25067a558750eb34e40d5965862dcf
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
$ docker pull clojure@sha256:d14c48e5ecde52903456c3fb18a0236e0c94fd9c47255305457a01808b644905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271749348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5776e9fe7cde349b61a9e8d534cc5bffdbc03a380be5d640c59d8615e2c660fa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:14:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:14:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:14:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:14:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:14:29 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:29:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:29:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:29:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6366ab15846561f7c1d7bb19f95bcb3b146f60270eed9d77a9cd1ff1a47fee8`  
		Last Modified: Sat, 17 Oct 2026 05:19:17 GMT  
		Size: 133.1 MB (133095131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3420946ca8859a3ac16ed9bc9058ef42abd295f292879a0c8a5308ec8ae301`  
		Last Modified: Sat, 17 Oct 2026 05:29:54 GMT  
		Size: 86.3 MB (86290832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7830cf8dba5d6e1bfe39d17ca397b09da658dbd41795beb50dc33dbaa5fde3ab`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7013653e841ced0735a11bdec2ab1ef7c2bb10b48c30208945597b078f14131d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a8ded99128d523c572d4231249592a8e9a57411637b1a7e67b62c979e3bee3`

```dockerfile
```

-	Layers:
	-	`sha256:5be561ad2db9430f260779f96029d57af0cabf297ceef11bbcb19af13ec64343`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 7.4 MB (7404755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d4b8bc4bd30be30d29ba3c24b487ac8486724db069b37099a4f28c5f9e4e21`  
		Last Modified: Sat, 17 Oct 2026 05:29:51 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
