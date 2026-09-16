## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:c8dc2c6d0f83212a4a84d5e47e5bdabc0876da169960e47be0431c45ac2cde66
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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5eb9e77bd08f00fdd793c417fb6d1dddc92a260ab1986ef637ae3747c1250e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269421635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f83c54eea54f30fc662dc059ce4b9a811df275cb30b254828795d4de865e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:30:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:30:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:30:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:30:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:30:51 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:41:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:41:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:41:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79be30d1182f5736f59f68f224dc46e7cf7d74015106e0ec2522471018a6216d`  
		Last Modified: Wed, 09 Sep 2026 10:34:55 GMT  
		Size: 133.1 MB (133089491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c87e9f5855f2947730e6af72b43c110c08bdb799c747e85fd817941f41248`  
		Last Modified: Wed, 09 Sep 2026 10:41:38 GMT  
		Size: 84.0 MB (83989733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f041498f8c5de2897c20fb0ab64a93b35961cc05bd1af6fc0671a399a4728513`  
		Last Modified: Wed, 09 Sep 2026 10:41:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0bdcf05c826c9b408e960e583b88a0a0a3e19bcfd729963756e98f6c92d5f68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24929eb13b57b689a5cb69285f1bd425b363cb9f7f7a4dd619a3c10a9e58a47`

```dockerfile
```

-	Layers:
	-	`sha256:4aa860380b9acc38370585b97e1ed6f151e53cd573a29d5944070a5d0798e454`  
		Last Modified: Wed, 09 Sep 2026 10:41:36 GMT  
		Size: 7.4 MB (7404711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b402720e052f3540cdf2f60783997ddae1b312c95ec982b65e051d35e9f3147`  
		Last Modified: Wed, 09 Sep 2026 10:41:35 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
