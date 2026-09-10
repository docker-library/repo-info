## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:15d47514eb9208961e08bed768cb523b49eeeb1b1037d0a00ffd883ae8ac8efd
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
$ docker pull clojure@sha256:c018e119479f0ca246626d6606d10e9aec721505a7c7a717fa47cf52ee2c0cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272533246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0c5ed3027b3a697babb113617bc0ceda5266f7c1081ddd0093aefb150e853f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:44:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:44:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:44:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:44:59 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:45:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:45:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:45:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac205f69816ffb2c16a0ba49e6011da3a229a908b2ac34e035bd2a0ef1d4f336`  
		Last Modified: Wed, 09 Sep 2026 03:45:35 GMT  
		Size: 145.9 MB (145861431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b773b563aa5b4e6396f6c01d7b7bcd111f0b6442391f0a88c94d282990d9766`  
		Last Modified: Wed, 09 Sep 2026 03:45:34 GMT  
		Size: 78.2 MB (78173809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae1eeb5f995f430a7f1f64ef15c6498d1df2dece515cb1e94619d797f2a0c36`  
		Last Modified: Wed, 09 Sep 2026 03:45:30 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:08c18e039d7cce9f487a35d0d9a4b409b95b3d317600e3751f08ce43a16d5759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77847af0e8ffa588559bd6b993fed8ef134856dd6ae258ac09e36efba086d85f`

```dockerfile
```

-	Layers:
	-	`sha256:77d1ea3a2fa4e75aa0e254b67f0c6bf05c5ca722586c8268efe312a7d4564235`  
		Last Modified: Wed, 09 Sep 2026 03:45:32 GMT  
		Size: 7.4 MB (7400112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26e7bd51c25df913389883b6ac2670a34d360203506f842295ef1de19f16c346`  
		Last Modified: Wed, 09 Sep 2026 03:45:30 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bb4a1d8cad8423c3e9408f0a7b7c47ae3fb7ce7d7ae22b3938e0d3738de1e807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269124889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff254baac80b1ab760939390cbcc882823d447504aecd4248be20d9c0bc2eea`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:56:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:56:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:56:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:56:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:56:25 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:56:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:56:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:56:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd31baae96281577ff7753700357c4a12c58e0985610f1ffad63585d69f19a62`  
		Last Modified: Wed, 09 Sep 2026 03:57:04 GMT  
		Size: 142.6 MB (142566234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8471a7dd29e2c49336123bc6b889788435bdbaf2488affc1f1861c3494c377af`  
		Last Modified: Wed, 09 Sep 2026 03:57:03 GMT  
		Size: 78.2 MB (78174360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83291ee6841e1eaf925499049d6f45cf359af43b9546c66429e1e18d701ef9e3`  
		Last Modified: Wed, 09 Sep 2026 03:56:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f5a51482bdd514e60f19b1af3b34a1f117869f5dd5c5f413f84752a06399692c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7420974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba2fc859a78e700f9ecf877b2423fb9afdc47304bb4380ac7b39a53cf38e3c`

```dockerfile
```

-	Layers:
	-	`sha256:80a5b685ded9ad7ebe727ca53661dc3165fa93a66c950e54f476061e36851e96`  
		Last Modified: Wed, 09 Sep 2026 03:57:00 GMT  
		Size: 7.4 MB (7406493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bd6bc8f8824169f213ec4ddf3c522889f667fcda6023f9c59dda73c20639861`  
		Last Modified: Wed, 09 Sep 2026 03:57:00 GMT  
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
