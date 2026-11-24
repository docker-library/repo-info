## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:15af18b9fedd785f66753bfd9b29e08df21a528bab4423da5382094748cd44ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b41c50ccb3866ba0221b3a1fc98df1923e58faffb18136abe42c698836e04713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188410093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cad8da2a96db5b14ce7679bee91098f2c14947bd41e0f70a9d456fc5b825da5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:14:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:14:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:14:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:14:06 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:14:06 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:14:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:14:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863800b998e4d2896c297d92af63010577c35ab20c21805e30b7b20023d964f2`  
		Last Modified: Tue, 24 Nov 2026 05:14:39 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721564731fed78475044d3ee9c67175f3c88fb62d1de399e620e32a1459a1c70`  
		Last Modified: Tue, 24 Nov 2026 05:14:38 GMT  
		Size: 66.5 MB (66510956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431dcc5bffa6bc28fa4dca87cd5fb095bab344f37b179d911c41b271c68798cb`  
		Last Modified: Tue, 24 Nov 2026 05:14:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c74723f7bbab242a66c82892bb3ed29658a005bfa08d29f1f7d0f617ca0ca5a`  
		Last Modified: Tue, 24 Nov 2026 05:14:36 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:81f3c776bc60036d7941f32457894a982244019b710e422f996bab9625ac6d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b9218579f36c2a72a744424a92f9255eba41092b06a313948c7ecc36fdbbce`

```dockerfile
```

-	Layers:
	-	`sha256:19dae4842accf629158b9f7ae7d406bdef2985781256fb7a9dcccc738d78a386`  
		Last Modified: Tue, 24 Nov 2026 05:14:36 GMT  
		Size: 5.1 MB (5081761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c7789a65b05540ed9ababa48aa287360ff13a3ad490a43f7f10fcae36a2169`  
		Last Modified: Tue, 24 Nov 2026 05:14:35 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b53f17077e7f6b4699cb02b82f9e7faa95c0301d174612b0cebf4e25ba00012f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187303373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d290ae379aa8e348b0ef9f46c43565c0936025c5fe3a30c0097ba0976b8417`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:11 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:11 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16a5e684db0406238f7701935df4dd1dbeabf75dd7eb898f6e3bfcdadf43256`  
		Last Modified: Thu, 19 Nov 2026 22:09:53 GMT  
		Size: 92.7 MB (92660441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec62a34a0fe4b2edde01bce304f6262b0449fb5d583fdba3a3b42c553df8ba3`  
		Last Modified: Thu, 19 Nov 2026 22:09:52 GMT  
		Size: 66.5 MB (66497029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d525919b0f8f631215bc21e9f990af4d0c0d0f3c8a524ad6d03cbccd5638cda`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333e3ce05570d463713e5d69ff5cab2b7f45e0b3756c60554b8a3d847f83f6fd`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6978642fc278a86f0885b092986f9fcb4f426fc6dedafa43955a43a8022f0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630dab8fb403af0e83a9e020548fa026f24efbd48403a8beb4e06d485d3a4c24`

```dockerfile
```

-	Layers:
	-	`sha256:4179af5057a82375feb1ad48d725999fd6b3ced3ca90aa5030d9501e7335b9c8`  
		Last Modified: Thu, 19 Nov 2026 22:09:45 GMT  
		Size: 5.1 MB (5087527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3ee1338f87cb2250216340aae8fff5b0a0e4785cdc3464e6257a4c9e3667ece`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1b8256b82b6e4346805fd106afa5b5f353568c6c5d460f8b1c2863a8fca868a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196362698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36184e2469442f8039a9adfaaa9e7c3afcd1a23efb7e5b8734f14a709cb85460`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 13:08:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:08:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:08:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:08:38 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 13:08:39 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:19:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 13:19:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 13:19:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:19:03 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:19:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cbe6e8a38eea3dddfe265adcb6cd6f31a832e125d8b32a7eccefb6e5f417f9`  
		Last Modified: Tue, 24 Nov 2026 13:12:40 GMT  
		Size: 91.9 MB (91933328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546e9620eb5782e7704bf07b952e0529c87498fef787100580a4bc416b7fce6c`  
		Last Modified: Tue, 24 Nov 2026 13:19:53 GMT  
		Size: 72.3 MB (72334328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5bce8f33dfde9956952fa5ab1afb261a5df82103b62241dda6fffc1af7a013`  
		Last Modified: Tue, 24 Nov 2026 13:19:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b15d137fcce354c05c471ce5b6e9aeeb0e46780ff9babbae8b75c83dba7c`  
		Last Modified: Tue, 24 Nov 2026 13:19:51 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5274d9f1fae7d4a12417d6cbdf81a6ae15e8e1f56f073c359e431eee2ab7034a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5085024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b70514ba77a99ae569e6e9c7d12a5f9f78dcdbaa71af1e01ffbfa195957b37`

```dockerfile
```

-	Layers:
	-	`sha256:805855aed047ab6f31caf0cd6df9a67a8099171432cebc50bd950d1b94d3f373`  
		Last Modified: Tue, 24 Nov 2026 13:19:51 GMT  
		Size: 5.1 MB (5068994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7c3687b1b7cf73978152e1dc933e44d80c446414f28fee6f3b3dfaa1886e1d8`  
		Last Modified: Tue, 24 Nov 2026 13:19:51 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
