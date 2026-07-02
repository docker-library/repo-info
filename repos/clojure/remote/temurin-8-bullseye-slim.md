## `clojure:temurin-8-bullseye-slim`

```console
$ docker pull clojure@sha256:ac5e2860d7a408e66af99ba3a0f815820ff8e8920576fe68a731da182927dff9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:aae299659620c5211e592d24f75d86ee31ef1f014d675d58d89f421babcdc1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141559169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9d38a9fabf4debf77c247dade181b78e487f91f024c8c81201f6cfbddc9f29`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:47:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:23 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:23 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caca08af40a2e7896f69bb994643e3b89f5dfa1679c3c98c1381b112cb1af8f`  
		Last Modified: Thu, 02 Jul 2026 05:47:54 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d095a71899311f9aef193c3a2694c936f2cb5a1233b12b9f1eee50da80ca28e0`  
		Last Modified: Thu, 02 Jul 2026 05:47:54 GMT  
		Size: 56.1 MB (56100353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4459261d0dda6ad56316739f368b80943098b324584f829a0ce57e793ee9ef6c`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a658033b56458e43e638e2657b6d690266e32c90c760b4f7362d920baee80f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59eeed297390bf19b82b43b7c5a201b175c9f26a1bed223a2f92755667af5b0e`

```dockerfile
```

-	Layers:
	-	`sha256:7235f4762150b260e55fe8c008b59ec4b535166637c0a85857ad776e89433c80`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210a5b1d9841b11af2bffb07a1d9464b9f7bca077457b9122135a07f29b3b7b2`  
		Last Modified: Thu, 02 Jul 2026 05:47:51 GMT  
		Size: 14.4 KB (14401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d566b0a3e1daf1c3b279b2a82d714385d48cc1041cc6eda131dfd99f2c88b148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139288282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ef98d940fccfbb500bedc7225e0f052bab1b077f8b51819879d084684bc698`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:47:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:28 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2284c6e63dde3c43a5937970b2984ce813fd2c3eeefdb1e6467cd9c536a6675`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 54.3 MB (54272903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf55fa4435773df12590bf7580dad5d17535623c3862eaa8a5863a6eb5e0b9c`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 56.3 MB (56267808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0210c71060fdebfd11787f3b78eb081b8077ac206bf4c53584cfc6dd8b303e4`  
		Last Modified: Thu, 02 Jul 2026 05:47:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:45a0bf92cb61a7493fb192cfea8cf17295abd073da439f1c8ce752b33ff508c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c89e874acf1caa416378be5d71268d0fa95faada5856db6242f2bce8b18f82b`

```dockerfile
```

-	Layers:
	-	`sha256:c2c85dfdc917369817880359ffd97367676a9827f5b3f965e30a80bd4f6f0264`  
		Last Modified: Thu, 02 Jul 2026 05:47:56 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3187d44b3237b31db5c41cc602cf1cd8ec61d080390c0c72ddf48d30e913d6d`  
		Last Modified: Thu, 02 Jul 2026 05:47:55 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
