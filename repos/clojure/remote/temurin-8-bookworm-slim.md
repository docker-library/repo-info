## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:239dbc1ae1b5ddcb988056abfceea4403c0fdbb4f881decc24385ebbc68d5960
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:175c94614165ed0ffce1e0042356d7c9214883ec75327a1a1f11d9c662a6b096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152227816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e9bbe5130a3da8b9d9d49017ef898e3f481a0788e07f2332421b7a5fef32c2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a570039b15a0d8bb26b84be34b03762b01bfa4831620cc9acf79aae8670f53c2`  
		Last Modified: Sat, 17 Oct 2026 01:46:44 GMT  
		Size: 55.2 MB (55192273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9f16b8a53338ed8464424111b85a13fbb3b13d5536dfe34f1ad6ba449a3953`  
		Last Modified: Sat, 17 Oct 2026 01:46:45 GMT  
		Size: 68.8 MB (68785576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da9d5f8e949561b407a720b0b48185399ac4cdd29c30e3354fc44a9ca12dcba`  
		Last Modified: Sat, 17 Oct 2026 01:46:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f5751da2ed86616327f00c921474eb406dd13de167420097e7e0b4f9ee97745d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e671cc573328361a532ca123786c7b4efc383cd59c61c3882dd63c83e9ca42`

```dockerfile
```

-	Layers:
	-	`sha256:28232a87fd435d966e2625e3f468c4d9b83fd96e93cfd3d02e111bd03f8dcf28`  
		Last Modified: Sat, 17 Oct 2026 01:46:42 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156b267ea0e30ac096bc64fe5c592e517c861f4921d8e8e6892e406591aafd28`  
		Last Modified: Sat, 17 Oct 2026 01:46:41 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ddfe659079ff1885e557a14d6143800588766d37aa810fc6be12e61b25d0b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151137638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096b0f21dde9ea8f85071cd2a4aee20b1e2cd14cc5b84472edb74f5dfffe8f4f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:13 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9fb7721b2b737ff1e04c9e07634348e2bc6a7113eb53af67a87f03dbea659d`  
		Last Modified: Sat, 17 Oct 2026 01:46:49 GMT  
		Size: 54.3 MB (54254287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b75b91b7254282760cdcf33d847849c13d26d85879277f23be5e18b92e7676`  
		Last Modified: Sat, 17 Oct 2026 01:46:49 GMT  
		Size: 68.7 MB (68745527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ca173a935bee656048b4873baddd2892682fdd9afd91b142e703e93736d66b`  
		Last Modified: Sat, 17 Oct 2026 01:46:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0bf961629180ad23a5e22be32f868d46cc9e2b7b768b83fcc8803a0155e1044a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86322d7889dfef3568f74571a3a8e3f830d5e80ae6ee0e8601505380e871eaf`

```dockerfile
```

-	Layers:
	-	`sha256:116db8204d28aa610cacb5948ceefc77be4fdba451d3099defa477c138f21473`  
		Last Modified: Sat, 17 Oct 2026 01:46:46 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c17b96ec32ff5a2d2ac18512c91df08cda3dc73710d35b74c2b42a0c02860486`  
		Last Modified: Sat, 17 Oct 2026 01:46:46 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87e9d1cb7c4ea5954e123bbc52f7b04ccfa508d0691fdc79c733fcbbd07aa580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159526743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af982e25cdfc418a00798d61edd722e4186b6b92b44d28d54354582aae0a76e9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:40:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:40:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:40:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:40:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:40:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:42:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:42:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:42:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e1614afc6b61f0a3122078683fe0ef0dc6e2a16d8a4625fb7c19dbc9506182`  
		Last Modified: Tue, 06 Oct 2026 09:42:46 GMT  
		Size: 52.7 MB (52667094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1df5df4cd9e52096c0283ace5aff84dc3fc4e5e89e76bb9cc17356ec936c0b4`  
		Last Modified: Tue, 06 Oct 2026 09:42:47 GMT  
		Size: 74.8 MB (74766569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a81ba69745736f29f0e0aa0862230a8ebe0ad45d8321265754ee47686f9431e`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:42e14834497b6ec8c57615040518dc415eedab8c86c00df80031b20f8cd42ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872b9b0dc6952fb6bcfb725d13f318a4a0670b6f0ceb62e12ba42ce336e78de9`

```dockerfile
```

-	Layers:
	-	`sha256:e042380e2110b476d7d558f58cea34f2f0f9e26b3a2b23fc51a42182044c5f94`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:350f52f865fa9d607e5e41a56757f47b8f36741a8c2892c8b349d2fdde4cd3df`  
		Last Modified: Tue, 06 Oct 2026 09:42:44 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
