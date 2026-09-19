## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:888cf9e70686d3768d21391c248d90a6ee9ed1b32b67b75bdb71b31f85d78e61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f40bec342766bee7e99a1ce6aa49fefae886cd708bd7678b04e79bd3c5516c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153986846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bbd4f647d6adbe65b4207ef3d6d7c7dd8369229a84c95542881c70de79a9f3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:12:57 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:13:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:13:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be83ff5faef148190535249b485992f21b3eba8f94fa7af842ca92947487b885`  
		Last Modified: Sat, 19 Sep 2026 01:13:31 GMT  
		Size: 55.2 MB (55164390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a421bab48e320df4991719e01c2a37b7380766819b0b4abbd5807629a9ad74d`  
		Last Modified: Sat, 19 Sep 2026 01:13:31 GMT  
		Size: 69.0 MB (68991394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6f3630f71d04c6f1d6bfd8b909e3e25f43d39aa73d863acbd5cf475c48aa2d`  
		Last Modified: Sat, 19 Sep 2026 01:13:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1052a92364f5ea18cb5af37ab765483d87662ee0fbcdf7bf56c6ba380362fbd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0495f1301312d2adcedacfe391c7a764f895827c2a3a8a41a208e21e443c4d1b`

```dockerfile
```

-	Layers:
	-	`sha256:bf38cb7167d05101071b5372dcb26cffca8331976a942dc06d115f44a7daac45`  
		Last Modified: Sat, 19 Sep 2026 01:13:29 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d00130d2e6728c86e213ac6153070f137e62d67a550f74378436e50d6e5c469a`  
		Last Modified: Sat, 19 Sep 2026 01:13:28 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7997faf5715b8b792053c1cf3ba2a2d40a2be52c1c39c6bc42720bfd86e4d432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158898039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c25ea8c9bb4c91ad40c97d2c80aec591ad7100616e8cac600ddd645c97d380`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1ccfa0e8542bdcfbd2b582fa3fa0fa1f2823e32c014edf3cec9a88c5612d2c`  
		Last Modified: Wed, 16 Sep 2026 04:33:06 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc0ba90092141855cb172bf56b0a6220043b458783305713c152e40a894cbe1`  
		Last Modified: Wed, 16 Sep 2026 04:33:07 GMT  
		Size: 74.5 MB (74475067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f075168f56a63e2b4b08a9cd3ee1df91a1365b26164dddfbc22aab628f5d94`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0380833df789a321ff653dc060bc00412e9c94549d321b06c2ca386e595a996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162215819917aa470e234ed3383dc0bd0fe7efd736b89d4fb7f974828c7bcbd`

```dockerfile
```

-	Layers:
	-	`sha256:1d136c7e1a830a516a6e8ca2132d45515578453c3d84780de848000634c0e575`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 5.4 MB (5384455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aab2b49ec80664019be63c593dad2b247362ae42162ae3ae3e779758b269727b`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:945db78beded97a0aec3c2d81546918d66399f07e83daaa9d0343ecc4d74ba59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163862526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d1db86d292a65cdd67228f2c27fec3e2e81a43be5de7fba1b659cc00f5c51c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:13 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0453cc3a6b1885278dd1f96ec6fc66af9ff6c8d65f1586e3e0176be25e4fe71d`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de67950a8ab369017a9fff02f71a75294d7da5bf7f4fb5509ea5905a58de17ff`  
		Last Modified: Fri, 04 Sep 2026 00:09:26 GMT  
		Size: 77.6 MB (77575755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18073a4ca93bc70d0c92c1030b126d02330d36acc8888d3ebb95022de420ad28`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d0e7344ecbdba2083ba6999eb2ba42d89e65d07de6fe16d48831da4c1490209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823fb1323c6052ce78b8608df4243582c5f8e0b55dd849066d275ef1becc95c4`

```dockerfile
```

-	Layers:
	-	`sha256:83bb8e59751cb7f0e352e4a4d316a84e911252633e5021cad7dd16ce1998c9c4`  
		Last Modified: Wed, 16 Sep 2026 10:20:08 GMT  
		Size: 5.4 MB (5382888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e44dacf0766128aa86d37b3319655f6cef398b17828a14c6ce1afcdb6ee9cd67`  
		Last Modified: Wed, 16 Sep 2026 10:20:07 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
