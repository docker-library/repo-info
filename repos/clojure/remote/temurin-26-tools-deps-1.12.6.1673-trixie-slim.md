## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:edfb4fd724cb42b6f0dc954b0eed722840d110aceabc48d040f8d16609ecd543
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:fd26899ae7c04e74b31e0e5fc4ee379c3012c2451ac3c1aa27b3294213a5e60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196285213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab378e34b866d76fd991e5988ebfb4bf224dde9432bf555a87338f9c264194d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:04:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:40 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0c5723c3751a6fc9c939a837f634dc59bd443fe6ec2259d4f08a2bc73ca2f8`  
		Last Modified: Fri, 04 Sep 2026 00:05:17 GMT  
		Size: 94.6 MB (94563745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7300aa93e4d58aa3a6101bcb9bd114cca7360569ab4167dd784ebd2b846a2ca8`  
		Last Modified: Fri, 04 Sep 2026 00:05:16 GMT  
		Size: 71.9 MB (71927770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3817bacafc39cb0fe3585dea95fddb3a7c202b85e3becf48d6d4811248474a3f`  
		Last Modified: Fri, 04 Sep 2026 00:05:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d664840d54a422853ae33b3ec77dc46a7c590dbc4ef672e6ed327a3679ce7ff`  
		Last Modified: Fri, 04 Sep 2026 00:05:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:10847231c59d8c6427c9cd7c8f5500969f49c79f0e8e2baf5ce8eac33fabe8a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103036c233fb33967bf04004e172f3469c20192547dc22732d7f9f47fbcb07c9`

```dockerfile
```

-	Layers:
	-	`sha256:122b61fff3dca18178555448eb147678a3ab6b3fb4c94cd8029919fd04d73c3d`  
		Last Modified: Fri, 04 Sep 2026 00:05:13 GMT  
		Size: 5.2 MB (5222455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f62e060077958de6475fc1c60878a497273926c8adc9df9db0bcfb64b033908`  
		Last Modified: Fri, 04 Sep 2026 00:05:12 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8673fa4254546dfa52a8ae59f2d0ce32faff7bdfa7b944d7ffa3a34060961341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195832405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a541bd6aaef12a3bafca4dbb8c52636847db694c6da7402abc7a8f7315b2de45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:08:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:50 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:09:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:09:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55b76f1cedaccc20a769d5aef4d4fa88557c94979eb104afb526eb72b69e5f8`  
		Last Modified: Fri, 04 Sep 2026 00:09:29 GMT  
		Size: 93.5 MB (93541550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecee878f8563828db0b17295e906d43cfa0a490c32849cbc0e83d1f73e16353`  
		Last Modified: Fri, 04 Sep 2026 00:09:29 GMT  
		Size: 72.1 MB (72130232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a67503d56acba63e8a3d823f5540f5bb17383ebb8546fad5fd5636e8807be1`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f41893b8303f28c95df14468590649ab3453cdc9848755656f0f23ac94d52d`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:44ed7d153d7be4fb6b05ce847022c6801c08fc2fcdef63897a3cbda60b1a8e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb79cf67cd3e69f80b97d4adf1c20e91be9e99b4cb89aeb57d65dbd97e1a036`

```dockerfile
```

-	Layers:
	-	`sha256:892829c2c29bcc08f64d92f3df4b49c81c2a1520b314649d6d0f97b8c030ae84`  
		Last Modified: Fri, 04 Sep 2026 00:09:26 GMT  
		Size: 5.2 MB (5228213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb7a58db4ee92cb7dd970b2044d17aa7c0cbbff1b3fec212fc1b564601ac554`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d74e7adf0c369c73d3f12710917e3dc03c916a4a92706b548b61e8f1fbc5c97b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 MB (204542632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ae8a10ef7a36639262d33a7f7748b7bfa0dcb599312610e832ad7f2b16d8cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:35:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:35:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5812ca3f57fd2218ddf1b16960402beebd940ca6986d788f47a02fe0f8688e4e`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 77.6 MB (77575345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9f3ff133d005e036971d710648468dc1e29c8470a2041cd56e9d9a0f86bb08`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afc7bb0c4f9c0698d847bfc0a0be702eea975c575ce2209f93329c9a764d9a1`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c37342181d88af9ea08753431b9097fa3b22fcaa7e8534a6bcd4c754a1a945e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19c9496fad7fc3399f23363764f05b31a929f7bee7906308f17810766717ab3`

```dockerfile
```

-	Layers:
	-	`sha256:14d5c6e2260d2ef0a84212dafd5680e5a4d4af6d3fd9d4d1f030ae86178cce31`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 5.2 MB (5210762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f20bfae5f40df67d451c1f5fb19d36bf3dde4bb16f46404a0bb01eae3bafcc7`  
		Last Modified: Fri, 04 Sep 2026 00:36:30 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
