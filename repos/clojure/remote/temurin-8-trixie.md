## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:1264120f69662656373a152aee48293a9754ba425e65b447fa59c595561d0e76
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
$ docker pull clojure@sha256:4385cc1b14df8710d65a2fbc62714b1c98756b19063bfde8ff63f4981047e43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187037407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaea4002425a06bce7aa00d71e3ce9aee6c87abbd0ef309e78d4c2a4ed0d365`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:47:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:49 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb14ea01855adce2c054b6bcd4b6c8e4c0c08f029073686e6ea824206c08ad`  
		Last Modified: Thu, 02 Jul 2026 05:48:24 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d60e39bf02fc6f78480e8ebd397da62071dd740b905a8da7d8d1ca6d847bd4`  
		Last Modified: Thu, 02 Jul 2026 05:48:25 GMT  
		Size: 82.5 MB (82520782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062369334417184bae3f7955a58cdae2b5ac48ce5943b30ddb230ca1073a8ca4`  
		Last Modified: Thu, 02 Jul 2026 05:48:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:be9a093b18765fb696d89c8368a09547ef03a0dd862acf7de632f9df0b2e9b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a2b5d8ef2d5afe391661e5d5271ccaf376cd0073c88083888a51f15d00593d`

```dockerfile
```

-	Layers:
	-	`sha256:154407763bcf4ec1625d078785c888da2aab5c5a4928ac4fdf813b698499af41`  
		Last Modified: Thu, 02 Jul 2026 05:48:22 GMT  
		Size: 7.6 MB (7589167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f599139a6271a49bef2c785178a0759c5c7ee7aca7ab3cd7b6827f27621bb5f`  
		Last Modified: Thu, 02 Jul 2026 05:48:22 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61d5c751b23316218a9e718c871479d1b821e8d3ad0dce308d0af4c4ea225915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186291675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6f8d27fee5928b90bb8d077e98605efe1f8e679e4a1634b2b56876f47c235f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824511d4da8eac2c5c248a704d1b2b5bc7ad3ef90a121d3300fa8906f722d9f`  
		Last Modified: Thu, 02 Jul 2026 05:48:46 GMT  
		Size: 54.3 MB (54272925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b957508bdd148a5c66e9faacce2c3f1a067307cd4c56196da6a33622487cec`  
		Last Modified: Thu, 02 Jul 2026 05:48:46 GMT  
		Size: 82.3 MB (82339710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0bb7de8eb7d7f22fe8927c90b024b3abe4571c64d183df0d0ccd83fe2754db`  
		Last Modified: Thu, 02 Jul 2026 05:48:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ecd3df4e642c33ae98908be023a9b0a04e3429b5f6965abb15a652caab98868f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dff5801015671138ed4b77691661d8d7ab8df94e05b95a8890c7691a52e4bf9`

```dockerfile
```

-	Layers:
	-	`sha256:863d420f5ec78adbb40bc6e08907ee58d83dbb7672ea6b715de3021633ae133e`  
		Last Modified: Thu, 02 Jul 2026 05:48:43 GMT  
		Size: 7.6 MB (7596260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb9403a7c69547bde24f0cd1588de5a31bce7cc801cfc8a782b5ad134f60dc4`  
		Last Modified: Thu, 02 Jul 2026 05:48:43 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:66eb76d964d7f0cbdadbb345ed0a5dc183814120aff1ce789349127a97265c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193746319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39baf01ea8a35c9441530058969af4220f329b01af649d3846b9f2b5dceb217`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:49:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:49:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:49:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:49:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:50:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:50:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:50:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30c919863ebb65824364a781c39a167d6d9ac9906743d22cf54c3c88e10c26a`  
		Last Modified: Thu, 02 Jul 2026 06:50:50 GMT  
		Size: 52.7 MB (52669147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda28cfc1459e815cb3dbad4f8dd49c42bba4b785251fe79099e63c6b53eb3cb`  
		Last Modified: Thu, 02 Jul 2026 06:50:51 GMT  
		Size: 87.9 MB (87938457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c368362a517e4552732eeab9a6343de5da9d4034701cd4bb44b87d1411e885e9`  
		Last Modified: Thu, 02 Jul 2026 06:50:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3359e4b817b549869c355346d9278d4f3793b79e26045f2095bcfa227eb1a284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cccf3518238d2ca10582856674b8473ba557c6d7d40219d50d532de863562b`

```dockerfile
```

-	Layers:
	-	`sha256:6ca00562ecc2ff1551a674f81deb6802155b88ff3005158e49b83f9aa407fc3a`  
		Last Modified: Thu, 02 Jul 2026 06:50:47 GMT  
		Size: 7.6 MB (7594183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7a535585ba309d54729d0ad5741fd1eb72a8a6627cc7547f68c5f30564a9172`  
		Last Modified: Thu, 02 Jul 2026 06:50:46 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
