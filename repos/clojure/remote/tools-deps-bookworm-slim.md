## `clojure:tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:983cd884a3ddc73746a4f114b406a418bcca7418ce922e9a221d5cb8f280eea8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e90fa5d7f0598c981cbd9f86a60db381597b3bfeb63b7c7e72ca1cb743bbeb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187549724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736cf5b67fd4709517e63de76614b4a3a02134d99a175b13a368b1c12c57d238`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:33 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef671a6a0b823b80360e7f42268fe0ac0c2866e68ba72301936f82dec6d8285`  
		Last Modified: Fri, 02 Oct 2026 02:49:09 GMT  
		Size: 92.6 MB (92618049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674a6877694d34d2eebb64edf2b4da40b2bce5db7835f7a27b65bd868071565b`  
		Last Modified: Fri, 02 Oct 2026 02:49:09 GMT  
		Size: 66.7 MB (66692190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e1a27a8ff304e5b8de7edcc42ec2196626a9fe677ee40409ea9e579c4d6a10`  
		Last Modified: Fri, 02 Oct 2026 02:49:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0f07d692635c70a87e251f0215f0085f9f37100e4fd31db372d44e6300ee44`  
		Last Modified: Fri, 02 Oct 2026 02:49:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:75737ac08f6661096603aebe2225bd684119b59789d640d055aedd5ec029427f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778480b1816351684cbfe2d5c90a017f45d330ffcbda6373ac7cc338be0a7c96`

```dockerfile
```

-	Layers:
	-	`sha256:0703d94b95118278fa53fc5665fa957e1e2f2e3f0ef5285e18bf6060788048e9`  
		Last Modified: Fri, 02 Oct 2026 02:49:06 GMT  
		Size: 5.1 MB (5087400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daf1cd118670bef6e74d9436bf248bd3e3b3cc63b8064e6bc4c8e66fdf1c8bdc`  
		Last Modified: Fri, 02 Oct 2026 02:49:06 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3d14336ea160fe3afc0d5b131ca8c39b97f5376d61f71248d26b5796a2fd079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186332507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b34d4ec994f6e4c1fcb539afec31cef4e8a495de776f55797c8d6413f6e6f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:39 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0639b374ab286a752f2b2d9e1ce5ed2e085e15f45f4602b9c1d9bb2e183a3c84`  
		Last Modified: Fri, 02 Oct 2026 02:49:14 GMT  
		Size: 91.5 MB (91528873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409ee64439e0bc818b77c61304b2297f815c517c4e07e5a1fc8862b14961ad05`  
		Last Modified: Fri, 02 Oct 2026 02:49:13 GMT  
		Size: 66.7 MB (66678913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7ee49c1fd80faacef72ac5a0f0686dcc045f16910f39ec7c73488607c1cdf`  
		Last Modified: Fri, 02 Oct 2026 02:49:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67023d897e60cd4f8bb24cb51c17f9048a4fc120e40e3e61e8209fe3548ce48`  
		Last Modified: Fri, 02 Oct 2026 02:49:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:77f6a8adcf81c393471bbf951e1b6ae2c37ebac48d0843f245b33b85484cf022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5110003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2174057814c6959d60fb7331b4df2f64a556c4fa746aad216c5b0778599b0c3f`

```dockerfile
```

-	Layers:
	-	`sha256:9033989c6b35b0a932f898d50ecb15558ec8008186357690c18d4a5b3ae226c0`  
		Last Modified: Fri, 02 Oct 2026 02:49:11 GMT  
		Size: 5.1 MB (5093182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9653f234b6287baa211ab46f2f215e32468339a5c02a8a6f5a9df33164b95e25`  
		Last Modified: Fri, 02 Oct 2026 02:49:10 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:fc4685f3bf9a640ae335aacb28960c7407222d241152168a264db7750aec8b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195838750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1bdd6d2c234856bb1e06800e6b54c317064b6a74eabbf7018a25d2cc23db6b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:18:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:18:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:18:16 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:33:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:33:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:33:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:33:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04f4a8f52a47d9c12d08d142d3e5b518c9eef03e1edca7bde69f1797ae76576`  
		Last Modified: Sat, 26 Sep 2026 05:21:18 GMT  
		Size: 91.3 MB (91256263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f92307e33686ca842f34c8f3ec0dcf93f0bc45edf4573a6069b447512ae58f0`  
		Last Modified: Sat, 26 Sep 2026 05:34:17 GMT  
		Size: 72.5 MB (72497882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8568db94f2228f87ed698154b3c959e09c4595d86a704c3aeb1fa2e5e54064f1`  
		Last Modified: Sat, 26 Sep 2026 05:34:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8bb8c1ac33fd7546de61abb86ea38e49761a0a33fa04616d88973dc726d4fe`  
		Last Modified: Sat, 26 Sep 2026 05:34:15 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:633bc370472d215b03a231790db4187c7d50aa72122cc9f6837b0515eaa8b582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90aca0c1d0a542e43144593d71a287c57bd3c4afd313c941155e44f5551c617`

```dockerfile
```

-	Layers:
	-	`sha256:1d7c7b00c8ca7a05a6d3767a65c6bf036a55317fd8535726977b455c92604de8`  
		Last Modified: Sat, 26 Sep 2026 05:34:15 GMT  
		Size: 5.1 MB (5075882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9349fed65c8525c234b9d00383468b890c2a09f528cfab8e6ad70885a3a455b8`  
		Last Modified: Sat, 26 Sep 2026 05:34:15 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json
