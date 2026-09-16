## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:2100d0b1f51d505c6d035b62f12cb689f622806b6904a9eec99afa2d89b90093
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
$ docker pull clojure@sha256:28cadb6c4c25fa5bc03e313979c5ea823b0f04aa8b19d3c9046763d284142458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272533248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cba34dc2c84fa27383f6f918484ea38f52c9acb0e79f561cca29e6265d62711`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:38 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ce32f269c191feceec05a6662a50817fcd77132d537b70a40428037d21550`  
		Last Modified: Wed, 16 Sep 2026 04:33:12 GMT  
		Size: 145.9 MB (145861349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bafbe9565a10f0b08f07d2cbd0fd568f78bec87cf6586645d163cd08341cf2`  
		Last Modified: Wed, 16 Sep 2026 04:33:10 GMT  
		Size: 78.2 MB (78173891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125b2850df818c3829308ecf420d30313d2d7e8ededc1e836c111f53e330db03`  
		Last Modified: Wed, 16 Sep 2026 04:33:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:213a64562ea4142a9e684b46719721ea8628f771b1648ed5a9bc4beadbab6415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce8b1c6f58e36438e55dc728d5378f76d4c0c956ba800a2b899d9afb9ec1d82`

```dockerfile
```

-	Layers:
	-	`sha256:698a254312e254eacd8bd77d17c072653a302835ee8e359834f9360ff797a5bc`  
		Last Modified: Wed, 16 Sep 2026 04:33:08 GMT  
		Size: 7.4 MB (7400112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ba4457f44249689db15001bca137e50d90e30b2503ab1ce68d0b3d9eb82225`  
		Last Modified: Wed, 16 Sep 2026 04:33:07 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:502f7c90881119d62f330888d032a7b920495df7ac05cd7dd09a00fe20c538db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269125164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823d45aded70db4b0b3ee8f4379f2f9b7659a2f4cb7a6aac23378f8bc10a01d4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:10 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11575c16e2b66258361e602e7a41d5d7c06fe5989b56cd92748d27599d1cedd`  
		Last Modified: Wed, 16 Sep 2026 04:33:47 GMT  
		Size: 142.6 MB (142566312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19cfb0f0843503ed1c2d115c007c86676d66003468cdf1a837257ea0240035f`  
		Last Modified: Wed, 16 Sep 2026 04:33:46 GMT  
		Size: 78.2 MB (78174558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96df750941cd2f2ad665c69fdf08ad0ef1c3eb5f2428eccbf57f78c96e6489bb`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dde3dba3ba55ee33bdbd472328e8d8e9160979958ab05108d221a62e46f0bdee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7420974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d7aac940f9975c29d8abd3d562637a10bf7c7baa40e27ae111e41a327dc6a4`

```dockerfile
```

-	Layers:
	-	`sha256:7c3f57d3c400755d0e40c078fc9fe05e8d3bde4d649153014029da0bed6a121b`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 7.4 MB (7406493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df980a56611b01756bd34e91f1b7ec8a8dcb6bf633c59f3071e8e8300b4ceb51`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0dbfd9c4a68dc155cf348ed2b4b5eb7b1c560ebed3e6aa4145c8efa2c6b7fb6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269423027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f5c762280e8afa99c9b4c91769aed479587d897a90411320481304f7efd844`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:19:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:19:57 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:31:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:31:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:31:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759fd36f9626e3552cad0f4f99207c8255f1a00ad7e8023566b6aeba0f4285e6`  
		Last Modified: Wed, 16 Sep 2026 10:25:02 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6282388ab1bf2002ee81f78801d67d8a61d01170071bd26b28beb65c31f6df55`  
		Last Modified: Wed, 16 Sep 2026 10:31:56 GMT  
		Size: 84.0 MB (83990470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e481d8f3d297a98b23f6d6d0a1294a5921d4c35eae87186374644a436dafd473`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c3a81a152983fadeea96fe8d70eb5436b08bef4d66910f3c4b07959d808ca43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052212e0de69d3f86e29dc321d83dad8b4c489fd352a5798d508064390293f63`

```dockerfile
```

-	Layers:
	-	`sha256:782c1e4f285046e9b6b63ee145ef216a1224c67eb1c8090198e7feca1d636704`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 7.4 MB (7404711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460441adb14be048b310738280e1bba1928153fad2772865d6c734500f642a33`  
		Last Modified: Wed, 16 Sep 2026 10:31:54 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json
