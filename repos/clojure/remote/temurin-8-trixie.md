## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:53b038e4421676927f30aca2dab364d18213eeb4a16d3a83506b3aa69631f237
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

### `clojure:temurin-8-trixie` - unknown; unknown

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

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-8-trixie` - unknown; unknown

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

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c735c3569a61433e7458047d48e3aba04f5a19b0407929c882fb368ce8c88601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193864189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693a31b1f54528880d4a1d4afb71dce585c498ded6d4dc728f5005ed8255f556`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:42:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:42:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:42:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:42:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:43:00 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:43:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:43:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:43:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9acb871f47cd1e60103f8493a16b0090a8e8ac294ad39a98c20abd640b184f5`  
		Last Modified: Tue, 06 Oct 2026 09:44:48 GMT  
		Size: 52.7 MB (52667105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33183749f2add50a6bd3ba9e95a20859e1b4ee94f90aeca3e2d5ac07b394a4fe`  
		Last Modified: Tue, 06 Oct 2026 09:44:49 GMT  
		Size: 88.0 MB (87989314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a764fcfa0f938b6449f76d4a281ad04c159a9bd40ba88ea78ec0a6be3088e816`  
		Last Modified: Tue, 06 Oct 2026 09:44:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f1754d3b53d110b184222bd62379d9bf0ebcce58685b1b9be8ef753adee0b097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a51834b8056de03817fe06e567f3154e6e420d6a2e5e21c748224cc1ddc804`

```dockerfile
```

-	Layers:
	-	`sha256:c1e6363e8096d1d4854f1209be0f561a64cda748646e9e23e77005549f5c683c`  
		Last Modified: Tue, 06 Oct 2026 09:44:46 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8150bea9399409bfd20fa510b57cc044af3d25423bfa3bd7ebb9c13e5f73ad9f`  
		Last Modified: Tue, 06 Oct 2026 09:44:45 GMT  
		Size: 14.4 KB (14370 bytes)  
		MIME: application/vnd.in-toto+json
