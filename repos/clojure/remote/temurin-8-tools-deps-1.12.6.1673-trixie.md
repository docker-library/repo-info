## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:685065895b7459521cd89223919e1f90b7ebde19c5a30840d520138dd3f2f2d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:659855bbf1a58ab07ec04b825d1e9afbc43887d2d96079a054f605e7b86e647f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187190770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d223bbc6000dd4b8dfbbf2863b10aa192c9184fb3dca4a7eb1468b22348092af`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:34:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:34:28 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cd23fc47479f5d24240a4ec6ee76847ea7e01252ac279596233c35d21d9868`  
		Last Modified: Tue, 10 Nov 2026 00:35:07 GMT  
		Size: 55.2 MB (55207904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3f6b2ebda7d0d12f72733d30bfa4f3daae9e01589a21b638686987e546570e`  
		Last Modified: Tue, 10 Nov 2026 00:35:07 GMT  
		Size: 82.6 MB (82569710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1355de93f27bacf2351881c23150ca8eda3308d2f4374a391abbcbff7c54d88a`  
		Last Modified: Tue, 10 Nov 2026 00:35:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3546255ec58e35f6e9b478b71936913d21c1b808a9be34608782dc5775e7e722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea603c23a5b35865a6bdaecf1ef7ee40744ef37058852924dfcef8a6b131ceba`

```dockerfile
```

-	Layers:
	-	`sha256:5829849854b1378de2f14e632e6215de1aa4d4739c20d8115608e36bbc678830`  
		Last Modified: Tue, 10 Nov 2026 00:35:04 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:affda75d685488daf28ee2a8d7ae7c91a55b12049c6547c8a810d26939243533`  
		Last Modified: Tue, 10 Nov 2026 00:35:04 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e09d73bd23bfa86c47e6ad19c88eae1b14c5ab6e440669727815f86d6e212bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186442661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466bac195b624ef1be2265417ee44568790bbdc41963590ec9fccb2b1eff6ffa`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:33:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:33:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:33:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:33:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:33:48 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a9be90b182dfebb2b0fb225d31cb298ba289ab7797da476e4f7b946d1d120b`  
		Last Modified: Tue, 10 Nov 2026 00:34:29 GMT  
		Size: 54.3 MB (54270346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6374f69f98b13b70451bd13841668128326ff7a4ee14578c50e5b141535ff6b`  
		Last Modified: Tue, 10 Nov 2026 00:34:29 GMT  
		Size: 82.4 MB (82393066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33194699958e3003a5c445bcb588f8bf5d6b41c3087ca65d82149d28c81d4c04`  
		Last Modified: Tue, 10 Nov 2026 00:34:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3aae1287e14001cb00a9f5e7c1a4216a28f32287551b8c71254b29d814822c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33f48a18e3d1a6efb1eb0426c27c087a909e95c1ccf87bcb6fadd672e407886`

```dockerfile
```

-	Layers:
	-	`sha256:461f54faf5361bb30ab97a688f320a8e38b33fae043f0c9b76794661907b8e70`  
		Last Modified: Tue, 10 Nov 2026 00:34:26 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f8da30ee4fe2b7ee52254ade836aeb05efe615642344328218789b944491ba3`  
		Last Modified: Tue, 10 Nov 2026 00:34:26 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f1b31ef40c078a3b5371fb86789f79a4f41857f19b361c290a0f50ebcf8b253f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193912355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfcf3a9dca7802314b8cbe76829419b51e165763d9b9deafc492799460611135`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:13:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:13:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:13:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:13:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:13:57 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:14:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a09b36ba0baebb69d83b8260bd9441e8e00c0b89f14b069d246e57d2f6116a`  
		Last Modified: Tue, 10 Nov 2026 00:15:36 GMT  
		Size: 52.7 MB (52689142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdd389c652111979e3ff137e57f423ee76853c3e5b7601c936d64f19b56ffa6`  
		Last Modified: Tue, 10 Nov 2026 00:15:37 GMT  
		Size: 88.0 MB (87996977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3defc0ee0d67ae4d813d31daccc3f168bd4fad2d67418426828c1f81e8f51b`  
		Last Modified: Tue, 10 Nov 2026 00:15:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8a55d22a03304fc7513532df50d53257022cfd5da8be78090297e22e8c060073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5288964ee1a2993e3bc3fb388ac8267daa785bad49db9cdbbbb79dd586c1c6`

```dockerfile
```

-	Layers:
	-	`sha256:e0534cb5191dc4604afc742be9acaf43f0aba9a8e995d80b05a482e1dec5c47e`  
		Last Modified: Tue, 10 Nov 2026 01:51:20 GMT  
		Size: 7.6 MB (7602133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:673f08cd11f965bd6ac118cb132340340bb6bf8e55be1560c04515ee14186adf`  
		Last Modified: Tue, 10 Nov 2026 01:51:20 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
