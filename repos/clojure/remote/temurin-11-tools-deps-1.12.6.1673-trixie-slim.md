## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:69061d43e2661bc50495a318a076dda61cd6d3ab01cc5f9a61dea806b9461840
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5823eba575d94b076eecd7a043f82a048153b1e08a75d011a831e2449d9724e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244698469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56b8d4701535ac5e06bb4c401e117a2fa7e1dd280a539011aace8a16e0023f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:17:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:17:19 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:17:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:17:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d2bc8090ba28af3564e65f4180978dd7fa4dd5d6673bd69586a015e25dcfd5`  
		Last Modified: Wed, 21 Oct 2026 01:17:56 GMT  
		Size: 145.9 MB (145864491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b25175e331d7c465f9ac54b295389c1c81777496184d86c230233573c406be`  
		Last Modified: Wed, 21 Oct 2026 01:17:54 GMT  
		Size: 69.0 MB (68989755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8959bb114b5bc5b6696dd246daf09c4d86c51fb496e0b2ce01bad51c8d12308a`  
		Last Modified: Wed, 21 Oct 2026 01:17:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2f8aac62bb27e98ac5895c722e7a3f15805119fdbc9bdabd1df8ed9f58195e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cde7db7b2663ef129fab016372c7d625506201e4c64b677e8e3b6abbaf4d6d4`

```dockerfile
```

-	Layers:
	-	`sha256:2280c00e8de5527c5d1a00cb5949b031896999b8cae057b87e6dd329997e2140`  
		Last Modified: Wed, 21 Oct 2026 01:17:52 GMT  
		Size: 5.3 MB (5281553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa01f3fe7e114f3d96fa8dea420102cf416baeca1425e9503421ce653ed7f1ed`  
		Last Modified: Wed, 21 Oct 2026 01:17:51 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:653410670b8e4803d425abef56cfb72e56828f3de6d14fd4e7d5175fcd1c0479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241583283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecffdfd6abdf1deb41507a7a68027ebec95798654f9c2ef0ddfc53365703bfb`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:23:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:23:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bdc54d31cb698dbd2a2dbd12f18d8b186919b4eae25199a6ceb9c310fb3752`  
		Last Modified: Wed, 21 Oct 2026 01:24:03 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71437ecbb9d0857b9d4ee2483bc9d31b9176199f9d9c3778f1492c4e0752eb45`  
		Last Modified: Wed, 21 Oct 2026 01:24:01 GMT  
		Size: 68.8 MB (68805582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d73baf55f4a23b45636d0eb571f4d8beb17f3e90df9e5f4205db7f03e057ce`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb971645d5c0a47592e3ef20eb1bb3c534ac182e9f2e5a33a2f18f5818af99d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57dce118857a5827f9db06fbbdb808484e1a3bea88e015aed08c65b36587eabc`

```dockerfile
```

-	Layers:
	-	`sha256:b52e53d6e54834e2b0eb1d40a4e8877dc303c1995823a421441883c166d9e11e`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 5.3 MB (5287932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bbb054bdefd64572bdcf2f1753668ba308b2b0b536fa79af31fc244b7826514`  
		Last Modified: Wed, 21 Oct 2026 01:23:57 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a168439d38a6594eb00ac3ac5009d465c1385e8c5390e32e53d115221584ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241166095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9d33cad1e503e9f7656eedf8db68a4bee9a4090cdc6de44c11955c62a4cba1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:04:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:14:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2296a7d9c884563fd5ec1b8beb11bdb982cf17ff41ba0c76ca95629d44ae7d4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 74.4 MB (74418383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfffb8899435e9f449f1ad667e8ba3fd5af75a056cadee7fbc15a17e382b72e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:933ec0be340f799c3a4a80ecff9892462a12e52ccc5201167713235057a7069f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5299754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08db73db2a9bc651bff8b94adc72af391170c6b827f6e9d4f86c1b8a323218ee`

```dockerfile
```

-	Layers:
	-	`sha256:4f0b10dc0299f0308585f71f1763bd9892d9009695bb1cbaa31a78a6c57955df`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 5.3 MB (5285309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352fe87829645bcf09a12cfca7d52f6751f7a724a53f4d2fbf7182729667be4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
