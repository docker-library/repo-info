## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:61fbcd7285a3281d9c2c46681453b95d7b1723f287287120567e5a7a67973b66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ebd04c1d8bd3aee8f5f5ee90024cac6a1a68526e4ffd29af34993ecdae42e653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278453890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2839b6c4d97a67468b45098e2fbd1f5cd6d6e48f130e035f4b1cef31c770da0c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:53:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:38 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa17e47465e905356e1965cfb0756b2fe1c1b6289b4bbee7753f445ecf104e9c`  
		Last Modified: Thu, 02 Jul 2026 05:54:15 GMT  
		Size: 158.2 MB (158166951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b368d7f3f211d2112e4db18e94e6640b627c1c62feb9d7ab9fad6ab89b5b13`  
		Last Modified: Thu, 02 Jul 2026 05:54:14 GMT  
		Size: 66.5 MB (66512884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd4c42000f0ae94fc603fefa4ba96b0cd8af62ddf796df7079072022698f07d`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d23b09dc32cdd861d8a0eb034f44dffdcb45c9b81f69dad54860107cc274aa`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e1cc07e814f061294cab60ecf009d385934db0935334a5361c9167f1bdfd0c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce118a1167dd8931c9a6603dee6ac28d32e6bc61f8e49a4ea5f1e238b06b7688`

```dockerfile
```

-	Layers:
	-	`sha256:5f6ededbe7c532c93ce3d9b687214d4e31e24a93700f282dde3268fbe15e160c`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c8b5d7f4bf0a20fc2c2d3fc8929dca2262c072330ae815f1f99291e1a33ccce`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:141e5a7d8ad211a6c67ca70e31ca795a981f5e4172bca9d179dd81c4474eeff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275397666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5220d07d483f16a6984f22030d2f20368641d3f163e121c77882565a45b899`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:53:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e198fe5d4f2a4f26c23bc890173f589521db74e8bca5a1715315a45a17c91c8f`  
		Last Modified: Thu, 02 Jul 2026 05:54:34 GMT  
		Size: 156.5 MB (156461287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c119a7156058fc426de72a5b7448a90332bd4634ef5443d5e4a5da66749a93`  
		Last Modified: Thu, 02 Jul 2026 05:54:32 GMT  
		Size: 66.7 MB (66678116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5151d97c947ad300feb736ac1d5c9701dba51cc3c5fdf70dbc41858112476`  
		Last Modified: Thu, 02 Jul 2026 05:54:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c64583b25f88b7ebe1cb40b696731179a7b02b3af669db59c2dfe9d3db94e0`  
		Last Modified: Thu, 02 Jul 2026 05:54:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ab62a29b03f20546bb05d903667c97ffd1de5537e9d5f6263f2a956dd0143d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcc3f0e0047cdb8d9be441f04589d5dcb654169c692754199299bb8effbf38f`

```dockerfile
```

-	Layers:
	-	`sha256:85abdd82be8417b696f77d29a85b595bf2e5bdc46bf1bb51b1704e43d5bb77c4`  
		Last Modified: Thu, 02 Jul 2026 05:54:29 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:944be0af44df143d588ae22d0217ed891e16320e7d37374dbd5f8a46f5357c32`  
		Last Modified: Thu, 02 Jul 2026 05:54:29 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
