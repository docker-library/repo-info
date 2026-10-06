## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:da3a3b01511c0dfc859482ae141b03390c41f0fb959a9e4d902981a9f75aa9a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c85808f2579662071508d1d28134ba1697fe5f08017e8c39b4d1094da83576e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242859130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ec011632db4922b6b13120c69ccb595ba987ce6e5800240f1d3e6654295217`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:12:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:12:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:12:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:12:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d101f03f4d92bf33aa385b5c06291b8b06ee38e4aa42febc3e671dd44964dfd`  
		Last Modified: Tue, 06 Oct 2026 02:12:54 GMT  
		Size: 145.8 MB (145825452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef15f4494db2be00eeba7a454f29ca8839e1ae70ce689815c958503d0ca72530`  
		Last Modified: Tue, 06 Oct 2026 02:12:52 GMT  
		Size: 68.8 MB (68783313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52686958debec3467924c196045cb11e2b584fb54e4c737a7d76f420eb1c91d6`  
		Last Modified: Tue, 06 Oct 2026 02:12:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff0e4c5a34bb03f0c9595c7e35255599727b5f4a0e4522dede9398bcf7ec9d7`  
		Last Modified: Tue, 06 Oct 2026 02:12:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0e66d32bd595fd5fa1b17b001a2a1e7427ce6fd4122a1998af88e05a516c8a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4dbc8fa09c7c5a0c75c83fc7b5d453c1b13e2e109f308b5135fd48af0db019`

```dockerfile
```

-	Layers:
	-	`sha256:1133265eae822e90aeac55216fa0db3a8e7a83c3fb4d637d8c4fb312be4d1850`  
		Last Modified: Tue, 06 Oct 2026 02:12:50 GMT  
		Size: 5.1 MB (5119308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e726ac048a1bcaab4b57cc2e50a14395a3aa6d69b819e8e5a29a5f096017ee55`  
		Last Modified: Tue, 06 Oct 2026 02:12:50 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0405a6f8fb0945974714ac3f8be6864c2fcbf58a0d015085330ac84ccc52b628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241517453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a9093ca144b44258f17fdce4b6f263b03f1bb79b7dde9df82afe61b6c11aa6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:18:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:34 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:18:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:18:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9615342f774dcc057d04514fdcb457aabb8e25d3d9284afd3f04caae9a81f7`  
		Last Modified: Tue, 06 Oct 2026 02:19:13 GMT  
		Size: 144.6 MB (144648281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780e7c1e83bf11364f65c8fb79242a7ad2ca07d135b5b5d5264778077355ddbe`  
		Last Modified: Tue, 06 Oct 2026 02:19:12 GMT  
		Size: 68.7 MB (68730952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb9a1b9749f96c25ee6b44b71e7be4898b80bb5da4455cbacd86debdc7e950f`  
		Last Modified: Tue, 06 Oct 2026 02:19:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1508f4b067e8bb773638feb18fc90b476c71a336fc1950f845ebc5c4a21b5fc`  
		Last Modified: Tue, 06 Oct 2026 02:19:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9a2e06dbae6eeb31f07226cc5031a14c18ac8862ab0febc1fd5baf6864cff7bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebe22ad1d490d84d0b3318e5e2ef0bf84706295a25dff646ff768060dfe14a0`

```dockerfile
```

-	Layers:
	-	`sha256:0133008027812931039afbfb60a6fe217e6712b12eab852c4dfc4decea189889`  
		Last Modified: Tue, 06 Oct 2026 02:19:10 GMT  
		Size: 5.1 MB (5125069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94a7af424394294478ac329cb4c06e79751841a5062c98db7c8032b96827ef5b`  
		Last Modified: Tue, 06 Oct 2026 02:19:09 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e635032eeabfa1aff52b873db78e59453962b8fefbc9bbd343617b3fbb7dc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252531720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d210a0b1b6e062d57a35237d56d68ccbe4ed6c9f8cc380821e9eed44a13f8e8f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:01:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:01:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:13:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:13:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:13:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:13:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:13:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a3330add54adab18a22cd08383f7e4def1d22934544cb2baa835ed88e94414`  
		Last Modified: Tue, 06 Oct 2026 10:06:14 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f1d74b47ce77a06b1894a38f704e1f974a5d32fe44ea008bbec34d59b53f44`  
		Last Modified: Tue, 06 Oct 2026 10:14:35 GMT  
		Size: 74.8 MB (74766751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3484a74e9c12c9d30b1acc26769d07257812a29428934b88986087768c0fd5`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31a4ff9a728ad327c7002691e07816bbf391ce17877911929f59b35673c972d`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08c746e957eb15a0c9fa44fa9db0c1c82620a9210d6f48657daa69a18fd0e904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fc1ee0627d6d12a877a944124645e55f737651d85de77dbbda05480b1fcf23`

```dockerfile
```

-	Layers:
	-	`sha256:e15f1ad1cf8cc98425c6319276acea6f3ef3b1c30d12ea53305edc457c6c1b47`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 5.1 MB (5124466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d62edb3597cd347b2bdd35ff2fd0a63001436ab27732d8ea0e941e0f1aa2e30`  
		Last Modified: Tue, 06 Oct 2026 10:14:32 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
