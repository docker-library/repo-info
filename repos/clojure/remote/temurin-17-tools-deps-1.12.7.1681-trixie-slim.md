## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:ada9c1525ab3178cadb8ff8e1c605902b88147b911977c8875aaf17b384ea04e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e450a4f6630b05bcbdb220edc32a1c053a60b218848f3f726221e63d8aaff9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244947817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13dd66cb729d176b88334a44a42fb57bddd2c1b9791d30c4beeecd550ba09582`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:10:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:39 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:10:39 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:10:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:10:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b764493c6be90d449069f665f543202480ecc39904234da7c502718b443806b`  
		Last Modified: Tue, 24 Nov 2026 05:11:15 GMT  
		Size: 146.1 MB (146114251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cf81f8c2e08a4df202c2d9b5379f90e75294049d9a5fd5e511c9c693c42841`  
		Last Modified: Tue, 24 Nov 2026 05:11:13 GMT  
		Size: 69.0 MB (68989847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc56b354c4969f4dac9ca354683860e3e7d266fead4f6b7c2ec49a0bc4a03195`  
		Last Modified: Tue, 24 Nov 2026 05:11:11 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4823c30a903d72d6ad9a601932f11dd866d67a6107a70152dfdaa4e742440652`  
		Last Modified: Tue, 24 Nov 2026 05:11:11 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:398c36f8bf14ceaa698c8e7a16a55445d74a14307320361c770892a10e8db0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cf66f0e81d29c41346c122b806cf1c18b009a367219d3cdeae75a312e83ead`

```dockerfile
```

-	Layers:
	-	`sha256:d78c97bb65079fcdd83f57156f35527defa473260b57ff384bc55efda92f3ef3`  
		Last Modified: Tue, 24 Nov 2026 05:11:11 GMT  
		Size: 5.3 MB (5262113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777da4972715fe63b7df6fbf7ed36823b289756a5b3459253e53f34515d9c6fb`  
		Last Modified: Tue, 24 Nov 2026 05:11:11 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e45702ccb6f875ee8014efdd3df8143f02b4b44b322687bfeb83ab119e36b4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243978507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3351fe9f797923098beb1a361f0a46e7c32113287e70def40bb2c63d65ad5dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:19 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f9da5ec857a5644fbec76ae0ecee81aa75fcc9e586318174976d3fb5a71d02`  
		Last Modified: Thu, 19 Nov 2026 22:07:59 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a47cfea35d0fc5087a458f0548ef30239ae52026f2b487e6566a84b453de22`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 68.8 MB (68805762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f192b5ff41db13b4a7771e2ab0f64bc1d70f66c27ad9aec10bea0134c816092f`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926cf2542a88a1ac99c8f47bd89e3b0d57b3f5a8aac2c7767c3031a5292d090b`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85662273d4af8e1f880e6ef36bc712fac8a4baae6de0bd7ccd376243ddc3a715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e819742c38e983b45f19ba1dbc756875c29ce2538133eca0f0e9c840dd4655b`

```dockerfile
```

-	Layers:
	-	`sha256:4b016da2b7a410905cba594452adfdcbbdc3ca1175300a4cbb34f6aabd7b3626`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 5.3 MB (5267820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7aff75bf035e8019d8ba17cb15ba3ad9ab83db989e8da8cbf1ac4f16ba52406`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f35c9409e42c11022573db5fce51b6825d28a8b0ccf2c7ed1a237dfac372b128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252957297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88374aab1b8df6b9d471e482bf76999028891ca965ccc8de3506955894ac1cf8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:37:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:37:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:37:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:37:50 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:37:50 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:44:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:44:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:44:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:44:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:44:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c422294a623f32f12aa30ca0a4f258e649f6491ebb3fb2a6b000cc057097bd`  
		Last Modified: Tue, 24 Nov 2026 12:41:47 GMT  
		Size: 144.9 MB (144892689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc51d0db2a965bbf5d95b1f9787d5cdf46dbd08d972e409da0927f09cd5d9229`  
		Last Modified: Tue, 24 Nov 2026 12:45:07 GMT  
		Size: 74.4 MB (74410430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b36a88af04dda7bf60ee1917deee943d5057e6923f6b4f2d083dca3cb405f8`  
		Last Modified: Tue, 24 Nov 2026 12:45:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb33613b125d9d8a40abc3d35010828ab578d3f54c8d17cadf215b91c4e5026`  
		Last Modified: Tue, 24 Nov 2026 12:45:05 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95979ad4c1fbbbfba4b9919e0a54c68be03e75a859796fcdf976f0a97f670139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375c2ee6d4f6c1f8aa4258e5658c04e1baf3ab193a0de6fc5f73ef1ee982df0c`

```dockerfile
```

-	Layers:
	-	`sha256:8371840066c99399b93a46ab0b2e592e772e65c6e3c759b63312b5dce7b88c76`  
		Last Modified: Tue, 24 Nov 2026 12:45:05 GMT  
		Size: 5.3 MB (5265238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c29a5c8f3a4863775f1a8dd729769ebceab7b45f64e4166ca58255d85b2279a`  
		Last Modified: Tue, 24 Nov 2026 12:45:05 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
