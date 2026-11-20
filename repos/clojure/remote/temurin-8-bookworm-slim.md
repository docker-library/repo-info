## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:e954718d119c270ab7569d5d96fe82a5f325b592d68eb667a6d99c713f877d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c4386bbe60e74e3270c3962e8c0089eee523b08b9fd6b45f9435254c8cdd7fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149968036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b411c8b40b35372a16f3dce926db572a2f7a1d5436ab58c2cbc8b320bc2fe06`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:41 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d700ede25a4eafe8d0f7b6bfce9559f8d11edb3ac3a4aa30ba75d39e5c84de5d`  
		Last Modified: Thu, 19 Nov 2026 22:07:12 GMT  
		Size: 55.2 MB (55207929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2ba9a884c17885157a502d18086f1a67a276cf9392ed05318be8afde2c0e49`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 66.5 MB (66511478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948b04cb1c46770e685bda7090e66d834b3a8aed0a9468575f2e25892d05740b`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4b26b0fe8d8885c6aab1a340115299e364e1b81cdab047ebebb55f3739ff342b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0974bfe0d27287f475c5e0de0331bd02913916c466b97358719f141607e633`

```dockerfile
```

-	Layers:
	-	`sha256:2d53e986878e71d6bd0d99bc04ff89ffbc3fcdf1828bb69c9b356f944bc213a7`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 5.2 MB (5238469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ab119580ec07c13f08d68c58e9b483ef05932c1f898c44359ce72707147059`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:355b0cc1474a752aff4987aad50900930f262fa96c7462e2a72b5b5fdc523fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148912074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e851bfb26cf184139faf4d92c78431cebe4ba637c70850c39bfbf7ed87040be`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:04:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:04:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:04:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:04:27 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:04:27 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:04:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:04:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:04:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3814dfbe47cc1a02f0748e37252f326666ffd90a8f8f678c221de7f0847cf6`  
		Last Modified: Thu, 19 Nov 2026 22:04:58 GMT  
		Size: 54.3 MB (54270349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4789f7527733bd4b9d29bb72aea33331fe8c5c1d6f547620ac4d720c21f5c7ef`  
		Last Modified: Thu, 19 Nov 2026 22:04:59 GMT  
		Size: 66.5 MB (66496720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbb33f94ebf993e32b36d3cba9c1ca8a643e0f41fbc1b6ea0ca8cccc379d6aa`  
		Last Modified: Thu, 19 Nov 2026 22:04:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7fc378d8e10abfa751d22510e8212a347f87a83a626e2b3760fb1372b65a5c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d08340a9ec34f6e6edfe6d22c98e5ef02434cab7536389c34233ea6c14271b`

```dockerfile
```

-	Layers:
	-	`sha256:7174da3da1dc889c0f2e4a2002e89e66aeea0dfa51e8849799a3658f8e27a229`  
		Last Modified: Thu, 19 Nov 2026 22:04:56 GMT  
		Size: 5.2 MB (5244930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edacc4f6b12087a2968b15cb712a5c2c72d4a918029361a0b2158a78e0af9c03`  
		Last Modified: Thu, 19 Nov 2026 22:04:56 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5407c1f83b23dfcdcf3294631206a1003c1f68d15248bb42bc3fa3c0e4831e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157117231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ebee97138e3a828c6bfbf45aeb6d672910c207858d5e8567237d1aa023a3d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:11:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:11:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:11:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:11:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:11:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a209ffa50a25fcb47e851538b91037f7af1d05cb89e6ad23aa249e44a560ab`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 52.7 MB (52689135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773b07e8f30535c49b4fc323144033148398400646b9989f17d8e9af702b7ce2`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 72.3 MB (72333890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1dcb583277ee206e58e4e267a0788e138770960f86caceba113a9e6a5b166`  
		Last Modified: Tue, 10 Nov 2026 00:12:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fde2e86a36972eaf13532ab510e78b3be958b1b717295d3bb7e22b98ab45a90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8ebcc44721612171dad33422cc92e2a30973def16b1b4ac4f47c933c741755`

```dockerfile
```

-	Layers:
	-	`sha256:446f684db7efc28e3408bd7bb1eafbe9a292eec379547d495f82547aa6c79a04`  
		Last Modified: Mon, 16 Nov 2026 20:55:12 GMT  
		Size: 5.2 MB (5244220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2f1eb6670f467785efcf9ac51ccd3660cd1d4f6917f2e5c243b0a4e24692d77`  
		Last Modified: Mon, 16 Nov 2026 20:55:11 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
