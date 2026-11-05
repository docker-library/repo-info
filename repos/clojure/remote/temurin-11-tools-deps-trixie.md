## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:bbe7ea6966afe5288a6c3c2bce92ee2c18543322c5d797ee334c021686d0bbc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7b63a50dddc591f839bc047d927102542ec6baa51ad239f3d3e0e773862c5640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277847072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca67f193efae987ce92af9b804198b3a720b06a89cdb29c96a9f4b689a1068a`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:02 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fc653740f8b3ac38755edc8f4bf0f61f65ffdfdc02845792a0b463ef148699`  
		Last Modified: Thu, 05 Nov 2026 08:08:41 GMT  
		Size: 145.9 MB (145864288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1050c5db81fe7eef512f887de484b1bc35660341f9c14ba305d375f5da646209`  
		Last Modified: Thu, 05 Nov 2026 08:08:40 GMT  
		Size: 82.6 MB (82569629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7a39c6dc303d89f854b063f00b33c9fd38be951c992986d8e60e7ff42415cd`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:690d13812dee6a3afb714cfc859e369861787753d27db3b21b9e521dee5e2636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0733b571475f7749b56556f447cd4230f39760f70d67d645eb7a73f14f62c`

```dockerfile
```

-	Layers:
	-	`sha256:e84917c430094ebc93ab442600d2dbb6aee07f4e5a4f75fe9d8dd00cbca07fe2`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 7.5 MB (7496283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d262f399ec917f9a6e8f3cb7c0d12f9d3dd92aaad1987cb439bcdd05eadd7eef`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:51f6cb1d3b421dbf6511b1df3da1be1a00311a11470cc188b5be2f378812287e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274748771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96717247c1d87af940bfa2e4821ca171f58ad4e889b220e5b38a78012323a61`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c274895593251ed4559f7508c745195af4952131ad6d752bd3a51c84478054`  
		Last Modified: Thu, 05 Nov 2026 08:17:31 GMT  
		Size: 142.6 MB (142576602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902a380e9aa78416d470b21cb49b8781fea248c2e9e8eaa83833e6c40043b6b7`  
		Last Modified: Thu, 05 Nov 2026 08:17:29 GMT  
		Size: 82.4 MB (82392918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd521651c5e8c1c51a3562adacf07b3c2f49de9013cf23e1240516ca040a53f6`  
		Last Modified: Thu, 05 Nov 2026 08:17:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:074c467f0fc671872876e738ab95b3e864644b3fbf3a5e170c184578b22a9d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610ac15049ac10735a3f939d3124692bfeefa3e2089423f383d95605f4a737b6`

```dockerfile
```

-	Layers:
	-	`sha256:5cf65d81d537f687673976bfe13e029c60ae2c6052c68756329940b2ff1fa48d`  
		Last Modified: Thu, 05 Nov 2026 08:17:27 GMT  
		Size: 7.5 MB (7503294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8639aadb98245555b7004c97637b632a7f9618639871ea21bb61abe5fb651249`  
		Last Modified: Thu, 05 Nov 2026 08:17:26 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e996ce04f3a59b104bfe89277f7932f9a6cfdcb8bcbd7a75ab9747a847ef6ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274318429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0570c201a64180fad866df770fd3be2997fcf9d966523631aef98ff68efe6310`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:28:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:28:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:28:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:28:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:28:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:35:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:35:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:35:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd1f52d56a84b4fc4c0ba3816aab28a8121d7f3b2aeb7bab543d6e15138eeb2`  
		Last Modified: Thu, 05 Nov 2026 15:32:20 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118ffa421620dcd563c8f13c0aecc9c14bc57c13ada32febf8a4d2c960c11587`  
		Last Modified: Thu, 05 Nov 2026 15:36:10 GMT  
		Size: 88.0 MB (87997167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1f81c9d3ccfe7c12188bef8dbc79f49d1917096d63a2649e8d92e5a84ef02b`  
		Last Modified: Thu, 05 Nov 2026 15:36:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ee56db4d95103a958f35463fa56cc304381f841064f1a0a686c749a81d03dd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a7cb134a2157e6890832924a98e49b8dfd686f81e5441dca59f0a3fb5d1861`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fd64eb45bac0d270f8c4d1b9bcf65421bed588b9a8e4b8b4365a175ab7a11`  
		Last Modified: Thu, 05 Nov 2026 15:36:08 GMT  
		Size: 7.5 MB (7500085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf116f489200b20a146f52b61002a957f789803399b3a6fda51f795a7ca63f55`  
		Last Modified: Thu, 05 Nov 2026 15:36:08 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
