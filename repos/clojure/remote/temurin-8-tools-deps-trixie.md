## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:10c2076d4c86a1f27c8c7430bbbd69e5e8f9d8f67e5c9849e89bdbe249b94f6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8e5a1e4989a75236b2e4231c61fe9753cd77b68fab81d5925f45e9b16cc9f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187153875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3b173ceb38589d4bd9e72d8dab8d513ce1f57153bbc88dd486d79967339e30`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:10:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:10:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:10:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:10:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:10:24 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:10:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:10:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:10:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf2d75f1f601f4cd7799a7fe9767f3c13b12021f63ba65c0da15124f71b92d0`  
		Last Modified: Tue, 06 Oct 2026 02:10:59 GMT  
		Size: 55.2 MB (55192278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de75c078ffb4bd69a91039d9017f4e72fc5635dd78c433df7ae585784c9f6726`  
		Last Modified: Tue, 06 Oct 2026 02:10:59 GMT  
		Size: 82.6 MB (82567752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b91bf811dddf9d07e8f3f4bf6a1d25fa19c00deaaa4a4a8f5e1036aeca3ebec`  
		Last Modified: Tue, 06 Oct 2026 02:10:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:514c9954c321348d3fc1ef8006efedfcf56f7967ad9f89094d7449f591f293a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b4a439bd075039174e9fb1ac376dd28fbfc2ef5f7567b0a36e682c4a46eaf2`

```dockerfile
```

-	Layers:
	-	`sha256:0de5e8019854852318db2eead8571e89e9fab0218a3a6b06ca68e2d0ec9a5fd3`  
		Last Modified: Tue, 06 Oct 2026 02:10:56 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab1fe24014854d31cb4602f83f0d8b03f78c36e7d07bb43ece659e09c32a8a13`  
		Last Modified: Tue, 06 Oct 2026 02:10:56 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6512b5906739f86d3c70e55f972e71d549f1426ed7b0df2f05af2241db22d17f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186406748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f21e40a40aa55428206e4c5cbea1c3dfb044513a8bec646bcf0c04dea9066c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:16:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:16:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:16:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:16:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:16:33 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:16:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:16:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:16:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5112c6cb5a3156974212129f19e72e71c7a25497fd40ad4832c7945f6c997df`  
		Last Modified: Tue, 06 Oct 2026 02:17:07 GMT  
		Size: 54.3 MB (54254277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73c1f6b5d5474caf276fd0d62c2b47dd104fcd92e0b71deaef35a3cbdfe0340`  
		Last Modified: Tue, 06 Oct 2026 02:17:11 GMT  
		Size: 82.4 MB (82390723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585e9f6eda45bc72a6f52e5da09121af4aebeedc5b452c75542b0cb3d32babd4`  
		Last Modified: Tue, 06 Oct 2026 02:17:09 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:128dd839fbd1ebc2d9638b96f29a843343ce0d7fe2f763bab6782bc49fd0cbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8480e85781253aaa3e51a1b71470b31c80820b0976411171738209c3a5ed3da`

```dockerfile
```

-	Layers:
	-	`sha256:04d5511d8cbc64ddd43a2d7f0c4cdca427e6aed1c8cc798246016b193298edaf`  
		Last Modified: Tue, 06 Oct 2026 02:17:09 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7176790a7f49940ae10c3f4916299b229de26b56a234e9f4a8de5f5fe0c58601`  
		Last Modified: Tue, 06 Oct 2026 02:17:09 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:957f101091d36d1b6ee5ef91d588d4c6af9ae9adedca68e478fce6de9a3137fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193853511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71451d37fc0f494a0b3cd2951d2d39ad758dc82eb4234d677a06eb3a10dac9a`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 03:49:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:49:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:49:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:49:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:49:47 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:50:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:50:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:50:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca7108a41dc4d3c9b1e471f127018c9ff286c75325c6fbf442baf44a5b544e3`  
		Last Modified: Sat, 26 Sep 2026 03:51:19 GMT  
		Size: 52.7 MB (52667132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51e3b35b5c3832e006d0e479e7b8a89ee2c4be3b207285917e2c1dfc05bf597`  
		Last Modified: Sat, 26 Sep 2026 03:51:20 GMT  
		Size: 88.0 MB (87990657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b96189389630d5c728760e978d637b34d8c3a48175e4ef3132468c9d9b81ea`  
		Last Modified: Sat, 26 Sep 2026 03:51:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:706231c96bea940124ebeb8d99222a3be0265950b3ab0a8133dbfdcb42f3f63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945521e7fb35d9b75db111633fd99e291a4acc7dde7cd125d8ed1cff60a5b353`

```dockerfile
```

-	Layers:
	-	`sha256:b34303a0b20fcec2c14c523b0dd574bb684e164533561bf81e345b7b96e51c2c`  
		Last Modified: Fri, 02 Oct 2026 07:36:42 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1699a9e79659e906ec7bdac6b8fde78a05d1389368a727608ce623335601cd5`  
		Last Modified: Fri, 02 Oct 2026 07:36:42 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
