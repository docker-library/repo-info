## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:c7be4fb96d008be9c04d9df4dbded58d758e5a3a8e3e17dbd5f747019c247de7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b863554f82b2e790d522d3dbe15a5703fb242fe37d78e6623a2b851f14ca79c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252973522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fd3acd53d22dbb995109451e20bf2def536d087525e43237eee53fd4076217`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:21:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:21:33 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:28:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:28:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:28:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:28:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:28:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8414bae47d7405a7372988f6ef49623a98c61807e361f6a8999b8be82a0cc3`  
		Last Modified: Fri, 20 Nov 2026 19:25:35 GMT  
		Size: 144.9 MB (144892672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bec3516b1808a2bbf0d3ccb2a1bc41675d6c754e99fadd4a0e16cb8e17622d`  
		Last Modified: Fri, 20 Nov 2026 19:29:13 GMT  
		Size: 74.4 MB (74411653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af51a2b3af2d9bd90888acab6612331b9432f4ba14e498d97d08c99d840413a0`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d85425b194ea2e3d40872a56bd8d6ad1144a7cd817ff86f80c9fa34573b3e1`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0f391c241e653abe413c0a10d66f6e3f1c7e5430fdb1434e1a717e41882d33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759ead24b4b8ade513c50569de3122c8b8cf95e4f0afd00383da8317eb2bbbb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d9a8a6394b38080886f71bd4faa6326155a3176b6688502c09b93d486090ffd`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 5.3 MB (5265192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcfccba751e411d54d9f646c7ffd4a2c6ba83f0265c095d861b3259cf18ba75d`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
