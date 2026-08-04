## `clojure:temurin-26-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:566d2a023240c51c8afef382c722e1ddefbf9a065ede56b826aa469219bde914
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:b35a11e3566eadf3d4be85136709e340aeac7a34bf1e01c9043c46e3990c016c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214820531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5f8001c7441129a7746faae892d13863a6765951e2ae09c9b2e7d7cbbde81c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:56:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:02 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7504a4981d92a99b29d1267b29f47582543aa1f9fe0643b02fca3239708329`  
		Last Modified: Tue, 04 Aug 2026 02:56:36 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44920767a371a6e83c5b47819a7606481f252d018959d414e884e9143d305e10`  
		Last Modified: Tue, 04 Aug 2026 02:56:35 GMT  
		Size: 66.5 MB (66518566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c884219e7ffae112048a8ffd6ec00b841dfc92d56d1b9525ac19eb70672c158a`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb553aa02aca23e8332227c80f6a6c3a81c999c256183a7cdbd7013353d0029`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e4bd29a28398083fcc05aa48ceeac60a376743fc298a7df22206f7aef9316098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe81abf8d8528e7c5e9445361c599552f10ad7650e8da7f7caa2fc4eaaabc4a8`

```dockerfile
```

-	Layers:
	-	`sha256:9ba89457d9bc95f1c43abff89a82d9e48d2f62a9c04fa25acec06fddbc597a53`  
		Last Modified: Tue, 04 Aug 2026 02:56:33 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7550a722adeac2e30eb90891f0105876004b7a04128709c2f05665cd8747455`  
		Last Modified: Tue, 04 Aug 2026 02:56:32 GMT  
		Size: 15.9 KB (15924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:07cc6bef21c3804a199968416fdcf833ca18403c799b14f145cc526b792b19ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212450183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad28507d58b36a4692546f3343b23a06ff9be14a11f76c647e4c69df7660f56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:56:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8033bec39a68610ab1ecf816d0c54011958309ce28f960c607fe8a50402e6426`  
		Last Modified: Tue, 04 Aug 2026 02:57:06 GMT  
		Size: 93.5 MB (93504367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae959dacf3349148df606743af8cec0c5eb47e7e869b1d0b7c7dbf168daa58a8`  
		Last Modified: Tue, 04 Aug 2026 02:57:05 GMT  
		Size: 66.7 MB (66683885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1e43c9010182799f62cae209a0291695155fa0fd1d1eb1d045b66cf873c833`  
		Last Modified: Tue, 04 Aug 2026 02:57:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac31f016e86cf24330e15ad9cce463cb5cfab7de997315c6159c44c67bbfcb6`  
		Last Modified: Tue, 04 Aug 2026 02:57:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ddd6b3522dc904570395da5a0451baefcbb5a44c431e17fff6f441344d216801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1305f30dd51ca0f7c760f7ec661751bed03f7ef832e0ceafe2e9a37d32ce162`

```dockerfile
```

-	Layers:
	-	`sha256:3954b6335d22b83a7a7f82559635f3e9205954103aea71fce157116630441107`  
		Last Modified: Tue, 04 Aug 2026 02:57:03 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad09f8855e61e5c8280582e84252460d6ec96bc43ae472648e4ac5fa5c7502ce`  
		Last Modified: Tue, 04 Aug 2026 02:57:02 GMT  
		Size: 16.0 KB (16043 bytes)  
		MIME: application/vnd.in-toto+json
