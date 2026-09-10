## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:82d08605281839ce57c63b10fd4839ea66b82e9d4997316172c69fc0aa32922d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6bc8c705d43246c314842c0e107456c91bf258a85a2358818c521ef59ec96a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247544069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4554246b5357fd41c9b9d15d16440652db1e4d1bca3d8d4ac4e043365c46ed26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:48:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:48:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:48:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:48:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:48:04 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:48:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:48:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:48:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:48:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:48:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be807ccf3b42b992270cc034b71db65f7aff3564e28b4a61d722d999a3a63a35`  
		Last Modified: Wed, 09 Sep 2026 03:48:43 GMT  
		Size: 145.8 MB (145822704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3d3fe51914c6632dad69e2e982163995842c34dc034d065d51f446bf2d7180`  
		Last Modified: Wed, 09 Sep 2026 03:48:42 GMT  
		Size: 71.9 MB (71927662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f0e48d5debc6f6cc82719a5b030a0753b544cc0d59b28c4df1b8072f0b50b7`  
		Last Modified: Wed, 09 Sep 2026 03:48:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fc63e49132a73ce385f3e04a0f328da500d34dfa87b9272cc2bb6d8d054a96`  
		Last Modified: Wed, 09 Sep 2026 03:48:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3775aa12cd39ce93420d40e4d305fa5ef667aa35c24e539913e1de18abedef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b37f2a83f3acc999532d896aa8c248a25d7f0c00f7fb8ebf32d7bb36f0de86b`

```dockerfile
```

-	Layers:
	-	`sha256:a0a899fc1f28a0fd152ea743922ba7d56756d3531bd8b80306ebf131679875ca`  
		Last Modified: Wed, 09 Sep 2026 03:48:39 GMT  
		Size: 5.3 MB (5257560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30956c09ce63bf74a61cdf1fa8ef0163f3ca3db7349847420dae5d3df1531bcb`  
		Last Modified: Wed, 09 Sep 2026 03:48:39 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc7758325a27958d0c79264c22bfa3c7f3a5a17cf30181328cc6c22a02787b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246938003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c100c212b85c10f34ba18505cd670a78c9549325fe3b6f1a343c3b52843d6071`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:59:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:59:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:59:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:59:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:59:04 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:59:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:59:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e73ff6f3b91c3108b02faa38917af32f17a78bf691289d768e2f30eab130d0`  
		Last Modified: Wed, 09 Sep 2026 03:59:43 GMT  
		Size: 144.6 MB (144647514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15a114299e2931d39bb558832ade2743cc42df5492ab5e8cfa1edbed8fb1300`  
		Last Modified: Wed, 09 Sep 2026 03:59:42 GMT  
		Size: 72.1 MB (72129865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b78902d46926407d9a16b4e181ab753f07419f5380a47f7bdc75ab11912b98`  
		Last Modified: Wed, 09 Sep 2026 03:59:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71a342863ff452988ea2a6cb1accbbfd7d10d677a8c26dda222fc62f63cec7b`  
		Last Modified: Wed, 09 Sep 2026 03:59:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:599265e5bc31d32ce654d9af877546ea40801e6b1af47d550aedccdbc3c22003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a30316533bd3c7178ae4f75f54f51fecb9dd43aa6efaec821a5faf18b59ea26`

```dockerfile
```

-	Layers:
	-	`sha256:e61bac724066b65ab53cf4922d227b1a3cc3324ba739848c01ca40cf6eb25e1c`  
		Last Modified: Wed, 09 Sep 2026 03:59:39 GMT  
		Size: 5.3 MB (5263321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ed6a813638ee98ba50da2e1cd7112087f97700e6b61952a29ceddb9af98d89`  
		Last Modified: Wed, 09 Sep 2026 03:59:39 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9b27b686355b85cc42327da0ab5cbffe4b79c96159c98277011c25d6bcb5069a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256866386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627a8d4613db0f4ad7fa11ade808cfa2efca364b6b56c53897caffccfc3f1368`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:51:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:51:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:51:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:51:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:51:32 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:00:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 11:00:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 11:00:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:00:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:00:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8424a82d45599e85d2d1bb14f344d4c49d28c26e6d913e5b99373a8fb271aae`  
		Last Modified: Wed, 09 Sep 2026 10:57:26 GMT  
		Size: 145.7 MB (145674329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1f4857112a412fd3f20af880c54aa03505984b4777cd345703f0682755fb2b`  
		Last Modified: Wed, 09 Sep 2026 11:01:32 GMT  
		Size: 77.6 MB (77575551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8630dc2344d831f3734ac4ce824debd5bf03d5e56cfb409b0b10aa288be42323`  
		Last Modified: Wed, 09 Sep 2026 11:01:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e1bba1794797cd14b0cc3f93e06301725790c3c7ba9eab05ee3b34f7ba1c70`  
		Last Modified: Wed, 09 Sep 2026 11:01:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2629fe5b2aba548b0d1f9c21d1a9746f7dcc7b7b471c81b6e1edcd69a3419ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218872c9473ed003f15684e1a761508af4a3e72580a9136368287a501a757482`

```dockerfile
```

-	Layers:
	-	`sha256:817fb82e3e8449b2458bbbdc7a5c39d725f4374490abe4c4ee525005e7890a4f`  
		Last Modified: Wed, 09 Sep 2026 11:01:30 GMT  
		Size: 5.3 MB (5261931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0985e4947c16cc6844384c15fc912e9db1bb2b68760b62c6c8840ed8d3425812`  
		Last Modified: Wed, 09 Sep 2026 11:01:30 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
