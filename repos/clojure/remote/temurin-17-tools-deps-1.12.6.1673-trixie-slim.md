## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:84c69dfe272a8faa243bf90d0502f9a27b1d5e0fc2b108d07650723f7a9ade91
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
$ docker pull clojure@sha256:a1e90489bedfb536f99e9998a53c143bf4b4a09f18911c23e50e6e6ef77160ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253757619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f5bb913ea09bbfdc1967c6c16546f8208ad34cb78440d3020aa83280530b61`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:53:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:53:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:53:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:53:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:53:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:00:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:00:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:00:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:00:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:00:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e0613b8827b8781fe63889f9946250e2cfe636e1bab7d803074604f0688e27`  
		Last Modified: Wed, 28 Oct 2026 09:57:51 GMT  
		Size: 145.7 MB (145671601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f920ba208051aa22d8f7502ece4f5e5749ce838388d1f940dde9d3f09333a8af`  
		Last Modified: Wed, 28 Oct 2026 10:01:18 GMT  
		Size: 74.4 MB (74418713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0f90c120954dc23112cb3304d02a62b06968775b4190e263a920d93406bd5b`  
		Last Modified: Wed, 28 Oct 2026 10:01:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9ed20047bfc17f8d815fc6a494677540c40774d0a21d595a74f71979a2cd9c`  
		Last Modified: Wed, 28 Oct 2026 10:01:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8d33426df148bc5ca29cab3a7af569720d48d221a04bd41f4f65404e57374de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f84f4cb0595f82d962aed4c6a73d2ee6b02acf89b23dcc44b4208a7b0c16977`

```dockerfile
```

-	Layers:
	-	`sha256:fd3a2875e0d13f9e49f469dacc944afa22cd721733557083c7e5f86d729b6a44`  
		Last Modified: Wed, 28 Oct 2026 10:01:16 GMT  
		Size: 5.3 MB (5266436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75081c87b2cd84c26a83448ec90a739d6b29f1efcb89e9e0417411d0105852a4`  
		Last Modified: Wed, 28 Oct 2026 10:01:15 GMT  
		Size: 16.0 KB (16012 bytes)  
		MIME: application/vnd.in-toto+json
