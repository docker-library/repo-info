## `clojure:temurin-11-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:4a4577d914ff4a0972793d61bf338c13144f786620f1abcdda9f31aa0b1cd389
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:544e0d038c2255b91cc408acadd24a014736773ea5c351661ec7bd84b4ce6fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244769619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f8b457fa7a87919be595163e63f16205efac58ccd08b89990a0c84bdaea3`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:27 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:27 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de65332075e4857630233eeae3d89b5f9411eaba9c7fc3bd0b1fe043914e321c`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 145.9 MB (145923121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0223450f1ed2f803a4c1b92019edd6650066748c50d59f580f69f424fed99299`  
		Last Modified: Thu, 19 Nov 2026 22:08:05 GMT  
		Size: 69.0 MB (68989718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c3a256c245cd42a9cba29dbae66ecba29a6bc33ce4f8a5c5bf28eb1e1a431c`  
		Last Modified: Thu, 19 Nov 2026 22:08:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5144561136044c23b4fef6b7ccfd36b5e4fcaac59b6828842350a9d62b500c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d097988a5120f30087f003268e72aaeed6d49b74a73a9be556c5f1fbd91ca8`

```dockerfile
```

-	Layers:
	-	`sha256:18ff24e794fbb9d44d26e26406cb157a6c326a5fb060b97241053eb02b9765f9`  
		Last Modified: Thu, 19 Nov 2026 22:08:02 GMT  
		Size: 5.3 MB (5281577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cd9c65b522b240b41997f2ac75b93e71b7ffc53aaf99b7c2e427ca55cec9405`  
		Last Modified: Thu, 19 Nov 2026 22:08:02 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee1ea7d359351003ff51ce032530e13febaba6f3acce823534067ca42589f887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241641419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49680fa82b89f66a3665fb11430930406fe1569c5bd165276404355fd92aeca`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:06:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:28 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:28 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e913096f1472bb42af32375af2f75687ba80a390e2f5d4c5845933ff85903f5`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 142.6 MB (142621051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b2a96bc433392bad50a87feac422bc25f42795acfe0cea3af3de23a0cf4f33`  
		Last Modified: Thu, 19 Nov 2026 22:07:08 GMT  
		Size: 68.8 MB (68805686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d36e4666c579a8ce8db188060700aee7d6776a24f347f68b1bd2f5e60b5c0d`  
		Last Modified: Thu, 19 Nov 2026 22:07:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7732316946b4eccb59f77269ee93bd670dce34c0e2c10151741ce2048bfdfc21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c077f698b5728f2c7c56fdad68d8ff201de5b40e9a717b7705879413e7c1f2`

```dockerfile
```

-	Layers:
	-	`sha256:025ba4c625e5ed1b22679deb290695c22f5a1a742196314d614c85e22d97ccb6`  
		Last Modified: Thu, 19 Nov 2026 22:07:03 GMT  
		Size: 5.3 MB (5287956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8c8903a28af3d9c33afc48e60cbf6fbbcb4bda0f7c88639962ca78049b0ff73`  
		Last Modified: Thu, 19 Nov 2026 22:07:03 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json
