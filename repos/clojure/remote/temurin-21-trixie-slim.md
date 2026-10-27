## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:85f6c0e88a7d79cbf48b04af3a92294b9eb71e1b43ccd6758e54b2b7c8233282
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:26cd4216777386231fef4b7bdd6e9031218ccf07802f0668d2d21e72e247fc51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256951635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934c0981062ec66a6753f5c754aed28c9d9417a3e603e6b52d889e36fb863317`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:51:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:51:06 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b8355f77c4471ea72da663bbf39ad26c9fbd2b8c4aba02aa7b472fe0b4fa00`  
		Last Modified: Tue, 27 Oct 2026 00:51:45 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc95ebdefd203716d8550971cbfe095f5aa7011ee038d6239d66e2e48f92495`  
		Last Modified: Tue, 27 Oct 2026 00:51:44 GMT  
		Size: 69.0 MB (68989540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f862af1c86325a8afc67e53a3058d637c5cd4bf2c97e76e840451c8ec21385cd`  
		Last Modified: Tue, 27 Oct 2026 00:51:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e8d3609d742509cebd088b46cc0d117227c36fdc09836a8ed31d5bb606ecbd`  
		Last Modified: Tue, 27 Oct 2026 00:51:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fd4579b75b97b18169a16858698776f1b7c1e4fc547a18e4dd9a1dce2ca5865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc927539dc7ab34b0fb85908dee51d1bd23de84a41b2b728c9d9fef7a8d38bf1`

```dockerfile
```

-	Layers:
	-	`sha256:64ab24edf989517ff36d1cbc316d72001e5c9d60cf389c8b1b217fe129215414`  
		Last Modified: Tue, 27 Oct 2026 00:51:41 GMT  
		Size: 5.3 MB (5263917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbd65232b87037beac1d0758a61cdffc1c3bae06d00112049a8e0899e535a04f`  
		Last Modified: Tue, 27 Oct 2026 00:51:41 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6755461a64ba17d0ccfbeb40c4ad08c7958ce7bf69baa989fd135e81e5f7029e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255407451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0900a74c883524f6752638a8b3c641e689ae20807c7ac9d7bddf8f741122665d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:27:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:27:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:27:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:27:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:49 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec3fc9b4b8d58bbe1c46f7de1a1aff5bf8a2b976dd0296567a3615640695bc8`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 156.4 MB (156400737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c3fb4005d38dd9276cf61efa0987b4208b49c09caf5fb8d91346dea1d2bdd8`  
		Last Modified: Tue, 27 Oct 2026 00:51:26 GMT  
		Size: 68.8 MB (68805194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c1460d907770f37d78150a9ef458f303f45610b7c0f06ec99359fe49f4df72`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d0bda848096581a714d45e134e8d39dafc8ec6c5c153ff92d041065c5e37a2`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbfcb5b88646e56ca0aa52fde03940e5ab94f96cfae0849e9835d03575df9ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bfe2245d218f335359e6e0e16d81b3d9a7e9077a95b76fea315d3d4f02c88a6`

```dockerfile
```

-	Layers:
	-	`sha256:8d19ec14359752042608235a631b37e1908fe26e31ef8e62c9f4c6c0868b6501`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 5.3 MB (5269678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0c57fb7562a886eafe389518724b256dab4a41375fed55333751f148062f7ec`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cacf7f06f18bdf3e458c92c95903b20095a44226347cbb8801dc29cf8ec135f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266354341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39746957ad29c21bb3999f7dcdd82d6f92b7aaf005b1732531ec838485c5a7f9`
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
# Wed, 21 Oct 2026 10:48:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:48:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:48:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:48:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:48:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c71451c8a0ab7adac8e6a3f1288ca59d6d2306d4dd9a24899545c84926ac3`  
		Last Modified: Wed, 21 Oct 2026 10:44:56 GMT  
		Size: 158.3 MB (158282665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3da70ba03742a29e897062ed2f6e77e4b76722f3dddcc7301059921ec5beb1`  
		Last Modified: Wed, 21 Oct 2026 10:49:07 GMT  
		Size: 74.4 MB (74418696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5033db4353eed8cdf47616ed00c9df5d35cc11baca5c22e1067187e6f2c10e`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37db18995d6ff0fd8d2d119a78b825cf125c7a7d100b06fdf056eca32518e74d`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39f4d587f0d5f1a3a680337ae79709fb35f1c715caab3048af57b41f85fcae68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5284273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1c22252229e02349d52c1709edd0b0b7c8f1411a4e95bcd7d8e5d73c638179`

```dockerfile
```

-	Layers:
	-	`sha256:ec3ef73e32ab9d739ab9e45d35a70a227390dd19691faa724c958cf2278c3ffc`  
		Last Modified: Wed, 21 Oct 2026 10:49:05 GMT  
		Size: 5.3 MB (5268260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ad696da45ced495c25e114022435b686d7dd9faa2faafa30dd4802efef3f7d7`  
		Last Modified: Wed, 21 Oct 2026 10:49:04 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
