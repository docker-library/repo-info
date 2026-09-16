## `clojure:temurin-21-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:0e1e6f1ea71f9af90e6a5f3baa95ee3569d48dd0bd3dceb35e16c4d6dc0fa9bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b9cf05daad6b6309859ef25838f7cf636b20ca47cc215014bb8e203cc4edd905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284792648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1335a571aa3483a9326de81a484a3e075859fc30805bc8d891afbf46a6477e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:35:47 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f2bf40ea400d98393816fd1fba5d83013e1bb594847c8d37842e02606cc7ee`  
		Last Modified: Wed, 16 Sep 2026 04:36:29 GMT  
		Size: 158.1 MB (158120306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19276ab8883b08b1747b3472adce80fe0e0725a2c175dd1ef956fb3eb9c58483`  
		Last Modified: Wed, 16 Sep 2026 04:36:28 GMT  
		Size: 78.2 MB (78173937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ec0a4f0c7f6bb5cd514620f651a9c907c3f959211c8509421158a77b2d00b4`  
		Last Modified: Wed, 16 Sep 2026 04:36:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364c4744666513e312812dd8d49f3567be2eda81d50786580226170273812a9b`  
		Last Modified: Wed, 16 Sep 2026 04:36:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bb0a55646632fb977ad85204e4aa002d68fc738563cfb83693624ac205760723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64730644a2379ccf707522abb0eab92373ceb3aa4e8ab910e21c0bdbcd090eb0`

```dockerfile
```

-	Layers:
	-	`sha256:c5dfd022b024abe59f2275ffc8d02d68fd6344913466ba5f8bcbe77752158960`  
		Last Modified: Wed, 16 Sep 2026 04:36:25 GMT  
		Size: 7.4 MB (7383132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adf481401b1248fd3975639c3bd17b5f91e24eeb0f1f5fc0524aa6018f2c6d46`  
		Last Modified: Wed, 16 Sep 2026 04:36:24 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1692c903cf9f21295a918f484c53e77a9b78dbf1afd1fd5ceed9861ff9c5c5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282961384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b537c07e579be64f81527bdb09e5a3304c485f798da0a7ac5123ac73c2ccafb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:36:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:36:08 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dccff3901ce77500ccac0dec715965479dedc49e87825e7719fe4749fcfbe0`  
		Last Modified: Wed, 16 Sep 2026 04:36:48 GMT  
		Size: 156.4 MB (156401947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c88e0b7a0b598a84f1d011d4fd0551a4e65cd6df2e72ab66e8a1012c4c3ab4`  
		Last Modified: Wed, 16 Sep 2026 04:36:46 GMT  
		Size: 78.2 MB (78174744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3487f5fd55085572a51c27bd4dfae4932437b507049ce79ef3967724512f20`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7589d459bc17e6a0beed23a98a24fc49b91950b25e0e2504db1dd2d5d8cffaa4`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3a7ed01527b2901136eefc2dddc6be439a8e559f79fa133f66e7b17c665347e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fbfead256548ef0bd2704b098846c132a92ef8178d38d4f677ed00a7e6e4e2`

```dockerfile
```

-	Layers:
	-	`sha256:662d6e7ed0e17fac435ed88832e54a515ffc1df18f5e589b61e9a998a020798a`  
		Last Modified: Wed, 16 Sep 2026 04:36:44 GMT  
		Size: 7.4 MB (7388919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c745a616c6c85cafdffe927b3d47d4ab45c3c780e8bfb9e797db4671719d6f6d`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 16.8 KB (16757 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:25b7e615eef5349e55b7523a3578c4e21f811bc31aad31815331885566d329ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294602172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ac865ba6c906d1f2cda740e6d121cf1d525cb0c41e119692e228ccd6921560`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:21:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:21:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:21:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358d5f980f82ae9f282fe63b05e44bb3911ae80de7068776c4adc41a44c8cd8e`  
		Last Modified: Fri, 04 Sep 2026 00:22:06 GMT  
		Size: 84.0 MB (83984475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff6153082618afc42c30a107406185736f2a7ca0f190ff95bb3541f5c5767c`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e550ff7b88b0a585ca5d1b86d9b5cf7cecb422228e583e700c06e292dbfd91e`  
		Last Modified: Fri, 04 Sep 2026 00:22:02 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:50b337ad07cecd0c80338021c218ba299918cd551b290a7332365df3525d206e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8699e4a28b5fd1e09de3773f050e45a64035d1bee17714abc83adbb91d70fdae`

```dockerfile
```

-	Layers:
	-	`sha256:20ab1a18ca1396edbed1be16f2048d6d6ea98dbe569d1cacf8d54c10adbbbc5f`  
		Last Modified: Wed, 16 Sep 2026 10:53:04 GMT  
		Size: 7.4 MB (7389135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:976b54d340b465337e512dd753c252fbe6966d87e9e473c712f614f38c7a28b6`  
		Last Modified: Wed, 16 Sep 2026 10:53:04 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json
