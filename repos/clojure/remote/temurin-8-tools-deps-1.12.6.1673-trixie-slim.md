## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:83215c5fb84ea2154c5cb32b4ff0cb7d57958ec4be729a168edcfe65ec84d14d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

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

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bcd2a9bafe26f47836f852395a99a1c6ca7426c31b564642bba3ec0d2ab7901c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153261551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1298c3951914aa212c9e924c87ec87ab26302c5c4f3ec33b2275a0016fb33fd`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:20:24 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:20:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:20:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d55cd58698d852c9fa93e6f1dc504c68ac35465976353eb4d21ed2bc05d4c07`  
		Last Modified: Sat, 19 Sep 2026 01:20:59 GMT  
		Size: 54.3 MB (54262766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ec72df124447d4542851cb5ec7d2bb48d4629d883cdd4764f514adba0abc9e`  
		Last Modified: Sat, 19 Sep 2026 01:20:59 GMT  
		Size: 68.8 MB (68808450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f0199bd151d5f9cb8bccdc139c6caf9a45a09feb416f1e50fa7c6bfc5959ee`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:878520dca780357623e4eaada719bb9bedd700084eb67c8cb2e0b9c87dad2a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92ae31551fdf6c3855dfa9bb4623143d7d7a891576869a8531403f7d17e1ebf`

```dockerfile
```

-	Layers:
	-	`sha256:e2596765033e3221b8b3624400563093f72ad7024be81419eba7a24d5ab56383`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f7ef2e4b2c95c6111f6f287c2f27596c18ef873875a19c9cd17b6f540d969b1`  
		Last Modified: Sat, 19 Sep 2026 01:20:57 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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
