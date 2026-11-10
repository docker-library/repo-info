## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:4b23d78fbfe6d547f06f29b558f5ac9b55a415788626643c83ff8e1ec11a7afe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e00e571fcd0867097d9d85c0a9c704b9635385b03bfcafc17a5fd8738f1a9c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225631317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcf2d1617a93f052e8508032745f892f51a2efd681f3d43b4a40bda42b03e04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:44:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:44:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:44:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:44:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:44:12 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:44:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:44:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4f5715854957ce71d734f83e4c2386fdcbe952a578dedd41746639da48ff82`  
		Last Modified: Tue, 10 Nov 2026 00:44:52 GMT  
		Size: 93.6 MB (93647861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023eae230091e61826b2b733188f09772d1d01652c64aef3707a7e3e720635b8`  
		Last Modified: Tue, 10 Nov 2026 00:44:52 GMT  
		Size: 82.6 MB (82569404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f7232d3427fe48528ec16a6c959d7e3ae5dfc890b22f6e8ba8d33a003f6a26`  
		Last Modified: Tue, 10 Nov 2026 00:44:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66644cebacbc9fee818e699e669bab7e311b83ab25d41656d9fb0a9216c642f`  
		Last Modified: Tue, 10 Nov 2026 00:44:48 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cbc20924f1db6cdbdf3ff42224ff1a7c995410b10ec9e1c6a5754791fbd6bf5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6167e5a962596bf9a8678f2ee724d60eba9a5891ac5fd191964c26d27f904ce`

```dockerfile
```

-	Layers:
	-	`sha256:9726ff7b9ea5bf6326a201c24e1f2af387d1545ad3385de4c6edeb4c602e52f4`  
		Last Modified: Tue, 10 Nov 2026 00:44:49 GMT  
		Size: 7.4 MB (7440421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa66dd165cc474dae9fd57f0cfde155cd6ac60c06148b3fe4b9fe8a5515e4247`  
		Last Modified: Tue, 10 Nov 2026 00:44:48 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:10184980e6f59d144ea62e9ddaa174d7deeee87c1c14c4c76605ce37b2ed9149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224833372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865b11225262214bd7f5bdcb81169c72bec597573e58278eeaf3ad3043f0e0c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:43:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:43:40 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:43:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:43:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24eeebca3ea4ca92197251619207a632663330da1cf779233540cb9c097e92`  
		Last Modified: Tue, 10 Nov 2026 00:44:22 GMT  
		Size: 92.7 MB (92660452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198c15109fb8092e17031dab518f5eb6e44be897008ee92f33f45ddf3527ea8d`  
		Last Modified: Tue, 10 Nov 2026 00:44:21 GMT  
		Size: 82.4 MB (82392765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4025c477a8be9b5d6a39722b2121b9f2928113d66feabfcd4ea3ef9751465688`  
		Last Modified: Tue, 10 Nov 2026 00:44:18 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26205816d1f7e779f15f2c0d2efae93abc2857cc551bc5237baccc2bd89e382b`  
		Last Modified: Tue, 10 Nov 2026 00:44:18 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e331ead32d866a56fafbaac91310b17d09493833adf231a6554e81181cf0ff96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0269cd92291ea0ae82fa8bcd5632e4f7106cc4a84ae123bb7afc44be38f0ba4e`

```dockerfile
```

-	Layers:
	-	`sha256:42b94acdcd7e3951cd7d420236792242a0940b797a78ffd55a84e0086dc239b6`  
		Last Modified: Tue, 10 Nov 2026 00:44:19 GMT  
		Size: 7.4 MB (7446811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48438242c38af96c7404c004f51d08a44d352760c2e8b332c691f05302194683`  
		Last Modified: Tue, 10 Nov 2026 00:44:18 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a83458c0aee08e5b65bf9eef804390ae339866ead4d8581a3b9150cc3ba121e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233150112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d93c6c78ba31a4e1ff94861e574ef7286a3285df20b6bc387caf34b9384f3cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:57:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:57:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:57:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:57:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:14:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:14:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:14:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ae8728f66828010c5601da707c771ad6bf5bcf5f214e92eba88bf7ef5ca6bf`  
		Last Modified: Tue, 10 Nov 2026 03:01:57 GMT  
		Size: 91.9 MB (91925757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab67b36d34d906280f0d26a8a3c04b7108053b6b087e24e2b1b0bef37f747d2`  
		Last Modified: Tue, 10 Nov 2026 03:15:22 GMT  
		Size: 88.0 MB (87997217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386f1f2bd3c23d7f54b44ae9b2d73c99c8d61b43ef82600ead916c48cdf280d3`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc60bdd068175a69455a0ca55dd622dde26c5fe7fabad9a2199fe20701172ca`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:636cce61c16b4db6037538ad6ca8a30393ab9eaa9dbff0a620d90322097f6c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7442860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a72f04555513000b2b9724aa372173eb89e0286687d7b142442b109cd0c362`

```dockerfile
```

-	Layers:
	-	`sha256:715dd948ca1c68fd5cdaa6175cb803f97161a88e551db3aace984907675071ee`  
		Last Modified: Tue, 10 Nov 2026 03:15:20 GMT  
		Size: 7.4 MB (7426913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de6fce4c295c41d6e0b3c13f20a2cab0c16ea7a08af31afd6e9820ea04e5475`  
		Last Modified: Tue, 10 Nov 2026 03:15:19 GMT  
		Size: 15.9 KB (15947 bytes)  
		MIME: application/vnd.in-toto+json
