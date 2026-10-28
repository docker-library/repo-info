## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:f919ea09af8487ce25a0ccd6d3f9bba585a6d255b219bfa23e263e9551790229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6a709cf94b9d998e947f894c56c501a83f4928177da6b1406b864aa766c7ca82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219137939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0cf0d96d72886ce20bcd4e20c2c98f9b8b5414128783b44e8b1ecc1af3946a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:51:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:51:17 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79186601ebd6149e7ff4234c89c60fe1f6e7693cdc3bb393f842943fd1121cf6`  
		Last Modified: Tue, 27 Oct 2026 00:51:54 GMT  
		Size: 92.6 MB (92618036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d937e3c685c1a09fde609fea41e934349f694cd7400d4e2a15f44bd18654c6`  
		Last Modified: Tue, 27 Oct 2026 00:51:54 GMT  
		Size: 78.0 MB (77996774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ce294322c4f8195d5c1445b2a52d3d580766f3d15eaae9307fc796037e808f`  
		Last Modified: Tue, 27 Oct 2026 00:51:51 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6feb75e10be9563c92100742b67af752ffaf11418c6c36ab426b11df4a04651`  
		Last Modified: Tue, 27 Oct 2026 00:51:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1783dbdb8938c97e5f4471030e32e6948887555ab709a5941f823d8e1ded14b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97303a2716a82b918d3e91079c53b3f7faf37032caa396d42e4de97396a4cdb2`

```dockerfile
```

-	Layers:
	-	`sha256:eb6bf7572a4f5ccebf6d31a7717a2cf1fddfd705e2921a72d09a3ce46246129f`  
		Last Modified: Tue, 27 Oct 2026 00:51:51 GMT  
		Size: 7.3 MB (7347965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acec7150ee19d401cb763c57a0a9bff41fe71613e80dccde8765714633539927`  
		Last Modified: Tue, 27 Oct 2026 00:51:51 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:785c4470359b992deb48bf4940c44fcf4679ffa18d0a410e99710f8a05aac750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217927290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b0ee62cd64e9ea0e2fe957e5191c2d46588d5ee3f212c9844e5e94be827298`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:25 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5a0e17b0c2449edb9eb21955e20ac686a21dc231ecfd875c03ec6f6edf174e`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 91.5 MB (91528850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c36dcdc47a73194d10c38d313342196dee34ba0ecbd6af86b2f80c5d894020c`  
		Last Modified: Wed, 28 Oct 2026 02:22:02 GMT  
		Size: 78.0 MB (77992225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e9f06154fa9d439112437a8c23baf9316163041bca20acd0b40bb9bc1adb6f`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dd6e216d54b7dd35468aeae24db611c7e814f4003bedd484f3ec0323f06a11`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:31dc04ba3adce27971c378b5e7c70412f47c5c41a07b26980c6eceb60942f5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a0da9dd692644dc2e04d475c1a791dca43a96d938184784d3a8705318f3763`

```dockerfile
```

-	Layers:
	-	`sha256:d9226c8ab19f8d3ee1b840f33f99b76fb127207e25eb02f13354cdd09d8282f2`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 7.4 MB (7353797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a894e494957659a7e3d10d3a619b96544f3556dc7780f060841ce1d57486ca5`  
		Last Modified: Wed, 28 Oct 2026 02:21:59 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:146629e7c9ed8b3b5855c5594414c5da93f96c97326502436b2be3a2940f9cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227458478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1186a0113d06dfe189e11c4f136dcb981100704bfd3d062597e42fd8319b1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:56:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:56:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:56:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:56:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:56:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2764aa49be37d3934d851e7657fbfa8c5c1f6c88c2432b9e2d08519d852a28b9`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 91.3 MB (91256225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1958fca3109b4ee7f61500887e41766c7bd5ae7863e5f25555eb73a1baee04a3`  
		Last Modified: Wed, 21 Oct 2026 10:57:09 GMT  
		Size: 83.8 MB (83836464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea86731d10c996b80d2a868cf1ab2738c100d63a534868a22833b903f246129`  
		Last Modified: Wed, 21 Oct 2026 10:57:06 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a625ae843f6ff898cdb293416ab906ddc6ecfbc3d34e05407eefa85bae9a49`  
		Last Modified: Wed, 21 Oct 2026 10:57:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:12c2636b3ba9573f4c2e77b11626d50505fb26bc8da839ab78855168c0705b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7355312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa96396cabe6608be682e2c8edd17c7b9a5bcf2712842043e4e14af616ee3f8`

```dockerfile
```

-	Layers:
	-	`sha256:08c2cb0da742b98e9ab9cb6e64270146c709bc4d65cd41d7177cf0dfc09c0f6f`  
		Last Modified: Wed, 21 Oct 2026 10:57:06 GMT  
		Size: 7.3 MB (7337303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:128c5ff7ecc9444df0896f8087a64ff568052892131d4ed9a213ba7d1369f112`  
		Last Modified: Wed, 21 Oct 2026 10:57:06 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
