## `clojure:temurin-27-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:b1219ab673430258855220a080ba446d5973d03102f814b1b6843db5d3a9873d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4e17dda762ae1e0a7d11fe03681a895217b9e245cc97c4175daff86ed2106d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192494936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102cb98186299436eaae87e70a424e8b0fa7618fd8128c041d92d925302279c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:44:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:44:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:44:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:44:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:44:35 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:44:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:44:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483eaa9c21fec2b2c0decd92c01f6adfc128f90c8b4ca4b198399035db20b31`  
		Last Modified: Tue, 10 Nov 2026 00:45:09 GMT  
		Size: 93.6 MB (93647833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eeb37ea016f3409c496c6ab0668a3ffd9f678f1cb8d7f9a7d52297472f2161b`  
		Last Modified: Tue, 10 Nov 2026 00:45:09 GMT  
		Size: 69.0 MB (68989427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b80c5375b9accd05dd2057076a0fc24547820c18994520b27b24097fb5b773`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7e717a96d71bef9b51156b75b1ac96687c01876a525454492fa63c031e6bfb`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:145bef9e1f342db354ebd01129aaff63bad034f9e26748dd040ea8f5919eca1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415e650b8f07508c6c34fe7bda02261e72c4579658e74e7c2b53833929c25023`

```dockerfile
```

-	Layers:
	-	`sha256:3de34c84a2dbbcf111ea446e510d6aace7ef3f8a30f1cecd5db6c59c5c76ac1f`  
		Last Modified: Tue, 10 Nov 2026 00:45:07 GMT  
		Size: 5.2 MB (5225719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00581ea658849acc96c7ad598ed81cf9be4949f5c4097094769951bc0dc914f7`  
		Last Modified: Tue, 10 Nov 2026 00:45:06 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fa5f3b4a5a025962044cc5fc0923b50148922cfe33b33f0d45b4f8b72ddf52f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191681071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d7c74b8270b44d0770384f1450be14e90d1ab8d4a74c882f2e47498c13b394`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:44:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:44:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:44:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:44:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:44:06 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:44:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:44:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d38984c5da157939f3f4598bca0c7c7e04e6f6dfa3323fb452c8945f197c756`  
		Last Modified: Tue, 10 Nov 2026 00:44:45 GMT  
		Size: 92.7 MB (92660464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbb75354c7983cdfa478566dd1b187f04946df1910b7170985236198b33d3f6`  
		Last Modified: Tue, 10 Nov 2026 00:44:45 GMT  
		Size: 68.8 MB (68805024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72bf0f64ce408de4f4f2baa6a98915d4146e50b826596e49e12ef3c3585fd5da`  
		Last Modified: Tue, 10 Nov 2026 00:44:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c11dfcf0ac9acb4363c7c23f8317714a2702cd859a032fe2c5c9bdb39f0d7df`  
		Last Modified: Tue, 10 Nov 2026 00:44:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7c2ebcb8cfd3f49b8df9c4d6624f4c6fd558fe524cb48919a81e0192f88bad0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bc8bc40c9e826ad71c620f9c9d9bf11864e639f7ee2864beb681f64731930f`

```dockerfile
```

-	Layers:
	-	`sha256:ced551655a560145af2421f87952f37efc525eee4ada41890790d7f392f60121`  
		Last Modified: Tue, 10 Nov 2026 00:44:41 GMT  
		Size: 5.2 MB (5231477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b96caa32da86ff42a481d56602e97724312c1de995f3cb0171891eb46ae0a46`  
		Last Modified: Tue, 10 Nov 2026 00:44:41 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:58ba9a035115c1cac642140dff319cddcf47e44f9ee2725000fd0311bc24ecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200013552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a48a0e81772ed9a39d353fe2f47d6b790f8e536269dc2771921fe8e079b6427`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 03:02:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 03:02:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 03:02:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 03:02:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 03:02:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:16:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:16:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5807e19fb41af88a9628567e61acd810698106b40354a46bc50e5681495a3f`  
		Last Modified: Tue, 10 Nov 2026 03:06:14 GMT  
		Size: 91.9 MB (91925749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19287f7d3a9f33fff37c0e523bf7d8eaf104aab9459bd033128aa6529353df22`  
		Last Modified: Tue, 10 Nov 2026 03:16:56 GMT  
		Size: 74.4 MB (74418608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b90df5b92187260763e5e1edead9a090410cfbfcf7012fe954ca8feb83d4bd`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab6e235bb2f2aef4830106cfacda02eaaba317d384f9887f7f995ddb689bba6`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a1c0634d9f28997a6cddeb65997bd5453f5fcebd3426438d10eeb1856ade28bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba74a9f631e28bc118e281017ce04310b9a489856747d943110e92dfc9d2056`

```dockerfile
```

-	Layers:
	-	`sha256:00507b3773dabd23225cd0c07d1b289e2c51f4703a7f2aa3c940142444af825b`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 5.2 MB (5212165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d121794771740b534bf693269858cd649136c46d5463f134867606aef557d79b`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
