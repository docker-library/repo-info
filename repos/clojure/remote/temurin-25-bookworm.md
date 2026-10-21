## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:95a9d988361eaf824c7370d9f11cdaff51926ed391e4cdcc0473afe3f82c3b59
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
$ docker pull clojure@sha256:d6b01fbde2b20f1b97ade5676dd85822e18624b6543be13553448063d91d9f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219141387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f05d10b317d598538cc8d53c3d44ab2c1735a875521540a172d61532ae5342`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:20:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:20:07 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:20:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:20:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f88637ae8679e6f73c62a75d818a059660eb6aef529f3c8da8a6eb188116ea5`  
		Last Modified: Wed, 21 Oct 2026 01:20:45 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b511ae02428f481725d89ed46bd7aaa57df7f58948a51fff8c4a7a7236aa892`  
		Last Modified: Wed, 21 Oct 2026 01:20:44 GMT  
		Size: 78.0 MB (78000246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651e6d8143423da4773cb89d836534f124801f97f8e122e1a474b1d01c21bdae`  
		Last Modified: Wed, 21 Oct 2026 01:20:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd65c0f01586d98187bb8c7818848d0d5aaf99e71366ddf2db56fdc4edfb215f`  
		Last Modified: Wed, 21 Oct 2026 01:20:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:28b1ec0dc0ce9db9ea3fca2adeb64b9e5d1de481324fc82f902a86112549ae72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a1422aacbea0f397cf45e21744f89b85cd943b48a7d4de246fee4b6daec608`

```dockerfile
```

-	Layers:
	-	`sha256:b57fe2ebef883716414f0e1b8cf23d8a6f4314738aac39cfb73170e5cef7c844`  
		Last Modified: Wed, 21 Oct 2026 01:20:41 GMT  
		Size: 7.3 MB (7348741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90435e3b2045c8e2699143f4151dea46b78b497629e85b74dfa3d49d0d73134f`  
		Last Modified: Wed, 21 Oct 2026 01:20:41 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b2fdfcb46b5bd8cd30fb4487d6eeb72aab189a8fa2294ffd5900304b9e93e17a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217917228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee27bcfd102d3f6e63ff3cd3c5295972fe26e085fb8e9a41d64b4b46fd19d7fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:26:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:26:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:26:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:26:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a8f8282a9d65509de563e45497361ccec5b8dd4d11c1d85109a3799f322f15`  
		Last Modified: Wed, 21 Oct 2026 01:27:03 GMT  
		Size: 91.5 MB (91528853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e60275bc77ecfa6eaadff5c4e2cce38fb884200ca97760b25919e3a286cdc9`  
		Last Modified: Wed, 21 Oct 2026 01:27:03 GMT  
		Size: 78.0 MB (77984219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa08d7e5da52300d3da4011e05d847125a119309273f5a449b1008e2389b4e3`  
		Last Modified: Wed, 21 Oct 2026 01:27:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee72f2c9fb5c0df724aeb3ec3bf1f98e84e6cb8f191732e3710f082053ca19f`  
		Last Modified: Wed, 21 Oct 2026 01:27:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ea768f2f538d36f4c88fc6f7ac5798aff7b196d163e1c59e8abf4be4fc63b6b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7372688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba29642b8c85e55d4a2219ac8e6d39a4627a3d2a3e87a6cb60a7ff6e9732a3a`

```dockerfile
```

-	Layers:
	-	`sha256:73aa2470cfce726edfb410ead60c110a214bd006abf939f17c5df57f17bc673b`  
		Last Modified: Wed, 21 Oct 2026 01:27:00 GMT  
		Size: 7.4 MB (7354573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:615c086213621ceccb73ce78dfbbc831156428a113533e3b9c3adf0c460b6f47`  
		Last Modified: Wed, 21 Oct 2026 01:26:59 GMT  
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
