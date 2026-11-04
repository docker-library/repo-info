## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:80ff8f273df58343a6d0dc57f362f22b93f558eaabcda65ec13b9a4c5cb72c28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0b37afd843338b35de605904144145fe25bad835cd3c114dd80d602025683d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278064644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93667e686eb324ed9bef71ccd368380b10e3762daa2d7e84eb02118cf6d62ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:18:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:18:43 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:18:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50833ae15639b7e40cdb37b1fe145d5793556f83713e63665585fea16a516888`  
		Last Modified: Tue, 03 Nov 2026 22:19:21 GMT  
		Size: 146.1 MB (146086162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98db6f28274760b4169f831067abe8e0563bb88e35249aef93e911f073a65124`  
		Last Modified: Tue, 03 Nov 2026 22:19:19 GMT  
		Size: 82.6 MB (82569542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d7da66167c5800015938bb418c28626ac9313bcbb9db461e08eee647ff3145`  
		Last Modified: Tue, 03 Nov 2026 22:19:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92a918f3e95e253f458b073f9f8b7532d96eedb124989d2b68457e1cc7b1959`  
		Last Modified: Tue, 03 Nov 2026 22:19:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1d7cc145f58fbe7ac691a8c29399af20f41046720ee02d11408c3fdbb2947c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc5710a2a1c4c2534887b4cbd23a39ab566527da00592876553e4adf7bc804b`

```dockerfile
```

-	Layers:
	-	`sha256:1e30e519d42d2aa15ca23e595b154e0df7119fad4cb4180fa137312faf7fe76c`  
		Last Modified: Tue, 03 Nov 2026 22:19:16 GMT  
		Size: 7.5 MB (7476759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:680741bb9dae0883d7e89541a75e5284236bcd060759de607d51be87da4d41a6`  
		Last Modified: Tue, 03 Nov 2026 22:19:16 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:42282345c60181c3a00cdffe0969192c406bf8c7299ed37f12783aa40a7c1f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277127054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e3e2e1bca9f967abcc1c1938d8bf0cd452f56c083fb0361ff300b5bcd53a2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:18:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:18:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:18:27 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:18:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2cda97e7121aa89b8d3fc9bb0f0fa53e9cf351cf3c042909c50188dff486d6`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 145.0 MB (144957184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5f83de24ee39ebf45df45d05dc3a3e7b805788910f449eb505bd33590152a1`  
		Last Modified: Tue, 03 Nov 2026 22:19:06 GMT  
		Size: 82.4 MB (82392646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a5600ef5a7aa35b9a54813440bdbef7e76c0be2ab39fd76437325d52efcb8b`  
		Last Modified: Tue, 03 Nov 2026 22:19:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614fb6085ab10f634d7a0d42f2e6d6cf41d98ec61d7d2f32370e47fbf164e24`  
		Last Modified: Tue, 03 Nov 2026 22:19:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:90641b8b37d1eb7a14ccbf8f5e063353c36677c77683298fa82b53aa2275fa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0654bd1bf9645eb1ae93ba7488e716ba39938d4fc11eeb9c5d2ffc123c31f3e9`

```dockerfile
```

-	Layers:
	-	`sha256:296aba2f22ed229d4760f881c7f40508f8aa5864a8c071df1e31569ea620f72f`  
		Last Modified: Tue, 03 Nov 2026 22:19:04 GMT  
		Size: 7.5 MB (7483152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f34df1b87534d7aeeafd4e5bc32600b31104a468beaac7bda3773af4f5b4cdb`  
		Last Modified: Tue, 03 Nov 2026 22:19:03 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:75ec97f471f6800a80076675ab67d2be8d53c6fc3153385430a05592d033b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286080927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a220a961b6afe5a575616a57d0e458ff093469d5d39030bbee1b91179cb80776`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:41:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:41:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:41:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:41:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:41:19 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:50:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:50:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:50:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:50:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:50:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26f7bd79180e8e785a34b9a71891ebeb5035d1e0b0d0a45d51650e658811318`  
		Last Modified: Tue, 03 Nov 2026 22:46:07 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2ea3f5d5370a3358d6e09d33a9e7c2ea9a74c11944561a0ea60a4effdf5562`  
		Last Modified: Tue, 03 Nov 2026 22:51:11 GMT  
		Size: 88.0 MB (87997170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512012d32eb76a7cd9ea8a72d057f0cc9de10ce746527fc1f962279672bac9f2`  
		Last Modified: Tue, 03 Nov 2026 22:51:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc00e416c5bdb4f22a5d13c123258fb32e183e28e587cf0c1d009b8c300ba3a`  
		Last Modified: Tue, 03 Nov 2026 22:51:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4998279466b7f32e816381e20f8b9c90e7b26a2ae4880f26f77469db2f025fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7495886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e928f5a7d1701d0bbd74d66f788295d0129b6bf3c6d1ffa94ddd8375447b8cd5`

```dockerfile
```

-	Layers:
	-	`sha256:81de57e52a93c7c73c8ae32a7652c8373f567d174ace6d8c0473a4e445e5308d`  
		Last Modified: Tue, 03 Nov 2026 22:51:09 GMT  
		Size: 7.5 MB (7479930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:093fe6b3d82caed9f77bdab97184a946f0339f8a74b6434a8be0628b32aa53a3`  
		Last Modified: Tue, 03 Nov 2026 22:51:08 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
