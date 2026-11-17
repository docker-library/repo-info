## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:05b9c7a66eb91ad9549aecd2f634a8bd34edbce5712864ec8d3af90f54644178
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:5d43a769acd7a1c886519a893dd9c2f4b8cec646eab988438d230a1ec69f644a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187190688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74481ab6b72c796c1df7069dbb3c6772be9588e6d31e50737c80821ffc24fd7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 20:15:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 20:15:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 20:15:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:15:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:15:05 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:15:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 20:15:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:15:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5933d73352c70fd600e7dd953a94b174ac90cbd8bdfdf729e4d8fcc9824ce0c5`  
		Last Modified: Mon, 16 Nov 2026 20:15:40 GMT  
		Size: 55.2 MB (55207928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1770fd25906fecc23c0356d3eaec6bfd669a57439724c473bd69b0cf51e11b78`  
		Last Modified: Mon, 16 Nov 2026 20:15:40 GMT  
		Size: 82.6 MB (82569605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6dd3605c13ff3bfbde45e3f1a683395f6275acf1e5f5a58792d98cf75f31d6`  
		Last Modified: Mon, 16 Nov 2026 20:15:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fce3a00b24eb8fb098b36f25541c997813462bd36f8ef48e14b4ba50750f7c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae5414ea61603fe5381ef32209c44c3e0f42513c245571d39c75da0d01d1912`

```dockerfile
```

-	Layers:
	-	`sha256:161a2e93723b75fc7c78e3c0c76b49dc973c71427afa02854206009162607bef`  
		Last Modified: Mon, 16 Nov 2026 20:15:38 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f29af2b958e3bb77e0a200e97a3a73270957eb6a6b2f253084442bdc8cf1033`  
		Last Modified: Mon, 16 Nov 2026 20:15:37 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:898b4991d810d3d70e262e2ccb152d5220fdc8b1b6b02154a4530124e010033e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186442432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9c3e87f1934fb08aee52d9ccf6e5697bfe97242d7bc2dab142e36d9a4536fc`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 16 Nov 2026 19:58:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:58:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 19:58:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:58:41 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:58:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 19:58:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:58:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d496ece46a11a274e8224f9c25ea9f4805c1d8fcb3c8e9c19af1641a8aa99bd7`  
		Last Modified: Mon, 16 Nov 2026 19:59:18 GMT  
		Size: 54.3 MB (54270362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5351a4eb31a434b96b3a26585aabac12de1dc03607a7aecf86e13c73e7ef7f4`  
		Last Modified: Mon, 16 Nov 2026 19:59:18 GMT  
		Size: 82.4 MB (82392820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717ceef6edc5a36ce678574eca79a970ae6bd10507ad6f4b6fb360b20cb2f4f2`  
		Last Modified: Mon, 16 Nov 2026 19:59:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2cfe9f8bcc6d054c8219cce6c029be681b0ebc7f22a00b835ee7c9ac877a8238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da46ce982aa09ef10f8668da3a7bc6a2cae7fc7f795d4aabbe092e4966b7bc96`

```dockerfile
```

-	Layers:
	-	`sha256:efc529cd1179d3a73c58016a20ae2bbe44a92cd0f537802d3a119f8fa116cc89`  
		Last Modified: Mon, 16 Nov 2026 19:59:16 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d26f277ddb65d6c577654e0cb4e2bc8f330714407909310610d89c5df660ab`  
		Last Modified: Mon, 16 Nov 2026 19:59:16 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1e3e9a6a0831675dc3f06518d0ac354dad98cd53f0b0f2b95c730cb779affb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193912355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfcf3a9dca7802314b8cbe76829419b51e165763d9b9deafc492799460611135`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:13:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:13:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:13:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:13:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:13:57 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:14:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a09b36ba0baebb69d83b8260bd9441e8e00c0b89f14b069d246e57d2f6116a`  
		Last Modified: Tue, 10 Nov 2026 00:15:36 GMT  
		Size: 52.7 MB (52689142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdd389c652111979e3ff137e57f423ee76853c3e5b7601c936d64f19b56ffa6`  
		Last Modified: Tue, 10 Nov 2026 00:15:37 GMT  
		Size: 88.0 MB (87996977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3defc0ee0d67ae4d813d31daccc3f168bd4fad2d67418426828c1f81e8f51b`  
		Last Modified: Tue, 10 Nov 2026 00:15:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4cd990d0cda27d948c516b0b3f5e24f01e269bb12b973374cdd641fb7c2b5184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982b3da6f1922e401689ed5583296a94a10685f2f14171408f8c7dd49bc0397d`

```dockerfile
```

-	Layers:
	-	`sha256:8ec44ca10dd839423629ce85495bda6d45bcc3bf8142a8ff2d1fd8cc909c20cd`  
		Last Modified: Mon, 16 Nov 2026 20:57:14 GMT  
		Size: 7.6 MB (7602133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a63b58d56d1adfbfd68cf9f003d099d444dcaabcc175cff25fb89a6d982b5be2`  
		Last Modified: Mon, 16 Nov 2026 20:57:13 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
