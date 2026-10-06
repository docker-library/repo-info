## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:8204dbfee434e7f013d892078d3a8eb4eb8fd1fd2814ede4016cf77a31e270ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d2c4e56c889fc2d3f892292266a1d1ef12425e709005f6330e9418f62dca3c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277825552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567b7e3a493aaf4ad1930e58edf44e5479ba43f6f406025bb1fa19b21c3e9daa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:51 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b552b60d73d68b6998e52109b29034ae0396497933e43582518786f45af38cd`  
		Last Modified: Tue, 06 Oct 2026 02:12:31 GMT  
		Size: 145.9 MB (145864176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06f560c3ea8ac018797e03507c6c4ea643c63e9a95e155dac539656708a613d`  
		Last Modified: Tue, 06 Oct 2026 02:12:30 GMT  
		Size: 82.6 MB (82567533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718ee3374cc87be8397ecbce9dcd134880a401e31ca36a97e7e0eb12ad332d20`  
		Last Modified: Tue, 06 Oct 2026 02:12:27 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:08be4ab4df4ea5591a7c33b891866b9a34dfa33a5280472d3ab8031b2a61e9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f19f6418e20f871a84f748ef79f8b7f85086b9f910e288bcee1d4d499a0fb7`

```dockerfile
```

-	Layers:
	-	`sha256:51f3899a46e141e5572840663c13ff3fbc2fc678009017e891dac9c8da6a663b`  
		Last Modified: Tue, 06 Oct 2026 02:12:27 GMT  
		Size: 7.5 MB (7498336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:433808d39d85765cb853efd447d2c054e5b0595abbb8658c1f3fa2c7bb4cd37f`  
		Last Modified: Tue, 06 Oct 2026 02:12:27 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d7144eac1a134e4b5d7b9be5d7874ccd1f1c539a67125e173808701b56fd0c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274729157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4212456028b72bdc8e5243ca061bee4371ca66bdb0e4a9d82285324610ea53`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:17:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1dd7234cce8bce5ca320b5f98d19955e82d53f4da195eff6965cac994afc49`  
		Last Modified: Tue, 06 Oct 2026 02:18:24 GMT  
		Size: 142.6 MB (142576548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ba645d707e1b5452e7e4572fe15aef438ce07242d142e9b7653b1d7bf90b3a`  
		Last Modified: Tue, 06 Oct 2026 02:18:23 GMT  
		Size: 82.4 MB (82390860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff2600790817ffbb2691888500eb78664fc0a56c5722720e065e555c78c35`  
		Last Modified: Tue, 06 Oct 2026 02:18:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7cc0df83a1a189126a213c0333d57284a8deb393e81ccde341bd3d59e6e45555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29cbc8e0055b8f126c50b5232aef4d9f1cb1e600845225889e9c206c076b794`

```dockerfile
```

-	Layers:
	-	`sha256:28d68a01db865f06e131ab05993e933f362d9a3463bc64c49503a6da8c49b43b`  
		Last Modified: Tue, 06 Oct 2026 02:18:20 GMT  
		Size: 7.5 MB (7505347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:919ae47f4f4bf4bd1620759d5fca8fd3a041b47119213a58b4f9a49ae07a91fc`  
		Last Modified: Tue, 06 Oct 2026 02:18:20 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:be997bd3bcbeed661a0e806d10b48e4600aa3a27069f36f03da671ea0d28a5c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277507371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7393c52f82f9b36f1e5de41852d890d0bc18036e93e1ea41da3c932451f5847e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 07:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:46:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:46:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:46:02 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:55:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:55:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:55:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56e9f3bbf0dc455cf49682b7c5301d36d3867551d020a4d6eb1b8a9b61154b3`  
		Last Modified: Fri, 02 Oct 2026 07:50:42 GMT  
		Size: 133.1 MB (133094687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5242ac431a59cae2367d82bcbe3519cfce6976e50183f4352a7c67a8c88f8b`  
		Last Modified: Fri, 02 Oct 2026 07:56:18 GMT  
		Size: 91.2 MB (91216964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d58c9495ab008e6ca04d60b279be2d37499e13a0383f90556208b67989bf12`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6a4c7945b34c9d2d8a777d87cbc6767b7337e4ec3e4e5bc99dffe666a87d532c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3912a4681e361122fa2758190d7d14527685c4ef36484360cdabbcc0ccd9a00c`

```dockerfile
```

-	Layers:
	-	`sha256:5c8df4244af9cd80fb4204425e9177654f251ce293c0ca17b8c9dc1009633f2a`  
		Last Modified: Fri, 02 Oct 2026 07:56:16 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972d3e9bedaaaec49a854b97e512eefcea141b60605f4d8eb59a1ed1e12eb7e8`  
		Last Modified: Fri, 02 Oct 2026 07:56:15 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json
