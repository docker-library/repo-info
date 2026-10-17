## `clojure:temurin-27-tools-deps-trixie`

```console
$ docker pull clojure@sha256:32fc504733171dcaa1ec4018408edf2aa54a9277a70f6547806f4b0131f2592a
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
$ docker pull clojure@sha256:d726b49e25e14f7e5377690d5ea847e5777dcb19add8dafe4ce852ce06f4a0b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225593543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc92074da1b65c8c4283acfd36af3911ac4aa9c97d598df79144497a334050c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:56:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:56:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a7431ce53eac6b6e6c86e0d46de74883818a9a36091dc4298e50545f772f15`  
		Last Modified: Sat, 17 Oct 2026 01:56:29 GMT  
		Size: 93.6 MB (93622527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72deafeb1c7fc01fe921eea5a3252bf3d4a092492479dc0e539bd9d46c0e3f1`  
		Last Modified: Sat, 17 Oct 2026 01:56:29 GMT  
		Size: 82.6 MB (82576778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82e91f6208648712028ed84db3d680f5b450ca8a3d257e40cf751efb0c44784`  
		Last Modified: Sat, 17 Oct 2026 01:56:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cab42805d5830d0167cb29af76bcef0ed33109edf78e0572ae19a426aa7e98`  
		Last Modified: Sat, 17 Oct 2026 01:56:25 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:967a608e37050b265a8c9ac4c683fc6d5f80c731cde5d97775c19b473706f61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa844e363291b60a1a870617f2378596874e392bdabb88a2dedf31655dbd4021`

```dockerfile
```

-	Layers:
	-	`sha256:2ffe41b2a411afaae02845da51221c4749ae0c670f6129d61ba1e37bd36af6cb`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 7.4 MB (7442444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:467fd9bec27beaa2d778dfae47de9d86ee68ef313cc071cd1d7ed5f56a88e98e`  
		Last Modified: Sat, 17 Oct 2026 01:56:26 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4bdd8a2161369152214a2e4d02727f86ea09ae75d018e40289908cb86c830f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224791595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd68a4a5c49f6fff41d8d2ca2665f5622e0717cbce35fb0687c8eae65b779095`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:55:47 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07aaab9857a604de9eccb5aeabccc41f71ea7dbc842ad61806d1a2c9787709cb`  
		Last Modified: Sat, 17 Oct 2026 01:56:27 GMT  
		Size: 92.6 MB (92633114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05254fcaefed6e79307484c15d225f407b2278785f6b0cda69ae9de90ff3b4f1`  
		Last Modified: Sat, 17 Oct 2026 01:56:27 GMT  
		Size: 82.4 MB (82396337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e116f8e09906de71fcf42d22aa4158a4451e7c900d77b511fed6284d86ed4415`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e106cf05fc2f64c64e83373ee8d021f57273b5e6e4e143464effa12ca7b95898`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:08801022a6a5960c651dc029703d3fd9dafed3b7167c2e0a559e059aca6df0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6639206f9ad659a3e2a6c8d2ec4f0af0482d06c13490f95cbc7e7e81d9fa8cef`

```dockerfile
```

-	Layers:
	-	`sha256:5ddd26a75c2756d4682d47b94b674f8dd2cd624cdb1a8c3a5dc9e75a5b05c47b`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 7.4 MB (7448834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab0e1c0f28ffa74b3e990c43d91b6422720752f110dc706c2282fb64bb1e13b`  
		Last Modified: Sat, 17 Oct 2026 01:56:24 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:73dfc54461828882856a6b5910b47e2f2f0363dd752836285f6a0b5c4eacc333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233453494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20b05091125b1e5f1a940fb948e30e1b14bf9239d99ad690d1c1cfd63597c60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:33:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:33:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14200b68c85cca86fb653732eca06ed9927d6a6c6706293a3b576091324c47d7`  
		Last Modified: Mon, 12 Oct 2026 18:34:06 GMT  
		Size: 88.0 MB (87989524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb78747636da368b095f7beb7394dd920df111d95ed8de58e6c0ae9d1dfb5c4`  
		Last Modified: Mon, 12 Oct 2026 18:34:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ee60ffcd27c0b8e35f6459574ec87046bbaa4dfedfb57a9259d247352e3c0`  
		Last Modified: Mon, 12 Oct 2026 18:34:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:60c6362a4dd341645ed04c5797d75c05823feac3441dd1e114a123476cfeaf6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8f2a3dc986661b0119266d2e936afa6505ac6fe6d2746136ccca79b2f75469`

```dockerfile
```

-	Layers:
	-	`sha256:6d0fede4859e2eda6d8ca6a7790c112c09081da863e875f4fa6e6f714103f7ae`  
		Last Modified: Mon, 12 Oct 2026 18:34:04 GMT  
		Size: 7.4 MB (7430799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b1da38c1e2fae379aa7e1948fdbe11e20e8b6ecd8ce5e713c9990d9acaeed8a`  
		Last Modified: Mon, 12 Oct 2026 18:34:03 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json
