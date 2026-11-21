## `clojure:temurin-27-tools-deps-trixie`

```console
$ docker pull clojure@sha256:3b5af1bdde768d474b5d4e4ff11394592d19f9205e04f463bb95ad27ad1ec11c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cfd5417c10eb75d761c3fa289ad808008a363dedd950842d0f49f12e1c6e1549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225635377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d01381bec3abff6691c34f234da24100de9581bc02a4f3bad5a163e187fefc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:12:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:12:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:12:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:12:20 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:12:20 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7092f1c267f54b6b8ba9112d8efe26b57f624346915b880f830ed741dc1b34`  
		Last Modified: Fri, 20 Nov 2026 18:13:01 GMT  
		Size: 93.6 MB (93649666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5acf00895f9bdc675d4841670248232cfecfa911ebd5efe1d1206a6068639d0`  
		Last Modified: Fri, 20 Nov 2026 18:13:00 GMT  
		Size: 82.6 MB (82571652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5676ff5944577862e351630ec03d0ad14d5991b43948034e06a72a553d7eb70`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e295bad93cf49f5c43372f6719e9782f0174304465de66fbaeb3231598809b`  
		Last Modified: Fri, 20 Nov 2026 18:12:55 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:15169046771649c5ef790152aa54ec4e4d19fa2d122dbd64c4e6068384d3104c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eeb91d1b13bd0271e2a7b4f1a80289fef1906e07df28c601783cce76619b4f2`

```dockerfile
```

-	Layers:
	-	`sha256:6b81c4c1dd794a406b46a6d9a65b8240c9ecee1518a22516dbc4941ca0b3d216`  
		Last Modified: Fri, 20 Nov 2026 18:12:56 GMT  
		Size: 7.4 MB (7440415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e554994f0d5041aeb418688503e60bc82ed39f5b04a06c42b186a7335ffa7e6`  
		Last Modified: Fri, 20 Nov 2026 18:12:55 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e0c9755007ff66e151f4b60429ca437df62ccd81169e8c4bb5c030b518dc5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224834709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caebdac6216f42672f1f693c9503a3a8aae565c97a0b40f37822f5bbfc1c3622`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:29 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd3c16fa8f8951161551513c25d20d7210e20b25f625ecc5a8e30439fbe6ef2`  
		Last Modified: Thu, 19 Nov 2026 22:10:09 GMT  
		Size: 92.7 MB (92660413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd809508df05e5846440f5deb91d2adb040522f7e9d057cb5354f58e65e45f68`  
		Last Modified: Thu, 19 Nov 2026 22:10:08 GMT  
		Size: 82.4 MB (82394149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba86a1c0f03155f886ec9fa8ae4fb5af9df02d647194d31c60696b43475a3d1`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e81ee5641d81f5fe86d64256d1110aea2a12c0580da17daa680669db5c79a9`  
		Last Modified: Thu, 19 Nov 2026 22:10:05 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ac8e094b93185ad099c114bf083d6e725ac900722854cd0f179c019e7e01bff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bedb44e88772e40de6156fca6446df7660ef1296e866711ffabdc01b03dabe87`

```dockerfile
```

-	Layers:
	-	`sha256:3f31ec8e1922f3d09110871906ca32717280a4fcec50c8652bf188c9c0cf41b6`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 7.4 MB (7446813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0348b72b91f57a0ca51deee76cad538fead0247c0ef4531f9ecaa0faf2b6840b`  
		Last Modified: Thu, 19 Nov 2026 22:10:06 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:03afdcbeab9560fe3ac46d0d6416c50709b58ab98566c458f832d3b91ce0aacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233150454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1ca6bdecdfa2c22cc2d7f32605c8c5460a1090ad65a4ec41fea6306b2663ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:01:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:01:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:01:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:01:59 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 20:02:02 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:11:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 20:11:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 20:11:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:11:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:11:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6c5dd76cedabd84f043fdc0b063d5baa529c1b95e0188959650b2432e0eb94`  
		Last Modified: Fri, 20 Nov 2026 20:06:00 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6d7008c867a3040d23d64041da2bab5b7d5f1c18110c9f9ed75825974d8513`  
		Last Modified: Fri, 20 Nov 2026 20:12:15 GMT  
		Size: 88.0 MB (87989997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b1014c7e445f4bd9ce949af946bfc906ea28d012adefa94cffc02e16d368fc`  
		Last Modified: Fri, 20 Nov 2026 20:12:13 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8dca5b0115ed4346ff3115b659618f78889b699579a712f3a414050330b439`  
		Last Modified: Fri, 20 Nov 2026 20:12:13 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db04811e503cc8356865b309d96c55ce3a850744306a37c49360ec25e5a3084f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7442855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976761c91703784aee00f8b41423368b8cc204b851b36959464f64255ef9c4a3`

```dockerfile
```

-	Layers:
	-	`sha256:3389065b7dffcafed166014ba61a01694b4e1695e114ad90a805dd0fdea399e5`  
		Last Modified: Fri, 20 Nov 2026 20:12:13 GMT  
		Size: 7.4 MB (7426907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eb90f2b6c740c010e473547fdd46b94d33841efa1523e2aac53250b2b4d5e77`  
		Last Modified: Fri, 20 Nov 2026 20:12:13 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json
