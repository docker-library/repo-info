## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:825ed8b3045d00cea2998931011a409de3e06c183c18cce78f2f0b40bbffd5c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4c1ec1949104e42059c901ea30d5cc8625f319c1b5dec01af983a6981d30d99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244670960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ed5660c64bece583731e1d9832510e57e850640d1e139550c46fc6e762e97b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:12:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:12:20 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:12:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:12:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7927cdd372633da6dbf2389fbad5894509abd6b31b074a12a3ae63fd31931123`  
		Last Modified: Wed, 28 Oct 2026 02:13:01 GMT  
		Size: 145.8 MB (145825460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40dc1a74962abf4df364322aa6ee37caa385063d3974c331f1e00e96e3ed96af`  
		Last Modified: Wed, 28 Oct 2026 02:13:00 GMT  
		Size: 69.0 MB (68989218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4fe9ca5c14e63c6fd0bfd42325a8b97d530d36610dbbf9b5d7c47857702b49`  
		Last Modified: Wed, 28 Oct 2026 02:12:57 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fad48931d0eec031abbdd4ee5d639de9b4ae457d29b3db232667a8fb7a88c8`  
		Last Modified: Wed, 28 Oct 2026 02:12:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6816b7473e330ccf7c28c6ddc5e01cf74898e8d7d9d41523dc736609c0333c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8722b7dde0e18f7db495080972302156a15411a052e4cf9db76f859fcedc98`

```dockerfile
```

-	Layers:
	-	`sha256:f1bfcc5ea938dce738f52aa5006086ae6d8cb9231801ad9d6dfbf362ac5fbdaf`  
		Last Modified: Wed, 28 Oct 2026 02:12:57 GMT  
		Size: 5.3 MB (5262065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4d00d99dad6db53702bcaa117e1557afe23c636d6df82c6d7e929ec454fa5f`  
		Last Modified: Wed, 28 Oct 2026 02:12:57 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9945936c52055fdca82dd09bdbed576f98f2f5d02c548ff150799aca544ed41c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243667903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a05ccba3b5844eb18fbaae8eb9e221860257977d9c7f17623f4ef481ce336650`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:19:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:19:37 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:19:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:19:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7a87a4c88ebb4606dfbc7056d0eb010f976fe58d03480195aa512561e92591`  
		Last Modified: Wed, 28 Oct 2026 02:20:17 GMT  
		Size: 144.6 MB (144648265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79caee9e364fb51ae2e7954029585f0e3641585592af7214c0d14efb1d173e91`  
		Last Modified: Wed, 28 Oct 2026 02:20:16 GMT  
		Size: 68.8 MB (68805097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b45eae1bd0d5ce7ccd9ea6d2bc022608a710e6caa55d910e6a13623d4e7009d`  
		Last Modified: Wed, 28 Oct 2026 02:20:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58556ea63547534f522b97e7a045483a8b9a3512f1c6d798c1781ba258261e1b`  
		Last Modified: Wed, 28 Oct 2026 02:20:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57a2d72fed43b582e548d3cae2db90399bb921955064c581226d9491787020b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757ac371526b203e3623cecda1fdce59240c2318ab1b0e5768406de0d1cbbfc`

```dockerfile
```

-	Layers:
	-	`sha256:9990a90cea30dc2dedc04f0535734fced1a3c56d1d9cd45e726c6e56a0fec1c5`  
		Last Modified: Wed, 28 Oct 2026 02:20:14 GMT  
		Size: 5.3 MB (5267826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929c3f526c9624c09c2629dabd40edb3ed4d0a9eb54bb370e8fe11024c59e416`  
		Last Modified: Wed, 28 Oct 2026 02:20:13 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e45f000dfc486f9212985a91c835ed63c80ded9f5ab8b2e6d90e34b17ba29190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253743346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852646d4891277fb290e36deba47e18f5bfa8ce49e9cc85f20b7f309aea1909e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:31:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43bb4f26011f63203de672561ea2aa44f1ad30bcde3145257902269eece8f1d`  
		Last Modified: Wed, 21 Oct 2026 10:32:37 GMT  
		Size: 74.4 MB (74418834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ef48c93aaf9fe0f6f70f5f0fa11dfcf81f83185b624c179499837b8cd6988`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad80b6c30a7671335fef099cbadd9c01c49d924a4b7b2accf4eca2ca4ca58a6`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:87c4c675489199b4a61c289a25af4fbbc3f9a0e0851c50ae35447845a24c2169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6562f17c778925fd916d8eaf462434d27b073f0bc0e4cedf9d137fae03eed134`

```dockerfile
```

-	Layers:
	-	`sha256:03319837d34dcf9de660ffc6bc9748330663a7d15b950b2a66e610128b9a32fa`  
		Last Modified: Wed, 21 Oct 2026 10:32:36 GMT  
		Size: 5.3 MB (5266408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a37c5979e0482298405c3aa19a7a730363efe67e54dc35a6337820c98f1c463d`  
		Last Modified: Wed, 21 Oct 2026 10:32:35 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
