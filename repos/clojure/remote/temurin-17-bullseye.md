## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:74eb6810fda2bcd82658dbce547d783e0e74dda0ab5f37d5233dd03c40d27852
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:3dd802ec744203b7f1c39021fea00c7c6ecba0a53f8099364780d64dc2529c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266196688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c124b6925d24844770a60de7be9056e9cc0e76a0a5fe3cfd7b025f07f22b323`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:19:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:19:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988901166767f00df29b720249dfecaba1546fd979eca06cd09fd86818f98da`  
		Last Modified: Tue, 14 Jul 2026 02:19:43 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07e3d91ccf6ff0674671ca4cadba953824d4aa7cd97768d69e810c705fc7ff0`  
		Last Modified: Tue, 14 Jul 2026 02:19:42 GMT  
		Size: 66.5 MB (66512783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab6386d46bc7c70c89861cbfa8bb83e19ec3cc4aa68361ac3345ea77e61badc`  
		Last Modified: Tue, 14 Jul 2026 02:19:38 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4af00f2bb20de706910cff74b70fe18d6507b94726bc55d86958959da70f9ee`  
		Last Modified: Tue, 14 Jul 2026 02:19:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:66144293b8d9f599fc7b0175fb14453a5ebedb266913dc663f528fe60d3e33ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56adff11a14dc8a2bb50e8a19a7a746ee1a1a6c4fa00692c33d5b900b2fddff`

```dockerfile
```

-	Layers:
	-	`sha256:b30b49bc927bf986801d78f6ca8c1744ede137d2c17003b32c13c7aa5dc9d78c`  
		Last Modified: Tue, 14 Jul 2026 02:19:39 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c731f8827afb83ed3b5f2dda4700c231800f691c0c6f6782301214a52b6c531`  
		Last Modified: Tue, 14 Jul 2026 02:19:38 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1338e593376348467ab0d094c9ffdfc64d4a36a46c30d46870b9142f7ebf0575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263664134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f277a8c7a73680563caf2f138664fc1e6db0d51ccdcfc1bc4b38cc4b912afd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:26:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:26:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:26:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:26:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:26:11 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f4489b060d9f4c7469e43b95153aa6a743b69bbd465bd2f62a7c06fb3b324d`  
		Last Modified: Tue, 14 Jul 2026 02:26:52 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b79009339994507dc46094bc3ea1f21d300c80680afc7e27c109e27a6b331e`  
		Last Modified: Tue, 14 Jul 2026 02:26:51 GMT  
		Size: 66.7 MB (66677877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c60ff368187d03872b37254fa8bee32d653ad4ab71ba8b9857313a065b38ffd`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671facf5a37979c99310c46b2cc85f70bd6542a407f974a47d754b0ba0e93197`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:14d127426d6e4c27809f2e94d2a12f64090b68dfabd957b95de95ec6ae4d861f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f3d15c63743ae4848d01ab63efbb75b239efa09f4acfe32a1f10bde6d980b3`

```dockerfile
```

-	Layers:
	-	`sha256:053cebf6af5025ff140bd08dd3ac3b18afb4b6fdd6d8e5b66552013d91077391`  
		Last Modified: Tue, 14 Jul 2026 02:26:48 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee8637a8ade1f57da9664a0bf6766ed2eaeaab909449323ad734335a8e609e69`  
		Last Modified: Tue, 14 Jul 2026 02:26:47 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
