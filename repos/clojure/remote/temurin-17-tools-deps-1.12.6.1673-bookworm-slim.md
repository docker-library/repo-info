## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:e6df95206de0e631e68dc8db3c7e74228b233c491d0cb6613bc2ee9a50e2ecfe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9ccf78964d912559c001f937720d0266bcdbcfc35e19da487933714e9c3f1eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250255381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397d92a9bd07495de56a104b8aa1abc82d2d86e805583737634cbfcc1dc0fecf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:56:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:56:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:56:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:10:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 08:11:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 08:11:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:11:01 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:11:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe6b4f9947e159345c2a5cc07a4b2be3095c06f0324d673a007216e919ba83a`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 145.7 MB (145671507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3615d95356245f4c4401aac6fb5a6753619ec5a552a6a450a99a3e5d115f22`  
		Last Modified: Fri, 02 Oct 2026 08:11:36 GMT  
		Size: 72.5 MB (72499265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e7d2cea197c4d6f351ddee5a5a7367205ad78ea2447f47ff1d0a0cdd1c4e63`  
		Last Modified: Fri, 02 Oct 2026 08:11:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0ac8d858afee1e297752d469626c6eb070d2b091f4a9ad144e70ea6c41884f`  
		Last Modified: Fri, 02 Oct 2026 08:11:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ea1315c5e66d4589c277a73332e9e1f46ad2bc917eb87fd3514192461023f20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21efde0d30849d83c652a07974aaff2c36022fdfdbcd68d40bed5b777802f78c`

```dockerfile
```

-	Layers:
	-	`sha256:16700d8fe65fa8ba7928d90d2cd74819b8053fa134b23104f7f3ed4ec9743c0d`  
		Last Modified: Fri, 02 Oct 2026 08:11:35 GMT  
		Size: 5.1 MB (5124466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:461fefd3455969ec94941f492d16fb5d43189edbfc5e1de010c919122a722ed2`  
		Last Modified: Fri, 02 Oct 2026 08:11:34 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
