## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:3663780dcc23e83c8e008058d0e73a6d6a9f54b2fc95a47d26fe6437d750fb27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1482bba48dd92bb9ca4687c7dcf8b13898d431c3ba0fe04166eaa7355d589b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283682740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9422fa850b4ee5a5a337de45f9ace28b37873aaf30ed97898ef47343b0b49cc1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:33:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:14 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80c040413b29f17843938b5b1c69c1762ed7a1aeeb40f5e0eb78aeb1748ff9c`  
		Last Modified: Wed, 16 Sep 2026 04:33:57 GMT  
		Size: 145.9 MB (145861408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077771e89d8b7c5a6ae303bb057316b768adaaba215cc18ca539e1f27aec88ab`  
		Last Modified: Wed, 16 Sep 2026 04:33:56 GMT  
		Size: 88.5 MB (88482859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693510662d406cecb8fc527d36fc52542696a79072c377e841f6458dc26e12ec`  
		Last Modified: Wed, 16 Sep 2026 04:33:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:71816ac76f1e7de8fb259dc416611d76923c5444bb5367451c9c1565a3ab7a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7507796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef17e80b3bdf1c976278db9abc9e3d4bbab7fe4a434b551726d9898ba744f578`

```dockerfile
```

-	Layers:
	-	`sha256:d92088d96c619a994de1973662959d142df802f26fe0c3670d8c108b8a112667`  
		Last Modified: Wed, 16 Sep 2026 04:33:53 GMT  
		Size: 7.5 MB (7493457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ad08166253070cfda3fbbed6ace66500f3a98b18d5a64db834912aa2fea68fd`  
		Last Modified: Wed, 16 Sep 2026 04:33:53 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:29436ea389ad0c5ec6bf4576a4136e41685deff11bda60374a3ad7c5a93a9679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280900645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42241df36f256c053b7f8607724385e5633e6a3f9697e5f4b344ef7d2ac388b2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:33:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:40 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fd89532e2c06c1d58b4ba3fbf4ee341784b90c4b43f1f8658f8a505a661838`  
		Last Modified: Wed, 16 Sep 2026 04:34:25 GMT  
		Size: 142.6 MB (142566294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab58a52f0f7fcb579417ae899a37e4bc7fef4cd841fcfbdd12c91e5ade313716`  
		Last Modified: Wed, 16 Sep 2026 04:34:24 GMT  
		Size: 88.6 MB (88628856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4137eccdbd78c50a9abcf0241ffa9447e410cc590e7262cdefeeade0e4a83c`  
		Last Modified: Wed, 16 Sep 2026 04:34:20 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1493d21d5962068ffe68591c741be981193f93d1f8965cd83a4132655cc445c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de1df070d6b6ac46ad1fada04f71407b8b36a75fcd22c14ad4a6fbff46ab61b`

```dockerfile
```

-	Layers:
	-	`sha256:25a444182b249cedf3e05d43adcdea1af203c9fc937d47b26f7b8d82aa2c05d1`  
		Last Modified: Wed, 16 Sep 2026 04:34:21 GMT  
		Size: 7.5 MB (7500468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32fbcd312b56bde709d6bf32df3c8c8440529b2daedd0368a97cd2d781d1ff79`  
		Last Modified: Wed, 16 Sep 2026 04:34:20 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a505be84634e439b8acc928d5ec6ce8be6eb4a3497eb347bde63de294fbcbe82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280559159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb8fe9774d282c932df9ed437f7c8d65b4cfd315fb60dac6b243aba15b2d8b2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:25:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:25:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:25:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:25:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:35:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:35:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:35:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b01e0e4cf6bb11e02241e47204dbdd57076f27f098eed815aeb5f868baa8`  
		Last Modified: Wed, 16 Sep 2026 10:30:05 GMT  
		Size: 133.1 MB (133090163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ca4549844fac0dee3ae177e3c5d75dc66c12ca8a960f69c68dd89ad438abf4`  
		Last Modified: Wed, 16 Sep 2026 10:35:50 GMT  
		Size: 94.3 MB (94304066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f69d5a0908d7188f23e068a54f25f41a2df07f9aebb7c4b083e592a810195ce`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a76324dd5f55ded5d45e2afe9a58a3e1181853f0f4a099ba648c895c9e2912d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900d158142bcb453710c32caa0fce9245ddb08011a5b98880f2d6a5df07fb685`

```dockerfile
```

-	Layers:
	-	`sha256:6c21cf3621b1bbac33dc1e7e7cee54906248619f549b814614712e49ec7d17bf`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 7.5 MB (7497263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0224ef74e28cb0831371a8671a26342bdd720fa7c60cd4539d2ed296ddcc4f94`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
