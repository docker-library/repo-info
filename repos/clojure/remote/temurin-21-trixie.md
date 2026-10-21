## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:02c19f79293b3879270813d6ad4ff9821bcc059c71706a4c4b3b04d2fb5f0015
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
$ docker pull clojure@sha256:fffb237980829f58468fe0406f9d7037ebd66e83bf04ca747f0d29bfefa2c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299486374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68767900b9d0d56d1707a7346b43856aab3a88ee577211e9b3edd2c0440b3610`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:03:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:15:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:15:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7696acf7ab9b391fe05c5f773ce243f2009dfca860bdc385909d39000d72c04`  
		Last Modified: Sat, 17 Oct 2026 06:08:43 GMT  
		Size: 158.3 MB (158282652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cc45c5d4d7229abc83958ec4ca0f197406c8aa57820e347245e6d80cf01e7b`  
		Last Modified: Sat, 17 Oct 2026 06:16:48 GMT  
		Size: 88.0 MB (87995554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337e9ac5abde21373f5d6ae1eab4bea6b188bfaeb581f01c8ed12e8b832f048c`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942a9ff11d92f39c431cdd0d8f6b6c1b640ce0c9afcc0adacdc5fad5e05cc5be`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:83f2ddc2804191fbf5482614ce84f6ad38ea5e1b67d1e0e60b93e95ec190cf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760d23fca2acd90402d8cbc600f4ce73d00ec72bbdd4a7c201751cb1006110e`

```dockerfile
```

-	Layers:
	-	`sha256:f0985e32602eada7ace781d4f8a779adcd8fa275bf1e98a01e9d64f516f2afc1`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f2627f84e438c7c74968f6c4a71a07002e5e18afdf86e2bcbd7ec09ee2c3856`  
		Last Modified: Sat, 17 Oct 2026 06:16:46 GMT  
		Size: 16.0 KB (15954 bytes)  
		MIME: application/vnd.in-toto+json
