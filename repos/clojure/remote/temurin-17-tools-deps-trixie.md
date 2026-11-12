## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:25b9f82fafc3b58d3ccb15bcc715c90cbfb8c949a0f5cf3c76f1cda8f33f5e83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:15c9d163a12b318d94e6b7dfbf3da0451c21ad844013537ed01554fbd6b7e65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278068869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29a51dda04daf0d38427480a504c3a73fbe5ff5cfd3cb2acc69a9707a99dd27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:48:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:48:52 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:49:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:49:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6fe8b30411774e027f73f04dc4a457eecf0686d5e4f56c0a398f3039d3a6af9`  
		Last Modified: Thu, 12 Nov 2026 00:49:34 GMT  
		Size: 146.1 MB (146086152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011b68a36bc0fd1145002fbc564e3de8d1ceca7f98145ac7aca1bc6c5c225751`  
		Last Modified: Thu, 12 Nov 2026 00:49:33 GMT  
		Size: 82.6 MB (82568662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374508ffa94808979a4e4111d84afe984dd970b0e26fa464c3d03bf92a6ee330`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7e2270464eee240d92668e3f0b68bbb7f1f10ef02681c795a2509a8132481f`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fd160c15459996dd96f64bf7bdc1a064ab8e3ac2750b87a4fff3c3831baec9e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f745d15b76633d01dbb184128a5b760e3a198a9136ae56eebc6cdd383dc3314`

```dockerfile
```

-	Layers:
	-	`sha256:6e4d91bfc46759b19ba72910753202554dc14b891628f82decd93c34665c47f9`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 7.5 MB (7476759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:282f3fe9a464101221226b2088b34458f4ae63be84d65ce20f6aba0c02097a22`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3cd9727ce527be5b10e82b9f44d1550e7658bd0bd829f258bb105093f5f10885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277129691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60782ea7c7c0a1ae3be245dd79c47588613f1eb78bd5cccc81dc912e88c1934`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:04:03 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:04:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:04:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9064583827cd53021980fe09cd56cdfe3aa0e132a749ee92262e25943b53c70f`  
		Last Modified: Thu, 12 Nov 2026 01:04:45 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3c745bd1327a56427e86c066c907b056e62342e222e06296d51b1102be0b4b`  
		Last Modified: Thu, 12 Nov 2026 01:04:44 GMT  
		Size: 82.4 MB (82392384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccffdc6f5cb4514a580df267bb688b2c9fb85c4ce3e3c46aa13c461c23ad2153`  
		Last Modified: Thu, 12 Nov 2026 01:04:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7260d1fa707ef87fbbe3616bed8ff0e1ef6d1d25776b4bb48ceaf08014318c6`  
		Last Modified: Thu, 12 Nov 2026 01:04:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:943830f569b7cd5d20792c210254987aaea68d0370d75dea6575b9baf21855d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c92acef5cd6333eebe3443a2b85ce53482f87083235dc1e1a7eb274983b92f`

```dockerfile
```

-	Layers:
	-	`sha256:4a909fd13e10140575ac8ece627528fe17bcbdd2653d998113a14d9df0f774f6`  
		Last Modified: Thu, 12 Nov 2026 01:04:41 GMT  
		Size: 7.5 MB (7483152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a28a2483fd16c9cae6a666c7086c9b24121527eb47fa0bece3890aac8559fde`  
		Last Modified: Thu, 12 Nov 2026 01:04:40 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:db248b4f09ed0b1763f246059fda7131523d2b69d37c6acd9790525f5d793afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286084988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e6dde3e5dab9724b965ae3406b45f0ebe9d96fc1b9c6e72781058ad6a778f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:45:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:45:26 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:46:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:46:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:34:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:34:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:34:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee03120020298d10b2a58fd447fa0b14563aea18a134ae0bb4b68b9840afc7f`  
		Last Modified: Thu, 05 Nov 2026 15:47:23 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930858d28e7697f8e20f456b1baaab5cb33359aa6f476a8ac8342f424cbc0fae`  
		Last Modified: Thu, 05 Nov 2026 15:47:22 GMT  
		Size: 88.0 MB (87997369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6d198ae0f5cf63d76e3c313600ee54fb4fb0f1d6773e25c531ac57d1b691e8`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617e6eb9b07a270ad91d1888a8e28af4bbfd2112520fb68a8e72206e1a002012`  
		Last Modified: Tue, 10 Nov 2026 02:34:59 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7f1e4756679480432f593ad057143265d208023988c539d7f2ead62892974315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62279d0b99a022e05434131f28e3396ae62a57d629a4e519bd7ceff683307024`

```dockerfile
```

-	Layers:
	-	`sha256:c145587ce3cde5621ca621ab5689793f8663f3c29260dc63b480d605348a8e9c`  
		Last Modified: Tue, 10 Nov 2026 02:35:00 GMT  
		Size: 7.5 MB (7479930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e3e43db7529c288354f0c0f3c047591f514c6c87ac83215eaf5644326c7efe`  
		Last Modified: Tue, 10 Nov 2026 02:34:59 GMT  
		Size: 15.0 KB (15001 bytes)  
		MIME: application/vnd.in-toto+json
