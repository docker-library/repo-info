## `clojure:temurin-25-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:3c25b5f620566fbf25f2420fcb39855a5b5f2d284a469c2ec8e9f53ed6ce6fd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:71cda8211b653aa4ae495350bfcb76fcd09921c6b3d6deea049c6d660103326c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178949870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be84ffbd922947573e74f002b6e4e0740e7d88201dfa97f245d3978b64737d3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:16 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e77abf99969023661445f104762a384edb33449f2e99577d3113b2c94f73238`  
		Last Modified: Tue, 18 Aug 2026 20:49:53 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5a1e9cdd17386e902717cbfc37e9fcdcea36fa3c3b0c95b150abc0739f4217`  
		Last Modified: Tue, 18 Aug 2026 20:49:52 GMT  
		Size: 56.1 MB (56114614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717a45cc4855f79c74c587598b12d8da2558b15216f4a69134f1620924a5e86f`  
		Last Modified: Tue, 18 Aug 2026 20:49:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1583282effb1acb397158070365cc6b4a2623341929ade43f9253008169669`  
		Last Modified: Tue, 18 Aug 2026 20:49:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:16ebbe9bf8f8b549afd876b363b11edb020e6c4a69ddce3bffcf9a5b568c6c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5307821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff44f43ee9848fbfd19f24a5725281018fb14efcf8ab2ea41f54d2ec1098c94d`

```dockerfile
```

-	Layers:
	-	`sha256:2629802a462cbf3d919113f7b1067f3e651a381c40a335757e194e68746b49b2`  
		Last Modified: Tue, 18 Aug 2026 20:49:50 GMT  
		Size: 5.3 MB (5291142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a03a8f8201f90ea45e2c612702c548190d6adee2cecc75ea85dc73fa69433b0d`  
		Last Modified: Tue, 18 Aug 2026 20:49:49 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e60ef60f5d89283fee3a99e5204f9a2eddcd5cead61e670aab51de135859817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176573560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d402af7fd7c9779ff5286e421915f6c66d2d8eff1332ec2d9d603aae6885b238`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:48:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:48 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61fac3f20da23b34510fb64471523dfeea36577a8c258c3b8f2a34e857d59a2`  
		Last Modified: Tue, 18 Aug 2026 20:49:22 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8593174b08d384b571f7a2813711568f0f11318393698382ebf62eab33929287`  
		Last Modified: Tue, 18 Aug 2026 20:49:21 GMT  
		Size: 56.3 MB (56281316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5fa1d101e28394fcfb3a921ebece2244cb9bc0848e894562814420df1db481`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94484876da9a9f461d305c74579954401b93173e01350e3dc6d7170a0b1a726`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8177abb33a0ea4e2a518f37689fb2ab43502ce28c422294fc0934660c0318256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5313716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a5fdc6c484ac680c51cde4c25f2345e1a84c799331c3fbf9a8dbc744f0909a`

```dockerfile
```

-	Layers:
	-	`sha256:5f1c43a4bf12b0de54c9eeae0caff8db25779c79347f55bee94ea52e4bacd39c`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 5.3 MB (5296895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f2cb6d50eefffe46bba9c31528a0075dda8696db47db61216c8ac40d27969e`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
