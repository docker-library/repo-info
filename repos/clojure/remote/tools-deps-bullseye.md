## `clojure:tools-deps-bullseye`

```console
$ docker pull clojure@sha256:c6988bf2dbf40f6e74546a67aadb4dda192fb71b7c25c292f1fe21e5df976806
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:72fc71d82ab31c39056017617ffaf53754542fa9f94d73f98e6c6bda9889306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212861529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b302325a5b7d77a81ef21cfb090c201be6e917161bcbcc759b058f4844e79e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb02f19a67e4e50920c8c319895df198cfd2d43053c32f8f04e6e0a6e2607f10`  
		Last Modified: Thu, 02 Jul 2026 05:55:29 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37856f0da0a4ca16f216b6ec65c404088caaf0fe5358a73defd38e58dda1105`  
		Last Modified: Thu, 02 Jul 2026 05:55:28 GMT  
		Size: 66.5 MB (66512912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56612868458139367d010c6a46042b4bbebd352e7998a4cdca90b764f161e982`  
		Last Modified: Thu, 02 Jul 2026 05:55:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f510415686e4716b264f86d37e3728adff966fb7cf46887a30d3af590a61b113`  
		Last Modified: Thu, 02 Jul 2026 05:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:729698b9209960f824a0291e3a780b368685e1eaf3e77b121e9034e0ae04747f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a985131102d155cb006656152f97f54d607219964b82676556e005d96f6c22`

```dockerfile
```

-	Layers:
	-	`sha256:33ae75a4ecd51519f92fb09874399e344addb7a0940edf75a2e82ee9f3e1f0de`  
		Last Modified: Thu, 02 Jul 2026 05:55:26 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3972528388e98a6089c2f979abee37f7283f67c497a9fdd4dff54c0839dda00`  
		Last Modified: Thu, 02 Jul 2026 05:55:25 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a37ec380ecaab92599572fcf7f2cf6d1ccda3c66b189dba779982fca1ab2b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210478374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61369c62f3f8e411672d5e48c46eb3b4e126dc0d7c2c0c806ca4d53edef0d32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:55:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564bc54d662b3d26b8ae0a60ece22617c66ad255cda88dbb0030291df549530e`  
		Last Modified: Thu, 02 Jul 2026 05:56:02 GMT  
		Size: 91.5 MB (91542268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa65e3411b5b72ee1cb542622999465134a43b053f3e354a8418fe2e278c8d`  
		Last Modified: Thu, 02 Jul 2026 05:56:01 GMT  
		Size: 66.7 MB (66677844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30bd8e36a034ab6c39024ca7a7247fa9699899d30ad2b0d70f02fa81e395c00`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e439f38b39be041e197fcfb3065cd6051c4930218873e13a9cc52756388b3e43`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:18a1db40ae54106fefa2b6b9c7266a606639a3e0d8db80a758043ec492e7bfc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d3b8077af9c91208a1de24cdf991a8138231b78e1c7995d4f7aa512b1d61b5`

```dockerfile
```

-	Layers:
	-	`sha256:b76be21b8b330e8c3e5e9a1090507ec3faf1b1c2e140dda6384839be749076b0`  
		Last Modified: Thu, 02 Jul 2026 05:55:59 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be615fc39d7040907311b231113495b77a6cac5e79651e2d95c0935532b2e0f0`  
		Last Modified: Thu, 02 Jul 2026 05:55:58 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
