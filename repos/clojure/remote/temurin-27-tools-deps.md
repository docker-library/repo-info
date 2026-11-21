## `clojure:temurin-27-tools-deps`

```console
$ docker pull clojure@sha256:c1c58b5460e3d944ce22e2cec684fcfd71c14cb79a46f20aeb943cd12955b9a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:76a455478accf3f08bf922b5ee4ff6a28f2d7db8c0316991578814631ed3078d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220179088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71840ecde0cf34c16e40018ea8273f2a63429b758312ae66eb6fe5edbf44b2af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:12:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:12:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:12:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:12:10 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:12:10 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:12:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:12:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead70c98f0733f208e5dfee9bd6e83a61586c3fa315d6664f29c21f74f48002f`  
		Last Modified: Fri, 20 Nov 2026 18:12:46 GMT  
		Size: 93.6 MB (93649643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aba1077b7d639d4bf25e68a5d82b24213231f25eff4784dbdd1e6f043576b6c`  
		Last Modified: Fri, 20 Nov 2026 18:12:46 GMT  
		Size: 78.0 MB (78001414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af4616c89c0f3f30ef0b3a5c4aab72c45232eaadb1b33efe20bc7b9087fcb22`  
		Last Modified: Fri, 20 Nov 2026 18:12:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3d096147eb0d2b034af37d805a5516d983bfa7eb79ae2fe70da1effe4b3890`  
		Last Modified: Fri, 20 Nov 2026 18:12:42 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:cf866e4b3f2c8ad32db5a301d7eb8db0736278686c8e5eefc21eeef6e7072603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d6421a1c92281190f791691f509c1911728103a572a633ac9ce5baa0a7beed`

```dockerfile
```

-	Layers:
	-	`sha256:b60dbecc72052b458f5c0d5a8734c46cced3779be7fd94261a4ef6ed4e6a6ce5`  
		Last Modified: Fri, 20 Nov 2026 18:12:43 GMT  
		Size: 7.3 MB (7342973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:414b4ce84d4301d634c455bcfe94060ce6c43ce4ecbdde43bcb6c2ac16be0b6f`  
		Last Modified: Fri, 20 Nov 2026 18:12:42 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2bc20435166debf32029b1bd3ee55bab011420cd60fa3020fa5675232270aa23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219071900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c700800f17ea9fc047591e2a5841a4171901bb1867f56d2c735caaf383aff52f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:09 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:09 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d58a9ef3026141b458101e81b6b9fcdfe64a717c86bc92cabc54ac976cb1c4b`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 92.7 MB (92660413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdd8a6a11fca6d70d66849f738a183fb6de5397aef77fb18a1052d334f6bb2`  
		Last Modified: Thu, 19 Nov 2026 22:09:46 GMT  
		Size: 78.0 MB (77997483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c9be325bf8d13f722c2990172817ebdc2270906703d6c32cc0a8565686cba9`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dd862d02d401c29e7d750933a7468a99b2027f68cc6c2294afc1634b6ef91`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:5455241cf6b94b4c19371bf25409c94a125619b0d24d08ee287cef96aa5432d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f936cd95758e9142b77588cba0fa0106dfc09b733356a148336f85a6266b5c`

```dockerfile
```

-	Layers:
	-	`sha256:e6dd7627615e34db6eb3adb469e1604835ed0ca23ba6990fa0658052c4a1bb6a`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 7.3 MB (7348765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a41c1b4c6cce40c4c4c64aa330a0dd3bb521222fe52efb3e27e99b0fefed3e1`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:7a22ec78edd67ee74fc382d32fd93d0f5c3226ae171e505e9449d1a9c3e9c798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228127727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae83f758273787a1c1181b505d9b4dbed5199ba0870736a390dd7a29ca5cedaa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:05 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:57:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:07:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 20:07:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 20:07:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:07:58 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:07:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e475e60dd5f0311febda94f2e5a8411f9077eceb64aefdb2f2369ae97a9b`  
		Last Modified: Fri, 20 Nov 2026 20:01:22 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b24ed6afbf11d07ca55b346586ecf51c43a285f3259e81cf039b40a6ca989be`  
		Last Modified: Fri, 20 Nov 2026 20:08:39 GMT  
		Size: 83.8 MB (83824242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32100fed8db48f429b455e3eb7aab3de9eb6f480e3c251768107d9f0fb48f4c`  
		Last Modified: Fri, 20 Nov 2026 20:08:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d51042a4626ec393e8c9cc70a56bd1ca4500cb2c106f6431ca7a84a8e1d2143`  
		Last Modified: Fri, 20 Nov 2026 20:08:37 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:2b6a08f0ad09053a18ab4e925ad6c36d55f603b95bf421302525057bc1a04c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596db768fe2a81289eb44cb838a157271ddc3b654214a463396b44e9d1bd8267`

```dockerfile
```

-	Layers:
	-	`sha256:014e123e9d08d5102ca7b31ebbd26507926fe26e56ff26db8304b5764e00375e`  
		Last Modified: Fri, 20 Nov 2026 20:08:37 GMT  
		Size: 7.3 MB (7330272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd525d23efaed87e29888c1fe727e3611b8324d8f8a730d50f8ca407d2bff446`  
		Last Modified: Fri, 20 Nov 2026 20:08:36 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
