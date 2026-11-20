## `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm-slim`

```console
$ docker pull clojure@sha256:96057ff8621004eb28ad9a14229f4a39ee1b7ad069ce97c62defbb732ad14ef7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm-slim` - linux; amd64

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

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
