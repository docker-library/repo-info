## `clojure:temurin-26-bullseye`

```console
$ docker pull clojure@sha256:b44bc2c52ceee5d18080c58c772f1c230355d7b8c27a95eb642c09c79485907c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:de6bfdad33f466540ac354e3331df50df821ca2ef7a0dcf1426142876de7517d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214810929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac7091b838c2d3339c1614b881b8e4b22e826a5bc7a793ad64bc8d1d882a53a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:57:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:16 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d990374e55fdd6bb64af273be0175f8b087223f95516a041af16957e9133f32`  
		Last Modified: Thu, 02 Jul 2026 05:57:50 GMT  
		Size: 94.5 MB (94524293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9a84709929ac91c0896658b74cd0146e0f6f1393eba170adf07f64b329fba2`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 66.5 MB (66512582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408179f0946a8fe04db39df8883fb2cf5562c568d77f2d3e20780bdbf109fdd9`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f8939fab42e577706f0b6c178c4867c9c9780d091001845bc603296ca6e777`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6eac2f94cce75ed20eed542d28be63959fd5190f3f7b64de6f1ad0e85d9a8256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde77eafd36617c65f39de92cf26a401fcd73cc081ed5ef5a2952eeaed528597`

```dockerfile
```

-	Layers:
	-	`sha256:217e5ea6429daec3cfb8396be9f9f042222eb76ad80f3a9cd591b5289dcfd75a`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f548a825cf335671e3d94e4b7924883d49da9cfea9d0888ee9d6d630943b4a97`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 15.9 KB (15924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d185c2002c37ef7b41deacc6e7b373a49ddd5c1750dae949702e12d00a19fbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212440657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88c6e63738854e9b4744033be7d47ab4edb0c556f8eeef74343231b90750081`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:57:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:30 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:57:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9882882ad957d442d25e8206a20fe1f1a234ec02abdcc965f84876bfa28b300`  
		Last Modified: Thu, 02 Jul 2026 05:58:17 GMT  
		Size: 93.5 MB (93504349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eba57ca9d239159a3454b208caa5bef35dd5dfc3dd72429ba6d9fa6f0f99327`  
		Last Modified: Thu, 02 Jul 2026 05:58:15 GMT  
		Size: 66.7 MB (66678043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b141fc8b4d382c68f01627b61cbe8cfe40dfb36092d1e430a1fdf61a5db36f`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719cbedea76c86d1b7fcedac52e2c98cd6ce7031207bb9d15f35e817982d7651`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f6dfd5adf40eb03285e965d46b512a7d334b35fa4b4f79b7625dde3edf5de724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48528878873cb907976c95b0e5dc3351bd241ed2c461c5519521ff619930a2cd`

```dockerfile
```

-	Layers:
	-	`sha256:d90c8a3c03903bbc0e0d7b1f63277508dd440f583430ced3658da85498ffe3c9`  
		Last Modified: Thu, 02 Jul 2026 05:58:04 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a9c8ee72d872589a14914fe961d0b8f96f5930fb42216fc19e00617f85916b5`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
