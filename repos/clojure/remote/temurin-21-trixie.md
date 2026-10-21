## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:2c1ccf24548b9f8a99d923d31539ed7748a6730baa3e30aae77fd69fc3c01656
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:dc43f0e355a1487a215accd05ee45aef936370226ba483fc65a81b9a7086bf63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290082156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fda178d191445ec4cb670433f0cd2fee3d0432448c77e2751efa0d23de8c626`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:19:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:19:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:19:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:19:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be64a6a9e3ef4bc62bdbfc0ea9b7af85fa0d173ce38abd01cc992358e53f033a`  
		Last Modified: Wed, 21 Oct 2026 01:20:09 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10861016454775681b89c33e47ae8d114df14bd2459fff11f689f3bd2a613647`  
		Last Modified: Wed, 21 Oct 2026 01:20:07 GMT  
		Size: 82.6 MB (82570023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf18b50e48a4b89c0f0863129c0ec03637dd69321ae98673256e8d1030c58431`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61701a19aff7d1aaf7d68509f2e592efd16e607d03f2149853ea00893dfbbfb2`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24a38b2b368c8df87c1979a6988a36bf9a2829e23029fac89e2ba30a6d83442a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7495302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab79bc74c5bacfe587a4c81ac376abcb9f15ab22f34ab3fc6f05906dbe964eb`

```dockerfile
```

-	Layers:
	-	`sha256:be1ceb7c696982ebb8ac08b04ed3e37f35c6111fcd77a86d18c5abf46dfe337a`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 7.5 MB (7479395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2723c436d5e9f04843226e92d04312383743800f4d3198da42d27e5e1a59e23`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6d540b2ffb0d8bdaff928003a8c8846c73845b24ba6c55659921b2d32e7856c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288556647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ed9ea689a0cec53faa8225862657c395d1d7850033f4080ca0cc28cf627314`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:25:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:25:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:25:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:25:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5cdc7c82cde9e2481a5e9e2eb77215f7c391f0bad5605cc98b9bf2c024d1ce`  
		Last Modified: Wed, 21 Oct 2026 01:26:06 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20431baab64cff0787b13ef6ef0fceacf8366eeeff0e3f37312b4876409a14a5`  
		Last Modified: Wed, 21 Oct 2026 01:26:04 GMT  
		Size: 82.4 MB (82393325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973ef77bcd242efcc172c5bd0196a9c60b631b6a643726f9ae89f7bbeaa23af7`  
		Last Modified: Wed, 21 Oct 2026 01:26:01 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a324917bf5b14ea6ce7bcd54bd584b8ceea8b94be3e31b2baa0c8eef2a9fc55`  
		Last Modified: Wed, 21 Oct 2026 01:26:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:010f1e828ce529a719a25ce224715b1f62bb64e1abdef2e825cd5a42baeb7c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834a71784e6beb3c6076fae784a12af19559dcc3e54f8111268f6142a32ce577`

```dockerfile
```

-	Layers:
	-	`sha256:6238f1df46944674c630975f9d7ca1b1d9925e84f449b6fd6a307481f1a548db`  
		Last Modified: Wed, 21 Oct 2026 01:26:01 GMT  
		Size: 7.5 MB (7485788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9258d7fe91161f329ee29c5918bd640833d027e2a2c5dc1b91ef9ba10c12fb0`  
		Last Modified: Wed, 21 Oct 2026 01:26:01 GMT  
		Size: 16.0 KB (16025 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fea965527727eb73e869a47c572294ead1a6d5e51a2ffc123fee9d0098d6d0dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299488602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab094b6f04d92bf9c06a6ceef3d6c5c6455a09cab124d8f30c67d6631396a23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:39:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:48:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:48:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:48:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:48:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e7cd69e3d8d325f9aeb846520a79195a54b18e1c6d87a600625c390cce0abe`  
		Last Modified: Wed, 21 Oct 2026 10:44:57 GMT  
		Size: 158.3 MB (158282669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e22edcfcab1e409f841a7525f075071317e343d1badb4bfc1d85dcc7f0c51`  
		Last Modified: Wed, 21 Oct 2026 10:49:11 GMT  
		Size: 88.0 MB (87997311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9368bbbb726b911c97017c5999fa8fa25864a51bdf897bd11d754107bc6ed`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309237b5508ac8be1e622dd79142ea3076e0c7ad1fb35bb54f9da63b5517e63b`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:82ea190d27a4f3cd50609756f8e0b251570666495b7282c8a7d09d351d25d93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0520cf03cef62cf311abd810b042cb74a931ae33b12cfa77fe54b487cf724983`

```dockerfile
```

-	Layers:
	-	`sha256:b22ad08a4519386605b3ee7fb9f7c0808b8ba69608714819734b1e534ccde7a6`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 7.5 MB (7483814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9757794cfe3341d2581435e2621c4fcb7218405ada4fdd2d57cefc499404c200`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
